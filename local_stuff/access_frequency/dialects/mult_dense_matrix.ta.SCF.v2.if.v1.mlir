module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %0 = call @getTime() : () -> f64
    scf.parallel (%arg0) = (%c0) to (%c8) step (%c1) {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        scf.for %arg2 = %c0 to %c2 step %c1 {
          %2 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
          %3 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %4 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          %35 = arith.cmpi ne, %arg2, %c0 : index
          scf.if %35 {
            memref.store %6, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          }
        }
      }
      scf.reduce 
    }
    %1 = call @getTime() : () -> f64
    call @printElapsedTime(%0, %1) : (f64, f64) -> ()
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
