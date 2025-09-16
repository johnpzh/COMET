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
    %idx0 = index.constant 0
    %idx1 = index.constant 1
    %47 = index.add %21, %idx1
    %48 = tensor.empty(%47) : tensor<?xi64>
    %c0_i64_39 = arith.constant 0 : i64
    %inserted = tensor.insert %c0_i64_39 into %48[%idx0] : tensor<?xi64>
    %49 = tensor.empty(%45) : tensor<?xi64>
    %50 = builtin.unrealized_conversion_cast %idx0, %47, %idx0, %45, %48, %49 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %51:6 = "it.itree"(%idx0, %47, %idx0, %45, %48, %49) <{operandSegmentSizes = array<i32: 6, 0>}> ({
    ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
      %67 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %68:6 = builtin.unrealized_conversion_cast %67 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %69 = scf.forall (%arg6) in (%21) shared_outs(%arg7 = %68#4) -> (tensor<?xi64>) {
        %74 = builtin.unrealized_conversion_cast %arg6, %68#1, %c0, %68#3, %arg7, %68#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %75 = arith.addi %arg6, %c1 : index
        %extracted = tensor.extract %22[%arg6] : tensor<?xi64>
        %76 = arith.index_cast %extracted : i64 to index
        %extracted_47 = tensor.extract %22[%75] : tensor<?xi64>
        %77 = arith.index_cast %extracted_47 : i64 to index
        %78:6 = scf.for %arg8 = %76 to %77 step %c1 iter_args(%arg9 = %arg6, %arg10 = %68#1, %arg11 = %c0, %arg12 = %68#3, %arg13 = %arg7, %arg14 = %68#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %85 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %86 = arith.index_cast %85 : i64 to index
          %87 = arith.addi %86, %c1 : index
          %extracted_49 = tensor.extract %44[%86] : tensor<?xi64>
          %88 = arith.index_cast %extracted_49 : i64 to index
          %extracted_50 = tensor.extract %44[%87] : tensor<?xi64>
          %89 = arith.index_cast %extracted_50 : i64 to index
          %90:6 = scf.for %arg15 = %88 to %89 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
            %92 = "ta.SpTensorGetCrd"(%43, %arg15) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %93 = arith.index_cast %92 : i64 to index
            %idx1_51 = index.constant 1
            %94 = index.add %arg16, %idx1_51
            %95 = arith.index_cast %94 : index to i64
            %extracted_52 = tensor.extract %arg21[%93] : tensor<?xi64>
            %96 = arith.cmpi eq, %95, %extracted_52 : i64
            %97:2 = scf.if %96 -> (index, tensor<?xi64>) {
              scf.yield %arg18, %arg21 : index, tensor<?xi64>
            } else {
              %inserted_53 = tensor.insert %95 into %arg21[%93] : tensor<?xi64>
              %99 = index.add %arg18, %idx1_51
              scf.yield %99, %inserted_53 : index, tensor<?xi64>
            }
            %98 = builtin.unrealized_conversion_cast %arg16, %arg17, %97#0, %arg19, %arg20, %97#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
            scf.yield %arg16, %arg17, %97#0, %arg19, %arg20, %97#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
          }
          %91 = builtin.unrealized_conversion_cast %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %79 = builtin.unrealized_conversion_cast %78#0, %78#1, %78#2, %78#3, %78#4, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %idx1_48 = index.constant 1
        %80 = index.add %78#0, %idx1_48
        %81 = arith.index_cast %78#2 : index to i64
        %82 = bufferization.to_memref %78#4 : memref<?xi64>
        memref.store %81, %82[%80] : memref<?xi64>
        %83 = builtin.unrealized_conversion_cast %80, %78#1, %78#2, %78#3, %78#4, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %84:6 = builtin.unrealized_conversion_cast %83 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
        %extracted_slice = tensor.extract_slice %84#4[%84#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %extracted_slice into %arg7[%84#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
        }
      }
      %70 = arith.addi %21, %c1 : index
      %71:2 = scf.for %arg6 = %c1 to %70 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %69) -> (i64, tensor<?xi64>) {
        %extracted = tensor.extract %arg8[%arg6] : tensor<?xi64>
        %74 = arith.addi %extracted, %arg7 : i64
        %inserted_47 = tensor.insert %74 into %arg8[%arg6] : tensor<?xi64>
        scf.yield %74, %inserted_47 : i64, tensor<?xi64>
      }
      %72 = arith.index_cast %71#0 : i64 to index
      %73 = builtin.unrealized_conversion_cast %21, %68#1, %72, %68#3, %71#1, %68#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      it.yield %21, %68#1, %72, %68#3, %71#1, %68#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
    %52 = builtin.unrealized_conversion_cast %51#0, %51#1, %51#2, %51#3, %51#4, %51#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx0_40 = index.constant 0
    %idx1_41 = index.constant 1
    %53 = arith.index_cast %21 : index to i64
    %idx1_42 = index.constant 1
    %54 = tensor.empty(%idx1_42) : tensor<?xi64>
    %inserted_43 = tensor.insert %53 into %54[%idx0_40] : tensor<?xi64>
    %55 = tensor.empty() : tensor<0xi64>
    %56 = tensor.empty() : tensor<0xi64>
    %57 = tensor.empty() : tensor<0xi64>
    %58 = tensor.empty(%51#2) : tensor<?xi64>
    %59 = tensor.empty() : tensor<0xi64>
    %60 = tensor.empty() : tensor<0xi64>
    %61 = tensor.empty(%51#2) : tensor<?xf64>
    %cst_44 = arith.constant 0.000000e+00 : f64
    scf.for %arg0 = %idx0_40 to %51#2 step %idx1_41 {
      %inserted_47 = tensor.insert %cst_44 into %61[%arg0] : tensor<?xf64>
    }
    %from_elements_45 = tensor.from_elements %21, %51#3 : tensor<2xindex>
    %62 = "ta.spTensor_construct"(%from_elements_45, %inserted_43, %51#4, %55, %58, %56, %59, %57, %60, %61) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %63 = "ta.AllocWorkspace"(%62) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
    %64:2 = "it.itree"(%62, %63) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
      %67:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %68:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %67#5, %arg4 = %67#6) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted = tensor.extract %67#4[%arg2] : tensor<?xi64>
        %70 = arith.index_cast %extracted : i64 to index
        %71 = arith.addi %arg2, %c1 : index
        %extracted_47 = tensor.extract %67#4[%71] : tensor<?xi64>
        %72 = arith.index_cast %extracted_47 : i64 to index
        %73 = arith.subi %72, %70 : index
        %extracted_slice = tensor.extract_slice %arg3[%70] [%73] [1] : tensor<?xi64> to tensor<?xi64>
        %extracted_slice_48 = tensor.extract_slice %arg4[%70] [%73] [1] : tensor<?xf64> to tensor<?xf64>
        %74 = builtin.unrealized_conversion_cast %67#0, %67#1, %67#2, %c0, %67#4, %extracted_slice, %extracted_slice_48 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %75 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
        %76 = arith.addi %arg2, %c1 : index
        %extracted_49 = tensor.extract %22[%arg2] : tensor<?xi64>
        %77 = arith.index_cast %extracted_49 : i64 to index
        %extracted_50 = tensor.extract %22[%76] : tensor<?xi64>
        %78 = arith.index_cast %extracted_50 : i64 to index
        %79:2 = scf.for %arg5 = %77 to %78 step %c1 iter_args(%arg6 = %74, %arg7 = %75) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %84 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %85 = arith.index_cast %84 : i64 to index
          %86 = arith.addi %85, %c1 : index
          %extracted_51 = tensor.extract %44[%85] : tensor<?xi64>
          %87 = arith.index_cast %extracted_51 : i64 to index
          %extracted_52 = tensor.extract %44[%86] : tensor<?xi64>
          %88 = arith.index_cast %extracted_52 : i64 to index
          %89:2 = scf.for %arg8 = %87 to %88 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
            %90 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %91 = arith.index_cast %90 : i64 to index
            %92 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %93 = arith.index_cast %92 : i64 to index
            %94 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %95 = arith.index_cast %94 : i64 to index
            %96 = "ta.TAExtractOp"(%20, %arg5, %arg2, %91) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %97 = "ta.TAExtractOp"(%43, %arg8, %85, %93) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %98 = arith.mulf %96, %97 : f64
            %99 = "ta.WorkspaceAccumulateOp"(%arg10, %95, %95, %98) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
            scf.yield %arg9, %99 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
          }
          scf.yield %89#0, %89#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        %80 = "ta.SortCrdOp"(%79#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
        %81 = "ta.SpTensorGetNNZ"(%80) : (!ta.workspace<f64, i64, ?>) -> index
        %82:7 = builtin.unrealized_conversion_cast %79#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
        %83:3 = scf.for %arg5 = %c0 to %81 step %c1 iter_args(%arg6 = %82#5, %arg7 = %82#6, %arg8 = %80) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) {
          %84 = "ta.SpTensorGetCrd"(%arg8, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
          %85 = arith.index_cast %84 : i64 to index
          %86 = "ta.WorkspaceReadOp"(%arg8, %arg5, %85) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
          %inserted_51 = tensor.insert %84 into %arg6[%arg5] : tensor<?xi64>
          %inserted_52 = tensor.insert %86 into %arg7[%arg5] : tensor<?xf64>
          scf.yield %inserted_51, %inserted_52, %arg8 : tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>
        }
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %83#0 into %arg3[%70] [%73] [1] : tensor<?xi64> into tensor<?xi64>
          tensor.parallel_insert_slice %83#1 into %arg4[%70] [%73] [1] : tensor<?xf64> into tensor<?xf64>
        }
      }
      %69 = builtin.unrealized_conversion_cast %67#0, %67#1, %67#2, %67#3, %67#4, %68#0, %68#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      it.yield %69, %arg1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
    }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
    "ta.print"(%64#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    %alloc_46 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_46[%c0] : memref<1xf64>
    %65 = "ta.SpTensorGetVals"(%64#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
    %dim = tensor.dim %65, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %65[%arg0] : tensor<?xf64>
      %67 = memref.load %alloc_46[%c0] : memref<1xf64>
      %68 = arith.addf %extracted, %67 : f64
      memref.store %68, %alloc_46[%c0] : memref<1xf64>
    }
    %66 = memref.load %alloc_46[%c0] : memref<1xf64>
    "ta.print"(%66) : (f64) -> ()
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


// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @printNewline()

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @printF64(f64)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printNewline()

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printNewline()

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printNewline()

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
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
  %idx0 = index.constant 0
  %idx0_18 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_18, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_19 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_19] : tensor<2xindex>
  %alloc_20 = memref.alloc() : memref<13xindex>
  %cast_21 = memref.cast %alloc_20 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %21 = memref.load %alloc_20[%c0] : memref<13xindex>
  %22 = memref.load %alloc_20[%c1] : memref<13xindex>
  %23 = memref.load %alloc_20[%c2] : memref<13xindex>
  %24 = memref.load %alloc_20[%c3] : memref<13xindex>
  %25 = memref.load %alloc_20[%c4] : memref<13xindex>
  %26 = memref.load %alloc_20[%c5] : memref<13xindex>
  %27 = memref.load %alloc_20[%c6] : memref<13xindex>
  %28 = memref.load %alloc_20[%c7] : memref<13xindex>
  %29 = memref.load %alloc_20[%c8] : memref<13xindex>
  %30 = memref.load %alloc_20[%c9] : memref<13xindex>
  %31 = memref.load %alloc_20[%c10] : memref<13xindex>
  %alloc_22 = memref.alloc(%21) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%22) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_38 = memref.alloc(%29) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_38 : memref<?xf64>)
  %cast_39 = memref.cast %alloc_38 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %cast_39, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %32 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %33 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %34 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xf64>
  %from_elements_40 = tensor.from_elements %30, %31 : tensor<2xindex>
  %idx0_41 = index.constant 0
  %idx0_42 = index.constant 0
  %41 = builtin.unrealized_conversion_cast %from_elements_40, %idx0_41, %32, %idx0_42, %36, %37, %40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1 = index.constant 1
  %extracted_43 = tensor.extract %from_elements_40[%idx1] : tensor<2xindex>
  %42 = "it.DenseDomainOp"(%extracted, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_44 = index.constant 0
  %idx1_45 = index.constant 1
  %43 = index.add %extracted, %idx1_45
  %44 = tensor.empty(%43) : tensor<?xi64>
  %c0_i64_46 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_46 into %44[%idx0_44] : tensor<?xi64>
  %45 = tensor.empty(%extracted_43) : tensor<?xi64>
  %46 = builtin.unrealized_conversion_cast %idx0_44, %43, %idx0_44, %extracted_43, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %47:6 = "it.itree"(%idx0_44, %43, %idx0_44, %extracted_43, %44, %45) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %68 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %69:6 = builtin.unrealized_conversion_cast %68 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %70 = scf.forall (%arg6) in (%extracted) shared_outs(%arg7 = %69#4) -> (tensor<?xi64>) {
      %75 = builtin.unrealized_conversion_cast %arg6, %69#1, %c0, %69#3, %arg7, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %76 = arith.addi %arg6, %c1 : index
      %extracted_62 = tensor.extract %15[%arg6] : tensor<?xi64>
      %77 = arith.index_cast %extracted_62 : i64 to index
      %extracted_63 = tensor.extract %15[%76] : tensor<?xi64>
      %78 = arith.index_cast %extracted_63 : i64 to index
      %79:6 = scf.for %arg8 = %77 to %78 step %c1 iter_args(%arg9 = %arg6, %arg10 = %69#1, %arg11 = %c0, %arg12 = %69#3, %arg13 = %arg7, %arg14 = %69#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_65 = tensor.extract %16[%arg8] : tensor<?xi64>
        %86 = arith.index_cast %extracted_65 : i64 to index
        %87 = arith.addi %86, %c1 : index
        %extracted_66 = tensor.extract %36[%86] : tensor<?xi64>
        %88 = arith.index_cast %extracted_66 : i64 to index
        %extracted_67 = tensor.extract %36[%87] : tensor<?xi64>
        %89 = arith.index_cast %extracted_67 : i64 to index
        %90:6 = scf.for %arg15 = %88 to %89 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %extracted_68 = tensor.extract %37[%arg15] : tensor<?xi64>
          %92 = arith.index_cast %extracted_68 : i64 to index
          %idx1_69 = index.constant 1
          %93 = index.add %arg16, %idx1_69
          %94 = arith.index_cast %93 : index to i64
          %extracted_70 = tensor.extract %arg21[%92] : tensor<?xi64>
          %95 = arith.cmpi eq, %94, %extracted_70 : i64
          %96:2 = scf.if %95 -> (index, tensor<?xi64>) {
            scf.yield %arg18, %arg21 : index, tensor<?xi64>
          } else {
            %inserted_71 = tensor.insert %94 into %arg21[%92] : tensor<?xi64>
            %98 = index.add %arg18, %idx1_69
            scf.yield %98, %inserted_71 : index, tensor<?xi64>
          }
          %97 = builtin.unrealized_conversion_cast %arg16, %arg17, %96#0, %arg19, %arg20, %96#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg16, %arg17, %96#0, %arg19, %arg20, %96#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %91 = builtin.unrealized_conversion_cast %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %80 = builtin.unrealized_conversion_cast %79#0, %79#1, %79#2, %79#3, %79#4, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_64 = index.constant 1
      %81 = index.add %79#0, %idx1_64
      %82 = arith.index_cast %79#2 : index to i64
      %83 = bufferization.to_memref %79#4 : memref<?xi64>
      memref.store %82, %83[%81] : memref<?xi64>
      %84 = builtin.unrealized_conversion_cast %81, %79#1, %79#2, %79#3, %79#4, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %85:6 = builtin.unrealized_conversion_cast %84 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %85#4[%85#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%85#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %71 = arith.addi %extracted, %c1 : index
    %72:2 = scf.for %arg6 = %c1 to %71 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %70) -> (i64, tensor<?xi64>) {
      %extracted_62 = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %75 = arith.addi %extracted_62, %arg7 : i64
      %inserted_63 = tensor.insert %75 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %75, %inserted_63 : i64, tensor<?xi64>
    }
    %73 = arith.index_cast %72#0 : i64 to index
    %74 = builtin.unrealized_conversion_cast %extracted, %69#1, %73, %69#3, %72#1, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %extracted, %69#1, %73, %69#3, %72#1, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %48 = builtin.unrealized_conversion_cast %47#0, %47#1, %47#2, %47#3, %47#4, %47#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_47 = index.constant 0
  %idx1_48 = index.constant 1
  %49 = arith.index_cast %extracted : index to i64
  %idx1_49 = index.constant 1
  %50 = tensor.empty(%idx1_49) : tensor<?xi64>
  %inserted_50 = tensor.insert %49 into %50[%idx0_47] : tensor<?xi64>
  %51 = tensor.empty() : tensor<0xi64>
  %52 = tensor.empty() : tensor<0xi64>
  %53 = tensor.empty() : tensor<0xi64>
  %54 = tensor.empty(%47#2) : tensor<?xi64>
  %55 = tensor.empty() : tensor<0xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty(%47#2) : tensor<?xf64>
  %cst_51 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_47 to %47#2 step %idx1_48 {
    %inserted_62 = tensor.insert %cst_51 into %57[%arg0] : tensor<?xf64>
  }
  %from_elements_52 = tensor.from_elements %extracted, %47#3 : tensor<2xindex>
  %idx0_53 = index.constant 0
  %idx0_54 = index.constant 0
  %58 = builtin.unrealized_conversion_cast %from_elements_52, %idx0_53, %inserted_50, %idx0_54, %47#4, %54, %57 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1_55 = index.constant 1
  %extracted_56 = tensor.extract %from_elements_52[%idx1_55] : tensor<2xindex>
  %59 = bufferization.alloc_tensor(%extracted_56) : tensor<?xf64>
  %c1_i32_57 = arith.constant 1 : i32
  %60 = bufferization.alloc_tensor(%extracted_56) : tensor<?xi32>
  %idx0_58 = index.constant 0
  %61 = bufferization.alloc_tensor(%extracted_56) : tensor<?xi64>
  %62 = builtin.unrealized_conversion_cast %59, %c1_i32_57, %60, %idx0_58, %61 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %63:12 = "it.itree"(%from_elements_52, %idx0_53, %inserted_50, %idx0_54, %47#4, %54, %57, %59, %c1_i32_57, %60, %idx0_58, %61) <{operandSegmentSizes = array<i32: 7, 5>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: tensor<?xf64>, %arg8: i32, %arg9: tensor<?xi32>, %arg10: index, %arg11: tensor<?xi64>):
    %68 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %69:7 = builtin.unrealized_conversion_cast %68 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %70:2 = scf.forall (%arg12) in (%extracted) shared_outs(%arg13 = %69#5, %arg14 = %69#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_62 = tensor.extract %69#4[%arg12] : tensor<?xi64>
      %72 = arith.index_cast %extracted_62 : i64 to index
      %73 = arith.addi %arg12, %c1 : index
      %extracted_63 = tensor.extract %69#4[%73] : tensor<?xi64>
      %74 = arith.index_cast %extracted_63 : i64 to index
      %75 = arith.subi %74, %72 : index
      %extracted_slice = tensor.extract_slice %arg13[%72] [%75] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_64 = tensor.extract_slice %arg14[%72] [%75] [1] : tensor<?xf64> to tensor<?xf64>
      %76 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %c0, %69#4, %extracted_slice, %extracted_slice_64 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %c1_i32_65 = arith.constant 1 : i32
      %77 = arith.index_cast %arg12 : index to i32
      %78 = arith.addi %77, %c1_i32_65 : i32
      %idx0_66 = index.constant 0
      %79 = builtin.unrealized_conversion_cast %arg7, %78, %arg9, %idx0_66, %arg11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %80 = arith.addi %arg12, %c1 : index
      %extracted_67 = tensor.extract %15[%arg12] : tensor<?xi64>
      %81 = arith.index_cast %extracted_67 : i64 to index
      %extracted_68 = tensor.extract %15[%80] : tensor<?xi64>
      %82 = arith.index_cast %extracted_68 : i64 to index
      %83:12 = scf.for %arg15 = %81 to %82 step %c1 iter_args(%arg16 = %69#0, %arg17 = %69#1, %arg18 = %69#2, %arg19 = %c0, %arg20 = %69#4, %arg21 = %extracted_slice, %arg22 = %extracted_slice_64, %arg23 = %arg7, %arg24 = %78, %arg25 = %arg9, %arg26 = %idx0_66, %arg27 = %arg11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_70 = tensor.extract %16[%arg15] : tensor<?xi64>
        %91 = arith.index_cast %extracted_70 : i64 to index
        %92 = arith.addi %91, %c1 : index
        %extracted_71 = tensor.extract %36[%91] : tensor<?xi64>
        %93 = arith.index_cast %extracted_71 : i64 to index
        %extracted_72 = tensor.extract %36[%92] : tensor<?xi64>
        %94 = arith.index_cast %extracted_72 : i64 to index
        %95:12 = scf.for %arg28 = %93 to %94 step %c1 iter_args(%arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %arg21, %arg35 = %arg22, %arg36 = %arg23, %arg37 = %arg24, %arg38 = %arg25, %arg39 = %arg26, %arg40 = %arg27) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_73 = tensor.extract %16[%arg15] : tensor<?xi64>
          %98 = arith.index_cast %extracted_73 : i64 to index
          %extracted_74 = tensor.extract %37[%arg28] : tensor<?xi64>
          %99 = arith.index_cast %extracted_74 : i64 to index
          %extracted_75 = tensor.extract %37[%arg28] : tensor<?xi64>
          %100 = arith.index_cast %extracted_75 : i64 to index
          %extracted_76 = tensor.extract %19[%arg15] : tensor<?xf64>
          %extracted_77 = tensor.extract %40[%arg28] : tensor<?xf64>
          %101 = arith.mulf %extracted_76, %extracted_77 : f64
          %extracted_78 = tensor.extract %arg38[%100] : tensor<?xi32>
          %102 = arith.cmpi eq, %extracted_78, %arg37 : i32
          %103:4 = scf.if %102 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_79 = tensor.extract %arg36[%100] : tensor<?xf64>
            %105 = arith.addf %extracted_79, %101 : f64
            %inserted_80 = tensor.insert %105 into %arg36[%100] : tensor<?xf64>
            scf.yield %arg38, %arg39, %arg40, %inserted_80 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_79 = tensor.insert %arg37 into %arg38[%100] : tensor<?xi32>
            %105 = arith.index_cast %100 : index to i64
            %inserted_80 = tensor.insert %105 into %arg40[%arg39] : tensor<?xi64>
            %idx1_81 = index.constant 1
            %106 = index.add %arg39, %idx1_81
            %inserted_82 = tensor.insert %101 into %arg36[%100] : tensor<?xf64>
            scf.yield %inserted_79, %106, %inserted_80, %inserted_82 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          %104 = builtin.unrealized_conversion_cast %103#3, %arg37, %103#0, %103#1, %103#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
          scf.yield %arg29, %arg30, %arg31, %arg32, %arg33, %arg34, %arg35, %103#3, %arg37, %103#0, %103#1, %103#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        }
        %96 = builtin.unrealized_conversion_cast %95#0, %95#1, %95#2, %95#3, %95#4, %95#5, %95#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %97 = builtin.unrealized_conversion_cast %95#7, %95#8, %95#9, %95#10, %95#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %95#0, %95#1, %95#2, %95#3, %95#4, %95#5, %95#6, %95#7, %95#8, %95#9, %95#10, %95#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %84 = builtin.unrealized_conversion_cast %83#0, %83#1, %83#2, %83#3, %83#4, %83#5, %83#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %85 = builtin.unrealized_conversion_cast %83#7, %83#8, %83#9, %83#10, %83#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %idx0_69 = index.constant 0
      %86 = "ta.TensorSortOp"(%83#11, %idx0_69, %83#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %87 = builtin.unrealized_conversion_cast %83#7, %83#8, %83#9, %83#10, %86 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %88:7 = builtin.unrealized_conversion_cast %84 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %89:7 = scf.for %arg15 = %c0 to %83#10 step %c1 iter_args(%arg16 = %88#5, %arg17 = %88#6, %arg18 = %83#7, %arg19 = %83#8, %arg20 = %83#9, %arg21 = %83#10, %arg22 = %86) -> (tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_70 = tensor.extract %arg22[%arg15] : tensor<?xi64>
        %91 = arith.index_cast %extracted_70 : i64 to index
        %extracted_71 = tensor.extract %arg18[%91] : tensor<?xf64>
        %inserted_72 = tensor.insert %extracted_70 into %arg16[%arg15] : tensor<?xi64>
        %inserted_73 = tensor.insert %extracted_71 into %arg17[%arg15] : tensor<?xf64>
        scf.yield %inserted_72, %inserted_73, %arg18, %arg19, %arg20, %arg21, %arg22 : tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %90 = builtin.unrealized_conversion_cast %89#2, %89#3, %89#4, %89#5, %89#6 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %89#0 into %arg13[%72] [%75] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %89#1 into %arg14[%72] [%75] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %71 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %69#3, %69#4, %70#0, %70#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %69#0, %69#1, %69#2, %69#3, %69#4, %70#0, %70#1, %arg7, %arg8, %arg9, %arg10, %arg11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>)
  %64 = builtin.unrealized_conversion_cast %63#0, %63#1, %63#2, %63#3, %63#4, %63#5, %63#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %65 = builtin.unrealized_conversion_cast %63#7, %63#8, %63#9, %63#10, %63#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %66 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_59 = index.constant 0
  %inserted_60 = tensor.insert %idx-1 into %66[%idx0_59] : tensor<1xindex>
  "ta.print"(%63#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_60) : (tensor<1xindex>) -> ()
  "ta.print"(%63#4) : (tensor<?xi64>) -> ()
  "ta.print"(%63#5) : (tensor<?xi64>) -> ()
  "ta.print"(%63#6) : (tensor<?xf64>) -> ()
  %alloc_61 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_61[%c0] : memref<1xf64>
  %dim = tensor.dim %63#6, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted_62 = tensor.extract %63#6[%arg0] : tensor<?xf64>
    %68 = memref.load %alloc_61[%c0] : memref<1xf64>
    %69 = arith.addf %extracted_62, %68 : f64
    memref.store %69, %alloc_61[%c0] : memref<1xf64>
  }
  %67 = memref.load %alloc_61[%c0] : memref<1xf64>
  "ta.print"(%67) : (f64) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
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
  %idx0 = index.constant 0
  %idx0_18 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_18, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_19 = index.constant 0
  %alloc_20 = memref.alloc() : memref<13xindex>
  %cast_21 = memref.cast %alloc_20 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %21 = memref.load %alloc_20[%c0] : memref<13xindex>
  %22 = memref.load %alloc_20[%c1] : memref<13xindex>
  %23 = memref.load %alloc_20[%c2] : memref<13xindex>
  %24 = memref.load %alloc_20[%c3] : memref<13xindex>
  %25 = memref.load %alloc_20[%c4] : memref<13xindex>
  %26 = memref.load %alloc_20[%c5] : memref<13xindex>
  %27 = memref.load %alloc_20[%c6] : memref<13xindex>
  %28 = memref.load %alloc_20[%c7] : memref<13xindex>
  %29 = memref.load %alloc_20[%c8] : memref<13xindex>
  %30 = memref.load %alloc_20[%c9] : memref<13xindex>
  %31 = memref.load %alloc_20[%c10] : memref<13xindex>
  %alloc_22 = memref.alloc(%21) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%22) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_38 = memref.alloc(%29) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_38 : memref<?xf64>)
  %cast_39 = memref.cast %alloc_38 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %cast_39, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %32 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %33 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %34 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xf64>
  %from_elements_40 = tensor.from_elements %30, %31 : tensor<2xindex>
  %idx0_41 = index.constant 0
  %idx0_42 = index.constant 0
  %41 = builtin.unrealized_conversion_cast %from_elements_40, %idx0_41, %32, %idx0_42, %36, %37, %40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1 = index.constant 1
  %42 = "it.DenseDomainOp"(%9, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_43 = index.constant 0
  %idx1_44 = index.constant 1
  %43 = index.add %9, %idx1_44
  %44 = tensor.empty(%43) : tensor<?xi64>
  %c0_i64_45 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_45 into %44[%idx0_43] : tensor<?xi64>
  %45 = tensor.empty(%31) : tensor<?xi64>
  %46 = builtin.unrealized_conversion_cast %idx0_43, %43, %idx0_43, %31, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %47 = builtin.unrealized_conversion_cast %idx0_43, %43, %idx0_43, %31, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %48 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %44) -> (tensor<?xi64>) {
    %75 = builtin.unrealized_conversion_cast %arg0, %43, %c0, %31, %arg1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %76 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %77 = arith.index_cast %extracted : i64 to index
    %extracted_60 = tensor.extract %15[%76] : tensor<?xi64>
    %78 = arith.index_cast %extracted_60 : i64 to index
    %79:6 = scf.for %arg2 = %77 to %78 step %c1 iter_args(%arg3 = %arg0, %arg4 = %43, %arg5 = %c0, %arg6 = %31, %arg7 = %arg1, %arg8 = %45) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %extracted_62 = tensor.extract %16[%arg2] : tensor<?xi64>
      %85 = arith.index_cast %extracted_62 : i64 to index
      %86 = arith.addi %85, %c1 : index
      %extracted_63 = tensor.extract %36[%85] : tensor<?xi64>
      %87 = arith.index_cast %extracted_63 : i64 to index
      %extracted_64 = tensor.extract %36[%86] : tensor<?xi64>
      %88 = arith.index_cast %extracted_64 : i64 to index
      %89:6 = scf.for %arg9 = %87 to %88 step %c1 iter_args(%arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6, %arg14 = %arg7, %arg15 = %arg8) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_65 = tensor.extract %37[%arg9] : tensor<?xi64>
        %91 = arith.index_cast %extracted_65 : i64 to index
        %idx1_66 = index.constant 1
        %92 = index.add %arg10, %idx1_66
        %93 = arith.index_cast %92 : index to i64
        %extracted_67 = tensor.extract %arg15[%91] : tensor<?xi64>
        %94 = arith.cmpi eq, %93, %extracted_67 : i64
        %95:2 = scf.if %94 -> (index, tensor<?xi64>) {
          scf.yield %arg12, %arg15 : index, tensor<?xi64>
        } else {
          %inserted_68 = tensor.insert %93 into %arg15[%91] : tensor<?xi64>
          %97 = index.add %arg12, %idx1_66
          scf.yield %97, %inserted_68 : index, tensor<?xi64>
        }
        %96 = builtin.unrealized_conversion_cast %arg10, %arg11, %95#0, %arg13, %arg14, %95#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %arg10, %arg11, %95#0, %arg13, %arg14, %95#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %90 = builtin.unrealized_conversion_cast %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %80 = builtin.unrealized_conversion_cast %79#0, %79#1, %79#2, %79#3, %79#4, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx1_61 = index.constant 1
    %81 = index.add %79#0, %idx1_61
    %82 = arith.index_cast %79#2 : index to i64
    %83 = bufferization.to_memref %79#4 : memref<?xi64>
    memref.store %82, %83[%81] : memref<?xi64>
    %84 = builtin.unrealized_conversion_cast %81, %79#1, %79#2, %79#3, %79#4, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %extracted_slice = tensor.extract_slice %79#4[%81] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%81] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %49 = arith.addi %9, %c1 : index
  %50:2 = scf.for %arg0 = %c1 to %49 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %48) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %75 = arith.addi %extracted, %arg1 : i64
    %inserted_60 = tensor.insert %75 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %75, %inserted_60 : i64, tensor<?xi64>
  }
  %51 = arith.index_cast %50#0 : i64 to index
  %52 = builtin.unrealized_conversion_cast %9, %43, %51, %31, %50#1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %53 = builtin.unrealized_conversion_cast %9, %43, %51, %31, %50#1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_46 = index.constant 0
  %idx1_47 = index.constant 1
  %54 = arith.index_cast %9 : index to i64
  %idx1_48 = index.constant 1
  %55 = tensor.empty(%idx1_48) : tensor<?xi64>
  %inserted_49 = tensor.insert %54 into %55[%idx0_46] : tensor<?xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = tensor.empty() : tensor<0xi64>
  %59 = tensor.empty(%51) : tensor<?xi64>
  %60 = tensor.empty() : tensor<0xi64>
  %61 = tensor.empty() : tensor<0xi64>
  %62 = tensor.empty(%51) : tensor<?xf64>
  %cst_50 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_46 to %51 step %idx1_47 {
    %inserted_60 = tensor.insert %cst_50 into %62[%arg0] : tensor<?xf64>
  }
  %from_elements_51 = tensor.from_elements %9, %31 : tensor<2xindex>
  %idx0_52 = index.constant 0
  %idx0_53 = index.constant 0
  %63 = builtin.unrealized_conversion_cast %from_elements_51, %idx0_52, %inserted_49, %idx0_53, %50#1, %59, %62 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1_54 = index.constant 1
  %64 = bufferization.alloc_tensor(%31) : tensor<?xf64>
  %c1_i32_55 = arith.constant 1 : i32
  %65 = bufferization.alloc_tensor(%31) : tensor<?xi32>
  %idx0_56 = index.constant 0
  %66 = bufferization.alloc_tensor(%31) : tensor<?xi64>
  %67 = builtin.unrealized_conversion_cast %64, %c1_i32_55, %65, %idx0_56, %66 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %68 = builtin.unrealized_conversion_cast %from_elements_51, %idx0_52, %inserted_49, %idx0_53, %50#1, %59, %62 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %69:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %59, %arg2 = %62) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %50#1[%arg0] : tensor<?xi64>
    %75 = arith.index_cast %extracted : i64 to index
    %76 = arith.addi %arg0, %c1 : index
    %extracted_60 = tensor.extract %50#1[%76] : tensor<?xi64>
    %77 = arith.index_cast %extracted_60 : i64 to index
    %78 = arith.subi %77, %75 : index
    %extracted_slice = tensor.extract_slice %arg1[%75] [%78] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_61 = tensor.extract_slice %arg2[%75] [%78] [1] : tensor<?xf64> to tensor<?xf64>
    %79 = builtin.unrealized_conversion_cast %from_elements_51, %idx0_52, %inserted_49, %c0, %50#1, %extracted_slice, %extracted_slice_61 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c1_i32_62 = arith.constant 1 : i32
    %80 = arith.index_cast %arg0 : index to i32
    %81 = arith.addi %80, %c1_i32_62 : i32
    %idx0_63 = index.constant 0
    %82 = builtin.unrealized_conversion_cast %64, %81, %65, %idx0_63, %66 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %83 = arith.addi %arg0, %c1 : index
    %extracted_64 = tensor.extract %15[%arg0] : tensor<?xi64>
    %84 = arith.index_cast %extracted_64 : i64 to index
    %extracted_65 = tensor.extract %15[%83] : tensor<?xi64>
    %85 = arith.index_cast %extracted_65 : i64 to index
    %86:12 = scf.for %arg3 = %84 to %85 step %c1 iter_args(%arg4 = %from_elements_51, %arg5 = %idx0_52, %arg6 = %inserted_49, %arg7 = %c0, %arg8 = %50#1, %arg9 = %extracted_slice, %arg10 = %extracted_slice_61, %arg11 = %64, %arg12 = %81, %arg13 = %65, %arg14 = %idx0_63, %arg15 = %66) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_67 = tensor.extract %16[%arg3] : tensor<?xi64>
      %93 = arith.index_cast %extracted_67 : i64 to index
      %94 = arith.addi %93, %c1 : index
      %extracted_68 = tensor.extract %36[%93] : tensor<?xi64>
      %95 = arith.index_cast %extracted_68 : i64 to index
      %extracted_69 = tensor.extract %36[%94] : tensor<?xi64>
      %96 = arith.index_cast %extracted_69 : i64 to index
      %97:12 = scf.for %arg16 = %95 to %96 step %c1 iter_args(%arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %arg9, %arg23 = %arg10, %arg24 = %arg11, %arg25 = %arg12, %arg26 = %arg13, %arg27 = %arg14, %arg28 = %arg15) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_70 = tensor.extract %16[%arg3] : tensor<?xi64>
        %100 = arith.index_cast %extracted_70 : i64 to index
        %extracted_71 = tensor.extract %37[%arg16] : tensor<?xi64>
        %101 = arith.index_cast %extracted_71 : i64 to index
        %extracted_72 = tensor.extract %37[%arg16] : tensor<?xi64>
        %102 = arith.index_cast %extracted_72 : i64 to index
        %extracted_73 = tensor.extract %19[%arg3] : tensor<?xf64>
        %extracted_74 = tensor.extract %40[%arg16] : tensor<?xf64>
        %103 = arith.mulf %extracted_73, %extracted_74 : f64
        %extracted_75 = tensor.extract %arg26[%102] : tensor<?xi32>
        %104 = arith.cmpi eq, %extracted_75, %arg25 : i32
        %105:4 = scf.if %104 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_76 = tensor.extract %arg24[%102] : tensor<?xf64>
          %107 = arith.addf %extracted_76, %103 : f64
          %inserted_77 = tensor.insert %107 into %arg24[%102] : tensor<?xf64>
          scf.yield %arg26, %arg27, %arg28, %inserted_77 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_76 = tensor.insert %arg25 into %arg26[%102] : tensor<?xi32>
          %107 = arith.index_cast %102 : index to i64
          %inserted_77 = tensor.insert %107 into %arg28[%arg27] : tensor<?xi64>
          %idx1_78 = index.constant 1
          %108 = index.add %arg27, %idx1_78
          %inserted_79 = tensor.insert %103 into %arg24[%102] : tensor<?xf64>
          scf.yield %inserted_76, %108, %inserted_77, %inserted_79 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        %106 = builtin.unrealized_conversion_cast %105#3, %arg25, %105#0, %105#1, %105#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %arg17, %arg18, %arg19, %arg20, %arg21, %arg22, %arg23, %105#3, %arg25, %105#0, %105#1, %105#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %98 = builtin.unrealized_conversion_cast %97#0, %97#1, %97#2, %97#3, %97#4, %97#5, %97#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %99 = builtin.unrealized_conversion_cast %97#7, %97#8, %97#9, %97#10, %97#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.yield %97#0, %97#1, %97#2, %97#3, %97#4, %97#5, %97#6, %97#7, %97#8, %97#9, %97#10, %97#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %87 = builtin.unrealized_conversion_cast %86#0, %86#1, %86#2, %86#3, %86#4, %86#5, %86#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %88 = builtin.unrealized_conversion_cast %86#7, %86#8, %86#9, %86#10, %86#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %idx0_66 = index.constant 0
    %89 = "ta.TensorSortOp"(%86#11, %idx0_66, %86#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %90 = builtin.unrealized_conversion_cast %86#7, %86#8, %86#9, %86#10, %89 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %91:7 = scf.for %arg3 = %c0 to %86#10 step %c1 iter_args(%arg4 = %86#5, %arg5 = %86#6, %arg6 = %86#7, %arg7 = %86#8, %arg8 = %86#9, %arg9 = %86#10, %arg10 = %89) -> (tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_67 = tensor.extract %arg10[%arg3] : tensor<?xi64>
      %93 = arith.index_cast %extracted_67 : i64 to index
      %extracted_68 = tensor.extract %arg6[%93] : tensor<?xf64>
      %inserted_69 = tensor.insert %extracted_67 into %arg4[%arg3] : tensor<?xi64>
      %inserted_70 = tensor.insert %extracted_68 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_69, %inserted_70, %arg6, %arg7, %arg8, %arg9, %arg10 : tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %92 = builtin.unrealized_conversion_cast %91#2, %91#3, %91#4, %91#5, %91#6 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %91#0 into %arg1[%75] [%78] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %91#1 into %arg2[%75] [%78] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %70 = builtin.unrealized_conversion_cast %from_elements_51, %idx0_52, %inserted_49, %idx0_53, %50#1, %69#0, %69#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %71 = builtin.unrealized_conversion_cast %from_elements_51, %idx0_52, %inserted_49, %idx0_53, %50#1, %69#0, %69#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %72 = builtin.unrealized_conversion_cast %64, %c1_i32_55, %65, %idx0_56, %66 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %73 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_57 = index.constant 0
  %inserted_58 = tensor.insert %idx-1 into %73[%idx0_57] : tensor<1xindex>
  "ta.print"(%inserted_49) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_58) : (tensor<1xindex>) -> ()
  "ta.print"(%50#1) : (tensor<?xi64>) -> ()
  "ta.print"(%69#0) : (tensor<?xi64>) -> ()
  "ta.print"(%69#1) : (tensor<?xf64>) -> ()
  %alloc_59 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_59[%c0] : memref<1xf64>
  %dim = tensor.dim %69#1, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %69#1[%arg0] : tensor<?xf64>
    %75 = memref.load %alloc_59[%c0] : memref<1xf64>
    %76 = arith.addf %extracted, %75 : f64
    memref.store %76, %alloc_59[%c0] : memref<1xf64>
  }
  %74 = memref.load %alloc_59[%c0] : memref<1xf64>
  "ta.print"(%74) : (f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %27 = tensor.empty(%26) : tensor<?xi64>
  %28 = tensor.empty(%22) : tensor<?xi64>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %43 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %10[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_41 : i64 to index
    %46:2 = scf.for %arg2 = %44 to %45 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
      %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
      %50 = arith.index_cast %extracted_42 : i64 to index
      %51 = arith.addi %50, %c1 : index
      %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%51] : tensor<?xi64>
      %53 = arith.index_cast %extracted_44 : i64 to index
      %54:2 = scf.for %arg5 = %52 to %53 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %24[%arg5] : tensor<?xi64>
        %55 = arith.index_cast %extracted_45 : i64 to index
        %56 = index.add %arg0, %idx1
        %57 = arith.index_cast %56 : index to i64
        %extracted_46 = tensor.extract %arg7[%55] : tensor<?xi64>
        %58 = arith.cmpi eq, %57, %extracted_46 : i64
        %59:2 = scf.if %58 -> (index, tensor<?xi64>) {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        } else {
          %inserted_47 = tensor.insert %57 into %arg7[%55] : tensor<?xi64>
          %60 = index.add %arg6, %idx1
          scf.yield %60, %inserted_47 : index, tensor<?xi64>
        }
        scf.yield %59#0, %59#1 : index, tensor<?xi64>
      }
      scf.yield %54#0, %54#1 : index, tensor<?xi64>
    }
    %47 = index.add %arg0, %idx1
    %48 = arith.index_cast %46#0 : index to i64
    %49 = bufferization.to_memref %arg1 : memref<?xi64>
    memref.store %48, %49[%47] : memref<?xi64>
    %extracted_slice = tensor.extract_slice %arg1[%47] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%47] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %43 = arith.addi %extracted, %arg1 : i64
    %inserted_41 = tensor.insert %43 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %43, %inserted_41 : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = arith.index_cast %9 : index to i64
  %34 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xi64>
  %36 = tensor.empty(%32) : tensor<?xf64>
  %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %43 = arith.index_cast %extracted : i64 to index
    %44 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %31#1[%44] : tensor<?xi64>
    %45 = arith.index_cast %extracted_41 : i64 to index
    %46 = arith.subi %45, %43 : index
    %extracted_slice = tensor.extract_slice %arg1[%43] [%46] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_42 = tensor.extract_slice %arg2[%43] [%46] [1] : tensor<?xf64> to tensor<?xf64>
    %47 = arith.index_cast %arg0 : index to i32
    %48 = arith.addi %47, %c1_i32 : i32
    %49 = arith.addi %arg0, %c1 : index
    %extracted_43 = tensor.extract %10[%arg0] : tensor<?xi64>
    %50 = arith.index_cast %extracted_43 : i64 to index
    %extracted_44 = tensor.extract %10[%49] : tensor<?xi64>
    %51 = arith.index_cast %extracted_44 : i64 to index
    %52:4 = scf.for %arg3 = %50 to %51 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
      %55 = arith.index_cast %extracted_45 : i64 to index
      %56 = arith.addi %55, %c1 : index
      %extracted_46 = tensor.extract %23[%55] : tensor<?xi64>
      %57 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %23[%56] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %59:4 = scf.for %arg8 = %57 to %58 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_48 = tensor.extract %24[%arg8] : tensor<?xi64>
        %60 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %12[%arg3] : tensor<?xf64>
        %extracted_50 = tensor.extract %25[%arg8] : tensor<?xf64>
        %61 = arith.mulf %extracted_49, %extracted_50 : f64
        %extracted_51 = tensor.extract %arg10[%60] : tensor<?xi32>
        %62 = arith.cmpi eq, %extracted_51, %48 : i32
        %63:4 = scf.if %62 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_52 = tensor.extract %arg9[%60] : tensor<?xf64>
          %64 = arith.addf %extracted_52, %61 : f64
          %inserted_53 = tensor.insert %64 into %arg9[%60] : tensor<?xf64>
          scf.yield %arg10, %arg11, %arg12, %inserted_53 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_52 = tensor.insert %48 into %arg10[%60] : tensor<?xi32>
          %inserted_53 = tensor.insert %extracted_48 into %arg12[%arg11] : tensor<?xi64>
          %64 = index.add %arg11, %idx1
          %inserted_54 = tensor.insert %61 into %arg9[%60] : tensor<?xf64>
          scf.yield %inserted_52, %64, %inserted_53, %inserted_54 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %63#3, %63#0, %63#1, %63#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %59#0, %59#1, %59#2, %59#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %53 = "ta.TensorSortOp"(%52#3, %idx0, %52#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %54:2 = scf.for %arg3 = %c0 to %52#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_45 = tensor.extract %53[%arg3] : tensor<?xi64>
      %55 = arith.index_cast %extracted_45 : i64 to index
      %extracted_46 = tensor.extract %52#0[%55] : tensor<?xf64>
      %inserted_47 = tensor.insert %extracted_45 into %arg4[%arg3] : tensor<?xi64>
      %inserted_48 = tensor.insert %extracted_46 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_47, %inserted_48 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %54#0 into %arg1[%43] [%46] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %54#1 into %arg2[%43] [%46] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %41 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%40#0) : (tensor<?xi64>) -> ()
  "ta.print"(%40#1) : (tensor<?xf64>) -> ()
  %alloc_40 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_40[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %32 step %c1 {
    %extracted = tensor.extract %40#1[%arg0] : tensor<?xf64>
    %43 = memref.load %alloc_40[%c0] : memref<1xf64>
    %44 = arith.addf %extracted, %43 : f64
    memref.store %44, %alloc_40[%c0] : memref<1xf64>
  }
  %42 = memref.load %alloc_40[%c0] : memref<1xf64>
  "ta.print"(%42) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %27 = tensor.empty(%26) : tensor<?xi64>
  %28 = tensor.empty(%22) : tensor<?xi64>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %43 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %10[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_41 : i64 to index
    %46 = index.add %arg0, %idx1
    %47 = arith.index_cast %46 : index to i64
    %48:2 = scf.for %arg2 = %44 to %45 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
      %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
      %52 = arith.index_cast %extracted_42 : i64 to index
      %53 = arith.addi %52, %c1 : index
      %extracted_43 = tensor.extract %23[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%53] : tensor<?xi64>
      %55 = arith.index_cast %extracted_44 : i64 to index
      %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %24[%arg5] : tensor<?xi64>
        %57 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %arg7[%57] : tensor<?xi64>
        %58 = arith.cmpi eq, %47, %extracted_46 : i64
        %59:2 = scf.if %58 -> (index, tensor<?xi64>) {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        } else {
          %inserted_47 = tensor.insert %47 into %arg7[%57] : tensor<?xi64>
          %60 = index.add %arg6, %idx1
          scf.yield %60, %inserted_47 : index, tensor<?xi64>
        }
        scf.yield %59#0, %59#1 : index, tensor<?xi64>
      }
      scf.yield %56#0, %56#1 : index, tensor<?xi64>
    }
    %49 = index.add %arg0, %idx1
    %50 = arith.index_cast %48#0 : index to i64
    %51 = bufferization.to_memref %arg1 : memref<?xi64>
    memref.store %50, %51[%49] : memref<?xi64>
    %extracted_slice = tensor.extract_slice %arg1[%49] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%49] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %43 = arith.addi %extracted, %arg1 : i64
    %inserted_41 = tensor.insert %43 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %43, %inserted_41 : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = arith.index_cast %9 : index to i64
  %34 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xi64>
  %36 = tensor.empty(%32) : tensor<?xf64>
  %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %43 = arith.index_cast %extracted : i64 to index
    %44 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %31#1[%44] : tensor<?xi64>
    %45 = arith.index_cast %extracted_41 : i64 to index
    %46 = arith.subi %45, %43 : index
    %extracted_slice = tensor.extract_slice %arg1[%43] [%46] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_42 = tensor.extract_slice %arg2[%43] [%46] [1] : tensor<?xf64> to tensor<?xf64>
    %47 = arith.index_cast %arg0 : index to i32
    %48 = arith.addi %47, %c1_i32 : i32
    %49 = arith.addi %arg0, %c1 : index
    %extracted_43 = tensor.extract %10[%arg0] : tensor<?xi64>
    %50 = arith.index_cast %extracted_43 : i64 to index
    %extracted_44 = tensor.extract %10[%49] : tensor<?xi64>
    %51 = arith.index_cast %extracted_44 : i64 to index
    %52:4 = scf.for %arg3 = %50 to %51 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
      %55 = arith.index_cast %extracted_45 : i64 to index
      %56 = arith.addi %55, %c1 : index
      %extracted_46 = tensor.extract %23[%55] : tensor<?xi64>
      %57 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %23[%56] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %extracted_48 = tensor.extract %12[%arg3] : tensor<?xf64>
      %59:4 = scf.for %arg8 = %57 to %58 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_49 = tensor.extract %24[%arg8] : tensor<?xi64>
        %60 = arith.index_cast %extracted_49 : i64 to index
        %extracted_50 = tensor.extract %25[%arg8] : tensor<?xf64>
        %61 = arith.mulf %extracted_48, %extracted_50 : f64
        %extracted_51 = tensor.extract %arg10[%60] : tensor<?xi32>
        %62 = arith.cmpi eq, %extracted_51, %48 : i32
        %63:4 = scf.if %62 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_52 = tensor.extract %arg9[%60] : tensor<?xf64>
          %64 = arith.addf %extracted_52, %61 : f64
          %inserted_53 = tensor.insert %64 into %arg9[%60] : tensor<?xf64>
          scf.yield %arg10, %arg11, %arg12, %inserted_53 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_52 = tensor.insert %48 into %arg10[%60] : tensor<?xi32>
          %inserted_53 = tensor.insert %extracted_49 into %arg12[%arg11] : tensor<?xi64>
          %64 = index.add %arg11, %idx1
          %inserted_54 = tensor.insert %61 into %arg9[%60] : tensor<?xf64>
          scf.yield %inserted_52, %64, %inserted_53, %inserted_54 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %63#3, %63#0, %63#1, %63#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %59#0, %59#1, %59#2, %59#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %53 = "ta.TensorSortOp"(%52#3, %idx0, %52#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %54:2 = scf.for %arg3 = %c0 to %52#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_45 = tensor.extract %53[%arg3] : tensor<?xi64>
      %55 = arith.index_cast %extracted_45 : i64 to index
      %extracted_46 = tensor.extract %52#0[%55] : tensor<?xf64>
      %inserted_47 = tensor.insert %extracted_45 into %arg4[%arg3] : tensor<?xi64>
      %inserted_48 = tensor.insert %extracted_46 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_47, %inserted_48 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %54#0 into %arg1[%43] [%46] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %54#1 into %arg2[%43] [%46] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %41 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%40#0) : (tensor<?xi64>) -> ()
  "ta.print"(%40#1) : (tensor<?xf64>) -> ()
  %alloc_40 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_40[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %32 step %c1 {
    %extracted = tensor.extract %40#1[%arg0] : tensor<?xf64>
    %43 = memref.load %alloc_40[%c0] : memref<1xf64>
    %44 = arith.addf %extracted, %43 : f64
    memref.store %44, %alloc_40[%c0] : memref<1xf64>
  }
  %42 = memref.load %alloc_40[%c0] : memref<1xf64>
  "ta.print"(%42) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %27 = tensor.empty(%26) : tensor<?xi64>
  %28 = tensor.empty(%22) : tensor<?xi64>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %43 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %10[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_41 : i64 to index
    %46 = index.add %arg0, %idx1
    %47 = arith.index_cast %46 : index to i64
    %48:2 = scf.for %arg2 = %44 to %45 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
      %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
      %52 = arith.index_cast %extracted_42 : i64 to index
      %53 = arith.addi %52, %c1 : index
      %extracted_43 = tensor.extract %23[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%53] : tensor<?xi64>
      %55 = arith.index_cast %extracted_44 : i64 to index
      %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %24[%arg5] : tensor<?xi64>
        %57 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %arg7[%57] : tensor<?xi64>
        %58 = arith.cmpi eq, %47, %extracted_46 : i64
        %59:2 = scf.if %58 -> (index, tensor<?xi64>) {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        } else {
          %inserted_47 = tensor.insert %47 into %arg7[%57] : tensor<?xi64>
          %60 = index.add %arg6, %idx1
          scf.yield %60, %inserted_47 : index, tensor<?xi64>
        }
        scf.yield %59#0, %59#1 : index, tensor<?xi64>
      }
      scf.yield %56#0, %56#1 : index, tensor<?xi64>
    }
    %49 = index.add %arg0, %idx1
    %50 = arith.index_cast %48#0 : index to i64
    %51 = bufferization.to_memref %arg1 : memref<?xi64>
    memref.store %50, %51[%49] : memref<?xi64>
    %extracted_slice = tensor.extract_slice %arg1[%49] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%49] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %43 = arith.addi %extracted, %arg1 : i64
    %inserted_41 = tensor.insert %43 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %43, %inserted_41 : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = arith.index_cast %9 : index to i64
  %34 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xi64>
  %36 = tensor.empty(%32) : tensor<?xf64>
  %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %43 = arith.index_cast %extracted : i64 to index
    %44 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %31#1[%44] : tensor<?xi64>
    %45 = arith.index_cast %extracted_41 : i64 to index
    %46 = arith.subi %45, %43 : index
    %extracted_slice = tensor.extract_slice %arg1[%43] [%46] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_42 = tensor.extract_slice %arg2[%43] [%46] [1] : tensor<?xf64> to tensor<?xf64>
    %47 = arith.index_cast %arg0 : index to i32
    %48 = arith.addi %47, %c1_i32 : i32
    %49 = arith.addi %arg0, %c1 : index
    %extracted_43 = tensor.extract %10[%arg0] : tensor<?xi64>
    %50 = arith.index_cast %extracted_43 : i64 to index
    %extracted_44 = tensor.extract %10[%49] : tensor<?xi64>
    %51 = arith.index_cast %extracted_44 : i64 to index
    %52:4 = scf.for %arg3 = %50 to %51 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
      %55 = arith.index_cast %extracted_45 : i64 to index
      %56 = arith.addi %55, %c1 : index
      %extracted_46 = tensor.extract %23[%55] : tensor<?xi64>
      %57 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %23[%56] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %extracted_48 = tensor.extract %12[%arg3] : tensor<?xf64>
      %59:4 = scf.for %arg8 = %57 to %58 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_49 = tensor.extract %24[%arg8] : tensor<?xi64>
        %60 = arith.index_cast %extracted_49 : i64 to index
        %extracted_50 = tensor.extract %25[%arg8] : tensor<?xf64>
        %61 = arith.mulf %extracted_48, %extracted_50 : f64
        %extracted_51 = tensor.extract %arg10[%60] : tensor<?xi32>
        %62 = arith.cmpi eq, %extracted_51, %48 : i32
        %63:4 = scf.if %62 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_52 = tensor.extract %arg9[%60] : tensor<?xf64>
          %64 = arith.addf %extracted_52, %61 : f64
          %inserted_53 = tensor.insert %64 into %arg9[%60] : tensor<?xf64>
          scf.yield %arg10, %arg11, %arg12, %inserted_53 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_52 = tensor.insert %48 into %arg10[%60] : tensor<?xi32>
          %inserted_53 = tensor.insert %extracted_49 into %arg12[%arg11] : tensor<?xi64>
          %64 = index.add %arg11, %idx1
          %inserted_54 = tensor.insert %61 into %arg9[%60] : tensor<?xf64>
          scf.yield %inserted_52, %64, %inserted_53, %inserted_54 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %63#3, %63#0, %63#1, %63#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %59#0, %59#1, %59#2, %59#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %53 = "ta.TensorSortOp"(%52#3, %idx0, %52#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %54:2 = scf.for %arg3 = %c0 to %52#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_45 = tensor.extract %53[%arg3] : tensor<?xi64>
      %55 = arith.index_cast %extracted_45 : i64 to index
      %extracted_46 = tensor.extract %52#0[%55] : tensor<?xf64>
      %inserted_47 = tensor.insert %extracted_45 into %arg4[%arg3] : tensor<?xi64>
      %inserted_48 = tensor.insert %extracted_46 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_47, %inserted_48 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %54#0 into %arg1[%43] [%46] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %54#1 into %arg2[%43] [%46] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %41 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%40#0) : (tensor<?xi64>) -> ()
  "ta.print"(%40#1) : (tensor<?xf64>) -> ()
  %alloc_40 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_40[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %32 step %c1 {
    %extracted = tensor.extract %40#1[%arg0] : tensor<?xf64>
    %43 = memref.load %alloc_40[%c0] : memref<1xf64>
    %44 = arith.addf %extracted, %43 : f64
    memref.store %44, %alloc_40[%c0] : memref<1xf64>
  }
  %42 = memref.load %alloc_40[%c0] : memref<1xf64>
  "ta.print"(%42) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %27 = tensor.empty(%26) : tensor<?xi64>
    %28 = tensor.empty(%22) : tensor<?xi64>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %43 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %10[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_41 : i64 to index
      %46 = index.add %arg0, %idx1
      %47 = arith.index_cast %46 : index to i64
      %48:2 = scf.for %arg2 = %44 to %45 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
        %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
        %52 = arith.index_cast %extracted_42 : i64 to index
        %53 = arith.addi %52, %c1 : index
        %extracted_43 = tensor.extract %23[%52] : tensor<?xi64>
        %54 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %23[%53] : tensor<?xi64>
        %55 = arith.index_cast %extracted_44 : i64 to index
        %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
          %extracted_45 = tensor.extract %24[%arg5] : tensor<?xi64>
          %57 = arith.index_cast %extracted_45 : i64 to index
          %extracted_46 = tensor.extract %arg7[%57] : tensor<?xi64>
          %58 = arith.cmpi eq, %47, %extracted_46 : i64
          %59:2 = scf.if %58 -> (index, tensor<?xi64>) {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          } else {
            %inserted_47 = tensor.insert %47 into %arg7[%57] : tensor<?xi64>
            %60 = index.add %arg6, %idx1
            scf.yield %60, %inserted_47 : index, tensor<?xi64>
          }
          scf.yield %59#0, %59#1 : index, tensor<?xi64>
        }
        scf.yield %56#0, %56#1 : index, tensor<?xi64>
      }
      %49 = index.add %arg0, %idx1
      %50 = arith.index_cast %48#0 : index to i64
      %51 = bufferization.to_memref %arg1 : memref<?xi64>
      memref.store %50, %51[%49] : memref<?xi64>
      %extracted_slice = tensor.extract_slice %arg1[%49] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%49] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %43 = arith.addi %extracted, %arg1 : i64
      %inserted_41 = tensor.insert %43 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %43, %inserted_41 : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = arith.index_cast %9 : index to i64
    %34 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xi64>
    %36 = tensor.empty(%32) : tensor<?xf64>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %31#1[%44] : tensor<?xi64>
      %45 = arith.index_cast %extracted_41 : i64 to index
      %46 = arith.subi %45, %43 : index
      %extracted_slice = tensor.extract_slice %arg1[%43] [%46] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_42 = tensor.extract_slice %arg2[%43] [%46] [1] : tensor<?xf64> to tensor<?xf64>
      %47 = arith.index_cast %arg0 : index to i32
      %48 = arith.addi %47, %c1_i32 : i32
      %49 = arith.addi %arg0, %c1 : index
      %extracted_43 = tensor.extract %10[%arg0] : tensor<?xi64>
      %50 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %10[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_44 : i64 to index
      %52:4 = scf.for %arg3 = %50 to %51 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
        %55 = arith.index_cast %extracted_45 : i64 to index
        %56 = arith.addi %55, %c1 : index
        %extracted_46 = tensor.extract %23[%55] : tensor<?xi64>
        %57 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%56] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %extracted_48 = tensor.extract %12[%arg3] : tensor<?xf64>
        %59:4 = scf.for %arg8 = %57 to %58 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_49 = tensor.extract %24[%arg8] : tensor<?xi64>
          %60 = arith.index_cast %extracted_49 : i64 to index
          %extracted_50 = tensor.extract %25[%arg8] : tensor<?xf64>
          %61 = arith.mulf %extracted_48, %extracted_50 : f64
          %extracted_51 = tensor.extract %arg10[%60] : tensor<?xi32>
          %62 = arith.cmpi eq, %extracted_51, %48 : i32
          %63:4 = scf.if %62 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_52 = tensor.extract %arg9[%60] : tensor<?xf64>
            %64 = arith.addf %extracted_52, %61 : f64
            %inserted_53 = tensor.insert %64 into %arg9[%60] : tensor<?xf64>
            scf.yield %arg10, %arg11, %arg12, %inserted_53 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_52 = tensor.insert %48 into %arg10[%60] : tensor<?xi32>
            %inserted_53 = tensor.insert %extracted_49 into %arg12[%arg11] : tensor<?xi64>
            %64 = index.add %arg11, %idx1
            %inserted_54 = tensor.insert %61 into %arg9[%60] : tensor<?xf64>
            scf.yield %inserted_52, %64, %inserted_53, %inserted_54 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %63#3, %63#0, %63#1, %63#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %59#0, %59#1, %59#2, %59#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %53 = "ta.TensorSortOp"(%52#3, %idx0, %52#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %54:2 = scf.for %arg3 = %c0 to %52#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted_45 = tensor.extract %53[%arg3] : tensor<?xi64>
        %55 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %52#0[%55] : tensor<?xf64>
        %inserted_47 = tensor.insert %extracted_45 into %arg4[%arg3] : tensor<?xi64>
        %inserted_48 = tensor.insert %extracted_46 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %inserted_47, %inserted_48 : tensor<?xi64>, tensor<?xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %54#0 into %arg1[%43] [%46] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %54#1 into %arg2[%43] [%46] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %41 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%40#0) : (tensor<?xi64>) -> ()
    "ta.print"(%40#1) : (tensor<?xf64>) -> ()
    %alloc_40 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_40[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %32 step %c1 {
      %extracted = tensor.extract %40#1[%arg0] : tensor<?xf64>
      %43 = memref.load %alloc_40[%c0] : memref<1xf64>
      %44 = arith.addf %extracted, %43 : f64
      memref.store %44, %alloc_40[%c0] : memref<1xf64>
    }
    %42 = memref.load %alloc_40[%c0] : memref<1xf64>
    "ta.print"(%42) : (f64) -> ()
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %27 = tensor.empty(%26) : tensor<?xi64>
    %28 = tensor.empty(%22) : tensor<?xi64>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %43 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %10[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_41 : i64 to index
      %46 = index.add %arg0, %idx1
      %47 = arith.index_cast %46 : index to i64
      %48:2 = scf.for %arg2 = %44 to %45 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
        %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
        %52 = arith.index_cast %extracted_42 : i64 to index
        %53 = arith.addi %52, %c1 : index
        %extracted_43 = tensor.extract %23[%52] : tensor<?xi64>
        %54 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %23[%53] : tensor<?xi64>
        %55 = arith.index_cast %extracted_44 : i64 to index
        %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
          %extracted_45 = tensor.extract %24[%arg5] : tensor<?xi64>
          %57 = arith.index_cast %extracted_45 : i64 to index
          %extracted_46 = tensor.extract %arg7[%57] : tensor<?xi64>
          %58 = arith.cmpi eq, %47, %extracted_46 : i64
          %59:2 = scf.if %58 -> (index, tensor<?xi64>) {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          } else {
            %inserted_47 = tensor.insert %47 into %arg7[%57] : tensor<?xi64>
            %60 = index.add %arg6, %idx1
            scf.yield %60, %inserted_47 : index, tensor<?xi64>
          }
          scf.yield %59#0, %59#1 : index, tensor<?xi64>
        }
        scf.yield %56#0, %56#1 : index, tensor<?xi64>
      }
      %49 = index.add %arg0, %idx1
      %50 = arith.index_cast %48#0 : index to i64
      %51 = bufferization.to_memref %arg1 : memref<?xi64>
      memref.store %50, %51[%49] : memref<?xi64>
      %extracted_slice = tensor.extract_slice %arg1[%49] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%49] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %43 = arith.addi %extracted, %arg1 : i64
      %inserted_41 = tensor.insert %43 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %43, %inserted_41 : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = arith.index_cast %9 : index to i64
    %34 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xi64>
    %36 = tensor.empty(%32) : tensor<?xf64>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %31#1[%44] : tensor<?xi64>
      %45 = arith.index_cast %extracted_41 : i64 to index
      %46 = arith.subi %45, %43 : index
      %extracted_slice = tensor.extract_slice %arg1[%43] [%46] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_42 = tensor.extract_slice %arg2[%43] [%46] [1] : tensor<?xf64> to tensor<?xf64>
      %47 = arith.index_cast %arg0 : index to i32
      %48 = arith.addi %47, %c1_i32 : i32
      %49 = arith.addi %arg0, %c1 : index
      %extracted_43 = tensor.extract %10[%arg0] : tensor<?xi64>
      %50 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %10[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_44 : i64 to index
      %52:4 = scf.for %arg3 = %50 to %51 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
        %55 = arith.index_cast %extracted_45 : i64 to index
        %56 = arith.addi %55, %c1 : index
        %extracted_46 = tensor.extract %23[%55] : tensor<?xi64>
        %57 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%56] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %extracted_48 = tensor.extract %12[%arg3] : tensor<?xf64>
        %59:4 = scf.for %arg8 = %57 to %58 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_49 = tensor.extract %24[%arg8] : tensor<?xi64>
          %60 = arith.index_cast %extracted_49 : i64 to index
          %extracted_50 = tensor.extract %25[%arg8] : tensor<?xf64>
          %61 = arith.mulf %extracted_48, %extracted_50 : f64
          %extracted_51 = tensor.extract %arg10[%60] : tensor<?xi32>
          %62 = arith.cmpi eq, %extracted_51, %48 : i32
          %63:4 = scf.if %62 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_52 = tensor.extract %arg9[%60] : tensor<?xf64>
            %64 = arith.addf %extracted_52, %61 : f64
            %inserted_53 = tensor.insert %64 into %arg9[%60] : tensor<?xf64>
            scf.yield %arg10, %arg11, %arg12, %inserted_53 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_52 = tensor.insert %48 into %arg10[%60] : tensor<?xi32>
            %inserted_53 = tensor.insert %extracted_49 into %arg12[%arg11] : tensor<?xi64>
            %64 = index.add %arg11, %idx1
            %inserted_54 = tensor.insert %61 into %arg9[%60] : tensor<?xf64>
            scf.yield %inserted_52, %64, %inserted_53, %inserted_54 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %63#3, %63#0, %63#1, %63#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %59#0, %59#1, %59#2, %59#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %53 = "ta.TensorSortOp"(%52#3, %idx0, %52#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %54:2 = scf.for %arg3 = %c0 to %52#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted_45 = tensor.extract %53[%arg3] : tensor<?xi64>
        %55 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %52#0[%55] : tensor<?xf64>
        %inserted_47 = tensor.insert %extracted_45 into %arg4[%arg3] : tensor<?xi64>
        %inserted_48 = tensor.insert %extracted_46 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %inserted_47, %inserted_48 : tensor<?xi64>, tensor<?xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %54#0 into %arg1[%43] [%46] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %54#1 into %arg2[%43] [%46] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %41 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%40#0) : (tensor<?xi64>) -> ()
    "ta.print"(%40#1) : (tensor<?xf64>) -> ()
    %alloc_40 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_40[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %32 step %c1 {
      %extracted = tensor.extract %40#1[%arg0] : tensor<?xf64>
      %43 = memref.load %alloc_40[%c0] : memref<1xf64>
      %44 = arith.addf %extracted, %43 : f64
      memref.store %44, %alloc_40[%c0] : memref<1xf64>
    }
    %42 = memref.load %alloc_40[%c0] : memref<1xf64>
    "ta.print"(%42) : (f64) -> ()
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


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %27 = tensor.empty(%26) : tensor<?xi64>
    %28 = tensor.empty(%22) : tensor<?xi64>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %43 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %10[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_41 : i64 to index
      %46 = index.add %arg0, %idx1
      %47 = arith.index_cast %46 : index to i64
      %48:2 = scf.for %arg2 = %44 to %45 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
        %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
        %52 = arith.index_cast %extracted_42 : i64 to index
        %53 = arith.addi %52, %c1 : index
        %extracted_43 = tensor.extract %23[%52] : tensor<?xi64>
        %54 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %23[%53] : tensor<?xi64>
        %55 = arith.index_cast %extracted_44 : i64 to index
        %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
          %extracted_45 = tensor.extract %24[%arg5] : tensor<?xi64>
          %57 = arith.index_cast %extracted_45 : i64 to index
          %extracted_46 = tensor.extract %arg7[%57] : tensor<?xi64>
          %58 = arith.cmpi eq, %47, %extracted_46 : i64
          %59:2 = scf.if %58 -> (index, tensor<?xi64>) {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          } else {
            %inserted_47 = tensor.insert %47 into %arg7[%57] : tensor<?xi64>
            %60 = index.add %arg6, %idx1
            scf.yield %60, %inserted_47 : index, tensor<?xi64>
          }
          scf.yield %59#0, %59#1 : index, tensor<?xi64>
        }
        scf.yield %56#0, %56#1 : index, tensor<?xi64>
      }
      %49 = index.add %arg0, %idx1
      %50 = arith.index_cast %48#0 : index to i64
      %51 = bufferization.to_memref %arg1 : memref<?xi64>
      memref.store %50, %51[%49] : memref<?xi64>
      %extracted_slice = tensor.extract_slice %arg1[%49] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%49] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %43 = arith.addi %extracted, %arg1 : i64
      %inserted_41 = tensor.insert %43 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %43, %inserted_41 : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = arith.index_cast %9 : index to i64
    %34 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xi64>
    %36 = tensor.empty(%32) : tensor<?xf64>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %31#1[%44] : tensor<?xi64>
      %45 = arith.index_cast %extracted_41 : i64 to index
      %46 = arith.subi %45, %43 : index
      %extracted_slice = tensor.extract_slice %arg1[%43] [%46] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_42 = tensor.extract_slice %arg2[%43] [%46] [1] : tensor<?xf64> to tensor<?xf64>
      %47 = arith.index_cast %arg0 : index to i32
      %48 = arith.addi %47, %c1_i32 : i32
      %49 = arith.addi %arg0, %c1 : index
      %extracted_43 = tensor.extract %10[%arg0] : tensor<?xi64>
      %50 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %10[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_44 : i64 to index
      %52:4 = scf.for %arg3 = %50 to %51 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
        %55 = arith.index_cast %extracted_45 : i64 to index
        %56 = arith.addi %55, %c1 : index
        %extracted_46 = tensor.extract %23[%55] : tensor<?xi64>
        %57 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%56] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %extracted_48 = tensor.extract %12[%arg3] : tensor<?xf64>
        %59:4 = scf.for %arg8 = %57 to %58 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_49 = tensor.extract %24[%arg8] : tensor<?xi64>
          %60 = arith.index_cast %extracted_49 : i64 to index
          %extracted_50 = tensor.extract %25[%arg8] : tensor<?xf64>
          %61 = arith.mulf %extracted_48, %extracted_50 : f64
          %extracted_51 = tensor.extract %arg10[%60] : tensor<?xi32>
          %62 = arith.cmpi eq, %extracted_51, %48 : i32
          %63:4 = scf.if %62 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_52 = tensor.extract %arg9[%60] : tensor<?xf64>
            %64 = arith.addf %extracted_52, %61 : f64
            %inserted_53 = tensor.insert %64 into %arg9[%60] : tensor<?xf64>
            scf.yield %arg10, %arg11, %arg12, %inserted_53 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_52 = tensor.insert %48 into %arg10[%60] : tensor<?xi32>
            %inserted_53 = tensor.insert %extracted_49 into %arg12[%arg11] : tensor<?xi64>
            %64 = index.add %arg11, %idx1
            %inserted_54 = tensor.insert %61 into %arg9[%60] : tensor<?xf64>
            scf.yield %inserted_52, %64, %inserted_53, %inserted_54 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %63#3, %63#0, %63#1, %63#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %59#0, %59#1, %59#2, %59#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %53 = "ta.TensorSortOp"(%52#3, %idx0, %52#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %54:2 = scf.for %arg3 = %c0 to %52#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted_45 = tensor.extract %53[%arg3] : tensor<?xi64>
        %55 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %52#0[%55] : tensor<?xf64>
        %inserted_47 = tensor.insert %extracted_45 into %arg4[%arg3] : tensor<?xi64>
        %inserted_48 = tensor.insert %extracted_46 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %inserted_47, %inserted_48 : tensor<?xi64>, tensor<?xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %54#0 into %arg1[%43] [%46] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %54#1 into %arg2[%43] [%46] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %41 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%40#0) : (tensor<?xi64>) -> ()
    "ta.print"(%40#1) : (tensor<?xf64>) -> ()
    %alloc_40 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_40[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %32 step %c1 {
      %extracted = tensor.extract %40#1[%arg0] : tensor<?xf64>
      %43 = memref.load %alloc_40[%c0] : memref<1xf64>
      %44 = arith.addf %extracted, %43 : f64
      memref.store %44, %alloc_40[%c0] : memref<1xf64>
    }
    %42 = memref.load %alloc_40[%c0] : memref<1xf64>
    "ta.print"(%42) : (f64) -> ()
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


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %31 = arith.addi %arg0, %c1 : index
      %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_8[%31] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = index.add %arg0, %idx1
      %37 = arith.index_cast %36 : index to i64
      %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38:2 = scf.for %arg1 = %33 to %35 step %c1 iter_args(%arg2 = %c0, %arg3 = %alloc_45) -> (index, memref<?xi64>) {
        %41 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = arith.addi %42, %c1 : index
        %44 = memref.load %alloc_28[%42] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_28[%43] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48:2 = scf.for %arg4 = %45 to %47 step %c1 iter_args(%arg5 = %arg2, %arg6 = %arg3) -> (index, memref<?xi64>) {
          %49 = memref.load %alloc_30[%arg4] : memref<?xi64>
          %50 = arith.index_cast %49 : i64 to index
          %51 = memref.load %arg6[%50] : memref<?xi64>
          %52 = arith.cmpi eq, %37, %51 : i64
          %53:2 = scf.if %52 -> (index, memref<?xi64>) {
            scf.yield %arg5, %arg6 : index, memref<?xi64>
          } else {
            memref.store %37, %arg6[%50] : memref<?xi64>
            %54 = index.add %arg5, %idx1
            scf.yield %54, %arg6 : index, memref<?xi64>
          }
          scf.yield %53#0, %53#1 : index, memref<?xi64>
        }
        scf.yield %48#0, %48#1 : index, memref<?xi64>
      }
      %39 = index.add %arg0, %idx1
      %40 = arith.index_cast %38#0 : index to i64
      %c0_46 = arith.constant 0 : index
      %dim = memref.dim %alloc_38, %c0_46 : memref<?xi64>
      %alloc_47 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_47 : memref<?xi64> to memref<?xi64>
      memref.store %40, %alloc_47[%39] : memref<?xi64>
      %subview = memref.subview %alloc_38[%39] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_48 = memref.subview %alloc_38[%39] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_48 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22:2 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
      %31 = memref.load %arg2[%arg0] : memref<?xi64>
      %32 = arith.addi %31, %arg1 : i64
      memref.store %32, %arg2[%arg0] : memref<?xi64>
      scf.yield %32, %arg2 : i64, memref<?xi64>
    }
    %23 = bufferization.to_tensor %22#1 : memref<?xi64>
    %24 = arith.index_cast %22#0 : i64 to index
    %25 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %25, %alloc_39[%idx0] : memref<1xi64>
    %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
    %26 = bufferization.to_tensor %cast_40 : memref<?xi64>
    %alloc_41 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %31 = memref.load %22#1[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = arith.addi %arg0, %c1 : index
      %34 = memref.load %22#1[%33] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = arith.subi %35, %32 : index
      %subview = memref.subview %alloc_41[%32] [%36] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_45 = memref.subview %alloc_42[%32] [%36] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %37 = arith.index_cast %arg0 : index to i32
      %38 = arith.addi %37, %c1_i32 : i32
      %39 = arith.addi %arg0, %c1 : index
      %40 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = memref.load %alloc_8[%39] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_47 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %44:4 = scf.for %arg1 = %41 to %43 step %c1 iter_args(%arg2 = %alloc_46, %arg3 = %alloc_47, %arg4 = %idx0, %arg5 = %alloc_48) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %46 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.addi %47, %c1 : index
        %49 = memref.load %alloc_28[%47] : memref<?xi64>
        %50 = arith.index_cast %49 : i64 to index
        %51 = memref.load %alloc_28[%48] : memref<?xi64>
        %52 = arith.index_cast %51 : i64 to index
        %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %54:4 = scf.for %arg6 = %50 to %52 step %c1 iter_args(%arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4, %arg10 = %arg5) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
          %55 = memref.load %alloc_30[%arg6] : memref<?xi64>
          %56 = arith.index_cast %55 : i64 to index
          %57 = memref.load %alloc_36[%arg6] : memref<?xf64>
          %58 = arith.mulf %53, %57 : f64
          %59 = memref.load %arg8[%56] : memref<?xi32>
          %60 = arith.cmpi eq, %59, %38 : i32
          %61:4 = scf.if %60 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
            %62 = memref.load %arg7[%56] : memref<?xf64>
            %63 = arith.addf %62, %58 : f64
            memref.store %63, %arg7[%56] : memref<?xf64>
            scf.yield %arg8, %arg9, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          } else {
            memref.store %38, %arg8[%56] : memref<?xi32>
            memref.store %55, %arg10[%arg9] : memref<?xi64>
            %62 = index.add %arg9, %idx1
            memref.store %58, %arg7[%56] : memref<?xf64>
            scf.yield %arg8, %62, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          }
          scf.yield %61#3, %61#0, %61#1, %61#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        }
        scf.yield %54#0, %54#1, %54#2, %54#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      "ta.TensorSortOp"(%44#3, %idx0, %44#2) : (memref<?xi64>, index, index) -> ()
      %45:2 = scf.for %arg1 = %c0 to %44#2 step %c1 iter_args(%arg2 = %subview, %arg3 = %subview_45) -> (memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>) {
        %46 = memref.load %44#3[%arg1] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = memref.load %44#0[%47] : memref<?xf64>
        memref.store %46, %arg2[%arg1] : memref<?xi64, strided<[1], offset: ?>>
        memref.store %48, %arg3[%arg1] : memref<?xf64, strided<[1], offset: ?>>
        scf.yield %arg2, %arg3 : memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>
      }
      %subview_49 = memref.subview %alloc_41[%32] [%36] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %45#0, %subview_49 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      %subview_50 = memref.subview %alloc_42[%32] [%36] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %45#1, %subview_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %27 = bufferization.to_tensor %alloc_42 : memref<?xf64>
    %28 = bufferization.to_tensor %alloc_41 : memref<?xi64>
    %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_43[%idx0] : memref<1xindex>
    %29 = bufferization.to_tensor %alloc_43 : memref<1xindex>
    "ta.print"(%26) : (tensor<?xi64>) -> ()
    "ta.print"(%29) : (tensor<1xindex>) -> ()
    "ta.print"(%23) : (tensor<?xi64>) -> ()
    "ta.print"(%28) : (tensor<?xi64>) -> ()
    "ta.print"(%27) : (tensor<?xf64>) -> ()
    %alloc_44 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_44[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %24 step %c1 {
      %31 = memref.load %alloc_42[%arg0] : memref<?xf64>
      %32 = memref.load %alloc_44[%c0] : memref<1xf64>
      %33 = arith.addf %31, %32 : f64
      memref.store %33, %alloc_44[%c0] : memref<1xf64>
    }
    %30 = memref.load %alloc_44[%c0] : memref<1xf64>
    "ta.print"(%30) : (f64) -> ()
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


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %31 = arith.addi %arg0, %c1 : index
    %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = memref.load %alloc_8[%31] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = index.add %arg0, %idx1
    %37 = arith.index_cast %36 : index to i64
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %38:2 = scf.for %arg1 = %33 to %35 step %c1 iter_args(%arg2 = %c0, %arg3 = %alloc_45) -> (index, memref<?xi64>) {
      %41 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.addi %42, %c1 : index
      %44 = memref.load %alloc_28[%42] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = memref.load %alloc_28[%43] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48:2 = scf.for %arg4 = %45 to %47 step %c1 iter_args(%arg5 = %arg2, %arg6 = %arg3) -> (index, memref<?xi64>) {
        %49 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %50 = arith.index_cast %49 : i64 to index
        %51 = memref.load %arg6[%50] : memref<?xi64>
        %52 = arith.cmpi eq, %37, %51 : i64
        %53:2 = scf.if %52 -> (index, memref<?xi64>) {
          scf.yield %arg5, %arg6 : index, memref<?xi64>
        } else {
          memref.store %37, %arg6[%50] : memref<?xi64>
          %54 = index.add %arg5, %idx1
          scf.yield %54, %arg6 : index, memref<?xi64>
        }
        scf.yield %53#0, %53#1 : index, memref<?xi64>
      }
      scf.yield %48#0, %48#1 : index, memref<?xi64>
    }
    %39 = index.add %arg0, %idx1
    %40 = arith.index_cast %38#0 : index to i64
    %c0_46 = arith.constant 0 : index
    %dim = memref.dim %alloc_38, %c0_46 : memref<?xi64>
    %alloc_47 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_47 : memref<?xi64> to memref<?xi64>
    memref.store %40, %alloc_47[%39] : memref<?xi64>
    %subview = memref.subview %alloc_38[%39] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_48 = memref.subview %alloc_38[%39] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_48 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21 = arith.addi %9, %c1 : index
  %22:2 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %31 = memref.load %arg2[%arg0] : memref<?xi64>
    %32 = arith.addi %31, %arg1 : i64
    memref.store %32, %arg2[%arg0] : memref<?xi64>
    scf.yield %32, %arg2 : i64, memref<?xi64>
  }
  %23 = bufferization.to_tensor %22#1 : memref<?xi64>
  %24 = arith.index_cast %22#0 : i64 to index
  %25 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %25, %alloc_39[%idx0] : memref<1xi64>
  %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
  %26 = bufferization.to_tensor %cast_40 : memref<?xi64>
  %alloc_41 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %31 = memref.load %22#1[%arg0] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %33 = arith.addi %arg0, %c1 : index
    %34 = memref.load %22#1[%33] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = arith.subi %35, %32 : index
    %subview = memref.subview %alloc_41[%32] [%36] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_45 = memref.subview %alloc_42[%32] [%36] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %37 = arith.index_cast %arg0 : index to i32
    %38 = arith.addi %37, %c1_i32 : i32
    %39 = arith.addi %arg0, %c1 : index
    %40 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %41 = arith.index_cast %40 : i64 to index
    %42 = memref.load %alloc_8[%39] : memref<?xi64>
    %43 = arith.index_cast %42 : i64 to index
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_47 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %44:4 = scf.for %arg1 = %41 to %43 step %c1 iter_args(%arg2 = %alloc_46, %arg3 = %alloc_47, %arg4 = %idx0, %arg5 = %alloc_48) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %46 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = arith.addi %47, %c1 : index
      %49 = memref.load %alloc_28[%47] : memref<?xi64>
      %50 = arith.index_cast %49 : i64 to index
      %51 = memref.load %alloc_28[%48] : memref<?xi64>
      %52 = arith.index_cast %51 : i64 to index
      %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
      %54:4 = scf.for %arg6 = %50 to %52 step %c1 iter_args(%arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4, %arg10 = %arg5) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %55 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %56 = arith.index_cast %55 : i64 to index
        %57 = memref.load %alloc_36[%arg6] : memref<?xf64>
        %58 = arith.mulf %53, %57 : f64
        %59 = memref.load %arg8[%56] : memref<?xi32>
        %60 = arith.cmpi eq, %59, %38 : i32
        %61:4 = scf.if %60 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %62 = memref.load %arg7[%56] : memref<?xf64>
          %63 = arith.addf %62, %58 : f64
          memref.store %63, %arg7[%56] : memref<?xf64>
          scf.yield %arg8, %arg9, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %38, %arg8[%56] : memref<?xi32>
          memref.store %55, %arg10[%arg9] : memref<?xi64>
          %62 = index.add %arg9, %idx1
          memref.store %58, %arg7[%56] : memref<?xf64>
          scf.yield %arg8, %62, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %61#3, %61#0, %61#1, %61#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %54#0, %54#1, %54#2, %54#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    "ta.TensorSortOp"(%44#3, %idx0, %44#2) : (memref<?xi64>, index, index) -> ()
    %45:2 = scf.for %arg1 = %c0 to %44#2 step %c1 iter_args(%arg2 = %subview, %arg3 = %subview_45) -> (memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>) {
      %46 = memref.load %44#3[%arg1] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = memref.load %44#0[%47] : memref<?xf64>
      memref.store %46, %arg2[%arg1] : memref<?xi64, strided<[1], offset: ?>>
      memref.store %48, %arg3[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      scf.yield %arg2, %arg3 : memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>
    }
    %subview_49 = memref.subview %alloc_41[%32] [%36] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %45#0, %subview_49 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
    %subview_50 = memref.subview %alloc_42[%32] [%36] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %45#1, %subview_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
  }
  %27 = bufferization.to_tensor %alloc_42 : memref<?xf64>
  %28 = bufferization.to_tensor %alloc_41 : memref<?xi64>
  %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_43[%idx0] : memref<1xindex>
  %29 = bufferization.to_tensor %alloc_43 : memref<1xindex>
  "ta.print"(%26) : (tensor<?xi64>) -> ()
  "ta.print"(%29) : (tensor<1xindex>) -> ()
  "ta.print"(%23) : (tensor<?xi64>) -> ()
  "ta.print"(%28) : (tensor<?xi64>) -> ()
  "ta.print"(%27) : (tensor<?xf64>) -> ()
  %alloc_44 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_44[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %24 step %c1 {
    %31 = memref.load %alloc_42[%arg0] : memref<?xf64>
    %32 = memref.load %alloc_44[%c0] : memref<1xf64>
    %33 = arith.addf %31, %32 : f64
    memref.store %33, %alloc_44[%c0] : memref<1xf64>
  }
  %30 = memref.load %alloc_44[%c0] : memref<1xf64>
  "ta.print"(%30) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %36 = arith.addi %arg0, %c1 : index
    %37 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39 = memref.load %alloc_8[%36] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %41 = index.add %arg0, %idx1
    %42 = arith.index_cast %41 : index to i64
    %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %43:2 = scf.for %arg1 = %38 to %40 step %c1 iter_args(%arg2 = %c0, %arg3 = %alloc_50) -> (index, memref<?xi64>) {
      %46 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = arith.addi %47, %c1 : index
      %49 = memref.load %alloc_28[%47] : memref<?xi64>
      %50 = arith.index_cast %49 : i64 to index
      %51 = memref.load %alloc_28[%48] : memref<?xi64>
      %52 = arith.index_cast %51 : i64 to index
      %53:2 = scf.for %arg4 = %50 to %52 step %c1 iter_args(%arg5 = %arg2, %arg6 = %arg3) -> (index, memref<?xi64>) {
        %54 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %55 = arith.index_cast %54 : i64 to index
        %56 = memref.load %arg6[%55] : memref<?xi64>
        %57 = arith.cmpi eq, %42, %56 : i64
        %58:2 = scf.if %57 -> (index, memref<?xi64>) {
          scf.yield %arg5, %arg6 : index, memref<?xi64>
        } else {
          memref.store %42, %arg6[%55] : memref<?xi64>
          %59 = index.add %arg5, %idx1
          scf.yield %59, %arg6 : index, memref<?xi64>
        }
        scf.yield %58#0, %58#1 : index, memref<?xi64>
      }
      scf.yield %53#0, %53#1 : index, memref<?xi64>
    }
    %44 = index.add %arg0, %idx1
    %45 = arith.index_cast %43#0 : index to i64
    %c0_51 = arith.constant 0 : index
    %dim = memref.dim %alloc_38, %c0_51 : memref<?xi64>
    %alloc_52 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
    memref.store %45, %alloc_52[%44] : memref<?xi64>
    %subview = memref.subview %alloc_38[%44] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_53 = memref.subview %alloc_38[%44] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21 = arith.addi %9, %c1 : index
  %22:2 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %36 = memref.load %arg2[%arg0] : memref<?xi64>
    %37 = arith.addi %36, %arg1 : i64
    memref.store %37, %arg2[%arg0] : memref<?xi64>
    scf.yield %37, %arg2 : i64, memref<?xi64>
  }
  %23 = bufferization.to_tensor %22#1 : memref<?xi64>
  %24 = arith.index_cast %22#0 : i64 to index
  %25 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %25, %alloc_39[%idx0] : memref<1xi64>
  %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
  %26 = bufferization.to_tensor %cast_40 : memref<?xi64>
  %alloc_41 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %36 = memref.load %22#1[%arg0] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %39 = memref.load %22#1[%38] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %41 = arith.subi %40, %37 : index
    %subview = memref.subview %alloc_41[%37] [%41] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_50 = memref.subview %alloc_42[%37] [%41] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %42 = arith.index_cast %arg0 : index to i32
    %43 = arith.addi %42, %c1_i32 : i32
    %44 = arith.addi %arg0, %c1 : index
    %45 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %46 = arith.index_cast %45 : i64 to index
    %47 = memref.load %alloc_8[%44] : memref<?xi64>
    %48 = arith.index_cast %47 : i64 to index
    %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %49:4 = scf.for %arg1 = %46 to %48 step %c1 iter_args(%arg2 = %alloc_51, %arg3 = %alloc_52, %arg4 = %idx0, %arg5 = %alloc_53) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %51 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %52 = arith.index_cast %51 : i64 to index
      %53 = arith.addi %52, %c1 : index
      %54 = memref.load %alloc_28[%52] : memref<?xi64>
      %55 = arith.index_cast %54 : i64 to index
      %56 = memref.load %alloc_28[%53] : memref<?xi64>
      %57 = arith.index_cast %56 : i64 to index
      %58 = memref.load %alloc_16[%arg1] : memref<?xf64>
      %59:4 = scf.for %arg6 = %55 to %57 step %c1 iter_args(%arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4, %arg10 = %arg5) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %60 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %61 = arith.index_cast %60 : i64 to index
        %62 = memref.load %alloc_36[%arg6] : memref<?xf64>
        %63 = arith.mulf %58, %62 : f64
        %64 = memref.load %arg8[%61] : memref<?xi32>
        %65 = arith.cmpi eq, %64, %43 : i32
        %66:4 = scf.if %65 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %67 = memref.load %arg7[%61] : memref<?xf64>
          %68 = arith.addf %67, %63 : f64
          memref.store %68, %arg7[%61] : memref<?xf64>
          scf.yield %arg8, %arg9, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %43, %arg8[%61] : memref<?xi32>
          memref.store %60, %arg10[%arg9] : memref<?xi64>
          %67 = index.add %arg9, %idx1
          memref.store %63, %arg7[%61] : memref<?xf64>
          scf.yield %arg8, %67, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %66#3, %66#0, %66#1, %66#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %59#0, %59#1, %59#2, %59#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    "ta.TensorSortOp"(%49#3, %idx0, %49#2) : (memref<?xi64>, index, index) -> ()
    %50:2 = scf.for %arg1 = %c0 to %49#2 step %c1 iter_args(%arg2 = %subview, %arg3 = %subview_50) -> (memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>) {
      %51 = memref.load %49#3[%arg1] : memref<?xi64>
      %52 = arith.index_cast %51 : i64 to index
      %53 = memref.load %49#0[%52] : memref<?xf64>
      memref.store %51, %arg2[%arg1] : memref<?xi64, strided<[1], offset: ?>>
      memref.store %53, %arg3[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      scf.yield %arg2, %arg3 : memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>
    }
    %subview_54 = memref.subview %alloc_41[%37] [%41] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %50#0, %subview_54 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
    %subview_55 = memref.subview %alloc_42[%37] [%41] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %50#1, %subview_55 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
  }
  %27 = bufferization.to_tensor %alloc_42 : memref<?xf64>
  %28 = bufferization.to_tensor %alloc_41 : memref<?xi64>
  %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_43[%idx0] : memref<1xindex>
  %29 = bufferization.to_tensor %alloc_43 : memref<1xindex>
  %30 = bufferization.to_memref %26 : memref<?xi64>
  %cast_44 = memref.cast %30 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_44) : (memref<*xi64>) -> ()
  %31 = bufferization.to_memref %29 : memref<1xindex>
  %cast_45 = memref.cast %31 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_45) : (memref<*xindex>) -> ()
  %32 = bufferization.to_memref %23 : memref<?xi64>
  %cast_46 = memref.cast %32 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %33 = bufferization.to_memref %28 : memref<?xi64>
  %cast_47 = memref.cast %33 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
  %34 = bufferization.to_memref %27 : memref<?xf64>
  %cast_48 = memref.cast %34 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_48) : (memref<*xf64>) -> ()
  %alloc_49 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_49[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %24 step %c1 {
    %36 = memref.load %alloc_42[%arg0] : memref<?xf64>
    %37 = memref.load %alloc_49[%c0] : memref<1xf64>
    %38 = arith.addf %36, %37 : f64
    memref.store %38, %alloc_49[%c0] : memref<1xf64>
  }
  %35 = memref.load %alloc_49[%c0] : memref<1xf64>
  call @printF64(%35) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.addi %37, %c1 : index
        %39 = memref.load %alloc_28[%37] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%38] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %44 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %45 = arith.index_cast %44 : i64 to index
          %46 = memref.load %alloc_49[%45] : memref<?xi64>
          %47 = arith.cmpi eq, %32, %46 : i64
          %48 = scf.if %47 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_49[%45] : memref<?xi64>
            %49 = index.add %arg4, %idx1
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %43 : index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33 : index to i64
      %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_50[%34] : memref<?xi64>
      %subview = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_51 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_51 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_38[%28] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = arith.subi %30, %27 : index
      %subview = memref.subview %alloc_40[%27] [%31] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_41[%27] [%31] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.addi %arg0, %c1 : index
      %35 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = memref.load %alloc_8[%34] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %39 = scf.for %arg1 = %36 to %38 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %40 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.addi %41, %c1 : index
        %43 = memref.load %alloc_28[%41] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = memref.load %alloc_28[%42] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %48 = scf.for %arg3 = %44 to %46 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %50 = arith.index_cast %49 : i64 to index
          %51 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %52 = arith.mulf %47, %51 : f64
          %53 = memref.load %alloc_51[%50] : memref<?xi32>
          %54 = arith.cmpi eq, %53, %33 : i32
          %55 = scf.if %54 -> (index) {
            %56 = memref.load %alloc_50[%50] : memref<?xf64>
            %57 = arith.addf %56, %52 : f64
            memref.store %57, %alloc_50[%50] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %33, %alloc_51[%50] : memref<?xi32>
            memref.store %49, %alloc_52[%arg4] : memref<?xi64>
            %56 = index.add %arg4, %idx1
            memref.store %52, %alloc_50[%50] : memref<?xf64>
            scf.yield %56 : index
          }
          scf.yield %55 : index
        }
        scf.yield %48 : index
      }
      "ta.TensorSortOp"(%alloc_52, %idx0, %39) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %39 step %c1 {
        %40 = memref.load %alloc_52[%arg1] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_50[%41] : memref<?xf64>
        memref.store %40, %subview[%arg1] : memref<?xi64, strided<[1], offset: ?>>
        memref.store %42, %subview_49[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      }
      %subview_53 = memref.subview %alloc_40[%27] [%31] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      %subview_54 = memref.subview %alloc_41[%27] [%31] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %subview_49, %subview_54 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_48[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_48[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_49[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_49[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_50[%31] : memref<?xi64>
      %subview = memref.subview %alloc_38[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_38[%28] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = arith.subi %30, %27 : index
      %subview = memref.subview %alloc_40[%27] [%31] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_41[%27] [%31] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_8[%28] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %47 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %48 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %49 = arith.index_cast %48 : i64 to index
          %50 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %51 = arith.mulf %46, %50 : f64
          %52 = memref.load %alloc_51[%49] : memref<?xi32>
          %53 = arith.cmpi eq, %52, %33 : i32
          %54 = scf.if %53 -> (index) {
            %55 = memref.load %alloc_50[%49] : memref<?xf64>
            %56 = arith.addf %55, %51 : f64
            memref.store %56, %alloc_50[%49] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %33, %alloc_51[%49] : memref<?xi32>
            memref.store %48, %alloc_52[%arg4] : memref<?xi64>
            %55 = index.add %arg4, %idx1
            memref.store %51, %alloc_50[%49] : memref<?xf64>
            scf.yield %55 : index
          }
          scf.yield %54 : index
        }
        scf.yield %47 : index
      }
      "ta.TensorSortOp"(%alloc_52, %idx0, %38) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %38 step %c1 {
        %39 = memref.load %alloc_52[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_50[%40] : memref<?xf64>
        memref.store %39, %subview[%arg1] : memref<?xi64, strided<[1], offset: ?>>
        memref.store %41, %subview_49[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      }
      memref.copy %subview, %subview : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview_49, %subview_49 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_48[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_48[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_49[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_49[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_50[%31] : memref<?xi64>
      %subview = memref.subview %alloc_38[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_38[%28] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = arith.subi %30, %27 : index
      %subview = memref.subview %alloc_40[%27] [%31] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_41[%27] [%31] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_8[%28] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %47 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %48 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %49 = arith.index_cast %48 : i64 to index
          %50 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %51 = arith.mulf %46, %50 : f64
          %52 = memref.load %alloc_51[%49] : memref<?xi32>
          %53 = arith.cmpi eq, %52, %33 : i32
          %54 = scf.if %53 -> (index) {
            %55 = memref.load %alloc_50[%49] : memref<?xf64>
            %56 = arith.addf %55, %51 : f64
            memref.store %56, %alloc_50[%49] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %33, %alloc_51[%49] : memref<?xi32>
            memref.store %48, %alloc_52[%arg4] : memref<?xi64>
            %55 = index.add %arg4, %idx1
            memref.store %51, %alloc_50[%49] : memref<?xf64>
            scf.yield %55 : index
          }
          scf.yield %54 : index
        }
        scf.yield %47 : index
      }
      "ta.TensorSortOp"(%alloc_52, %idx0, %38) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %38 step %c1 {
        %39 = memref.load %alloc_52[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_50[%40] : memref<?xf64>
        %42 = affine.apply #map()[%27, %arg1]
        memref.store %39, %alloc_40[%42] : memref<?xi64>
        %43 = affine.apply #map()[%27, %arg1]
        memref.store %41, %alloc_41[%43] : memref<?xf64>
      }
      memref.copy %subview, %subview : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview_49, %subview_49 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_48[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_48[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_49[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_49[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_50[%31] : memref<?xi64>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = arith.index_cast %arg0 : index to i32
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%28] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.addi %37, %c1 : index
        %39 = memref.load %alloc_28[%37] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%38] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %48 = arith.mulf %43, %47 : f64
          %49 = memref.load %alloc_50[%46] : memref<?xi32>
          %50 = arith.cmpi eq, %49, %30 : i32
          %51 = scf.if %50 -> (index) {
            %52 = memref.load %alloc_49[%46] : memref<?xf64>
            %53 = arith.addf %52, %48 : f64
            memref.store %53, %alloc_49[%46] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %30, %alloc_50[%46] : memref<?xi32>
            memref.store %45, %alloc_51[%arg4] : memref<?xi64>
            %52 = index.add %arg4, %idx1
            memref.store %48, %alloc_49[%46] : memref<?xf64>
            scf.yield %52 : index
          }
          scf.yield %51 : index
        }
        scf.yield %44 : index
      }
      "ta.TensorSortOp"(%alloc_51, %idx0, %35) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %35 step %c1 {
        %36 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_49[%37] : memref<?xf64>
        %39 = affine.apply #map()[%27, %arg1]
        memref.store %36, %alloc_40[%39] : memref<?xi64>
        %40 = affine.apply #map()[%27, %arg1]
        memref.store %38, %alloc_41[%40] : memref<?xf64>
      }
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_48[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_48[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %alloc_8[%26] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = index.add %arg0, %idx1
    %32 = arith.index_cast %31 : index to i64
    %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
      %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.addi %36, %c1 : index
      %38 = memref.load %alloc_28[%36] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = memref.load %alloc_28[%37] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = memref.load %alloc_49[%44] : memref<?xi64>
        %46 = arith.cmpi eq, %32, %45 : i64
        %47 = scf.if %46 -> (index) {
          scf.yield %arg4 : index
        } else {
          memref.store %32, %alloc_49[%44] : memref<?xi64>
          %48 = index.add %arg4, %idx1
          scf.yield %48 : index
        }
        scf.yield %47 : index
      }
      scf.yield %42 : index
    }
    %34 = arith.index_cast %33 : index to i64
    %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
    memref.store %34, %alloc_50[%31] : memref<?xi64>
  }
  %21 = arith.addi %9, %c1 : index
  %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %27 = arith.addi %26, %arg1 : i64
    memref.store %27, %alloc_38[%arg0] : memref<?xi64>
    scf.yield %27 : i64
  }
  %23 = arith.index_cast %22 : i64 to index
  %24 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %24, %alloc_39[%idx0] : memref<1xi64>
  %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = arith.addi %arg0, %c1 : index
    %29 = arith.index_cast %arg0 : index to i32
    %30 = arith.addi %29, %c1_i32 : i32
    %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %33 = memref.load %alloc_8[%28] : memref<?xi64>
    %34 = arith.index_cast %33 : i64 to index
    %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
      %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = arith.addi %37, %c1 : index
      %39 = memref.load %alloc_28[%37] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_28[%38] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
      %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
        %48 = arith.mulf %43, %47 : f64
        %49 = memref.load %alloc_50[%46] : memref<?xi32>
        %50 = arith.cmpi eq, %49, %30 : i32
        %51 = scf.if %50 -> (index) {
          %52 = memref.load %alloc_49[%46] : memref<?xf64>
          %53 = arith.addf %52, %48 : f64
          memref.store %53, %alloc_49[%46] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %30, %alloc_50[%46] : memref<?xi32>
          memref.store %45, %alloc_51[%arg4] : memref<?xi64>
          %52 = index.add %arg4, %idx1
          memref.store %48, %alloc_49[%46] : memref<?xf64>
          scf.yield %52 : index
        }
        scf.yield %51 : index
      }
      scf.yield %44 : index
    }
    "ta.TensorSortOp"(%alloc_51, %idx0, %35) : (memref<?xi64>, index, index) -> ()
    scf.for %arg1 = %c0 to %35 step %c1 {
      %36 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = memref.load %alloc_49[%37] : memref<?xf64>
      %39 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%27, %arg1]
      memref.store %36, %alloc_40[%39] : memref<?xi64>
      %40 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%27, %arg1]
      memref.store %38, %alloc_41[%40] : memref<?xf64>
    }
  }
  %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
  %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
  %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
  %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
  %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
  %alloc_48 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_48[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %23 step %c1 {
    %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
    %27 = memref.load %alloc_48[%c0] : memref<1xf64>
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_48[%c0] : memref<1xf64>
  }
  %25 = memref.load %alloc_48[%c0] : memref<1xf64>
  call @printF64(%25) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
  }
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
  }
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
  }
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
  }
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
  }
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
  }
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
  }
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
  }
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
  }
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  scf.for %arg0 = %c0 to %10 step %c1 {
    memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
  }
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  scf.for %arg0 = %c0 to %11 step %c1 {
    memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
  }
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  scf.for %arg0 = %c0 to %12 step %c1 {
    memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
  }
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  scf.for %arg0 = %c0 to %13 step %c1 {
    memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
  }
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  scf.for %arg0 = %c0 to %14 step %c1 {
    memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
  }
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  scf.for %arg0 = %c0 to %15 step %c1 {
    memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
  }
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  scf.for %arg0 = %c0 to %16 step %c1 {
    memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
  }
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  scf.for %arg0 = %c0 to %17 step %c1 {
    memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
  }
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  scf.for %arg0 = %c0 to %18 step %c1 {
    memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
  }
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %alloc_8[%26] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = index.add %arg0, %idx1
    %32 = arith.index_cast %31 : index to i64
    %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
      %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.addi %36, %c1 : index
      %38 = memref.load %alloc_28[%36] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = memref.load %alloc_28[%37] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = memref.load %alloc_49[%44] : memref<?xi64>
        %46 = arith.cmpi eq, %32, %45 : i64
        %47 = scf.if %46 -> (index) {
          scf.yield %arg4 : index
        } else {
          memref.store %32, %alloc_49[%44] : memref<?xi64>
          %48 = index.add %arg4, %idx1
          scf.yield %48 : index
        }
        scf.yield %47 : index
      }
      scf.yield %42 : index
    }
    %34 = arith.index_cast %33 : index to i64
    %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
    memref.store %34, %alloc_50[%31] : memref<?xi64>
  }
  %21 = arith.addi %9, %c1 : index
  %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %27 = arith.addi %26, %arg1 : i64
    memref.store %27, %alloc_38[%arg0] : memref<?xi64>
    scf.yield %27 : i64
  }
  %23 = arith.index_cast %22 : i64 to index
  %24 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %24, %alloc_39[%idx0] : memref<1xi64>
  %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = arith.addi %arg0, %c1 : index
    %29 = arith.index_cast %arg0 : index to i32
    %30 = arith.addi %29, %c1_i32 : i32
    %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %33 = memref.load %alloc_8[%28] : memref<?xi64>
    %34 = arith.index_cast %33 : i64 to index
    %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
      %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = arith.addi %37, %c1 : index
      %39 = memref.load %alloc_28[%37] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_28[%38] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
      %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
        %48 = arith.mulf %43, %47 : f64
        %49 = memref.load %alloc_50[%46] : memref<?xi32>
        %50 = arith.cmpi eq, %49, %30 : i32
        %51 = scf.if %50 -> (index) {
          %52 = memref.load %alloc_49[%46] : memref<?xf64>
          %53 = arith.addf %52, %48 : f64
          memref.store %53, %alloc_49[%46] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %30, %alloc_50[%46] : memref<?xi32>
          memref.store %45, %alloc_51[%arg4] : memref<?xi64>
          %52 = index.add %arg4, %idx1
          memref.store %48, %alloc_49[%46] : memref<?xf64>
          scf.yield %52 : index
        }
        scf.yield %51 : index
      }
      scf.yield %44 : index
    }
    "ta.TensorSortOp"(%alloc_51, %idx0, %35) : (memref<?xi64>, index, index) -> ()
    scf.for %arg1 = %c0 to %35 step %c1 {
      %36 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = memref.load %alloc_49[%37] : memref<?xf64>
      %39 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%27, %arg1]
      memref.store %36, %alloc_40[%39] : memref<?xi64>
      %40 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%27, %arg1]
      memref.store %38, %alloc_41[%40] : memref<?xf64>
    }
  }
  %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
  %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
  %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
  %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
  %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
  %alloc_48 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_48[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %23 step %c1 {
    %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
    %27 = memref.load %alloc_48[%c0] : memref<1xf64>
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_48[%c0] : memref<1xf64>
  }
  %25 = memref.load %alloc_48[%c0] : memref<1xf64>
  call @printF64(%25) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_49[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_49[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_50[%31] : memref<?xi64>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = arith.index_cast %arg0 : index to i32
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%28] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.addi %37, %c1 : index
        %39 = memref.load %alloc_28[%37] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%38] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %48 = arith.mulf %43, %47 : f64
          %49 = memref.load %alloc_50[%46] : memref<?xi32>
          %50 = arith.cmpi eq, %49, %30 : i32
          %51 = scf.if %50 -> (index) {
            %52 = memref.load %alloc_49[%46] : memref<?xf64>
            %53 = arith.addf %52, %48 : f64
            memref.store %53, %alloc_49[%46] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %30, %alloc_50[%46] : memref<?xi32>
            memref.store %45, %alloc_51[%arg4] : memref<?xi64>
            %52 = index.add %arg4, %idx1
            memref.store %48, %alloc_49[%46] : memref<?xf64>
            scf.yield %52 : index
          }
          scf.yield %51 : index
        }
        scf.yield %44 : index
      }
      "ta.TensorSortOp"(%alloc_51, %idx0, %35) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %35 step %c1 {
        %36 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_49[%37] : memref<?xf64>
        %39 = arith.addi %27, %arg1 : index
        memref.store %36, %alloc_40[%39] : memref<?xi64>
        %40 = arith.addi %27, %arg1 : index
        memref.store %38, %alloc_41[%40] : memref<?xf64>
      }
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_48[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_48[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %c0_39 = arith.constant 0 : index
    %c1_40 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_39) to (%9) step (%c1_40) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_53[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_53[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_54 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_54 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_54[%31] : memref<?xi64>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_41[%idx0] : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %c0_44 = arith.constant 0 : index
    %c1_45 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_44) to (%9) step (%c1_45) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = arith.index_cast %arg0 : index to i32
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%28] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_55 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.addi %37, %c1 : index
        %39 = memref.load %alloc_28[%37] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%38] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %48 = arith.mulf %43, %47 : f64
          %49 = memref.load %alloc_54[%46] : memref<?xi32>
          %50 = arith.cmpi eq, %49, %30 : i32
          %51 = scf.if %50 -> (index) {
            %52 = memref.load %alloc_53[%46] : memref<?xf64>
            %53 = arith.addf %52, %48 : f64
            memref.store %53, %alloc_53[%46] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %30, %alloc_54[%46] : memref<?xi32>
            memref.store %45, %alloc_55[%arg4] : memref<?xi64>
            %52 = index.add %arg4, %idx1
            memref.store %48, %alloc_53[%46] : memref<?xf64>
            scf.yield %52 : index
          }
          scf.yield %51 : index
        }
        scf.yield %44 : index
      }
      "ta.TensorSortOp"(%alloc_55, %idx0, %35) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %35 step %c1 {
        %36 = memref.load %alloc_55[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_53[%37] : memref<?xf64>
        %39 = arith.addi %27, %arg1 : index
        memref.store %36, %alloc_42[%39] : memref<?xi64>
        %40 = arith.addi %27, %arg1 : index
        memref.store %38, %alloc_43[%40] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_52[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_52[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_52[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %c0_39 = arith.constant 0 : index
    %c1_40 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_39) to (%9) step (%c1_40) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_53[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_53[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_54 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_54 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_54[%31] : memref<?xi64>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_41[%idx0] : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %c0_44 = arith.constant 0 : index
    %c1_45 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_44) to (%9) step (%c1_45) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = arith.index_cast %arg0 : index to i32
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%28] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_55 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.addi %37, %c1 : index
        %39 = memref.load %alloc_28[%37] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%38] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %48 = arith.mulf %43, %47 : f64
          %49 = memref.load %alloc_54[%46] : memref<?xi32>
          %50 = arith.cmpi eq, %49, %30 : i32
          %51 = scf.if %50 -> (index) {
            %52 = memref.load %alloc_53[%46] : memref<?xf64>
            %53 = arith.addf %52, %48 : f64
            memref.store %53, %alloc_53[%46] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %30, %alloc_54[%46] : memref<?xi32>
            memref.store %45, %alloc_55[%arg4] : memref<?xi64>
            %52 = index.add %arg4, %idx1
            memref.store %48, %alloc_53[%46] : memref<?xf64>
            scf.yield %52 : index
          }
          scf.yield %51 : index
        }
        scf.yield %44 : index
      }
      "ta.TensorSortOp"(%alloc_55, %idx0, %35) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %35 step %c1 {
        %36 = memref.load %alloc_55[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_53[%37] : memref<?xf64>
        %39 = arith.addi %27, %arg1 : index
        memref.store %36, %alloc_42[%39] : memref<?xi64>
        %40 = arith.addi %27, %arg1 : index
        memref.store %38, %alloc_43[%40] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_52[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_52[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_52[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_49[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_49[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_50[%31] : memref<?xi64>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = arith.index_cast %arg0 : index to i32
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%28] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.addi %37, %c1 : index
        %39 = memref.load %alloc_28[%37] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%38] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %48 = arith.mulf %43, %47 : f64
          %49 = memref.load %alloc_50[%46] : memref<?xi32>
          %50 = arith.cmpi eq, %49, %30 : i32
          %51 = scf.if %50 -> (index) {
            %52 = memref.load %alloc_49[%46] : memref<?xf64>
            %53 = arith.addf %52, %48 : f64
            memref.store %53, %alloc_49[%46] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %30, %alloc_50[%46] : memref<?xi32>
            memref.store %45, %alloc_51[%arg4] : memref<?xi64>
            %52 = index.add %arg4, %idx1
            memref.store %48, %alloc_49[%46] : memref<?xf64>
            scf.yield %52 : index
          }
          scf.yield %51 : index
        }
        scf.yield %44 : index
      }
      "ta.TensorSortOp"(%alloc_51, %idx0, %35) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %35 step %c1 {
        %36 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_49[%37] : memref<?xf64>
        %39 = arith.addi %27, %arg1 : index
        memref.store %36, %alloc_40[%39] : memref<?xi64>
        %40 = arith.addi %27, %arg1 : index
        memref.store %38, %alloc_41[%40] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_48[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_48[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_49[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_49[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_50[%31] : memref<?xi64>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = arith.index_cast %arg0 : index to i32
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%28] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.addi %37, %c1 : index
        %39 = memref.load %alloc_28[%37] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%38] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %48 = arith.mulf %43, %47 : f64
          %49 = memref.load %alloc_50[%46] : memref<?xi32>
          %50 = arith.cmpi eq, %49, %30 : i32
          %51 = scf.if %50 -> (index) {
            %52 = memref.load %alloc_49[%46] : memref<?xf64>
            %53 = arith.addf %52, %48 : f64
            memref.store %53, %alloc_49[%46] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %30, %alloc_50[%46] : memref<?xi32>
            memref.store %45, %alloc_51[%arg4] : memref<?xi64>
            %52 = index.add %arg4, %idx1
            memref.store %48, %alloc_49[%46] : memref<?xf64>
            scf.yield %52 : index
          }
          scf.yield %51 : index
        }
        scf.yield %44 : index
      }
      "ta.TensorSortOp"(%alloc_51, %idx0, %35) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %35 step %c1 {
        %36 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_49[%37] : memref<?xf64>
        %39 = arith.addi %27, %arg1 : index
        memref.store %36, %alloc_40[%39] : memref<?xi64>
        %40 = arith.addi %27, %arg1 : index
        memref.store %38, %alloc_41[%40] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_48[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_48[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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


module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_49[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_49[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_50[%31] : memref<?xi64>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = arith.index_cast %arg0 : index to i32
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%28] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.addi %37, %c1 : index
        %39 = memref.load %alloc_28[%37] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%38] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %48 = arith.mulf %43, %47 : f64
          %49 = memref.load %alloc_50[%46] : memref<?xi32>
          %50 = arith.cmpi eq, %49, %30 : i32
          %51 = scf.if %50 -> (index) {
            %52 = memref.load %alloc_49[%46] : memref<?xf64>
            %53 = arith.addf %52, %48 : f64
            memref.store %53, %alloc_49[%46] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %30, %alloc_50[%46] : memref<?xi32>
            memref.store %45, %alloc_51[%arg4] : memref<?xi64>
            %52 = index.add %arg4, %idx1
            memref.store %48, %alloc_49[%46] : memref<?xf64>
            scf.yield %52 : index
          }
          scf.yield %51 : index
        }
        scf.yield %44 : index
      }
      "ta.TensorSortOp"(%alloc_51, %idx0, %35) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %35 step %c1 {
        %36 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_49[%37] : memref<?xf64>
        %39 = arith.addi %27, %arg1 : index
        memref.store %36, %alloc_40[%39] : memref<?xi64>
        %40 = arith.addi %27, %arg1 : index
        memref.store %38, %alloc_41[%40] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_48[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_48[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
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
