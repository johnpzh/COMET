module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = scf.for %arg0 = %c0 to %idx8 step %c1 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
          %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
          %6 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg5[%arg0, %arg4] : tensor<8x2xf64>
          %7 = arith.addf %extracted_5, %6 : f64
          %inserted = tensor.insert %7 into %arg5[%arg0, %arg4] : tensor<8x2xf64>
          scf.yield %inserted : tensor<8x2xf64>
        }
        scf.yield %5 : tensor<8x2xf64>
      }
      scf.yield %4 : tensor<8x2xf64>
    }
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}
