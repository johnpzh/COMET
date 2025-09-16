// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
module {
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  /// %45 = B
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  /// %50 is the "rowptr", i64???
  /// ??? What is "it.DeclDomainOp"(%48, %21) ???
  /// %21 is NI, %48 is NJ?
  %50 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>

  /// !!!Note
  /// Create a array to store rowptr for each row
  %NI_plus_1 = arith.addi %21, %c1 : index  /// %21 = NI
  %rowptr_array_0 = tensor.empty(%NI_plus_1) : tensor<?xindex>

  %51:2 = "it.itree"(%50, %rowptr_array_0) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>, %arg_rowptr_array_0: tensor<?xindex>):
  // %51 = "it.itree"(%50) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  // ^bb0(%arg0: !it.symbolic_domain<64>):

    %c0_42 = arith.constant 0 : index
    %c1_43 = arith.constant 1 : index

    /// !!!Note
    /// for (i = 0 to NI)
    %55 = scf.forall (%arg1) in (%21) shared_outs(%shared_out_0 = %arg_rowptr_array_0) -> (tensor<?xindex>) {
    // %55 = scf.for %arg1 = %c0_42 to %21 step %c1_43 iter_args(%arg2 = %arg0) -> (!it.symbolic_domain<64>) {

      %c1_44 = arith.constant 1 : index
      %56 = arith.addi %arg1, %c1_44 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>  /// %22 = A.rowptr
      %57 = arith.index_cast %extracted : i64 to index
      %extracted_45 = tensor.extract %22[%56] : tensor<?xi64>  /// %22 = A.rowptr
      %58 = arith.index_cast %extracted_45 : i64 to index
      %c1_46 = arith.constant 1 : index

      /// !!!Note arg4 is index now
      /// for (k_loc = A.rowptr[i] to A.rowptr[i+1])
      %59 = scf.for %arg3 = %57 to %58 step %c1_46 iter_args(%arg4 = %c0) -> (index) {
      // %59 = scf.for %arg3 = %57 to %58 step %c1_46 iter_args(%arg4 = %arg2) -> (!it.symbolic_domain<64>) {
        /// %20 = A
        /// %61 = A.colid[k_loc]
        /// %61 = k
        %61 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %62 = arith.index_cast %61 : i64 to index
        %c1_47 = arith.constant 1 : index
        %63 = arith.addi %62, %c1_47 : index
        %extracted_48 = tensor.extract %46[%62] : tensor<?xi64>  /// %46 = B.rowptr
        %64 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %46[%63] : tensor<?xi64>  /// %46 = B.rowptr
        %65 = arith.index_cast %extracted_49 : i64 to index
        %c1_50 = arith.constant 1 : index
        /// for (j_loc = B.rowptr[k] to B.rowptr[k+1])
        
        %66 = scf.for %arg5 = %64 to %65 step %c1_50 iter_args(%arg6 = %arg4) -> (index) {
        // %66 = scf.for %arg5 = %64 to %65 step %c1_50 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          /// %45 = B
          /// %67 = B.colid[j_loc]
          /// %67 = j
          %67 = "ta.SpTensorGetCrd"(%45, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %68 = arith.index_cast %67 : i64 to index

          /// !!!Note: new op to record the rowptr
          /// ??? Where is the mark and mark_array??? Will be Created by the SymbolicDomainInsertOp???
          %69 = ???"it.SymbolicRowptrUpdateOp"(%arg6, %68) : (index, index) -> index  
          scf.yield %69 : index
          // %69 = "it.SymbolicDomainInsertOp"(%arg6, %68) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          // scf.yield %69 : !it.symbolic_domain<64>
        }
        // scf.yield %66 : !it.symbolic_domain<64>
        scf.yield %66 : index
      }

      /// !!!Note
      /// C.rowptr[i] = rowptr. 
      %60 = tensor.insert %59 into %shared_out_0[%arg1] : tensor<?xindex>  
      scf.yield %60 : tensor<?xindex>
      // %60 = "it.SymbolicDomainEndRowOp"(%59) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      // scf.yield %60 : !it.symbolic_domain<64>
    }

    /// !!!Note
    /// Reduce %55, the rowptr array
    %56 = ???"it.SymbolicReduceOp"(%55) : (tensor<?xindex>) -> tensor<?xindex>
    %57 = tensor.extract %56[%21] : tensor<?xindex>  /// %21 = NI
    %58 = ???"it.SymbolicDomainFromIndexOp"(%57) : (index) -> !it.symbolic_domain<64>

    it.yield %58, %55 : !it.symbolic_domain<64>, tensor<?xindex>
  }) : (!it.symbolic_domain<64>, tensor<?xindex>) -> (!it.symbolic_domain<64>, tensor<?xindex>)
  //   it.yield %55 : !it.symbolic_domain<64>
  // }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>


  // %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51#0) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %54:2 = "it.itree"(%52, %53) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %c0_42 = arith.constant 0 : index
    %c1_43 = arith.constant 1 : index

    /// !!!Note Workspace should be private
    /// for (i = 0 to NI)
    %55:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
    // %55:2 = scf.for %arg2 = %c0_42 to %21 step %c1_43 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {

      /// ???%arg1 (workspace) will be automatically private here, right???
      %56 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      // %56 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>

      %c1_44 = arith.constant 1 : index
      %57 = arith.addi %arg2, %c1_44 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>  /// %22 = A.rowptr
      %58 = arith.index_cast %extracted : i64 to index
      %extracted_45 = tensor.extract %22[%57] : tensor<?xi64>  /// %22 = A.rowptr
      %59 = arith.index_cast %extracted_45 : i64 to index
      %c1_46 = arith.constant 1 : index
      /// for (k_loc = A.rowptr[i] to A.rowptr[i+1])
      %60:2 = scf.for %arg5 = %58 to %59 step %c1_46 iter_args(%arg6 = %arg3, %arg7 = %56) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        /// %20 = A
        /// %64 = A.colid[k_loc]
        /// %64 = k
        %64 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %65 = arith.index_cast %64 : i64 to index
        %c1_49 = arith.constant 1 : index
        %66 = arith.addi %65, %c1_49 : index
        %extracted_50 = tensor.extract %46[%65] : tensor<?xi64>  /// %46 = B.rowptr
        %67 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %46[%66] : tensor<?xi64>  /// %46 = B.rowptr
        %68 = arith.index_cast %extracted_51 : i64 to index
        %c1_52 = arith.constant 1 : index

        /// for (j_loc = B.rowptr[k] to B.rowptr[k+1])
        %69:2 = scf.for %arg8 = %67 to %68 step %c1_52 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        // %69:2 = scf.for %arg8 = %67 to %68 step %c1_52 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          /// %20 = A.colid
          /// %70 = A.colid[k_loc]
          /// %70 = k
          %70 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %71 = arith.index_cast %70 : i64 to index
          /// %45 = B.colid
          /// %72 = B.colid[j_loc]
          /// %72 = j
          %72 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %73 = arith.index_cast %72 : i64 to index
          /// %74 = j
          %74 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %75 = arith.index_cast %74 : i64 to index
          /// %20 = A
          /// %76 = A.val[k_loc]
          /// (A, k_loc, i, k)
          %76 = "ta.TAExtractOp"(%20, %arg5, %arg2, %71) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          /// %45 = B
          /// %77 = B.val[j_loc]
          /// (B, j_loc, k, j)
          %77 = "ta.TAExtractOp"(%45, %arg8, %65, %73) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %78 = arith.mulf %76, %77 : f64
          /// %arg10 = workspace
          /// %79 = workspace[j]
          %79 = "ta.TAExtractOp"(%arg10, %75, %75) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
          %80 = arith.addf %79, %78 : f64

          /// ???Where the j is saved???
          /// ???Where is mark and mark_array??? Will be Created by the ta.TAInsertOp???
          /// workspace[j] += %78
          %81 = "ta.TAInsertOp"(%arg10, %75, %75, %80) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %81 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %69#0, %69#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }

      /// !!!Note
      %rowptr_base = tensor.extract %51#1[%arg2] : tensor<?xindex>  /// rowptr_base = rowptr_array[i]

      %61 = "ta.SortCrdOp"(%60#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c0_47 = arith.constant 0 : index
      %62 = "ta.SpTensorGetNNZ"(%61) : (!ta.workspace<f64, i64, ?>) -> index
      %c1_48 = arith.constant 1 : index
      /// (%arg6 = C, %arg7 = workspace)
      %63:2 = scf.for %arg5 = %c0_47 to %62 step %c1_48 iter_args(%arg6 = %60#0, %arg7 = %61) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        /// ???j = %64???
        %64 = "ta.SpTensorGetCrd"(%arg7, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %65 = arith.index_cast %64 : i64 to index
        /// ???What is %66???
        %66 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index

        /// !!!Note
        %rowptr = arith.addi %rowptr_base, %66 : index

        /// ???val = workspace[j]???
        %67 = "ta.TAExtractOp"(%arg7, %arg5, %65) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        /// ???What is %68??? %68 is not used here.
        %68 = "ta.TAExtractOp"(%arg6, %66, %arg2, %65) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64

        /// !!!Note. ??? Can I use %rowptr here???
        %69 = "ta.TAInsertOp"(%arg6, %arg2, %rowptr, %arg2, %65, %67) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        // %69 = "ta.TAInsertOp"(%arg6, %arg2, %66, %arg2, %65, %67) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %69, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      scf.yield %63#0, %63#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
    }
    it.yield %55#0, %55#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}