module {
  func.func @main() {
    %cst = arith.constant 1.000000e+00 : f64
    %true = arith.constant true
    %false = arith.constant false
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0, %alloc_3[%arg0] : memref<?xindex>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0, %alloc_5[%arg0] : memref<?xindex>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0, %alloc_7[%arg0] : memref<?xindex>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0, %alloc_9[%arg0] : memref<?xindex>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0, %alloc_11[%arg0] : memref<?xindex>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0, %alloc_13[%arg0] : memref<?xindex>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0, %alloc_15[%arg0] : memref<?xindex>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc() : memref<1xindex>
    %11 = arith.addi %9, %c1 : index
    %alloc_20 = memref.alloc(%11) : memref<?xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0, %alloc_20[%arg0] : memref<?xindex>
    }
    %alloc_21 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_21[%c0] : memref<1xindex>
    %12 = memref.load %alloc_1[%c0] : memref<?xindex>
    %alloc_22 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xindex>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0, %alloc_22[%arg0] : memref<?xindex>
    }
    %alloc_23 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_23[%c0] : memref<1xindex>
    scf.for %arg0 = %c0 to %12 step %c1 {
      %16 = memref.load %alloc_23[%c0] : memref<1xindex>
      %17 = arith.addi %16, %c2 : index
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_9[%arg0] : memref<?xindex>
      %20 = memref.load %alloc_9[%18] : memref<?xindex>
      scf.for %arg1 = %19 to %20 step %c1 {
        %24 = memref.load %alloc_17[%arg1] : memref<?xf64>
        %25 = arith.cmpf une, %24, %cst_0 : f64
        scf.if %25 {
          %26 = memref.load %alloc_11[%arg1] : memref<?xindex>
          memref.store %17, %alloc_22[%26] : memref<?xindex>
        }
      }
      memref.store %17, %alloc_23[%c0] : memref<1xindex>
      memref.store %c0, %alloc_19[%c0] : memref<1xindex>
      %21 = memref.load %alloc_9[%arg0] : memref<?xindex>
      %22 = memref.load %alloc_9[%18] : memref<?xindex>
      scf.for %arg1 = %21 to %22 step %c1 {
        %24 = memref.load %alloc_11[%arg1] : memref<?xindex>
        %25 = arith.addi %24, %c1 : index
        %26 = memref.load %alloc_9[%24] : memref<?xindex>
        %27 = memref.load %alloc_9[%25] : memref<?xindex>
        scf.for %arg2 = %26 to %27 step %c1 {
          %28 = memref.load %alloc_11[%arg2] : memref<?xindex>
          %29 = memref.load %alloc_22[%28] : memref<?xindex>
          %30 = arith.cmpi eq, %29, %17 : index
          scf.if %30 {
            %31 = arith.addi %16, %c3 : index
            memref.store %31, %alloc_22[%28] : memref<?xindex>
            %32 = memref.load %alloc_19[%c0] : memref<1xindex>
            %33 = arith.addi %32, %c1 : index
            memref.store %33, %alloc_19[%c0] : memref<1xindex>
          }
        }
      }
      %23 = memref.load %alloc_19[%c0] : memref<1xindex>
      memref.store %23, %alloc_20[%arg0] : memref<?xindex>
    }
    memref.store %c0, %alloc_20[%9] : memref<?xindex>
    %alloc_24 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_24[%c0] : memref<1xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      %16 = memref.load %alloc_20[%arg0] : memref<?xindex>
      %17 = memref.load %alloc_24[%c0] : memref<1xindex>
      memref.store %17, %alloc_20[%arg0] : memref<?xindex>
      %18 = arith.addi %16, %17 : index
      memref.store %18, %alloc_24[%c0] : memref<1xindex>
    }
    %13 = memref.load %alloc_24[%c0] : memref<1xindex>
    %alloc_25 = memref.alloc(%13) : memref<?xindex>
    %alloc_26 = memref.alloc(%13) : memref<?xf64>
    memref.store %13, %alloc_21[%c0] : memref<1xindex>
    memref.dealloc %alloc_22 : memref<?xindex>
    %14 = memref.load %alloc_1[%c0] : memref<?xindex>
    %alloc_27 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %false, %alloc_27[%arg0] : memref<?xi1>
    }
    %alloc_28 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xf64>
    %alloc_29 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %false, %alloc_29[%arg0] : memref<?xi1>
    }
    scf.for %arg0 = %c0 to %14 step %c1 {
      %16 = arith.addi %arg0, %c1 : index
      %17 = memref.load %alloc_9[%arg0] : memref<?xindex>
      %18 = memref.load %alloc_9[%16] : memref<?xindex>
      scf.for %arg1 = %17 to %18 step %c1 {
        %24 = memref.load %alloc_17[%arg1] : memref<?xf64>
        %25 = arith.cmpf une, %24, %cst_0 : f64
        scf.if %25 {
          %26 = memref.load %alloc_11[%arg1] : memref<?xindex>
          memref.store %true, %alloc_29[%26] : memref<?xi1>
        }
      }
      %19 = memref.load %alloc_20[%arg0] : memref<?xindex>
      memref.store %19, %alloc_19[%c0] : memref<1xindex>
      %20 = memref.load %alloc_9[%arg0] : memref<?xindex>
      %21 = memref.load %alloc_9[%16] : memref<?xindex>
      scf.for %arg1 = %20 to %21 step %c1 {
        %24 = memref.load %alloc_11[%arg1] : memref<?xindex>
        %25 = arith.addi %24, %c1 : index
        %26 = memref.load %alloc_9[%24] : memref<?xindex>
        %27 = memref.load %alloc_9[%25] : memref<?xindex>
        scf.for %arg2 = %26 to %27 step %c1 {
          %28 = memref.load %alloc_11[%arg2] : memref<?xindex>
          %29 = memref.load %alloc_29[%28] : memref<?xi1>
          %30 = arith.cmpi eq, %29, %true : i1
          scf.if %30 {
            %31 = memref.load %alloc_27[%28] : memref<?xi1>
            %32 = arith.cmpi eq, %31, %false : i1
            scf.if %32 {
              memref.store %cst, %alloc_28[%28] : memref<?xf64>
              memref.store %true, %alloc_27[%28] : memref<?xi1>
              %33 = memref.load %alloc_19[%c0] : memref<1xindex>
              memref.store %28, %alloc_25[%33] : memref<?xindex>
              %34 = arith.addi %33, %c1 : index
              memref.store %34, %alloc_19[%c0] : memref<1xindex>
            } else {
              %33 = memref.load %alloc_28[%28] : memref<?xf64>
              %34 = arith.addf %33, %cst : f64
              memref.store %34, %alloc_28[%28] : memref<?xf64>
            }
          }
        }
      }
      %22 = memref.load %alloc_20[%arg0] : memref<?xindex>
      %23 = memref.load %alloc_20[%16] : memref<?xindex>
      %cast_32 = memref.cast %alloc_25 : memref<?xindex> to memref<*xindex>
      func.call @comet_sort_index(%cast_32, %22, %23) : (memref<*xindex>, index, index) -> ()
      scf.for %arg1 = %22 to %23 step %c1 {
        %24 = memref.load %alloc_25[%arg1] : memref<?xindex>
        %25 = memref.load %alloc_28[%24] : memref<?xf64>
        memref.store %25, %alloc_26[%arg1] : memref<?xf64>
        memref.store %false, %alloc_27[%24] : memref<?xi1>
      }
      scf.for %arg1 = %17 to %18 step %c1 {
        %24 = memref.load %alloc_11[%arg1] : memref<?xindex>
        memref.store %false, %alloc_29[%24] : memref<?xi1>
      }
    }
    memref.dealloc %alloc_28 : memref<?xf64>
    memref.dealloc %alloc_27 : memref<?xi1>
    %alloc_30 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_30[%c0] : memref<1xf64>
    %15 = memref.load %alloc_21[%c0] : memref<1xindex>
    scf.for %arg0 = %c0 to %15 step %c1 {
      %16 = memref.load %alloc_26[%arg0] : memref<?xf64>
      %17 = memref.load %alloc_30[%c0] : memref<1xf64>
      %18 = arith.addf %16, %17 : f64
      memref.store %18, %alloc_30[%c0] : memref<1xf64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<1xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
