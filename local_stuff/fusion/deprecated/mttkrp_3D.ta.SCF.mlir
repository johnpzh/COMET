module {
  func.func @main() {
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %idx4 = index.constant 4
    %cst = arith.constant 3.400000e+00 : f64
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
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c16] : memref<19xindex>
    %14 = memref.load %alloc[%c17] : memref<19xindex>
    %15 = memref.load %alloc[%c18] : memref<19xindex>
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
    %alloc_29 = memref.alloc(%14) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?x4xf64>)
    %24 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x4xf64>
    %alloc_30 = memref.alloc(%13) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_30 : memref<?x4xf64>)
    %25 = bufferization.to_tensor %alloc_30 restrict writable : memref<?x4xf64>
    %alloc_31 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_31 : memref<?x?x4xf64>)
    %26 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x?x4xf64>
    %extracted = tensor.extract %16[%c0] : tensor<?xi64>
    %27 = arith.index_cast %extracted : i64 to index
    %extracted_32 = tensor.extract %16[%c1] : tensor<?xi64>
    %28 = arith.index_cast %extracted_32 : i64 to index
    %29 = scf.for %arg0 = %27 to %28 step %c1 iter_args(%arg1 = %26) -> (tensor<?x?x4xf64>) {
      %extracted_34 = tensor.extract %17[%arg0] : tensor<?xi64>
      %31 = arith.index_cast %extracted_34 : i64 to index
      %32 = arith.addi %arg0, %c1 : index
      %extracted_35 = tensor.extract %18[%arg0] : tensor<?xi64>
      %33 = arith.index_cast %extracted_35 : i64 to index
      %extracted_36 = tensor.extract %18[%32] : tensor<?xi64>
      %34 = arith.index_cast %extracted_36 : i64 to index
      %35 = scf.for %arg2 = %33 to %34 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?x4xf64>) {
        %extracted_37 = tensor.extract %19[%arg2] : tensor<?xi64>
        %36 = arith.index_cast %extracted_37 : i64 to index
        %37 = arith.addi %arg2, %c1 : index
        %extracted_38 = tensor.extract %20[%arg2] : tensor<?xi64>
        %38 = arith.index_cast %extracted_38 : i64 to index
        %extracted_39 = tensor.extract %20[%37] : tensor<?xi64>
        %39 = arith.index_cast %extracted_39 : i64 to index
        %40 = scf.for %arg4 = %38 to %39 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?x4xf64>) {
          %41 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x?x4xf64>) {
            %extracted_40 = tensor.extract %21[%arg4] : tensor<?xi64>
            %42 = arith.index_cast %extracted_40 : i64 to index
            %extracted_41 = tensor.extract %22[%arg4] : tensor<?xf64>
            %extracted_42 = tensor.extract %23[%42, %arg6] : tensor<?x4xf64>
            %43 = arith.mulf %extracted_41, %extracted_42 : f64
            %extracted_43 = tensor.extract %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
            %44 = arith.addf %extracted_43, %43 : f64
            %inserted = tensor.insert %44 into %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
            scf.yield %inserted : tensor<?x?x4xf64>
          }
          scf.yield %41 : tensor<?x?x4xf64>
        }
        scf.yield %40 : tensor<?x?x4xf64>
      }
      scf.yield %35 : tensor<?x?x4xf64>
    }
    %dim = tensor.dim %29, %idx0 : tensor<?x?x4xf64>
    %dim_33 = tensor.dim %29, %idx1 : tensor<?x?x4xf64>
    %30 = scf.for %arg0 = %c0 to %dim step %c1 iter_args(%arg1 = %25) -> (tensor<?x4xf64>) {
      %31 = scf.for %arg2 = %c0 to %dim_33 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
        %32 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
          %extracted_34 = tensor.extract %29[%arg0, %arg2, %arg4] : tensor<?x?x4xf64>
          %extracted_35 = tensor.extract %24[%arg2, %arg4] : tensor<?x4xf64>
          %33 = arith.mulf %extracted_34, %extracted_35 : f64
          %extracted_36 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
          %34 = arith.addf %extracted_36, %33 : f64
          %inserted = tensor.insert %34 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %32 : tensor<?x4xf64>
      }
      scf.yield %31 : tensor<?x4xf64>
    }
    "ta.print"(%30) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
}
