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
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %51 = "it.itree"(%50) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %57:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %58 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %57#4) -> (tensor<?xi64>) {
      %c0_46 = arith.constant 0 : index
      %63 = builtin.unrealized_conversion_cast %arg1, %57#1, %c0_46, %57#3, %arg2, %57#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %c1_47 = arith.constant 1 : index
      %64 = arith.addi %arg1, %c1_47 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %65 = arith.index_cast %extracted : i64 to index
      %extracted_48 = tensor.extract %22[%64] : tensor<?xi64>
      %66 = arith.index_cast %extracted_48 : i64 to index
      %c1_49 = arith.constant 1 : index
      %67 = scf.for %arg3 = %65 to %66 step %c1_49 iter_args(%arg4 = %63) -> (!it.symbolic_domain<64>) {
        %70 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %71 = arith.index_cast %70 : i64 to index
        %c1_50 = arith.constant 1 : index
        %72 = arith.addi %71, %c1_50 : index
        %extracted_51 = tensor.extract %46[%71] : tensor<?xi64>
        %73 = arith.index_cast %extracted_51 : i64 to index
        %extracted_52 = tensor.extract %46[%72] : tensor<?xi64>
        %74 = arith.index_cast %extracted_52 : i64 to index
        %c1_53 = arith.constant 1 : index
        %75 = scf.for %arg5 = %73 to %74 step %c1_53 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %76 = "ta.SpTensorGetCrd"(%45, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %77 = arith.index_cast %76 : i64 to index
          %78 = "it.SymbolicDomainInsertOp"(%arg6, %77) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          scf.yield %78 : !it.symbolic_domain<64>
        }
        scf.yield %75 : !it.symbolic_domain<64>
      }
      %68 = "it.SymbolicDomainEndRowOp"(%67) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %69:6 = builtin.unrealized_conversion_cast %68 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>

      %extracted_slice = tensor.extract_slice %69#4[%69#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%69#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }

    //   %extracted_slice = tensor.extract %69#4[%69#0] : tensor<?xi64>
    //   tensor.insert %extracted_slice into %arg2[%69#0] : tensor<?xi64> /// error: because the following scf.forall.in_parallel does not have any tensor.parallel_insert_slice ops to update the shared output, the whole parallel loop will be lowered to empty loop.
    //   scf.forall.in_parallel {
    //     // tensor.parallel_insert_slice %extracted_slice into %arg2[%69#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
    //     // tensor.parallel_insert_slice %extracted_slice into %arg2[%69#0] [1] [1] : i64 into tensor<?xi64>
    //     // tensor.insert %extracted_slice into %arg2[%69#0] : tensor<?xi64> /// error: 'scf.forall.in_parallel' op expected only tensor.parallel_insert_slice ops
    //   }

    //   %extracted_element = tensor.extract %69#4[%69#0] : tensor<?xi64>
    //   %extracted_tensor = tensor.from_elements %extracted_element : tensor<1xi64>
    //   scf.forall.in_parallel {
    //     tensor.parallel_insert_slice %extracted_tensor into %arg2[%69#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
    //   }

      // %extracted_element = tensor.extract %69#4[%69#0] : tensor<?xi64>
      // %extracted_slice = tensor.extract_slice %arg2[%69#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      // %inserted = tensor.insert %extracted_element into %extracted_slice[%c0] : tensor<1xi64>
      // scf.forall.in_parallel {
      //   tensor.parallel_insert_slice %inserted into %arg2[%69#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      // }

    }
    %c0_i64_44 = arith.constant 0 : i64
    %c1_45 = arith.constant 1 : index
    %59 = arith.addi %21, %c1_45 : index
    %60:2 = scf.for %arg1 = %c1_45 to %59 step %c1_45 iter_args(%arg2 = %c0_i64_44, %arg3 = %58) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %63 = arith.addi %extracted, %arg2 : i64
      %inserted = tensor.insert %63 into %arg3[%arg1] : tensor<?xi64>
      scf.yield %63, %inserted : i64, tensor<?xi64>
    }
    %61 = arith.index_cast %60#0 : i64 to index
    %62 = builtin.unrealized_conversion_cast %21, %57#1, %61, %57#3, %60#1, %57#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %62 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %54:2 = "it.itree"(%52, %53) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %57:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %58:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %57#5, %arg4 = %57#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %57#4[%arg2] : tensor<?xi64>
      %60 = arith.index_cast %extracted : i64 to index
      %c1_44 = arith.constant 1 : index
      %61 = arith.addi %arg2, %c1_44 : index
      %extracted_45 = tensor.extract %57#4[%61] : tensor<?xi64>
      %62 = arith.index_cast %extracted_45 : i64 to index
      %63 = arith.subi %62, %60 : index
      %extracted_slice = tensor.extract_slice %arg3[%60] [%63] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_46 = tensor.extract_slice %arg4[%60] [%63] [1] : tensor<?xf64> to tensor<?xf64>
      %c0_47 = arith.constant 0 : index
      %64 = builtin.unrealized_conversion_cast %57#0, %57#1, %57#2, %c0_47, %57#4, %extracted_slice, %extracted_slice_46 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %65 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c1_48 = arith.constant 1 : index
      %66 = arith.addi %arg2, %c1_48 : index
      %extracted_49 = tensor.extract %22[%arg2] : tensor<?xi64>
      %67 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %22[%66] : tensor<?xi64>
      %68 = arith.index_cast %extracted_50 : i64 to index
      %c1_51 = arith.constant 1 : index
      %69:2 = scf.for %arg5 = %67 to %68 step %c1_51 iter_args(%arg6 = %64, %arg7 = %65) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %75 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %76 = arith.index_cast %75 : i64 to index
        %c1_55 = arith.constant 1 : index
        %77 = arith.addi %76, %c1_55 : index
        %extracted_56 = tensor.extract %46[%76] : tensor<?xi64>
        %78 = arith.index_cast %extracted_56 : i64 to index
        %extracted_57 = tensor.extract %46[%77] : tensor<?xi64>
        %79 = arith.index_cast %extracted_57 : i64 to index
        %c1_58 = arith.constant 1 : index
        %80:2 = scf.for %arg8 = %78 to %79 step %c1_58 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %81 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %82 = arith.index_cast %81 : i64 to index
          %83 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %84 = arith.index_cast %83 : i64 to index
          %85 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %86 = arith.index_cast %85 : i64 to index
          %87 = "ta.TAExtractOp"(%20, %arg5, %arg2, %82) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %88 = "ta.TAExtractOp"(%45, %arg8, %76, %84) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %89 = arith.mulf %87, %88 : f64
          %90 = "ta.TAExtractOp"(%arg10, %86, %86) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
          %91 = arith.addf %90, %89 : f64
          %92 = "ta.TAInsertOp"(%arg10, %86, %86, %91) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %92 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %80#0, %80#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %70 = "ta.SortCrdOp"(%69#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c0_52 = arith.constant 0 : index
      %71 = "ta.SpTensorGetNNZ"(%70) : (!ta.workspace<f64, i64, ?>) -> index
      %c1_53 = arith.constant 1 : index
      %72:7 = builtin.unrealized_conversion_cast %69#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %c1_54 = arith.constant 1 : index
      %73:3 = scf.for %arg5 = %c0_52 to %71 step %c1_54 iter_args(%arg6 = %72#5, %arg7 = %72#6, %arg8 = %70) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) {
        %75 = "ta.SpTensorGetCrd"(%arg8, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %76 = arith.index_cast %75 : i64 to index
        %77 = "ta.TAExtractOp"(%arg8, %arg5, %76) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %inserted = tensor.insert %75 into %arg6[%arg5] : tensor<?xi64>
        %inserted_55 = tensor.insert %77 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %inserted, %inserted_55, %arg8 : tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>
      }
      %74 = builtin.unrealized_conversion_cast %72#0, %72#1, %72#2, %72#3, %72#4, %73#0, %73#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %73#0 into %arg3[%60] [%63] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %73#1 into %arg4[%60] [%63] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %59 = builtin.unrealized_conversion_cast %57#0, %57#1, %57#2, %57#3, %57#4, %58#0, %58#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %59, %arg1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %alloc_42 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_42[%c0] : memref<1xf64>
  %55 = "ta.SpTensorGetVals"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim_43 = tensor.dim %55, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim_43 step %c1 {
    %extracted = tensor.extract %55[%arg0] : tensor<?xf64>
    %57 = memref.load %alloc_42[%c0] : memref<1xf64>
    %58 = arith.addf %extracted, %57 : f64
    memref.store %58, %alloc_42[%c0] : memref<1xf64>
  }
  %56 = memref.load %alloc_42[%c0] : memref<1xf64>
  "ta.print"(%56) : (f64) -> ()
  return
}
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}