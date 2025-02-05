module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx6 = index.constant 6
    %idx8 = index.constant 8
    %idx4 = index.constant 4
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 1.200000e+00 : f64
    %cst_2 = arith.constant 1.700000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x6xf64>
    linalg.fill ins(%cst_2 : f64) outs(%alloc : memref<8x6xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<6x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_3 : memref<6x4xf64>)
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_4 : memref<4x4xf64>)
    %alloc_5 = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_5 : memref<8x4xf64>)
    %alloc_6 = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_6 : memref<8x4xf64>)
    scf.for %arg0 = %c0 to %idx4 step %c1 {
      scf.for %arg1 = %c0 to %idx8 step %c1 {
        scf.for %arg2 = %c0 to %idx6 step %c1 {
          %0 = memref.load %alloc[%arg1, %arg2] : memref<8x6xf64>
          %1 = memref.load %alloc_3[%arg2, %arg0] : memref<6x4xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_6[%arg1, %arg0] : memref<8x4xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_6[%arg1, %arg0] : memref<8x4xf64>
        }
      }
    }
    scf.for %arg0 = %c0 to %idx4 step %c1 {
      scf.for %arg1 = %c0 to %idx8 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %0 = memref.load %alloc_6[%arg1, %arg0] : memref<8x4xf64>
          %1 = memref.load %alloc_4[%arg0, %arg2] : memref<4x4xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_5[%arg1, %arg2] : memref<8x4xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_5[%arg1, %arg2] : memref<8x4xf64>
        }
      }
    }
    %cast = memref.cast %alloc_5 : memref<8x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @comet_print_memref_i64(memref<*xindex>)
}
