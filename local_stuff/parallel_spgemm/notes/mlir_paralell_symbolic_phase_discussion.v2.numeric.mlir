/// This is what we get at the end of IndexTreeToSCFPass, just before MLIR validation.
scf.for_all ... iter_args=%symbolic_domain
    %slice = tensor.extract_slice(%symbolic_domain)
    scf.for_all.in_parallel()
        tensor.insert_slice_parallel(%slice, %symbolic)
...


/// Then we will do the conversion before we quit the IndexTreeToSCFPass, to let MLIR pass the validation.

%pos_size, %alloc_size, %crd_size, %dim_size, %pos, %mark = mlir.unrealized_cast(%symbolic_domain)
%pos_new_2 = scf.for_all ... %i, %arg1=%pos:
    %symbolic_domain_inner = mlir.unrealized_cast(/*pos_size=*/ %i, /* ignore */ %alloc_size, /*crd_size=*/ %zero, /*constant*/ %dim_size, /*pos=*/ %arg_1, /*private*/ %mark)

    ...

    %pos_size, %alloc_size, %crd_size, %dim_size, %pos_new, %mark = mlir.unrealized_cast(%symbolic_domain_inner)
    %pos_slice = extract_slice(%pos_new)  /// Might need a new op for symbolic_domain operand. Or just create the extrac_slice op.
    scf.for_all.in_parallel
        tensor.parallel_insert_slice(%pos_slice, %arg1)

%accumulator, %pos_final = scf.for %zero, %pos_new_2 // To accumulate the pos tensor
    add to the accumulator
    insert into pos final


%final_domain = unrealized_cast(num iters of loop, alloc_size, accumulator, dim_size, pos_final, mark)
it.yield %final_domain


/// %final_domain goes to the numeric phase.


/// in later passes, this is what the SymbolicDomainConversion pass does.
%symbolic_domain = unrealized_cast(%pos_size, %alloc_size, %crd_size, %dim_size, %pos, %mark)


/// Symbolic itree
%symbolic_domain = itree
%sparse_tensor = it.IndexTreeSparseTensorOp(%symbolic_domain)  /// TODO: change the lowering to keep the pos from the symbolic domain

itree(%sparse_tensor, %workspace) {
    scf.forall %i, shared_outs(%sparse_tensor)  /// sparse_tensor is shared, workspace is private.
}

/// Numeric itree

%pos, %crds, %vals = %mlir.unrealized_cast(%sparse_tensor)

%crds_final, %vals_final = scf.forall %i, shared_outs(%arg1 = %crds, %arg2 = %vals) {  /// workspace is private.
    %offset = %pos[%i];
    %size = %pos[%i + 1] - %pos[%i];
    %stride = 1;
    %crds_extracted_slice = tensor.extract_slice(%arg1, ???)  /// extract using the offset and length
    %vals_extracted_slice = tensor.extract_slice(%arg2, ???)

    // %sparse_tensor_inner = mlir.unrealized_cast(%pos, %arg1, %arg2)
    %sparse_tensor_inner = mlir.unrealized_cast(%pos, %crds_extracted_slice, %vals_extracted_slice)  /// for sparse tensor conversion pass. Should be easier.
    %clear_workspace = ta.WorkspaceClear(%workspace)

    /// loops
    %for_sparse_tensor, %for_workspace = scf.for %index iter_args(%arg3 = %sparse_tensor_inner, %arg4 = %clear_workspace)

    /// sort crds

    /// update extracted_slice
    /// Option 1 (the Chosen One)
    // %rowptr_base = tensor.extract %pos[???] : tensor<?xi64>  /// If use the extracted_slice, then might don't need it.
    %pos, %crds_slice, %vals_slice = mlir.unrealized_cast(%for_sparse_tensor)
    %crds_updated, %vals_updated, %result_workspace = scf.for %j_loc = %c0 to %j_size step %c1 iter_args(%arg1 = %crds_slice, %arg2 = %vals_slice, %ws = %for_workspace) -> (tensor<?xi64>, tensor<?xi64>, !ta.workspace<f64, i64, ?>) {
        %crd = "ta.SpTensorGetCrd"(%ws, %j_loc)
        %crd_index = arith.index_cast %crd : i64 to index
        %val = "ta.TAExtractOp"(%ws, %j_loc, %crd_index)
        %inserted_crds = tensor.insert %crd_index into %arg1[%j_loc]. /// If use the extracted_slice
        %inserted_vals = tensor.insert %val into %arg2[%j_loc]
        scf.yield %inserted_crds, %inserted_vals, %ws
    }
    %pack_sparse_tensor = mlir.unrealized_cast(%pos, %crds_updated, %vals_updated)

    /// Option 2
    %73 = "ta.SortCrdOp"(%72#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %74 = "ta.SpTensorGetNNZ"(%73) : (!ta.workspace<f64, i64, ?>) -> index
    %rowptr_offset = tensor.extract %pos[%i]
    %bound = arith.addi %rowptr, %74
    %crds_updated, %vals_updated = scf.for %j_loc = %rowptr_offset to %bound step %c1 iter_args(%arg1 = %for_sparse_tensor, %arg2 = %for_workspace) -> (tensor<?xi64>, tensor<?xi64>) {
        // ...
        %crds_inserted = tensor.insert ??? into %arg1[%j_loc]
        %vals_inserted = tensor.insert ??? into %arg2[%j_loc]
        scf.yield %crds_inserted, %vals_inserted : tensor<?xi64>, tensor<?xi64>
    }

    /// Option 3
    %73 = "ta.SortCrdOp"(%72#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %74 = "ta.SpTensorGetNNZ"(%73) : (!ta.workspace<f64, i64, ?>) -> index
    %rowptr_offset = tensor.extract %pos[%i]
    %bound = arith.addi %rowptr, %74
    %crds_updated, %vals_updated = scf.for %j_loc = %c0 to %74 step %c1 iter_args(%arg1 = %for_sparse_tensor, %arg2 = %for_workspace) -> (tensor<?xi64>, tensor<?xi64>) {
        // ...
        %crds_inserted = tensor.insert ??? into %arg1[%j_loc]
        %vals_inserted = tensor.insert ??? into %arg2[%j_loc]
        scf.yield %crds_inserted, %vals_inserted : tensor<?xi64>, tensor<?xi64>
    }

    /// End Options

    /// terminator
    scf.forall.in_parallel {
        tensor.parallel_insert_slice %crds_updated into %arg1[???]
        tensor.parallel_insert_slice %vals_updated into %arg2[???]
    }
}
%sparse_tensor_final = mlir.unrealized_cast(%pos, %crds_final, %vals_final)
it.yield %sparse_tensor_final, %workspace