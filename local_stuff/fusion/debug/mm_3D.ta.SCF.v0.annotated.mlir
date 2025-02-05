module {
  func.func @main() {
    %idx4 = index.constant 4
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c18 = arith.constant 18 : index
    %c17 = arith.constant 17 : index
    %c16 = arith.constant 16 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>  /// A1pos_size      
    %1 = memref.load %alloc[%c1] : memref<19xindex>  /// A1crd_size      
    %2 = memref.load %alloc[%c2] : memref<19xindex>  /// A1_tile_pos_size
    %3 = memref.load %alloc[%c3] : memref<19xindex>  /// A1_tile_crd_size
    %4 = memref.load %alloc[%c4] : memref<19xindex>  /// A2pos_size      
    %5 = memref.load %alloc[%c5] : memref<19xindex>  /// A2crd_size      
    %6 = memref.load %alloc[%c6] : memref<19xindex>  /// A2_tile_pos_size
    %7 = memref.load %alloc[%c7] : memref<19xindex>  /// A2_tile_crd_size
    %8 = memref.load %alloc[%c8] : memref<19xindex>  /// A3pos_size      
    %9 = memref.load %alloc[%c9] : memref<19xindex>  /// A3crd_size      
    %10 = memref.load %alloc[%c10] : memref<19xindex>  /// A3_tile_pos_size
    %11 = memref.load %alloc[%c11] : memref<19xindex>  /// A3_tile_crd_size
    %12 = memref.load %alloc[%c12] : memref<19xindex>  /// nnz
    %13 = memref.load %alloc[%c16] : memref<19xindex>  /// NI
    %14 = memref.load %alloc[%c17] : memref<19xindex>  /// NJ
    %15 = memref.load %alloc[%c18] : memref<19xindex>  /// NK
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
    %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
    %18 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %19 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %20 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
    %21 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
    %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
    %24 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x?x4xf64>
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
    %25 = bufferization.to_tensor %alloc_30 restrict writable : memref<4x4xf64>
    %extracted = tensor.extract %16[%c0] : tensor<?xi64>
    %26 = arith.index_cast %extracted : i64 to index
    %extracted_31 = tensor.extract %16[%c1] : tensor<?xi64>
    %27 = arith.index_cast %extracted_31 : i64 to index
    %28 = scf.for %arg0 = %26 to %27 step %c1 iter_args(%arg1 = %24) -> (tensor<?x?x4xf64>) {
      %extracted_32 = tensor.extract %17[%arg0] : tensor<?xi64>
      %30 = arith.index_cast %extracted_32 : i64 to index
      %31 = arith.addi %arg0, %c1 : index
      %extracted_33 = tensor.extract %18[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted_33 : i64 to index
      %extracted_34 = tensor.extract %18[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_34 : i64 to index
      %34 = scf.for %arg2 = %32 to %33 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?x4xf64>) {
        %extracted_35 = tensor.extract %19[%arg2] : tensor<?xi64>
        %35 = arith.index_cast %extracted_35 : i64 to index
        %36 = arith.addi %arg2, %c1 : index
        %extracted_36 = tensor.extract %20[%arg2] : tensor<?xi64>
        %37 = arith.index_cast %extracted_36 : i64 to index
        %extracted_37 = tensor.extract %20[%36] : tensor<?xi64>
        %38 = arith.index_cast %extracted_37 : i64 to index
        %39 = scf.for %arg4 = %37 to %38 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?x4xf64>) {
          %40 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x?x4xf64>) {
            %extracted_38 = tensor.extract %21[%arg4] : tensor<?xi64>
            %41 = arith.index_cast %extracted_38 : i64 to index
            %extracted_39 = tensor.extract %22[%arg4] : tensor<?xf64>
            %extracted_40 = tensor.extract %23[%41, %arg6] : tensor<?x4xf64>
            %42 = arith.mulf %extracted_39, %extracted_40 : f64
            %extracted_41 = tensor.extract %arg7[%30, %35, %arg6] : tensor<?x?x4xf64>
            %43 = arith.addf %extracted_41, %42 : f64
            %inserted = tensor.insert %43 into %arg7[%30, %35, %arg6] : tensor<?x?x4xf64>
            scf.yield %inserted : tensor<?x?x4xf64>
          }
          scf.yield %40 : tensor<?x?x4xf64>
        }
        scf.yield %39 : tensor<?x?x4xf64>
      }
      scf.yield %34 : tensor<?x?x4xf64>
    }
    %29 = bufferization.alloc_tensor() : tensor<1xindex>
    "ta.print"(%16) : (tensor<?xi64>) -> ()
    "ta.print"(%17) : (tensor<?xi64>) -> ()
    "ta.print"(%18) : (tensor<?xi64>) -> ()
    "ta.print"(%19) : (tensor<?xi64>) -> ()
    "ta.print"(%20) : (tensor<?xi64>) -> ()
    "ta.print"(%21) : (tensor<?xi64>) -> ()
    "ta.print"(%22) : (tensor<?xf64>) -> ()
    "ta.print"(%23) : (tensor<?x4xf64>) -> ()  /// %23 = C
    "ta.print"(%28) : (tensor<?x?x4xf64>) -> ()  /// %28 = T
    "ta.print"(%25) : (tensor<4x4xf64>) -> ()  /// %25 = U
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
}
