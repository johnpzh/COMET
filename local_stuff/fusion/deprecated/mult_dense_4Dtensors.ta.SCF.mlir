module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx2 = index.constant 2
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.600000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<2x2x2x2xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<2x2x2x2xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<2x2x2x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<2x2x2x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<2x2x2x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<2x2x2x2xf64>)
    scf.for %arg0 = %c0 to %idx2 step %c1 {
      scf.for %arg1 = %c0 to %idx2 step %c1 {
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          scf.for %arg3 = %c0 to %idx2 step %c1 {
            scf.for %arg4 = %c0 to %idx2 step %c1 {
              scf.for %arg5 = %c0 to %idx2 step %c1 {
                %0 = memref.load %alloc[%arg0, %arg4, %arg3, %arg5] : memref<2x2x2x2xf64>
                %1 = memref.load %alloc_2[%arg1, %arg5, %arg2, %arg4] : memref<2x2x2x2xf64>
                %2 = arith.mulf %0, %1 : f64
                %3 = memref.load %alloc_3[%arg0, %arg1, %arg2, %arg3] : memref<2x2x2x2xf64>
                %4 = arith.addf %3, %2 : f64
                memref.store %4, %alloc_3[%arg0, %arg1, %arg2, %arg3] : memref<2x2x2x2xf64>
              }
            }
          }
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<2x2x2x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @comet_print_memref_i64(memref<*xindex>)
}
