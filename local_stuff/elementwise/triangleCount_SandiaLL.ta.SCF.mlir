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
    %11 = arith.addi %9, %c1 : index
    %alloc_18 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_18[%c0] : memref<1xindex>
    %alloc_19 = memref.alloc(%11) : memref<?xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0, %alloc_19[%arg0] : memref<?xindex>
    }
    memref.store %9, %alloc_18[%c0] : memref<1xindex>
    omp.parallel {
      %alloc_36 = memref.alloc() : memref<1xindex>
      %17 = memref.load %alloc_0[%c0] : memref<?xindex>
      %alloc_37 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xindex>
      scf.for %arg0 = %c0 to %10 step %c1 {
        memref.store %c0, %alloc_37[%arg0] : memref<?xindex>
      }
      %alloc_38 = memref.alloc() : memref<1xindex>
      memref.store %c0, %alloc_38[%c0] : memref<1xindex>
      omp.wsloop for  (%arg0) : index = (%c0) to (%17) step (%c1) {
        %18 = memref.load %alloc_38[%c0] : memref<1xindex>
        %19 = arith.addi %18, %c2 : index
        memref.store %19, %alloc_38[%c0] : memref<1xindex>
        memref.store %c0, %alloc_36[%c0] : memref<1xindex>
        %20 = arith.addi %arg0, %c1 : index
        %21 = memref.load %alloc_8[%arg0] : memref<?xindex>
        %22 = memref.load %alloc_8[%20] : memref<?xindex>
        scf.for %arg1 = %21 to %22 step %c1 {
          %24 = memref.load %alloc_10[%arg1] : memref<?xindex>
          %25 = arith.addi %24, %c1 : index
          %26 = memref.load %alloc_8[%24] : memref<?xindex>
          %27 = memref.load %alloc_8[%25] : memref<?xindex>
          scf.for %arg2 = %26 to %27 step %c1 {
            %28 = memref.load %alloc_10[%arg2] : memref<?xindex>
            %29 = memref.load %alloc_37[%28] : memref<?xindex>
            %30 = arith.cmpi ne, %29, %19 : index
            scf.if %30 {
              memref.store %19, %alloc_37[%28] : memref<?xindex>
              %31 = memref.load %alloc_36[%c0] : memref<1xindex>
              %32 = arith.addi %31, %c1 : index
              memref.store %32, %alloc_36[%c0] : memref<1xindex>
            }
          }
        }
        %23 = memref.load %alloc_36[%c0] : memref<1xindex>
        memref.store %23, %alloc_19[%arg0] : memref<?xindex>
        omp.yield
      }
      memref.dealloc %alloc_37 : memref<?xindex>
      omp.terminator
    }
    memref.store %c0, %alloc_19[%9] : memref<?xindex>
    %alloc_20 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_20[%c0] : memref<1xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      %17 = memref.load %alloc_19[%arg0] : memref<?xindex>
      %18 = memref.load %alloc_20[%c0] : memref<1xindex>
      memref.store %18, %alloc_19[%arg0] : memref<?xindex>
      %19 = arith.addi %17, %18 : index
      memref.store %19, %alloc_20[%c0] : memref<1xindex>
    }
    %12 = memref.load %alloc_20[%c0] : memref<1xindex>
    %alloc_21 = memref.alloc(%12) : memref<?xindex>
    %alloc_22 = memref.alloc(%12) : memref<?xf64>
    omp.parallel {
      %alloc_36 = memref.alloc() : memref<1xindex>
      %17 = memref.load %alloc_0[%c0] : memref<?xindex>
      %alloc_37 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xi1>
      scf.for %arg0 = %c0 to %10 step %c1 {
        memref.store %false, %alloc_37[%arg0] : memref<?xi1>
      }
      %alloc_38 = memref.alloc(%10) {alignment = 8 : i64} : memref<?xf64>
      omp.wsloop for  (%arg0) : index = (%c0) to (%17) step (%c1) {
        %18 = memref.load %alloc_19[%arg0] : memref<?xindex>
        memref.store %18, %alloc_36[%c0] : memref<1xindex>
        %19 = arith.addi %arg0, %c1 : index
        %20 = memref.load %alloc_8[%arg0] : memref<?xindex>
        %21 = memref.load %alloc_8[%19] : memref<?xindex>
        scf.for %arg1 = %20 to %21 step %c1 {
          %24 = memref.load %alloc_10[%arg1] : memref<?xindex>
          %25 = arith.addi %24, %c1 : index
          %26 = memref.load %alloc_8[%24] : memref<?xindex>
          %27 = memref.load %alloc_8[%25] : memref<?xindex>
          scf.for %arg2 = %26 to %27 step %c1 {
            %28 = memref.load %alloc_10[%arg2] : memref<?xindex>
            %29 = memref.load %alloc_37[%28] : memref<?xi1>
            %30 = arith.cmpi eq, %29, %false : i1
            scf.if %30 {
              %31 = memref.load %alloc_16[%arg1] : memref<?xf64>
              %32 = memref.load %alloc_16[%arg2] : memref<?xf64>
              %33 = arith.mulf %31, %32 : f64
              memref.store %33, %alloc_38[%28] : memref<?xf64>
              memref.store %true, %alloc_37[%28] : memref<?xi1>
              %34 = memref.load %alloc_36[%c0] : memref<1xindex>
              memref.store %28, %alloc_21[%34] : memref<?xindex>
              %35 = arith.addi %34, %c1 : index
              memref.store %35, %alloc_36[%c0] : memref<1xindex>
            } else {
              %31 = memref.load %alloc_16[%arg1] : memref<?xf64>
              %32 = memref.load %alloc_16[%arg2] : memref<?xf64>
              %33 = memref.load %alloc_38[%28] : memref<?xf64>
              %34 = arith.mulf %31, %32 : f64
              %35 = arith.addf %33, %34 : f64
              memref.store %35, %alloc_38[%28] : memref<?xf64>
            }
          }
        }
        %22 = memref.load %alloc_19[%arg0] : memref<?xindex>
        %23 = memref.load %alloc_19[%19] : memref<?xindex>
        %cast_39 = memref.cast %alloc_21 : memref<?xindex> to memref<*xindex>
        func.call @comet_sort_index(%cast_39, %22, %23) : (memref<*xindex>, index, index) -> ()
        scf.for %arg1 = %22 to %23 step %c1 {
          %24 = memref.load %alloc_21[%arg1] : memref<?xindex>
          %25 = memref.load %alloc_38[%24] : memref<?xf64>
          memref.store %25, %alloc_22[%arg1] : memref<?xf64>
          memref.store %false, %alloc_37[%24] : memref<?xi1>
        }
        omp.yield
      }
      memref.dealloc %alloc_37 : memref<?xi1>
      memref.dealloc %alloc_38 : memref<?xf64>
      omp.terminator
    }
    %alloc_23 = memref.alloc() : memref<1xindex>
    %alloc_24 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %cst, %alloc_24[%arg0] : memref<?xf64>
    }
    %alloc_25 = memref.alloc(%11) : memref<?xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0, %alloc_25[%arg0] : memref<?xindex>
    }
    %alloc_26 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_26[%c0] : memref<1xindex>
    %13 = memref.load %alloc_18[%c0] : memref<1xindex>
    %alloc_27 = memref.alloc(%9) {alignment = 8 : i64} : memref<?xindex>
    scf.for %arg0 = %c0 to %9 step %c1 {
      memref.store %c0, %alloc_27[%arg0] : memref<?xindex>
    }
    %alloc_28 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_28[%c0] : memref<1xindex>
    omp.wsloop for  (%arg0) : index = (%c0) to (%13) step (%c1) {
      %17 = memref.load %alloc_28[%c0] : memref<1xindex>
      %18 = arith.addi %17, %c2 : index
      memref.store %18, %alloc_28[%c0] : memref<1xindex>
      memref.store %c0, %alloc_23[%c0] : memref<1xindex>
      scf.for %arg1 = %c0 to %10 step %c1 {
        memref.store %cst, %alloc_24[%arg1] : memref<?xf64>
      }
      %19 = arith.addi %arg0, %c1 : index
      %20 = memref.load %alloc_19[%arg0] : memref<?xindex>
      %21 = memref.load %alloc_19[%19] : memref<?xindex>
      scf.for %arg1 = %20 to %21 step %c1 {
        %25 = memref.load %alloc_21[%arg1] : memref<?xindex>
        %26 = memref.load %alloc_22[%arg1] : memref<?xf64>
        memref.store %26, %alloc_24[%25] : memref<?xf64>
      }
      %22 = memref.load %alloc_8[%arg0] : memref<?xindex>
      %23 = memref.load %alloc_8[%19] : memref<?xindex>
      scf.for %arg1 = %22 to %23 step %c1 {
        %25 = memref.load %alloc_10[%arg1] : memref<?xindex>
        %26 = memref.load %alloc_27[%25] : memref<?xindex>
        %27 = arith.cmpi ne, %26, %18 : index
        scf.if %27 {
          memref.store %18, %alloc_27[%25] : memref<?xindex>
          %28 = memref.load %alloc_23[%c0] : memref<1xindex>
          %29 = arith.addi %28, %c1 : index
          memref.store %29, %alloc_23[%c0] : memref<1xindex>
        }
      }
      %24 = memref.load %alloc_23[%c0] : memref<1xindex>
      memref.store %24, %alloc_25[%arg0] : memref<?xindex>
      omp.yield
    }
    memref.store %c0, %alloc_25[%9] : memref<?xindex>
    %alloc_29 = memref.alloc() : memref<1xindex>
    memref.store %c0, %alloc_29[%c0] : memref<1xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xindex>
      %18 = memref.load %alloc_29[%c0] : memref<1xindex>
      memref.store %18, %alloc_25[%arg0] : memref<?xindex>
      %19 = arith.addi %17, %18 : index
      memref.store %19, %alloc_29[%c0] : memref<1xindex>
    }
    %14 = memref.load %alloc_29[%c0] : memref<1xindex>
    %alloc_30 = memref.alloc(%14) : memref<?xindex>
    %alloc_31 = memref.alloc(%14) : memref<?xf64>
    memref.store %14, %alloc_26[%c0] : memref<1xindex>
    memref.dealloc %alloc_27 : memref<?xindex>
    %15 = memref.load %alloc_18[%c0] : memref<1xindex>
    %alloc_32 = memref.alloc(%9) {alignment = 8 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %9 step %c1 {
      memref.store %false, %alloc_32[%arg0] : memref<?xi1>
    }
    %alloc_33 = memref.alloc(%9) {alignment = 8 : i64} : memref<?xf64>
    omp.wsloop for  (%arg0) : index = (%c0) to (%15) step (%c1) {
      %17 = memref.load %alloc_25[%arg0] : memref<?xindex>
      memref.store %17, %alloc_23[%c0] : memref<1xindex>
      scf.for %arg1 = %c0 to %10 step %c1 {
        memref.store %cst, %alloc_24[%arg1] : memref<?xf64>
      }
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_19[%arg0] : memref<?xindex>
      %20 = memref.load %alloc_19[%18] : memref<?xindex>
      scf.for %arg1 = %19 to %20 step %c1 {
        %25 = memref.load %alloc_21[%arg1] : memref<?xindex>
        %26 = memref.load %alloc_22[%arg1] : memref<?xf64>
        memref.store %26, %alloc_24[%25] : memref<?xf64>
      }
      %21 = memref.load %alloc_8[%arg0] : memref<?xindex>
      %22 = memref.load %alloc_8[%18] : memref<?xindex>
      scf.for %arg1 = %21 to %22 step %c1 {
        %25 = memref.load %alloc_10[%arg1] : memref<?xindex>
        %26 = memref.load %alloc_32[%25] : memref<?xi1>
        %27 = arith.cmpi eq, %26, %false : i1
        scf.if %27 {
          %28 = memref.load %alloc_24[%25] : memref<?xf64>
          %29 = memref.load %alloc_16[%arg1] : memref<?xf64>
          %30 = arith.mulf %28, %29 : f64
          memref.store %30, %alloc_33[%25] : memref<?xf64>
          memref.store %true, %alloc_32[%25] : memref<?xi1>
          %31 = memref.load %alloc_23[%c0] : memref<1xindex>
          memref.store %25, %alloc_30[%31] : memref<?xindex>
          %32 = arith.addi %31, %c1 : index
          memref.store %32, %alloc_23[%c0] : memref<1xindex>
        } else {
          %28 = memref.load %alloc_24[%25] : memref<?xf64>
          %29 = memref.load %alloc_16[%arg1] : memref<?xf64>
          %30 = arith.mulf %28, %29 : f64
          memref.store %30, %alloc_33[%25] : memref<?xf64>
        }
      }
      %23 = memref.load %alloc_25[%arg0] : memref<?xindex>
      %24 = memref.load %alloc_25[%18] : memref<?xindex>
      %cast_36 = memref.cast %alloc_30 : memref<?xindex> to memref<*xindex>
      func.call @comet_sort_index(%cast_36, %23, %24) : (memref<*xindex>, index, index) -> ()
      scf.for %arg1 = %23 to %24 step %c1 {
        %25 = memref.load %alloc_30[%arg1] : memref<?xindex>
        %26 = memref.load %alloc_33[%25] : memref<?xf64>
        memref.store %26, %alloc_31[%arg1] : memref<?xf64>
        memref.store %false, %alloc_32[%25] : memref<?xi1>
      }
      omp.yield
    }
    memref.dealloc %alloc_33 : memref<?xf64>
    memref.dealloc %alloc_32 : memref<?xi1>
    %alloc_34 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_34[%c0] : memref<1xf64>
    %16 = memref.load %alloc_26[%c0] : memref<1xindex>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %17 = memref.load %alloc_31[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_34[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_34[%c0] : memref<1xf64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<1xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_35) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
