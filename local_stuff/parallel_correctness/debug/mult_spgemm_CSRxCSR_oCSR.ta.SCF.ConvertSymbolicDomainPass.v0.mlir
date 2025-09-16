// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
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
    %68 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %69:6 = builtin.unrealized_conversion_cast %68 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %70 = scf.forall (%arg6) in (%21) shared_outs(%arg7 = %69#4) -> (tensor<?xi64>) {
      %75 = builtin.unrealized_conversion_cast %arg6, %69#1, %c0, %69#3, %arg7, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %76 = arith.addi %arg6, %c1 : index
      %extracted = tensor.extract %22[%arg6] : tensor<?xi64>
      %77 = arith.index_cast %extracted : i64 to index
      %extracted_47 = tensor.extract %22[%76] : tensor<?xi64>
      %78 = arith.index_cast %extracted_47 : i64 to index
      %79:6 = scf.for %arg8 = %77 to %78 step %c1 iter_args(%arg9 = %arg6, %arg10 = %69#1, %arg11 = %c0, %arg12 = %69#3, %arg13 = %arg7, %arg14 = %69#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %85 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %86 = arith.index_cast %85 : i64 to index
        %87 = arith.addi %86, %c1 : index
        %extracted_50 = tensor.extract %44[%86] : tensor<?xi64>
        %88 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %44[%87] : tensor<?xi64>
        %89 = arith.index_cast %extracted_51 : i64 to index
        %90:6 = scf.for %arg15 = %88 to %89 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %92 = "ta.SpTensorGetCrd"(%43, %arg15) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %93 = arith.index_cast %92 : i64 to index
          %idx1_52 = index.constant 1
          %94 = index.add %arg16, %idx1_52
          %95 = arith.index_cast %94 : index to i64
          %extracted_53 = tensor.extract %arg21[%93] : tensor<?xi64>
          %96 = arith.cmpi eq, %95, %extracted_53 : i64
          %97:2 = scf.if %96 -> (index, tensor<?xi64>) {
            scf.yield %arg18, %arg21 : index, tensor<?xi64>
          } else {
            %inserted_54 = tensor.insert %95 into %arg21[%93] : tensor<?xi64>
            %99 = index.add %arg18, %idx1_52
            scf.yield %99, %inserted_54 : index, tensor<?xi64>
          }
          %98 = builtin.unrealized_conversion_cast %arg16, %arg17, %97#0, %arg19, %arg20, %97#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg16, %arg17, %97#0, %arg19, %arg20, %97#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %91 = builtin.unrealized_conversion_cast %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %80 = builtin.unrealized_conversion_cast %79#0, %79#1, %79#2, %79#3, %79#4, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_48 = index.constant 1
      %81 = index.add %79#0, %idx1_48
      %82 = arith.index_cast %79#2 : index to i64
    //   %inserted_49 = tensor.insert %82 into %79#4[%81] : tensor<?xi64>
      // %83 = builtin.unrealized_conversion_cast %81, %79#1, %79#2, %79#3, %inserted_49, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %bufferized = bufferization.to_memref %79#4 : memref<?xi64>
      memref.store %82, %bufferized[%81] : memref<?xi64>
      %83 = builtin.unrealized_conversion_cast %81, %79#1, %79#2, %79#3, %79#4, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %84:6 = builtin.unrealized_conversion_cast %83 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %84#4[%84#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%84#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %71 = arith.addi %21, %c1 : index
    %72:2 = scf.for %arg6 = %c1 to %71 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %70) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %75 = arith.addi %extracted, %arg7 : i64
      %inserted_47 = tensor.insert %75 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %75, %inserted_47 : i64, tensor<?xi64>
    }
    %73 = arith.index_cast %72#0 : i64 to index
    %74 = builtin.unrealized_conversion_cast %21, %69#1, %73, %69#3, %72#1, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %21, %69#1, %73, %69#3, %72#1, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
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
  %58 = index.mul %idx1_41, %21
  %59 = tensor.empty(%51#2) : tensor<?xi64>
  %60 = tensor.empty() : tensor<0xi64>
  %61 = tensor.empty() : tensor<0xi64>
  %62 = tensor.empty(%51#2) : tensor<?xf64>
  %cst_44 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_40 to %51#2 step %idx1_41 {
    %inserted_47 = tensor.insert %cst_44 into %62[%arg0] : tensor<?xf64>
  }
  %from_elements_45 = tensor.from_elements %21, %51#3 : tensor<2xindex>
  %63 = "ta.spTensor_construct"(%from_elements_45, %inserted_43, %51#4, %55, %59, %56, %60, %57, %61, %62) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %64 = "ta.AllocWorkspace"(%63) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %65:2 = "it.itree"(%63, %64) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %68:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %69:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %68#5, %arg4 = %68#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %68#4[%arg2] : tensor<?xi64>
      %71 = arith.index_cast %extracted : i64 to index
      %72 = arith.addi %arg2, %c1 : index
      %extracted_47 = tensor.extract %68#4[%72] : tensor<?xi64>
      %73 = arith.index_cast %extracted_47 : i64 to index
      %74 = arith.subi %73, %71 : index
      %extracted_slice = tensor.extract_slice %arg3[%71] [%74] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_48 = tensor.extract_slice %arg4[%71] [%74] [1] : tensor<?xf64> to tensor<?xf64>
      %75 = builtin.unrealized_conversion_cast %68#0, %68#1, %68#2, %c0, %68#4, %extracted_slice, %extracted_slice_48 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %76 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %77 = arith.addi %arg2, %c1 : index
      %extracted_49 = tensor.extract %22[%arg2] : tensor<?xi64>
      %78 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %22[%77] : tensor<?xi64>
      %79 = arith.index_cast %extracted_50 : i64 to index
      %80:2 = scf.for %arg5 = %78 to %79 step %c1 iter_args(%arg6 = %75, %arg7 = %76) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %85 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %86 = arith.index_cast %85 : i64 to index
        %87 = arith.addi %86, %c1 : index
        %extracted_51 = tensor.extract %44[%86] : tensor<?xi64>
        %88 = arith.index_cast %extracted_51 : i64 to index
        %extracted_52 = tensor.extract %44[%87] : tensor<?xi64>
        %89 = arith.index_cast %extracted_52 : i64 to index
        %90:2 = scf.for %arg8 = %88 to %89 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %91 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %92 = arith.index_cast %91 : i64 to index
          %93 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %94 = arith.index_cast %93 : i64 to index
          %95 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %96 = arith.index_cast %95 : i64 to index
          %97 = "ta.TAExtractOp"(%20, %arg5, %arg2, %92) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %98 = "ta.TAExtractOp"(%43, %arg8, %86, %94) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %99 = arith.mulf %97, %98 : f64
          %100 = "ta.WorkspaceAccumulateOp"(%arg10, %96, %96, %99) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %100 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %90#0, %90#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %81 = "ta.SortCrdOp"(%80#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %82 = "ta.SpTensorGetNNZ"(%81) : (!ta.workspace<f64, i64, ?>) -> index
      %83:7 = builtin.unrealized_conversion_cast %80#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %84:3 = scf.for %arg5 = %c0 to %82 step %c1 iter_args(%arg6 = %83#5, %arg7 = %83#6, %arg8 = %81) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) {
        %85 = "ta.SpTensorGetCrd"(%arg8, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %86 = arith.index_cast %85 : i64 to index
        %87 = "ta.WorkspaceReadOp"(%arg8, %arg5, %86) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %inserted_51 = tensor.insert %85 into %arg6[%arg5] : tensor<?xi64>
        %inserted_52 = tensor.insert %87 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %inserted_51, %inserted_52, %arg8 : tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %84#0 into %arg3[%71] [%74] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %84#1 into %arg4[%71] [%74] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %70 = builtin.unrealized_conversion_cast %68#0, %68#1, %68#2, %68#3, %68#4, %69#0, %69#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %70, %arg1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%65#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %alloc_46 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_46[%c0] : memref<1xf64>
  %66 = "ta.SpTensorGetVals"(%65#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim = tensor.dim %66, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %66[%arg0] : tensor<?xf64>
    %68 = memref.load %alloc_46[%c0] : memref<1xf64>
    %69 = arith.addf %extracted, %68 : f64
    memref.store %69, %alloc_46[%c0] : memref<1xf64>
  }
  %67 = memref.load %alloc_46[%c0] : memref<1xf64>
  "ta.print"(%67) : (f64) -> ()
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