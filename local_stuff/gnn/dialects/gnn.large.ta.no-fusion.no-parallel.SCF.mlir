module {
  func.func @main() {
    %c256 = arith.constant 256 : index
    %c512 = arith.constant 512 : index
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
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
    func.call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    %alloc_2 = memref.alloc(%0) : memref<?xindex>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0, %alloc_2[%arg0] : memref<?xindex>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xindex> to memref<*xindex>
    %alloc_4 = memref.alloc(%1) : memref<?xindex>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0, %alloc_4[%arg0] : memref<?xindex>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
    %alloc_6 = memref.alloc(%2) : memref<?xindex>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0, %alloc_6[%arg0] : memref<?xindex>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xindex> to memref<*xindex>
    %alloc_8 = memref.alloc(%3) : memref<?xindex>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0, %alloc_8[%arg0] : memref<?xindex>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xindex> to memref<*xindex>
    %alloc_10 = memref.alloc(%4) : memref<?xindex>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0, %alloc_10[%arg0] : memref<?xindex>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xindex> to memref<*xindex>
    %alloc_12 = memref.alloc(%5) : memref<?xindex>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0, %alloc_12[%arg0] : memref<?xindex>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xindex> to memref<*xindex>
    %alloc_14 = memref.alloc(%6) : memref<?xindex>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0, %alloc_14[%arg0] : memref<?xindex>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
    %alloc_16 = memref.alloc(%7) : memref<?xindex>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0, %alloc_16[%arg0] : memref<?xindex>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xindex> to memref<*xindex>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_1, %alloc_18[%arg0] : memref<?xf64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    func.call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x512xf64>
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<512x256xf64>
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x256xf64>
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x512xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c512 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x512xf64>
      }
    }
    scf.for %arg0 = %c0 to %c512 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        memref.store %cst, %alloc_21[%arg0, %arg1] : memref<512x256xf64>
      }
    }
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        memref.store %cst_1, %alloc_22[%arg0, %arg1] : memref<?x256xf64>
      }
    }
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c512 step %c1 {
        memref.store %cst_1, %alloc_23[%arg0, %arg1] : memref<?x512xf64>
      }
    }

    %num_repeats = arith.constant 10 : index

    scf.for %r = %c0 to %num_repeats step %c1 {

    %11 = func.call @getTime() : () -> f64
    %12 = memref.load %alloc_2[%c0] : memref<?xindex>
    // scf.parallel (%arg0) = (%c0) to (%12) step (%c1) {
    scf.for %arg0 = %c0 to %12 step %c1 {
      %14 = arith.addi %arg0, %c1 : index
      %15 = memref.load %alloc_10[%arg0] : memref<?xindex>
      %16 = memref.load %alloc_10[%14] : memref<?xindex>
      scf.for %arg1 = %15 to %16 step %c1 {
        %17 = memref.load %alloc_12[%arg1] : memref<?xindex>
        scf.for %arg2 = %c0 to %c512 step %c1 {
          %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x512xf64>
          %20 = memref.load %alloc_23[%arg0, %arg2] : memref<?x512xf64>
          %21 = arith.mulf %18, %19 : f64
          %22 = arith.addf %20, %21 : f64
          memref.store %22, %alloc_23[%arg0, %arg2] : memref<?x512xf64>
        }
      }
      // scf.reduce 
    }
    // scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c512 step %c1 {
        scf.for %arg2 = %c0 to %c256 step %c1 {
          %14 = memref.load %alloc_23[%arg0, %arg1] : memref<?x512xf64>
          %15 = memref.load %alloc_21[%arg1, %arg2] : memref<512x256xf64>
          %16 = memref.load %alloc_22[%arg0, %arg2] : memref<?x256xf64>
          %17 = arith.mulf %14, %15 : f64
          %18 = arith.addf %16, %17 : f64
          memref.store %18, %alloc_22[%arg0, %arg2] : memref<?x256xf64>
        }
      }
      // scf.reduce 
    }
    %13 = func.call @getTime() : () -> f64
    func.call @printElapsedTime(%11, %13) : (f64, f64) -> ()

    } /// End repeat loop
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}
