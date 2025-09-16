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
    %69 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %70:6 = builtin.unrealized_conversion_cast %69 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %71 = scf.forall (%arg6) in (%extracted) shared_outs(%arg7 = %70#4) -> (tensor<?xi64>) {
      %76 = builtin.unrealized_conversion_cast %arg6, %70#1, %c0, %70#3, %arg7, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %77 = arith.addi %arg6, %c1 : index
      %extracted_62 = tensor.extract %15[%arg6] : tensor<?xi64>
      %78 = arith.index_cast %extracted_62 : i64 to index
      %extracted_63 = tensor.extract %15[%77] : tensor<?xi64>
      %79 = arith.index_cast %extracted_63 : i64 to index
      %80:6 = scf.for %arg8 = %78 to %79 step %c1 iter_args(%arg9 = %arg6, %arg10 = %70#1, %arg11 = %c0, %arg12 = %70#3, %arg13 = %arg7, %arg14 = %70#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_66 = tensor.extract %16[%arg8] : tensor<?xi64>
        %86 = arith.index_cast %extracted_66 : i64 to index
        %87 = arith.addi %86, %c1 : index
        %extracted_67 = tensor.extract %36[%86] : tensor<?xi64>
        %88 = arith.index_cast %extracted_67 : i64 to index
        %extracted_68 = tensor.extract %36[%87] : tensor<?xi64>
        %89 = arith.index_cast %extracted_68 : i64 to index
        %90:6 = scf.for %arg15 = %88 to %89 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %extracted_69 = tensor.extract %37[%arg15] : tensor<?xi64>
          %92 = arith.index_cast %extracted_69 : i64 to index
          %idx1_70 = index.constant 1
          %93 = index.add %arg16, %idx1_70
          %94 = arith.index_cast %93 : index to i64
          %extracted_71 = tensor.extract %arg21[%92] : tensor<?xi64>
          %95 = arith.cmpi eq, %94, %extracted_71 : i64
          %96:2 = scf.if %95 -> (index, tensor<?xi64>) {
            scf.yield %arg18, %arg21 : index, tensor<?xi64>
          } else {
            %inserted_72 = tensor.insert %94 into %arg21[%92] : tensor<?xi64>
            %98 = index.add %arg18, %idx1_70
            scf.yield %98, %inserted_72 : index, tensor<?xi64>
          }
          %97 = builtin.unrealized_conversion_cast %arg16, %arg17, %96#0, %arg19, %arg20, %96#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg16, %arg17, %96#0, %arg19, %arg20, %96#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %91 = builtin.unrealized_conversion_cast %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %81 = builtin.unrealized_conversion_cast %80#0, %80#1, %80#2, %80#3, %80#4, %80#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_64 = index.constant 1
      %82 = index.add %80#0, %idx1_64
      %83 = arith.index_cast %80#2 : index to i64
      %inserted_65 = tensor.insert %83 into %80#4[%82] : tensor<?xi64>
      %84 = builtin.unrealized_conversion_cast %82, %80#1, %80#2, %80#3, %inserted_65, %80#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %85:6 = builtin.unrealized_conversion_cast %84 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %85#4[%85#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%85#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %72 = arith.addi %extracted, %c1 : index
    %73:2 = scf.for %arg6 = %c1 to %72 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %71) -> (i64, tensor<?xi64>) {
      %extracted_62 = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %76 = arith.addi %extracted_62, %arg7 : i64
      %inserted_63 = tensor.insert %76 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %76, %inserted_63 : i64, tensor<?xi64>
    }
    %74 = arith.index_cast %73#0 : i64 to index
    %75 = builtin.unrealized_conversion_cast %extracted, %70#1, %74, %70#3, %73#1, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %extracted, %70#1, %74, %70#3, %73#1, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
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
  %54 = index.mul %idx1_48, %extracted
  %55 = tensor.empty(%47#2) : tensor<?xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = tensor.empty(%47#2) : tensor<?xf64>
  %cst_51 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_47 to %47#2 step %idx1_48 {
    %inserted_62 = tensor.insert %cst_51 into %58[%arg0] : tensor<?xf64>
  }
  %from_elements_52 = tensor.from_elements %extracted, %47#3 : tensor<2xindex>
  %idx0_53 = index.constant 0
  %idx0_54 = index.constant 0
  %59 = builtin.unrealized_conversion_cast %from_elements_52, %idx0_53, %inserted_50, %idx0_54, %47#4, %55, %58 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1_55 = index.constant 1
  %extracted_56 = tensor.extract %from_elements_52[%idx1_55] : tensor<2xindex>
  %60 = bufferization.alloc_tensor(%extracted_56) : tensor<?xf64>
  %c1_i32_57 = arith.constant 1 : i32
  %61 = bufferization.alloc_tensor(%extracted_56) : tensor<?xi32>
  %idx0_58 = index.constant 0
  %62 = bufferization.alloc_tensor(%extracted_56) : tensor<?xi64>
  %63 = builtin.unrealized_conversion_cast %60, %c1_i32_57, %61, %idx0_58, %62 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %64:12 = "it.itree"(%from_elements_52, %idx0_53, %inserted_50, %idx0_54, %47#4, %55, %58, %60, %c1_i32_57, %61, %idx0_58, %62) <{operandSegmentSizes = array<i32: 7, 5>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: tensor<?xf64>, %arg8: i32, %arg9: tensor<?xi32>, %arg10: index, %arg11: tensor<?xi64>):
    %69 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %70:7 = builtin.unrealized_conversion_cast %69 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %71:2 = scf.forall (%arg12) in (%extracted) shared_outs(%arg13 = %70#5, %arg14 = %70#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_62 = tensor.extract %70#4[%arg12] : tensor<?xi64>
      %73 = arith.index_cast %extracted_62 : i64 to index
      %74 = arith.addi %arg12, %c1 : index
      %extracted_63 = tensor.extract %70#4[%74] : tensor<?xi64>
      %75 = arith.index_cast %extracted_63 : i64 to index
      %76 = arith.subi %75, %73 : index
      %extracted_slice = tensor.extract_slice %arg13[%73] [%76] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_64 = tensor.extract_slice %arg14[%73] [%76] [1] : tensor<?xf64> to tensor<?xf64>
      %77 = builtin.unrealized_conversion_cast %70#0, %70#1, %70#2, %c1, %70#4, %extracted_slice, %extracted_slice_64 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %c1_i32_65 = arith.constant 1 : i32
      %78 = arith.addi %arg8, %c1_i32_65 : i32
      %idx0_66 = index.constant 0
      %79 = builtin.unrealized_conversion_cast %arg7, %78, %arg9, %idx0_66, %arg11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %80 = arith.addi %arg12, %c1 : index
      %extracted_67 = tensor.extract %15[%arg12] : tensor<?xi64>
      %81 = arith.index_cast %extracted_67 : i64 to index
      %extracted_68 = tensor.extract %15[%80] : tensor<?xi64>
      %82 = arith.index_cast %extracted_68 : i64 to index
      %83:12 = scf.for %arg15 = %81 to %82 step %c1 iter_args(%arg16 = %70#0, %arg17 = %70#1, %arg18 = %70#2, %arg19 = %c1, %arg20 = %70#4, %arg21 = %extracted_slice, %arg22 = %extracted_slice_64, %arg23 = %arg7, %arg24 = %78, %arg25 = %arg9, %arg26 = %idx0_66, %arg27 = %arg11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
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
        tensor.parallel_insert_slice %89#0 into %arg13[%73] [%76] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %89#1 into %arg14[%73] [%76] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %72 = builtin.unrealized_conversion_cast %70#0, %70#1, %70#2, %70#3, %70#4, %71#0, %71#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %70#0, %70#1, %70#2, %70#3, %70#4, %71#0, %71#1, %arg7, %arg8, %arg9, %arg10, %arg11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>)
  %65 = builtin.unrealized_conversion_cast %64#0, %64#1, %64#2, %64#3, %64#4, %64#5, %64#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %66 = builtin.unrealized_conversion_cast %64#7, %64#8, %64#9, %64#10, %64#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %67 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_59 = index.constant 0
  %inserted_60 = tensor.insert %idx-1 into %67[%idx0_59] : tensor<1xindex>
  "ta.print"(%64#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_60) : (tensor<1xindex>) -> ()
  "ta.print"(%64#4) : (tensor<?xi64>) -> ()
  "ta.print"(%64#5) : (tensor<?xi64>) -> ()
  "ta.print"(%64#6) : (tensor<?xf64>) -> ()
  %alloc_61 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_61[%c0] : memref<1xf64>
  %dim = tensor.dim %64#6, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted_62 = tensor.extract %64#6[%arg0] : tensor<?xf64>
    %69 = memref.load %alloc_61[%c0] : memref<1xf64>
    %70 = arith.addf %extracted_62, %69 : f64
    memref.store %70, %alloc_61[%c0] : memref<1xf64>
  }
  %68 = memref.load %alloc_61[%c0] : memref<1xf64>
  "ta.print"(%68) : (f64) -> ()
  return
}