module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.200000e+00 : f64
    %cst_1 = arith.constant 2.700000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    scf.parallel (%arg0) = (%c0) to (%c4) step (%c1) {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<4x4xf64>
        %1 = memref.load %alloc_2[%arg0, %arg1] : memref<4x4xf64>
        %2 = arith.mulf %0, %1 : f64
        memref.store %2, %alloc_3[%arg0, %arg1] : memref<4x4xf64>
      }
      scf.reduce 
    }
    %cast = memref.cast %alloc_3 : memref<4x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
