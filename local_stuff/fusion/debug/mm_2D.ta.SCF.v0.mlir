module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx0 = index.constant 0
    %idx4 = index.constant 4
    %cst = arith.constant 1.200000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>  /// %10 = k size
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %14 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>  /// %10 = k
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %15 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>  /// %15 = C
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %16 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %17 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %16) -> (tensor<?x4xf64>) {
      %19 = scf.for %arg2 = %c0 to %9 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
        %20 = arith.addi %arg2, %c1 : index
        %extracted = tensor.extract %12[%arg2] : tensor<?xi64>
        %21 = arith.index_cast %extracted : i64 to index
        %extracted_21 = tensor.extract %12[%20] : tensor<?xi64>
        %22 = arith.index_cast %extracted_21 : i64 to index
        %23 = scf.for %arg4 = %21 to %22 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
          %extracted_22 = tensor.extract %13[%arg4] : tensor<?xi64>
          %24 = arith.index_cast %extracted_22 : i64 to index
          %extracted_23 = tensor.extract %14[%arg4] : tensor<?xf64>
          %extracted_24 = tensor.extract %15[%24, %arg0] : tensor<?x4xf64>
          %25 = arith.mulf %extracted_23, %extracted_24 : f64
          %extracted_25 = tensor.extract %arg5[%arg2, %arg0] : tensor<?x4xf64>
          %26 = arith.addf %extracted_25, %25 : f64
          %inserted_26 = tensor.insert %26 into %arg5[%arg2, %arg0] : tensor<?x4xf64>
          scf.yield %inserted_26 : tensor<?x4xf64>
        }
        scf.yield %23 : tensor<?x4xf64>
      }
      scf.yield %19 : tensor<?x4xf64>
    }
    %18 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %18[%idx0] : tensor<1xindex>
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%12) : (tensor<?xi64>) -> ()
    "ta.print"(%13) : (tensor<?xi64>) -> ()
    "ta.print"(%14) : (tensor<?xf64>) -> ()
    "ta.print"(%15) : (tensor<?x4xf64>) -> ()
    "ta.print"(%17) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}
