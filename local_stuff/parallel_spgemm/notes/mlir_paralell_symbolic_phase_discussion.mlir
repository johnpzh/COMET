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