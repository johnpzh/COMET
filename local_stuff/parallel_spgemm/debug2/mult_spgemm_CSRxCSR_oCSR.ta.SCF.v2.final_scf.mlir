module {
  func.func @main() {
    %c2_i32 = arith.constant 2 : i32
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_28[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_28[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = scf.for %arg3 = %39 to %41 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_49[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %32, %alloc_49[%44] : memref<?xi64>
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_50[%31] : memref<?xi64>
      %subview = memref.subview %alloc_50[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_51 = memref.subview %alloc_38[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_51 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %rowid = arith.index_cast %arg0 : index to i32
      %mark = arith.addi %rowid, %c1_i32 : i32

      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_8[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %30 to %32 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %42 = scf.for %arg3 = %38 to %40 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_50[%44] : memref<?xi32>
          // %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %48 = arith.cmpi eq, %47, %mark : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            // memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
            memref.store %mark, %alloc_50[%44] : memref<?xi32>
            memref.store %43, %alloc_51[%arg4] : memref<?xi64>
            %50 = index.add %arg4, %idx1
            memref.store %46, %alloc_49[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      %cast_52 = memref.cast %alloc_51 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_52, %idx0, %33) : (memref<*xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %33 step %c1 {
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64> /// %34 = colId
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64> /// %36 = value
        %37 = arith.addi %27, %arg1 : index /// %27 = offset
        memref.store %34, %alloc_40[%37] : memref<?xi64>
        %38 = arith.addi %27, %arg1 : index
        memref.store %36, %alloc_41[%38] : memref<?xf64>
      }
      scf.reduce
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_48[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_48[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%25) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}
