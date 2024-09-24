module {
  func.func @main() {
    %true = arith.constant true
    %false = arith.constant false
    %cst = arith.constant 0.000000e+00 : f64
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
    %alloc_0 = memref.alloc(%0) : memref<?xindex>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0, %alloc_0[%arg0] : memref<?xindex>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xindex> to memref<*xindex>
    %alloc_2 = memref.alloc(%1) : memref<?xindex>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0, %alloc_2[%arg0] : memref<?xindex>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xindex> to memref<*xindex>
    %alloc_4 = memref.alloc(%2) : memref<?xindex>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0, %alloc_4[%arg0] : memref<?xindex>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
    %alloc_6 = memref.alloc(%3) : memref<?xindex>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0, %alloc_6[%arg0] : memref<?xindex>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xindex> to memref<*xindex>
    %alloc_8 = memref.alloc(%4) : memref<?xindex>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0, %alloc_8[%arg0] : memref<?xindex>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xindex> to memref<*xindex>
    %alloc_10 = memref.alloc(%5) : memref<?xindex>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0, %alloc_10[%arg0] : memref<?xindex>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xindex> to memref<*xindex>
    %alloc_12 = memref.alloc(%6) : memref<?xindex>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0, %alloc_12[%arg0] : memref<?xindex>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xindex> to memref<*xindex>
    %alloc_14 = memref.alloc(%7) : memref<?xindex>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0, %alloc_14[%arg0] : memref<?xindex>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<1xindex>
    %11 = arith.addi %9, %c1 : index
    %alloc_19 = memref.alloc(%11) : memref<?xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0, %alloc_19[%arg0] : memref<?xindex>
    }
    %alloc_20 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_20[%c0] : memref<1xindex>
    %12 = memref.load %alloc_0[%c0] : memref<?xindex>
    %alloc_21 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xindex>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0, %alloc_21[%arg0] : memref<?xindex>
    }
    %alloc_22 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_22[%c0] : memref<1xindex>
    scf.for %arg0 = %c0 to %12 step %c1 {
      %16 = memref.load %alloc_22[%c0] : memref<1xindex>
      %17 = arith.addi %16, %c2 : index
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xindex>
      %20 = memref.load %alloc_8[%18] : memref<?xindex>
      scf.for %arg1 = %19 to %20 step %c1 {
        %24 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %25 = arith.cmpf une, %24, %cst : f64
        scf.if %25 {
          %26 = memref.load %alloc_10[%arg1] : memref<?xindex>
          memref.store %17, %alloc_21[%26] : memref<?xindex>
        }
      }
      memref.store %17, %alloc_22[%c0] : memref<1xindex>
      memref.store %c0, %alloc_18[%c0] : memref<1xindex>
      %21 = memref.load %alloc_8[%arg0] : memref<?xindex>
      %22 = memref.load %alloc_8[%18] : memref<?xindex>
      scf.for %arg1 = %21 to %22 step %c1 {
        %24 = memref.load %alloc_10[%arg1] : memref<?xindex>
        %25 = arith.addi %24, %c1 : index
        %26 = memref.load %alloc_8[%24] : memref<?xindex>
        %27 = memref.load %alloc_8[%25] : memref<?xindex>
        scf.for %arg2 = %26 to %27 step %c1 {
          %28 = memref.load %alloc_10[%arg2] : memref<?xindex>
          %29 = memref.load %alloc_21[%28] : memref<?xindex>
          %30 = arith.cmpi eq, %29, %17 : index
          scf.if %30 {
            %31 = arith.addi %16, %c3 : index
            memref.store %31, %alloc_21[%28] : memref<?xindex>
            %32 = memref.load %alloc_18[%c0] : memref<1xindex>
            %33 = arith.addi %32, %c1 : index
            memref.store %33, %alloc_18[%c0] : memref<1xindex>
          }
        }
      }
      %23 = memref.load %alloc_18[%c0] : memref<1xindex>
      memref.store %23, %alloc_19[%arg0] : memref<?xindex>
    }
    memref.store %c0, %alloc_19[%9] : memref<?xindex>
    %alloc_23 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_23[%c0] : memref<1xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      %16 = memref.load %alloc_19[%arg0] : memref<?xindex>
      %17 = memref.load %alloc_23[%c0] : memref<1xindex>
      memref.store %17, %alloc_19[%arg0] : memref<?xindex>
      %18 = arith.addi %16, %17 : index
      memref.store %18, %alloc_23[%c0] : memref<1xindex>
    }
    %13 = memref.load %alloc_23[%c0] : memref<1xindex>
    %alloc_24 = memref.alloc(%13) : memref<?xindex>
    %alloc_25 = memref.alloc(%13) : memref<?xf64>
    memref.store %13, %alloc_20[%c0] : memref<1xindex>
    memref.dealloc %alloc_21 : memref<?xindex>
    %14 = memref.load %alloc_0[%c0] : memref<?xindex>
    %alloc_26 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %false, %alloc_26[%arg0] : memref<?xi1>
    }
    %alloc_27 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xf64>
    %alloc_28 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %false, %alloc_28[%arg0] : memref<?xi1>
    }
    scf.for %arg0 = %c0 to %14 step %c1 {
      %16 = arith.addi %arg0, %c1 : index
      %17 = memref.load %alloc_8[%arg0] : memref<?xindex>
      %18 = memref.load %alloc_8[%16] : memref<?xindex>
      scf.for %arg1 = %17 to %18 step %c1 {
        %24 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %25 = arith.cmpf une, %24, %cst : f64
        scf.if %25 {
          %26 = memref.load %alloc_10[%arg1] : memref<?xindex>
          memref.store %true, %alloc_28[%26] : memref<?xi1>
        }
      }
      %19 = memref.load %alloc_19[%arg0] : memref<?xindex>
      memref.store %19, %alloc_18[%c0] : memref<1xindex>
      %20 = memref.load %alloc_8[%arg0] : memref<?xindex>
      %21 = memref.load %alloc_8[%16] : memref<?xindex>
      scf.for %arg1 = %20 to %21 step %c1 {
        %24 = memref.load %alloc_10[%arg1] : memref<?xindex>
        %25 = arith.addi %24, %c1 : index
        %26 = memref.load %alloc_8[%24] : memref<?xindex>
        %27 = memref.load %alloc_8[%25] : memref<?xindex>
        scf.for %arg2 = %26 to %27 step %c1 {
          %28 = memref.load %alloc_10[%arg2] : memref<?xindex>
          %29 = memref.load %alloc_28[%28] : memref<?xi1>
          %30 = arith.cmpi eq, %29, %true : i1
          scf.if %30 {
            %31 = memref.load %alloc_26[%28] : memref<?xi1>
            %32 = arith.cmpi eq, %31, %false : i1
            scf.if %32 {
              %33 = memref.load %alloc_16[%arg1] : memref<?xf64>
              %34 = memref.load %alloc_16[%arg2] : memref<?xf64>
              %35 = arith.mulf %33, %34 : f64
              memref.store %35, %alloc_27[%28] : memref<?xf64>
              memref.store %true, %alloc_26[%28] : memref<?xi1>
              %36 = memref.load %alloc_18[%c0] : memref<1xindex>
              memref.store %28, %alloc_24[%36] : memref<?xindex>
              %37 = arith.addi %36, %c1 : index
              memref.store %37, %alloc_18[%c0] : memref<1xindex>
            } else {
              %33 = memref.load %alloc_16[%arg1] : memref<?xf64>
              %34 = memref.load %alloc_16[%arg2] : memref<?xf64>
              %35 = memref.load %alloc_27[%28] : memref<?xf64>
              %36 = arith.mulf %33, %34 : f64
              %37 = arith.addf %35, %36 : f64
              memref.store %37, %alloc_27[%28] : memref<?xf64>
            }
          }
        }
      }
      %22 = memref.load %alloc_19[%arg0] : memref<?xindex>
      %23 = memref.load %alloc_19[%16] : memref<?xindex>
      %cast_31 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
      func.call @comet_sort_index(%cast_31, %22, %23) : (memref<*xindex>, index, index) -> ()
      scf.for %arg1 = %22 to %23 step %c1 {
        %24 = memref.load %alloc_24[%arg1] : memref<?xindex>
        %25 = memref.load %alloc_27[%24] : memref<?xf64>
        memref.store %25, %alloc_25[%arg1] : memref<?xf64>
        memref.store %false, %alloc_26[%24] : memref<?xi1>
      }
      scf.for %arg1 = %17 to %18 step %c1 {
        %24 = memref.load %alloc_10[%arg1] : memref<?xindex>
        memref.store %false, %alloc_28[%24] : memref<?xi1>
      }
    }
    memref.dealloc %alloc_27 : memref<?xf64>
    memref.dealloc %alloc_26 : memref<?xi1>
    %alloc_29 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_29[%c0] : memref<1xf64>
    %15 = memref.load %alloc_20[%c0] : memref<1xindex>
    scf.for %arg0 = %c0 to %15 step %c1 {
      %16 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %17 = memref.load %alloc_29[%c0] : memref<1xf64>
      %18 = arith.addf %16, %17 : f64
      memref.store %18, %alloc_29[%c0] : memref<1xf64>
    }
    %cast_30 = memref.cast %alloc_29 : memref<1xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_30) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
