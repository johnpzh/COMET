module {
  func.func @main() {
    %c16 = arith.constant 16 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.700000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x16xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8xf64>
    %0 = bufferization.to_tensor %alloc_3 : memref<8xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x16xf64>)
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16xf64>)
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8xf64>)
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        %1 = memref.load %alloc[%arg0, %arg1] : memref<8x16xf64>
        %2 = memref.load %alloc_2[%arg1] : memref<16xf64>
        %3 = memref.load %alloc_3[%arg0] : memref<8xf64>
        %4 = arith.mulf %1, %2 : f64
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_3[%arg0] : memref<8xf64>
      }
    }
    "ta.print"(%0) : (tensor<8xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
}
