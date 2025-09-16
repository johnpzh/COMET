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
      %76 = builtin.unrealized_conversion_cast %arg0, %43, %c0, %31, %arg1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %77 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
      %78 = arith.index_cast %extracted : i64 to index
      %extracted_60 = tensor.extract %15[%77] : tensor<?xi64>
      %79 = arith.index_cast %extracted_60 : i64 to index
      %80:6 = scf.for %arg2 = %78 to %79 step %c1 iter_args(%arg3 = %arg0, %arg4 = %43, %arg5 = %c0, %arg6 = %31, %arg7 = %arg1, %arg8 = %45) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_63 = tensor.extract %16[%arg2] : tensor<?xi64>
        %85 = arith.index_cast %extracted_63 : i64 to index
        %86 = arith.addi %85, %c1 : index
        %extracted_64 = tensor.extract %36[%85] : tensor<?xi64>
        %87 = arith.index_cast %extracted_64 : i64 to index
        %extracted_65 = tensor.extract %36[%86] : tensor<?xi64>
        %88 = arith.index_cast %extracted_65 : i64 to index
        %89:6 = scf.for %arg9 = %87 to %88 step %c1 iter_args(%arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6, %arg14 = %arg7, %arg15 = %arg8) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %extracted_66 = tensor.extract %37[%arg9] : tensor<?xi64>
          %91 = arith.index_cast %extracted_66 : i64 to index
          %idx1_67 = index.constant 1
          %92 = index.add %arg10, %idx1_67
          %93 = arith.index_cast %92 : index to i64
          %extracted_68 = tensor.extract %arg15[%91] : tensor<?xi64>
          %94 = arith.cmpi eq, %93, %extracted_68 : i64
          %95 = scf.if %94 -> (index) {
            scf.yield %arg12 : index
          } else {
            %inserted_69 = tensor.insert %93 into %arg15[%91] : tensor<?xi64>
            %97 = index.add %arg12, %idx1_67
            scf.yield %97 : index
          }
          %96 = builtin.unrealized_conversion_cast %arg10, %arg11, %95, %arg13, %arg14, %arg15 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg10, %arg11, %95, %arg13, %arg14, %arg15 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %90 = builtin.unrealized_conversion_cast %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %81 = builtin.unrealized_conversion_cast %80#0, %80#1, %80#2, %80#3, %80#4, %80#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_61 = index.constant 1
      %82 = index.add %80#0, %idx1_61
      %83 = arith.index_cast %80#2 : index to i64
      %inserted_62 = tensor.insert %83 into %80#4[%82] : tensor<?xi64>
      "ta.print"(%inserted_62) : (tensor<?xi64>) -> ()
      %84 = builtin.unrealized_conversion_cast %82, %80#1, %80#2, %80#3, %80#4, %80#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %extracted_slice = tensor.extract_slice %80#4[%82] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%82] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %49 = arith.addi %9, %c1 : index
    %50:2 = scf.for %arg0 = %c1 to %49 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %48) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %76 = arith.addi %extracted, %arg1 : i64
      %inserted_60 = tensor.insert %76 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %76, %inserted_60 : i64, tensor<?xi64>
    }
    "ta.print"(%50#1) : (tensor<?xi64>) -> ()
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
    %59 = index.mul %idx1_47, %9
    %60 = tensor.empty(%51) : tensor<?xi64>
    %61 = tensor.empty() : tensor<0xi64>
    %62 = tensor.empty() : tensor<0xi64>
    %63 = tensor.empty(%51) : tensor<?xf64>
    %cst_50 = arith.constant 0.000000e+00 : f64
    scf.for %arg0 = %idx0_46 to %51 step %idx1_47 {
      %inserted_60 = tensor.insert %cst_50 into %63[%arg0] : tensor<?xf64>
    }
    %from_elements_51 = tensor.from_elements %9, %31 : tensor<2xindex>
    %idx0_52 = index.constant 0
    %idx0_53 = index.constant 0
    %64 = builtin.unrealized_conversion_cast %from_elements_51, %idx0_52, %55, %idx0_53, %50#1, %60, %63 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %idx1_54 = index.constant 1
    %65 = bufferization.alloc_tensor(%31) : tensor<?xf64>
    %c1_i32_55 = arith.constant 1 : i32
    %66 = bufferization.alloc_tensor(%31) : tensor<?xi32>
    %idx0_56 = index.constant 0
    %67 = bufferization.alloc_tensor(%31) : tensor<?xi64>
    %68 = builtin.unrealized_conversion_cast %65, %c1_i32_55, %66, %idx0_56, %67 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %69:12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %from_elements_51, %arg2 = %idx0_52, %arg3 = %55, %arg4 = %idx0_53, %arg5 = %50#1, %arg6 = %60, %arg7 = %63, %arg8 = %65, %arg9 = %c1_i32_55, %arg10 = %66, %arg11 = %idx0_56, %arg12 = %67) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %c1_i32_60 = arith.constant 1 : i32
      %76 = arith.addi %arg9, %c1_i32_60 : i32
      %idx0_61 = index.constant 0
      %77 = builtin.unrealized_conversion_cast %arg8, %76, %arg10, %idx0_61, %arg12 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %78 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
      %79 = arith.index_cast %extracted : i64 to index
      %extracted_62 = tensor.extract %15[%78] : tensor<?xi64>
      %80 = arith.index_cast %extracted_62 : i64 to index
      %81:12 = scf.for %arg13 = %79 to %80 step %c1 iter_args(%arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %76, %arg23 = %arg10, %arg24 = %idx0_61, %arg25 = %arg12) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_64 = tensor.extract %16[%arg13] : tensor<?xi64>
        %89 = arith.index_cast %extracted_64 : i64 to index
        %90 = arith.addi %89, %c1 : index
        %extracted_65 = tensor.extract %36[%89] : tensor<?xi64>
        %91 = arith.index_cast %extracted_65 : i64 to index
        %extracted_66 = tensor.extract %36[%90] : tensor<?xi64>
        %92 = arith.index_cast %extracted_66 : i64 to index
        %93:12 = scf.for %arg26 = %91 to %92 step %c1 iter_args(%arg27 = %arg14, %arg28 = %arg15, %arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %arg21, %arg35 = %arg22, %arg36 = %arg23, %arg37 = %arg24, %arg38 = %arg25) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_67 = tensor.extract %16[%arg13] : tensor<?xi64>
          %96 = arith.index_cast %extracted_67 : i64 to index
          %extracted_68 = tensor.extract %37[%arg26] : tensor<?xi64>
          %97 = arith.index_cast %extracted_68 : i64 to index
          %extracted_69 = tensor.extract %37[%arg26] : tensor<?xi64>
          %98 = arith.index_cast %extracted_69 : i64 to index
          %extracted_70 = tensor.extract %19[%arg13] : tensor<?xf64>
          %extracted_71 = tensor.extract %40[%arg26] : tensor<?xf64>
          %99 = arith.mulf %extracted_70, %extracted_71 : f64
          %extracted_72 = tensor.extract %arg36[%98] : tensor<?xi32>
          %100 = arith.cmpi eq, %extracted_72, %arg35 : i32
          %101:4 = scf.if %100 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_73 = tensor.extract %arg34[%98] : tensor<?xf64>
            %103 = arith.addf %extracted_73, %99 : f64
            %inserted_74 = tensor.insert %103 into %arg34[%98] : tensor<?xf64>
            scf.yield %arg36, %arg37, %arg38, %inserted_74 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_73 = tensor.insert %arg35 into %arg36[%98] : tensor<?xi32>
            %103 = arith.index_cast %98 : index to i64
            %inserted_74 = tensor.insert %103 into %arg38[%arg37] : tensor<?xi64>
            %idx1_75 = index.constant 1
            %104 = index.add %arg37, %idx1_75
            %inserted_76 = tensor.insert %99 into %arg34[%98] : tensor<?xf64>
            scf.yield %inserted_73, %104, %inserted_74, %inserted_76 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          %102 = builtin.unrealized_conversion_cast %101#3, %arg35, %101#0, %101#1, %101#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
          scf.yield %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %101#3, %arg35, %101#0, %101#1, %101#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        }
        %94 = builtin.unrealized_conversion_cast %93#0, %93#1, %93#2, %93#3, %93#4, %93#5, %93#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %95 = builtin.unrealized_conversion_cast %93#7, %93#8, %93#9, %93#10, %93#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %93#0, %93#1, %93#2, %93#3, %93#4, %93#5, %93#6, %93#7, %93#8, %93#9, %93#10, %93#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %82 = builtin.unrealized_conversion_cast %81#0, %81#1, %81#2, %81#3, %81#4, %81#5, %81#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %83 = builtin.unrealized_conversion_cast %81#7, %81#8, %81#9, %81#10, %81#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %idx0_63 = index.constant 0
      %84 = "ta.TensorSortOp"(%81#11, %idx0_63, %81#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %85 = builtin.unrealized_conversion_cast %81#7, %81#8, %81#9, %81#10, %84 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %86:12 = scf.for %arg13 = %c0 to %81#10 step %c1 iter_args(%arg14 = %81#0, %arg15 = %81#1, %arg16 = %81#2, %arg17 = %81#3, %arg18 = %81#4, %arg19 = %81#5, %arg20 = %81#6, %arg21 = %81#7, %arg22 = %81#8, %arg23 = %81#9, %arg24 = %81#10, %arg25 = %84) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_64 = tensor.extract %arg25[%arg13] : tensor<?xi64>
        %89 = arith.index_cast %extracted_64 : i64 to index
        %extracted_65 = tensor.extract %arg21[%89] : tensor<?xf64>
        %90 = arith.index_cast %89 : index to i64
        %inserted_66 = tensor.insert %90 into %arg19[%arg17] : tensor<?xi64>
        %idx1_67 = index.constant 1
        %91 = index.add %arg17, %idx1_67
        %inserted_68 = tensor.insert %extracted_65 into %arg20[%arg17] : tensor<?xf64>
        %92 = builtin.unrealized_conversion_cast %arg14, %arg15, %arg16, %91, %arg18, %inserted_66, %inserted_68 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %arg14, %arg15, %arg16, %91, %arg18, %inserted_66, %inserted_68, %arg21, %arg22, %arg23, %arg24, %arg25 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %87 = builtin.unrealized_conversion_cast %86#0, %86#1, %86#2, %86#3, %86#4, %86#5, %86#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %88 = builtin.unrealized_conversion_cast %86#7, %86#8, %86#9, %86#10, %86#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.yield %86#0, %86#1, %86#2, %86#3, %86#4, %86#5, %86#6, %86#7, %86#8, %86#9, %86#10, %86#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %70 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %69#3, %69#4, %69#5, %69#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %71 = builtin.unrealized_conversion_cast %69#7, %69#8, %69#9, %69#10, %69#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %72 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %69#3, %69#4, %69#5, %69#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %73 = builtin.unrealized_conversion_cast %69#7, %69#8, %69#9, %69#10, %69#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %74 = bufferization.alloc_tensor() : tensor<1xindex>
    %idx-1 = index.constant -1
    %idx0_57 = index.constant 0
    %inserted_58 = tensor.insert %idx-1 into %74[%idx0_57] : tensor<1xindex>
    "ta.print"(%69#2) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_58) : (tensor<1xindex>) -> ()
    "ta.print"(%69#4) : (tensor<?xi64>) -> ()
    "ta.print"(%69#5) : (tensor<?xi64>) -> ()
    "ta.print"(%69#6) : (tensor<?xf64>) -> ()
    %alloc_59 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_59[%c0] : memref<1xf64>
    %dim = tensor.dim %69#6, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %69#6[%arg0] : tensor<?xf64>
      %76 = memref.load %alloc_59[%c0] : memref<1xf64>
      %77 = arith.addf %extracted, %76 : f64
      memref.store %77, %alloc_59[%c0] : memref<1xf64>
    }
    %75 = memref.load %alloc_59[%c0] : memref<1xf64>
    "ta.print"(%75) : (f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}
