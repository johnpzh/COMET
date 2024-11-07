module {
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %c-1 = arith.constant -1 : index
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xindex>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0, %alloc_1[%arg0] : memref<?xindex>
  }
  %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
  %11 = call @getTime() : () -> f64
  %12 = memref.load %alloc_1[%c0] : memref<?xindex>
  %alloc_3 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.parallel (%arg1) = (%c0) to (%12) step (%c1) {
      %14 = memref.load %alloc_3[%arg1] : memref<?xf64>
      memref.store %14, %alloc_3[%arg1] : memref<?xf64>
      func.call @printF64(%14) : (f64) -> ()
      scf.reduce 
    }
  }
  %alloc_4 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %c0 to %c2 step %c1 {
    scf.for %arg1 = %c0 to %c3 step %c1 {
      scf.parallel (%arg2) = (%c0) to (%12) step (%c1) {
        %14 = memref.load %alloc_4[%arg2] : memref<?xf64>
        memref.store %14, %alloc_4[%arg2] : memref<?xf64>
        func.call @printF64(%14) : (f64) -> ()
        scf.reduce 
      }
    }
  }
  %13 = call @getTime() : () -> f64
  call @printElapsedTime(%11, %13) : (f64, f64) -> ()
  return
}
func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
func.func private @comet_sort_index(memref<*xindex>, index, index)
func.func private @getTime() -> f64
func.func private @printElapsedTime(f64, f64)
func.func private @printF64(f64)
}