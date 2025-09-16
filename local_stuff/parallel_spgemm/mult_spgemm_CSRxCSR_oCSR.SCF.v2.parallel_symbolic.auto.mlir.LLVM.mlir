// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
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
        %c0_48 = arith.constant 0 : index
        %63 = builtin.unrealized_conversion_cast %arg1, %57#1, %c0_48, %57#3, %arg2, %57#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %extracted_slice = tensor.extract_slice %arg2[%arg1] [1] [1] : tensor<?xi64> to tensor<1xi64>
        %c1_49 = arith.constant 1 : index
        %64 = arith.addi %arg1, %c1_49 : index
        %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
        %65 = arith.index_cast %extracted : i64 to index
        %extracted_50 = tensor.extract %22[%64] : tensor<?xi64>
        %66 = arith.index_cast %extracted_50 : i64 to index
        %c1_51 = arith.constant 1 : index
        %67 = scf.for %arg3 = %65 to %66 step %c1_51 iter_args(%arg4 = %63) -> (!it.symbolic_domain<64>) {
          %70 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %71 = arith.index_cast %70 : i64 to index
          %c1_53 = arith.constant 1 : index
          %72 = arith.addi %71, %c1_53 : index
          %extracted_54 = tensor.extract %46[%71] : tensor<?xi64>
          %73 = arith.index_cast %extracted_54 : i64 to index
          %extracted_55 = tensor.extract %46[%72] : tensor<?xi64>
          %74 = arith.index_cast %extracted_55 : i64 to index
          %c1_56 = arith.constant 1 : index
          %75 = scf.for %arg5 = %73 to %74 step %c1_56 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
            %76 = "ta.SpTensorGetCrd"(%45, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %77 = arith.index_cast %76 : i64 to index
            %78 = "it.SymbolicDomainInsertOp"(%arg6, %77) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
            scf.yield %78 : !it.symbolic_domain<64>
          }
          scf.yield %75 : !it.symbolic_domain<64>
        }
        %68 = "it.SymbolicDomainEndRowOp"(%67) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
        %69:6 = builtin.unrealized_conversion_cast %68 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
        %extracted_slice_52 = tensor.extract_slice %69#4[%arg1] [1] [1] : tensor<?xi64> to tensor<1xi64>
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %extracted_slice_52 into %arg2[%arg1] [1] [1] : tensor<1xi64> into tensor<?xi64>
        }
      }
      %c0_i64_44 = arith.constant 0 : i64
      %c0_45 = arith.constant 0 : index
      %c1_46 = arith.constant 1 : index
      %59:2 = scf.for %arg1 = %c0_45 to %21 step %c1_46 iter_args(%arg2 = %c0_i64_44, %arg3 = %58) -> (i64, tensor<?xi64>) {
        %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
        %inserted_48 = tensor.insert %arg2 into %arg3[%arg1] : tensor<?xi64>
        %63 = arith.addi %arg2, %extracted : i64
        scf.yield %63, %inserted_48 : i64, tensor<?xi64>
      }
      %inserted = tensor.insert %59#0 into %59#1[%21] : tensor<?xi64>
      %c1_47 = arith.constant 1 : index
      %60 = arith.addi %21, %c1_47 : index
      %61 = arith.index_cast %59#0 : i64 to index
      %62 = builtin.unrealized_conversion_cast %60, %57#1, %61, %57#3, %inserted, %57#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      it.yield %62 : !it.symbolic_domain<64>
    }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
    %54:2 = "it.itree"(%52, %53) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
      %c0_44 = arith.constant 0 : index
      %c1_45 = arith.constant 1 : index
      %57:2 = scf.for %arg2 = %c0_44 to %21 step %c1_45 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %58 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
        %c1_46 = arith.constant 1 : index
        %59 = arith.addi %arg2, %c1_46 : index
        %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
        %60 = arith.index_cast %extracted : i64 to index
        %extracted_47 = tensor.extract %22[%59] : tensor<?xi64>
        %61 = arith.index_cast %extracted_47 : i64 to index
        %c1_48 = arith.constant 1 : index
        %62:2 = scf.for %arg5 = %60 to %61 step %c1_48 iter_args(%arg6 = %arg3, %arg7 = %58) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %66 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %67 = arith.index_cast %66 : i64 to index
          %c1_51 = arith.constant 1 : index
          %68 = arith.addi %67, %c1_51 : index
          %extracted_52 = tensor.extract %46[%67] : tensor<?xi64>
          %69 = arith.index_cast %extracted_52 : i64 to index
          %extracted_53 = tensor.extract %46[%68] : tensor<?xi64>
          %70 = arith.index_cast %extracted_53 : i64 to index
          %c1_54 = arith.constant 1 : index
          %71:2 = scf.for %arg8 = %69 to %70 step %c1_54 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
            %72 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %73 = arith.index_cast %72 : i64 to index
            %74 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %75 = arith.index_cast %74 : i64 to index
            %76 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %77 = arith.index_cast %76 : i64 to index
            %78 = "ta.TAExtractOp"(%20, %arg5, %arg2, %73) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %79 = "ta.TAExtractOp"(%45, %arg8, %67, %75) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %80 = arith.mulf %78, %79 : f64
            %81 = "ta.TAExtractOp"(%arg10, %77, %77) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
            %82 = arith.addf %81, %80 : f64
            %83 = "ta.TAInsertOp"(%arg10, %77, %77, %82) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
            scf.yield %arg9, %83 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
          }
          scf.yield %71#0, %71#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        %63 = "ta.SortCrdOp"(%62#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
        %c0_49 = arith.constant 0 : index
        %64 = "ta.SpTensorGetNNZ"(%63) : (!ta.workspace<f64, i64, ?>) -> index
        %c1_50 = arith.constant 1 : index
        %65:2 = scf.for %arg5 = %c0_49 to %64 step %c1_50 iter_args(%arg6 = %62#0, %arg7 = %63) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %66 = "ta.SpTensorGetCrd"(%arg7, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
          %67 = arith.index_cast %66 : i64 to index
          %68 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
          %69 = "ta.TAExtractOp"(%arg7, %arg5, %67) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
          %70 = "ta.TAExtractOp"(%arg6, %68, %arg2, %67) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %71 = "ta.TAInsertOp"(%arg6, %arg2, %68, %arg2, %67, %69) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          scf.yield %71, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %65#0, %65#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      it.yield %57#0, %57#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
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
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @printNewline()

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @printF64(f64)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @printNewline()

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printNewline()

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @printF64(f64)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printNewline()

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printNewline()

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printNewline()

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printF64(f64)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
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
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %23 = memref.load %alloc_18[%c0] : memref<13xindex>
  %24 = memref.load %alloc_18[%c1] : memref<13xindex>
  %25 = memref.load %alloc_18[%c2] : memref<13xindex>
  %26 = memref.load %alloc_18[%c3] : memref<13xindex>
  %27 = memref.load %alloc_18[%c4] : memref<13xindex>
  %28 = memref.load %alloc_18[%c5] : memref<13xindex>
  %29 = memref.load %alloc_18[%c6] : memref<13xindex>
  %30 = memref.load %alloc_18[%c7] : memref<13xindex>
  %31 = memref.load %alloc_18[%c8] : memref<13xindex>
  %32 = memref.load %alloc_18[%c9] : memref<13xindex>
  %33 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%31) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %34 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %from_elements_38 = tensor.from_elements %32, %33 : tensor<2xindex>
  %43 = "ta.spTensor_construct"(%from_elements_38, %34, %38, %35, %39, %36, %40, %37, %41, %42) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %44 = "ta.SpTensorGetDimPos"(%43) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %45 = "ta.SpTensorGetDimSize"(%43) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %46 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %47 = "it.DeclDomainOp"(%45, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %48 = "it.itree"(%47) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %54:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %55 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %54#4) -> (tensor<?xi64>) {
      %60 = builtin.unrealized_conversion_cast %arg1, %54#1, %c0, %54#3, %arg2, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %61 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %62 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %22[%61] : tensor<?xi64>
      %63 = arith.index_cast %extracted_40 : i64 to index
      %64 = scf.for %arg3 = %62 to %63 step %c1 iter_args(%arg4 = %60) -> (!it.symbolic_domain<64>) {
        %67 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %68 = arith.index_cast %67 : i64 to index
        %69 = arith.addi %68, %c1 : index
        %extracted_41 = tensor.extract %44[%68] : tensor<?xi64>
        %70 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %44[%69] : tensor<?xi64>
        %71 = arith.index_cast %extracted_42 : i64 to index
        %72 = scf.for %arg5 = %70 to %71 step %c1 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %73 = "ta.SpTensorGetCrd"(%43, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %74 = arith.index_cast %73 : i64 to index
          %75 = "it.SymbolicDomainInsertOp"(%arg6, %74) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          scf.yield %75 : !it.symbolic_domain<64>
        }
        scf.yield %72 : !it.symbolic_domain<64>
      }
      %65 = "it.SymbolicDomainEndRowOp"(%64) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %66:6 = builtin.unrealized_conversion_cast %65 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %66#4[%arg1] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%arg1] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %56:2 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %c0_i64, %arg3 = %55) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %inserted_40 = tensor.insert %arg2 into %arg3[%arg1] : tensor<?xi64>
      %60 = arith.addi %arg2, %extracted : i64
      scf.yield %60, %inserted_40 : i64, tensor<?xi64>
    }
    %inserted = tensor.insert %56#0 into %56#1[%21] : tensor<?xi64>
    %57 = arith.addi %21, %c1 : index
    %58 = arith.index_cast %56#0 : i64 to index
    %59 = builtin.unrealized_conversion_cast %57, %54#1, %58, %54#3, %inserted, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %59 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %49 = "it.IndexTreeSparseTensorOp"(%46, %48) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "ta.AllocWorkspace"(%49) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %51:2 = "it.itree"(%49, %50) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %54:2 = scf.for %arg2 = %c0 to %21 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
      %55 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %56 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %57 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %22[%56] : tensor<?xi64>
      %58 = arith.index_cast %extracted_40 : i64 to index
      %59:2 = scf.for %arg5 = %57 to %58 step %c1 iter_args(%arg6 = %arg3, %arg7 = %55) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %63 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %64 = arith.index_cast %63 : i64 to index
        %65 = arith.addi %64, %c1 : index
        %extracted_41 = tensor.extract %44[%64] : tensor<?xi64>
        %66 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %44[%65] : tensor<?xi64>
        %67 = arith.index_cast %extracted_42 : i64 to index
        %68:2 = scf.for %arg8 = %66 to %67 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %69 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %70 = arith.index_cast %69 : i64 to index
          %71 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %72 = arith.index_cast %71 : i64 to index
          %73 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %74 = arith.index_cast %73 : i64 to index
          %75 = "ta.TAExtractOp"(%20, %arg5, %arg2, %70) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %76 = "ta.TAExtractOp"(%43, %arg8, %64, %72) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %77 = arith.mulf %75, %76 : f64
          %78 = "ta.WorkspaceAccumulateOp"(%arg10, %74, %74, %77) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %78 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %68#0, %68#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %60 = "ta.SortCrdOp"(%59#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %61 = "ta.SpTensorGetNNZ"(%60) : (!ta.workspace<f64, i64, ?>) -> index
      %62:2 = scf.for %arg5 = %c0 to %61 step %c1 iter_args(%arg6 = %59#0, %arg7 = %60) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %63 = "ta.SpTensorGetCrd"(%arg7, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %64 = arith.index_cast %63 : i64 to index
        %65 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %66 = "ta.WorkspaceReadOp"(%arg7, %arg5, %64) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %67 = "ta.TAInsertOp"(%arg6, %arg2, %65, %arg2, %64, %66) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %67, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      scf.yield %62#0, %62#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
    }
    it.yield %54#0, %54#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%51#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %alloc_39 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_39[%c0] : memref<1xf64>
  %52 = "ta.SpTensorGetVals"(%51#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim = tensor.dim %52, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %52[%arg0] : tensor<?xf64>
    %54 = memref.load %alloc_39[%c0] : memref<1xf64>
    %55 = arith.addf %extracted, %54 : f64
    memref.store %55, %alloc_39[%c0] : memref<1xf64>
  }
  %53 = memref.load %alloc_39[%c0] : memref<1xf64>
  "ta.print"(%53) : (f64) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass Failed () //----- //
"func.func"() <{function_type = () -> (), sym_name = "main"}> ({
  %0 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
  %1 = "arith.constant"() <{value = 0 : i64}> : () -> i64
  %2 = "arith.constant"() <{value = 10 : index}> : () -> index
  %3 = "arith.constant"() <{value = 9 : index}> : () -> index
  %4 = "arith.constant"() <{value = 8 : index}> : () -> index
  %5 = "arith.constant"() <{value = 7 : index}> : () -> index
  %6 = "arith.constant"() <{value = 6 : index}> : () -> index
  %7 = "arith.constant"() <{value = 5 : index}> : () -> index
  %8 = "arith.constant"() <{value = 4 : index}> : () -> index
  %9 = "arith.constant"() <{value = 1 : i32}> : () -> i32
  %10 = "arith.constant"() <{value = 0 : i32}> : () -> i32
  %11 = "arith.constant"() <{value = 3 : index}> : () -> index
  %12 = "arith.constant"() <{value = 2 : index}> : () -> index
  %13 = "arith.constant"() <{value = -1 : index}> : () -> index
  %14 = "arith.constant"() <{value = 1 : index}> : () -> index
  %15 = "arith.constant"() <{value = 0 : index}> : () -> index
  %16 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13xindex>
  %17 = "memref.cast"(%16) : (memref<13xindex>) -> memref<*xindex>
  "func.call"(%10, %15, %13, %14, %13, %17, %9) <{callee = @read_input_sizes_2D_f64}> {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %18 = "memref.load"(%16, %15) : (memref<13xindex>, index) -> index
  %19 = "memref.load"(%16, %14) : (memref<13xindex>, index) -> index
  %20 = "memref.load"(%16, %12) : (memref<13xindex>, index) -> index
  %21 = "memref.load"(%16, %11) : (memref<13xindex>, index) -> index
  %22 = "memref.load"(%16, %8) : (memref<13xindex>, index) -> index
  %23 = "memref.load"(%16, %7) : (memref<13xindex>, index) -> index
  %24 = "memref.load"(%16, %6) : (memref<13xindex>, index) -> index
  %25 = "memref.load"(%16, %5) : (memref<13xindex>, index) -> index
  %26 = "memref.load"(%16, %4) : (memref<13xindex>, index) -> index
  %27 = "memref.load"(%16, %3) : (memref<13xindex>, index) -> index
  %28 = "memref.load"(%16, %2) : (memref<13xindex>, index) -> index
  %29 = "memref.alloc"(%18) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %29) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg75: i64, %arg76: i64):
    "linalg.yield"(%arg75) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %30 = "memref.cast"(%29) : (memref<?xi64>) -> memref<*xi64>
  %31 = "memref.alloc"(%19) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %31) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg73: i64, %arg74: i64):
    "linalg.yield"(%arg73) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %32 = "memref.cast"(%31) : (memref<?xi64>) -> memref<*xi64>
  %33 = "memref.alloc"(%20) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg71: i64, %arg72: i64):
    "linalg.yield"(%arg71) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %34 = "memref.cast"(%33) : (memref<?xi64>) -> memref<*xi64>
  %35 = "memref.alloc"(%21) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %35) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg69: i64, %arg70: i64):
    "linalg.yield"(%arg69) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %36 = "memref.cast"(%35) : (memref<?xi64>) -> memref<*xi64>
  %37 = "memref.alloc"(%22) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %37) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg67: i64, %arg68: i64):
    "linalg.yield"(%arg67) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %38 = "memref.cast"(%37) : (memref<?xi64>) -> memref<*xi64>
  %39 = "memref.alloc"(%23) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %39) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg65: i64, %arg66: i64):
    "linalg.yield"(%arg65) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %40 = "memref.cast"(%39) : (memref<?xi64>) -> memref<*xi64>
  %41 = "memref.alloc"(%24) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %41) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg63: i64, %arg64: i64):
    "linalg.yield"(%arg63) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %42 = "memref.cast"(%41) : (memref<?xi64>) -> memref<*xi64>
  %43 = "memref.alloc"(%25) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %43) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg61: i64, %arg62: i64):
    "linalg.yield"(%arg61) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %44 = "memref.cast"(%43) : (memref<?xi64>) -> memref<*xi64>
  %45 = "memref.alloc"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
  "linalg.fill"(%0, %45) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg59: f64, %arg60: f64):
    "linalg.yield"(%arg59) : (f64) -> ()
  }) : (f64, memref<?xf64>) -> ()
  %46 = "memref.cast"(%45) : (memref<?xf64>) -> memref<*xf64>
  "func.call"(%10, %15, %13, %14, %13, %30, %32, %34, %36, %38, %40, %42, %44, %46, %9) <{callee = @read_input_2D_f64_i64}> {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %47 = "bufferization.to_tensor"(%29) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %48 = "bufferization.to_tensor"(%31) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %49 = "bufferization.to_tensor"(%33) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %50 = "bufferization.to_tensor"(%35) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %51 = "bufferization.to_tensor"(%37) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %52 = "bufferization.to_tensor"(%39) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %53 = "bufferization.to_tensor"(%41) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %54 = "bufferization.to_tensor"(%43) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %55 = "bufferization.to_tensor"(%45) <{restrict, writable}> : (memref<?xf64>) -> tensor<?xf64>
  %56 = "tensor.from_elements"(%27, %28) : (index, index) -> tensor<2xindex>
  %57 = "ta.spTensor_construct"(%56, %47, %51, %48, %52, %49, %53, %50, %54, %55) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %58 = "ta.SpTensorGetDimSize"(%57) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %59 = "ta.SpTensorGetDimPos"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %60 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13xindex>
  %61 = "memref.cast"(%60) : (memref<13xindex>) -> memref<*xindex>
  "func.call"(%9, %15, %13, %14, %13, %61, %9) <{callee = @read_input_sizes_2D_f64}> {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %62 = "memref.load"(%60, %15) : (memref<13xindex>, index) -> index
  %63 = "memref.load"(%60, %14) : (memref<13xindex>, index) -> index
  %64 = "memref.load"(%60, %12) : (memref<13xindex>, index) -> index
  %65 = "memref.load"(%60, %11) : (memref<13xindex>, index) -> index
  %66 = "memref.load"(%60, %8) : (memref<13xindex>, index) -> index
  %67 = "memref.load"(%60, %7) : (memref<13xindex>, index) -> index
  %68 = "memref.load"(%60, %6) : (memref<13xindex>, index) -> index
  %69 = "memref.load"(%60, %5) : (memref<13xindex>, index) -> index
  %70 = "memref.load"(%60, %4) : (memref<13xindex>, index) -> index
  %71 = "memref.load"(%60, %3) : (memref<13xindex>, index) -> index
  %72 = "memref.load"(%60, %2) : (memref<13xindex>, index) -> index
  %73 = "memref.alloc"(%62) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %73) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg57: i64, %arg58: i64):
    "linalg.yield"(%arg57) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %74 = "memref.cast"(%73) : (memref<?xi64>) -> memref<*xi64>
  %75 = "memref.alloc"(%63) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %75) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg55: i64, %arg56: i64):
    "linalg.yield"(%arg55) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %76 = "memref.cast"(%75) : (memref<?xi64>) -> memref<*xi64>
  %77 = "memref.alloc"(%64) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %77) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg53: i64, %arg54: i64):
    "linalg.yield"(%arg53) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %78 = "memref.cast"(%77) : (memref<?xi64>) -> memref<*xi64>
  %79 = "memref.alloc"(%65) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %79) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg51: i64, %arg52: i64):
    "linalg.yield"(%arg51) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %80 = "memref.cast"(%79) : (memref<?xi64>) -> memref<*xi64>
  %81 = "memref.alloc"(%66) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %81) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg49: i64, %arg50: i64):
    "linalg.yield"(%arg49) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %82 = "memref.cast"(%81) : (memref<?xi64>) -> memref<*xi64>
  %83 = "memref.alloc"(%67) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %83) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg47: i64, %arg48: i64):
    "linalg.yield"(%arg47) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %84 = "memref.cast"(%83) : (memref<?xi64>) -> memref<*xi64>
  %85 = "memref.alloc"(%68) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %85) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg45: i64, %arg46: i64):
    "linalg.yield"(%arg45) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %86 = "memref.cast"(%85) : (memref<?xi64>) -> memref<*xi64>
  %87 = "memref.alloc"(%69) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "linalg.fill"(%1, %87) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg43: i64, %arg44: i64):
    "linalg.yield"(%arg43) : (i64) -> ()
  }) : (i64, memref<?xi64>) -> ()
  %88 = "memref.cast"(%87) : (memref<?xi64>) -> memref<*xi64>
  %89 = "memref.alloc"(%70) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
  "linalg.fill"(%0, %89) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg41: f64, %arg42: f64):
    "linalg.yield"(%arg41) : (f64) -> ()
  }) : (f64, memref<?xf64>) -> ()
  %90 = "memref.cast"(%89) : (memref<?xf64>) -> memref<*xf64>
  "func.call"(%9, %15, %13, %14, %13, %74, %76, %78, %80, %82, %84, %86, %88, %90, %9) <{callee = @read_input_2D_f64_i64}> {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %91 = "bufferization.to_tensor"(%73) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %92 = "bufferization.to_tensor"(%75) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %93 = "bufferization.to_tensor"(%77) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %94 = "bufferization.to_tensor"(%79) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %95 = "bufferization.to_tensor"(%81) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %96 = "bufferization.to_tensor"(%83) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %97 = "bufferization.to_tensor"(%85) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %98 = "bufferization.to_tensor"(%87) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %99 = "bufferization.to_tensor"(%89) <{restrict, writable}> : (memref<?xf64>) -> tensor<?xf64>
  %100 = "tensor.from_elements"(%71, %72) : (index, index) -> tensor<2xindex>
  %101 = "ta.spTensor_construct"(%100, %91, %95, %92, %96, %93, %97, %94, %98, %99) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %102 = "ta.SpTensorGetDimPos"(%101) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %103 = "ta.SpTensorGetDimSize"(%101) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %104 = "it.DenseDomainOp"(%58, %57) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %105 = "index.constant"() <{value = 0 : index}> : () -> index
  %106 = "index.constant"() <{value = 1 : index}> : () -> index
  %107 = "index.add"(%58, %106) : (index, index) -> index
  %108 = "memref.alloc"(%107) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  %109 = "arith.constant"() <{value = 0 : i64}> : () -> i64
  "memref.store"(%109, %108, %105) <{nontemporal = false}> : (i64, memref<?xi64>, index) -> ()
  %110 = "memref.alloc"(%103) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  %111 = "builtin.unrealized_conversion_cast"(%105, %107, %105, %103, %108, %110) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> !it.symbolic_domain<64>
  %112:6 = "it.itree"(%105, %107, %105, %103, %108, %110) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg16: index, %arg17: index, %arg18: index, %arg19: index, %arg20: memref<?xi64>, %arg21: memref<?xi64>):
    %182 = "builtin.unrealized_conversion_cast"(%arg16, %arg17, %arg18, %arg19, %arg20, %arg21) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> !it.symbolic_domain<64>
    %183:6 = "builtin.unrealized_conversion_cast"(%182) : (!it.symbolic_domain<64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
    %184 = "scf.forall"(%58, %183#4) <{operandSegmentSizes = array<i32: 0, 1, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
    ^bb0(%arg25: index, %arg26: tensor<?xi64>):
      %193 = "builtin.unrealized_conversion_cast"(%arg25, %183#1, %15, %183#3, %arg26, %183#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
      %194 = "arith.addi"(%arg25, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %195 = "tensor.extract"(%59, %arg25) : (tensor<?xi64>, index) -> i64
      %196 = "arith.index_cast"(%195) : (i64) -> index
      %197 = "tensor.extract"(%59, %194) : (tensor<?xi64>, index) -> i64
      %198 = "arith.index_cast"(%197) : (i64) -> index
      %199:6 = "scf.for"(%196, %198, %14, %arg25, %183#1, %15, %183#3, %arg26, %183#5) ({
      ^bb0(%arg27: index, %arg28: index, %arg29: index, %arg30: index, %arg31: index, %arg32: memref<?xi64>, %arg33: memref<?xi64>):
        %207 = "ta.SpTensorGetCrd"(%57, %arg27) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %208 = "arith.index_cast"(%207) : (i64) -> index
        %209 = "arith.addi"(%208, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %210 = "tensor.extract"(%102, %208) : (tensor<?xi64>, index) -> i64
        %211 = "arith.index_cast"(%210) : (i64) -> index
        %212 = "tensor.extract"(%102, %209) : (tensor<?xi64>, index) -> i64
        %213 = "arith.index_cast"(%212) : (i64) -> index
        %214:6 = "scf.for"(%211, %213, %14, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33) ({
        ^bb0(%arg34: index, %arg35: index, %arg36: index, %arg37: index, %arg38: index, %arg39: memref<?xi64>, %arg40: memref<?xi64>):
          %216 = "ta.SpTensorGetCrd"(%101, %arg34) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %217 = "arith.index_cast"(%216) : (i64) -> index
          %218 = "index.constant"() <{value = 1 : index}> : () -> index
          %219 = "index.add"(%arg35, %218) : (index, index) -> index
          %220 = "arith.index_cast"(%219) : (index) -> i64
          %221 = "memref.load"(%arg40, %217) <{nontemporal = false}> : (memref<?xi64>, index) -> i64
          %222 = "arith.cmpi"(%220, %221) <{predicate = 0 : i64}> : (i64, i64) -> i1
          %223 = "scf.if"(%222) ({
            "scf.yield"(%arg37) : (index) -> ()
          }, {
            "memref.store"(%220, %arg40, %217) <{nontemporal = false}> : (i64, memref<?xi64>, index) -> ()
            %225 = "index.add"(%arg37, %218) : (index, index) -> index
            "scf.yield"(%225) : (index) -> ()
          }) : (i1) -> index
          %224 = "builtin.unrealized_conversion_cast"(%arg35, %arg36, %223, %arg38, %arg39, %arg40) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> !it.symbolic_domain<64>
          "scf.yield"(%arg35, %arg36, %223, %arg38, %arg39, %arg40) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> ()
        }) : (index, index, index, index, index, index, index, memref<?xi64>, memref<?xi64>) -> (index, index, index, index, memref<?xi64>, memref<?xi64>)
        %215 = "builtin.unrealized_conversion_cast"(%214#0, %214#1, %214#2, %214#3, %214#4, %214#5) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> !it.symbolic_domain<64>
        "scf.yield"(%214#0, %214#1, %214#2, %214#3, %214#4, %214#5) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> ()
      }) : (index, index, index, index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
      %200 = "builtin.unrealized_conversion_cast"(%199#0, %199#1, %199#2, %199#3, %199#4, %199#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
      %201 = "index.constant"() <{value = 1 : index}> : () -> index
      %202 = "index.add"(%199#0, %201) : (index, index) -> index
      %203 = "arith.index_cast"(%199#2) : (index) -> i64
      "memref.store"(%203, %199#4, %202) <{nontemporal = false}> : (i64, tensor<?xi64>, index) -> ()
      %204 = "builtin.unrealized_conversion_cast"(%202, %199#1, %199#2, %199#3, %199#4, %199#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
      %205:6 = "builtin.unrealized_conversion_cast"(%204) : (!it.symbolic_domain<64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
      %206 = "tensor.extract_slice"(%205#4, %arg25) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<?xi64>, index) -> tensor<1xi64>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%206, %arg26, %arg25) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<1xi64>, tensor<?xi64>, index) -> ()
      }) : () -> ()
    }) : (index, tensor<?xi64>) -> tensor<?xi64>
    %185:2 = "scf.for"(%15, %58, %14, %1, %184) ({
    ^bb0(%arg22: index, %arg23: i64, %arg24: tensor<?xi64>):
      %190 = "tensor.extract"(%arg24, %arg22) : (tensor<?xi64>, index) -> i64
      %191 = "tensor.insert"(%arg23, %arg24, %arg22) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
      %192 = "arith.addi"(%arg23, %190) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      "scf.yield"(%192, %191) : (i64, tensor<?xi64>) -> ()
    }) : (index, index, index, i64, tensor<?xi64>) -> (i64, tensor<?xi64>)
    %186 = "tensor.insert"(%185#0, %185#1, %58) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
    %187 = "arith.addi"(%58, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %188 = "arith.index_cast"(%185#0) : (i64) -> index
    %189 = "builtin.unrealized_conversion_cast"(%187, %183#1, %188, %183#3, %186, %183#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
    "it.yield"(%187, %183#1, %188, %183#3, %186, %183#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> ()
  }) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> (index, index, index, index, memref<?xi64>, memref<?xi64>)
  %113 = "builtin.unrealized_conversion_cast"(%112#0, %112#1, %112#2, %112#3, %112#4, %112#5) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> !it.symbolic_domain<64>
  %114 = "index.constant"() <{value = 0 : index}> : () -> index
  %115 = "index.constant"() <{value = 1 : index}> : () -> index
  %116 = "arith.index_cast"(%58) : (index) -> i64
  %117 = "index.constant"() <{value = 1 : index}> : () -> index
  %118 = "memref.alloc"(%117) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  "memref.store"(%116, %118, %114) <{nontemporal = false}> : (i64, memref<?xi64>, index) -> ()
  %119 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<0xi64>
  %120 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<0xi64>
  %121 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<0xi64>
  %122 = "bufferization.to_tensor"(%118) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %123 = "bufferization.to_tensor"(%119) <{restrict, writable}> : (memref<0xi64>) -> tensor<0xi64>
  %124 = "bufferization.to_tensor"(%120) <{restrict, writable}> : (memref<0xi64>) -> tensor<0xi64>
  %125 = "bufferization.to_tensor"(%121) <{restrict, writable}> : (memref<0xi64>) -> tensor<0xi64>
  %126 = "index.mul"(%115, %58) : (index, index) -> index
  %127 = "memref.alloc"(%112#2) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
  %128 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<0xi64>
  %129 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<0xi64>
  %130 = "bufferization.to_tensor"(%112#4) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %131 = "bufferization.to_tensor"(%127) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
  %132 = "bufferization.to_tensor"(%128) <{restrict, writable}> : (memref<0xi64>) -> tensor<0xi64>
  %133 = "bufferization.to_tensor"(%129) <{restrict, writable}> : (memref<0xi64>) -> tensor<0xi64>
  %134 = "memref.alloc"(%112#2) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
  %135 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
  "scf.for"(%114, %112#2, %115) ({
  ^bb0(%arg15: index):
    "memref.store"(%135, %134, %arg15) <{nontemporal = false}> : (f64, memref<?xf64>, index) -> ()
    "scf.yield"() : () -> ()
  }) : (index, index, index) -> ()
  %136 = "bufferization.to_tensor"(%134) <{restrict, writable}> : (memref<?xf64>) -> tensor<?xf64>
  %137 = "tensor.from_elements"(%58, %112#3) : (index, index) -> tensor<2xindex>
  %138 = "ta.spTensor_construct"(%137, %122, %130, %123, %131, %124, %132, %125, %133, %136) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %139 = "ta.AllocWorkspace"(%138) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %140:2 = "it.itree"(%138, %139) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg1: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg2: !ta.workspace<f64, i64, ?>):
    %148:2 = "scf.for"(%15, %58, %14, %arg1, %arg2) ({
    ^bb0(%arg3: index, %arg4: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg5: !ta.workspace<f64, i64, ?>):
      %149 = "ta.WorkspaceClear"(%arg5) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %150 = "arith.addi"(%arg3, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %151 = "tensor.extract"(%59, %arg3) : (tensor<?xi64>, index) -> i64
      %152 = "arith.index_cast"(%151) : (i64) -> index
      %153 = "tensor.extract"(%59, %150) : (tensor<?xi64>, index) -> i64
      %154 = "arith.index_cast"(%153) : (i64) -> index
      %155:2 = "scf.for"(%152, %154, %14, %arg4, %149) ({
      ^bb0(%arg9: index, %arg10: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg11: !ta.workspace<f64, i64, ?>):
        %164 = "ta.SpTensorGetCrd"(%57, %arg9) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %165 = "arith.index_cast"(%164) : (i64) -> index
        %166 = "arith.addi"(%165, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %167 = "tensor.extract"(%102, %165) : (tensor<?xi64>, index) -> i64
        %168 = "arith.index_cast"(%167) : (i64) -> index
        %169 = "tensor.extract"(%102, %166) : (tensor<?xi64>, index) -> i64
        %170 = "arith.index_cast"(%169) : (i64) -> index
        %171:2 = "scf.for"(%168, %170, %14, %arg10, %arg11) ({
        ^bb0(%arg12: index, %arg13: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg14: !ta.workspace<f64, i64, ?>):
          %172 = "ta.SpTensorGetCrd"(%57, %arg9) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %173 = "arith.index_cast"(%172) : (i64) -> index
          %174 = "ta.SpTensorGetCrd"(%101, %arg12) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %175 = "arith.index_cast"(%174) : (i64) -> index
          %176 = "ta.SpTensorGetCrd"(%101, %arg12) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %177 = "arith.index_cast"(%176) : (i64) -> index
          %178 = "ta.TAExtractOp"(%57, %arg9, %arg3, %173) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %179 = "ta.TAExtractOp"(%101, %arg12, %165, %175) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %180 = "arith.mulf"(%178, %179) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
          %181 = "ta.WorkspaceAccumulateOp"(%arg14, %177, %177, %180) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          "scf.yield"(%arg13, %181) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> ()
        }) : (index, index, index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
        "scf.yield"(%171#0, %171#1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> ()
      }) : (index, index, index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
      %156 = "ta.SortCrdOp"(%155#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %157 = "ta.SpTensorGetNNZ"(%156) : (!ta.workspace<f64, i64, ?>) -> index
      %158:2 = "scf.for"(%15, %157, %14, %155#0, %156) ({
      ^bb0(%arg6: index, %arg7: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg8: !ta.workspace<f64, i64, ?>):
        %159 = "ta.SpTensorGetCrd"(%arg8, %arg6) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %160 = "arith.index_cast"(%159) : (i64) -> index
        %161 = "ta.TensorFindPos"(%arg7) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %162 = "ta.WorkspaceReadOp"(%arg8, %arg6, %160) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %163 = "ta.TAInsertOp"(%arg7, %arg3, %161, %arg3, %160, %162) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        "scf.yield"(%163, %arg8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> ()
      }) : (index, index, index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
      "scf.yield"(%158#0, %158#1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> ()
    }) : (index, index, index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
    "it.yield"(%148#0, %148#1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> ()
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%140#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %141 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xf64>
  "memref.store"(%0, %141, %15) : (f64, memref<1xf64>, index) -> ()
  %142 = "ta.SpTensorGetVals"(%140#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %143 = "tensor.dim"(%142, %15) : (tensor<?xf64>, index) -> index
  "scf.for"(%15, %143, %14) ({
  ^bb0(%arg0: index):
    %145 = "tensor.extract"(%142, %arg0) : (tensor<?xf64>, index) -> f64
    %146 = "memref.load"(%141, %15) : (memref<1xf64>, index) -> f64
    %147 = "arith.addf"(%145, %146) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "memref.store"(%147, %141, %15) : (f64, memref<1xf64>, index) -> ()
    "scf.yield"() : () -> ()
  }) : (index, index, index) -> ()
  %144 = "memref.load"(%141, %15) : (memref<1xf64>, index) -> f64
  "ta.print"(%144) : (f64) -> ()
  "func.return"() : () -> ()
}) : () -> ()

loc("debug/mult_spgemm_CSRxCSR_oCSR.SCF.v2.parallel_symbolic.auto.mlir":153:13): error: 'scf.for' op 4-th init and 4-th region iter_arg have different type: 'tensor<?xi64>' != 'memref<?xi64>'
