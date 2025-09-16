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
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    scf.parallel (%arg0) = (%c0) to (%c8) step (%c1) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
      scf.reduce 
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    func.call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    func.call @printF64(%cst_0) : (f64) -> ()
    func.call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}