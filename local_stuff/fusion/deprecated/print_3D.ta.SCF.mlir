module {
  func.func @main() {
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_16 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_24 : memref<?xf64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %13 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
    %14 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
    %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %17 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
    %18 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
    %19 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
    %20 = bufferization.alloc_tensor() : tensor<1xindex>
    "ta.print"(%13) : (tensor<?xi64>) -> ()
    "ta.print"(%14) : (tensor<?xi64>) -> ()
    "ta.print"(%15) : (tensor<?xi64>) -> ()
    "ta.print"(%16) : (tensor<?xi64>) -> ()
    "ta.print"(%17) : (tensor<?xi64>) -> ()
    "ta.print"(%18) : (tensor<?xi64>) -> ()
    "ta.print"(%19) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
}
