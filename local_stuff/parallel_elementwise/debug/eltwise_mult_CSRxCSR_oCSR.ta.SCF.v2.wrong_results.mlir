module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_48[%34] : memref<?xi64>
      %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index /// %22 = C.nnz
    %23 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64> /// %alloc_8 = A.pos
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64> /// %alloc_28 = B.pos
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %alloc_48 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_40, %alloc_48 : memref<?xi64> to memref<?xi64>
      %alloc_49 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %alloc_41, %alloc_49 : memref<?xf64> to memref<?xf64>
      %33:4 = scf.while (%arg1 = %c1, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %39 = arith.cmpi ult, %arg4, %32 : index
        %40 = arith.cmpi ult, %arg3, %28 : index
        %41 = arith.andi %40, %39 : i1
        scf.condition(%41) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index): /// %arg1 = C_i, %arg3 = A_i, %arg4 = B_i
        %39 = memref.load %alloc_30[%arg4] : memref<?xi64> /// %alloc_30 = B.crds
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_10[%arg3] : memref<?xi64> /// %alloc_10 = A.crds
        %42 = arith.index_cast %41 : i64 to index
        %43 = arith.minui %42, %40 : index
        %44 = arith.cmpi eq, %43, %42 : index
        %45 = arith.cmpi eq, %43, %40 : index
        %46 = arith.andi %44, %45 : i1
        %47:2 = scf.if %46 -> (index, index) {
          %52 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %53 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %54 = arith.mulf %52, %53 : f64
          %55 = arith.index_cast %43 : index to i64
          memref.store %55, %alloc_48[%arg1] : memref<?xi64> /// %alloc_48 = crds_inner
          %56 = index.add %arg1, %idx1
          memref.store %54, %alloc_49[%arg1] : memref<?xf64> /// %alloc_49 = vals_inner
          %57 = index.add %arg2, %idx1
          scf.yield %56, %57 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %48 = index.castu %44 : i1 to index
        %49 = index.add %arg3, %48
        %50 = index.castu %45 : i1 to index
        %51 = index.add %arg4, %50
        scf.yield %47#0, %47#1, %49, %51 : index, index, index, index
      }
      %34 = memref.load %alloc_38[%arg0] : memref<?xi64> /// %alloc_38 = C.pos
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_38[%24] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = arith.subi %37, %35 : index
      %subview = memref.subview %alloc_48[%35] [%38] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_50 = memref.subview %alloc_49[%35] [%38] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %subview_51 = memref.subview %alloc_40[%35] [%38] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_51 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_41[%35] [%38] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %subview_50, %subview_52 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64> /// %alloc_38 = C.pos
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64> /// %alloc_40 = C.crds
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64> /// %alloc_41 = C.vals
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}