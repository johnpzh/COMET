// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
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


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func private @printF64(f64)

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @printF64(f64)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func private @printF64(f64)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @printF64(f64)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @printNewline()

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printNewline()

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printNewline()

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printNewline()

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printNewline()

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printF64(f64)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After IndexTreeInliningPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
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


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
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


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
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


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
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

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
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


// -----// IR Dump After CSE (cse) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
        memref.store %34, %alloc_40[%37] : memref<?xi64>
        memref.store %36, %alloc_41[%37] : memref<?xf64>
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


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
        memref.store %34, %alloc_40[%37] : memref<?xi64>
        memref.store %36, %alloc_41[%37] : memref<?xf64>
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
        memref.store %34, %alloc_40[%37] : memref<?xi64>
        memref.store %36, %alloc_41[%37] : memref<?xf64>
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


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
      memref.store %34, %alloc_40[%37] : memref<?xi64>
      memref.store %36, %alloc_41[%37] : memref<?xf64>
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

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
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
        %48 = arith.cmpi eq, %47, %c2_i32 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_49[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_49[%44] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
      %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_49[%35] : memref<?xf64>
      %37 = arith.addi %27, %arg1 : index
      memref.store %34, %alloc_40[%37] : memref<?xi64>
      memref.store %36, %alloc_41[%37] : memref<?xf64>
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

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
        memref.store %34, %alloc_40[%37] : memref<?xi64>
        memref.store %36, %alloc_41[%37] : memref<?xf64>
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


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
        memref.store %34, %alloc_40[%37] : memref<?xi64>
        memref.store %36, %alloc_41[%37] : memref<?xf64>
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


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
        memref.store %34, %alloc_40[%37] : memref<?xi64>
        memref.store %36, %alloc_41[%37] : memref<?xf64>
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
        memref.store %34, %alloc_40[%37] : memref<?xi64>
        memref.store %36, %alloc_41[%37] : memref<?xf64>
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
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
          %48 = arith.cmpi eq, %47, %c2_i32 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_49[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_49[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
        %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_49[%35] : memref<?xf64>
        %37 = arith.addi %27, %arg1 : index
        memref.store %34, %alloc_40[%37] : memref<?xi64>
        memref.store %36, %alloc_41[%37] : memref<?xf64>
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


// -----// IR Dump After ConvertSCFToOpenMPPass (convert-scf-to-openmp) //----- //
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
    %21 = llvm.mlir.constant(1 : i64) : i64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          memref.alloca_scope  {
            %28 = arith.addi %arg0, %c1 : index
            %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
            %30 = arith.index_cast %29 : i64 to index
            %31 = memref.load %alloc_8[%28] : memref<?xi64>
            %32 = arith.index_cast %31 : i64 to index
            %33 = index.add %arg0, %idx1
            %34 = arith.index_cast %33 : index to i64
            %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
            %35 = scf.for %arg1 = %30 to %32 step %c1 iter_args(%arg2 = %c0) -> (index) {
              %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
              %38 = arith.index_cast %37 : i64 to index
              %39 = arith.addi %38, %c1 : index
              %40 = memref.load %alloc_28[%38] : memref<?xi64>
              %41 = arith.index_cast %40 : i64 to index
              %42 = memref.load %alloc_28[%39] : memref<?xi64>
              %43 = arith.index_cast %42 : i64 to index
              %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
                %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
                %46 = arith.index_cast %45 : i64 to index
                %47 = memref.load %alloc_49[%46] : memref<?xi64>
                %48 = arith.cmpi eq, %34, %47 : i64
                %49 = scf.if %48 -> (index) {
                  scf.yield %arg4 : index
                } else {
                  memref.store %34, %alloc_49[%46] : memref<?xi64>
                  %50 = index.add %arg4, %idx1
                  scf.yield %50 : index
                }
                scf.yield %49 : index
              }
              scf.yield %44 : index
            }
            %36 = arith.index_cast %35 : index to i64
            %alloc_50 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
            memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
            memref.store %36, %alloc_50[%33] : memref<?xi64>
            %subview = memref.subview %alloc_50[%33] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
            %subview_51 = memref.subview %alloc_38[%33] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
            memref.copy %subview, %subview_51 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %22 = arith.addi %9, %c1 : index
    %23 = scf.for %arg0 = %c1 to %22 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %28 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %29 = arith.addi %28, %arg1 : i64
      memref.store %29, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %29 : i64
    }
    %24 = arith.index_cast %23 : i64 to index
    %25 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %25, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf64>
    %26 = llvm.mlir.constant(1 : i64) : i64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          memref.alloca_scope  {
            %28 = memref.load %alloc_38[%arg0] : memref<?xi64>
            %29 = arith.index_cast %28 : i64 to index
            %30 = arith.addi %arg0, %c1 : index
            %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
            %32 = arith.index_cast %31 : i64 to index
            %33 = memref.load %alloc_8[%30] : memref<?xi64>
            %34 = arith.index_cast %33 : i64 to index
            %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
            %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
            %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
            %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %idx0) -> (index) {
              %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
              %37 = arith.index_cast %36 : i64 to index
              %38 = arith.addi %37, %c1 : index
              %39 = memref.load %alloc_28[%37] : memref<?xi64>
              %40 = arith.index_cast %39 : i64 to index
              %41 = memref.load %alloc_28[%38] : memref<?xi64>
              %42 = arith.index_cast %41 : i64 to index
              %43 = memref.load %alloc_16[%arg1] : memref<?xf64>
              %44 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
                %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
                %46 = arith.index_cast %45 : i64 to index
                %47 = memref.load %alloc_36[%arg3] : memref<?xf64>
                %48 = arith.mulf %43, %47 : f64
                %49 = memref.load %alloc_50[%46] : memref<?xi32>
                %50 = arith.cmpi eq, %49, %c2_i32 : i32
                %51 = scf.if %50 -> (index) {
                  %52 = memref.load %alloc_49[%46] : memref<?xf64>
                  %53 = arith.addf %52, %48 : f64
                  memref.store %53, %alloc_49[%46] : memref<?xf64>
                  scf.yield %arg4 : index
                } else {
                  memref.store %c2_i32, %alloc_50[%46] : memref<?xi32>
                  memref.store %45, %alloc_51[%arg4] : memref<?xi64>
                  %52 = index.add %arg4, %idx1
                  memref.store %48, %alloc_49[%46] : memref<?xf64>
                  scf.yield %52 : index
                }
                scf.yield %51 : index
              }
              scf.yield %44 : index
            }
            %cast_52 = memref.cast %alloc_51 : memref<?xi64> to memref<*xi64>
            func.call @comet_sort64(%cast_52, %idx0, %35) : (memref<*xi64>, index, index) -> ()
            scf.for %arg1 = %c0 to %35 step %c1 {
              %36 = memref.load %alloc_51[%arg1] : memref<?xi64>
              %37 = arith.index_cast %36 : i64 to index
              %38 = memref.load %alloc_49[%37] : memref<?xf64>
              %39 = arith.addi %29, %arg1 : index
              memref.store %36, %alloc_40[%39] : memref<?xi64>
              memref.store %38, %alloc_41[%39] : memref<?xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
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
    scf.for %arg0 = %c0 to %24 step %c1 {
      %28 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %29 = memref.load %alloc_48[%c0] : memref<1xf64>
      %30 = arith.addf %28, %29 : f64
      memref.store %30, %alloc_48[%c0] : memref<1xf64>
    }
    %27 = memref.load %alloc_48[%c0] : memref<1xf64>
    call @printF64(%27) : (f64) -> ()
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
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
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
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
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
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
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          memref.alloca_scope  {
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
                %48 = arith.cmpi eq, %47, %c2_i32 : i32
                %49 = scf.if %48 -> (index) {
                  %50 = memref.load %alloc_49[%44] : memref<?xf64>
                  %51 = arith.addf %50, %46 : f64
                  memref.store %51, %alloc_49[%44] : memref<?xf64>
                  scf.yield %arg4 : index
                } else {
                  memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
              %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
              %35 = arith.index_cast %34 : i64 to index
              %36 = memref.load %alloc_49[%35] : memref<?xf64>
              %37 = arith.addi %27, %arg1 : index
              memref.store %34, %alloc_40[%37] : memref<?xi64>
              memref.store %36, %alloc_41[%37] : memref<?xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
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


// -----// IR Dump After CSE (cse) //----- //
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
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
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
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
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
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          memref.alloca_scope  {
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
                %48 = arith.cmpi eq, %47, %c2_i32 : i32
                %49 = scf.if %48 -> (index) {
                  %50 = memref.load %alloc_49[%44] : memref<?xf64>
                  %51 = arith.addf %50, %46 : f64
                  memref.store %51, %alloc_49[%44] : memref<?xf64>
                  scf.yield %arg4 : index
                } else {
                  memref.store %c2_i32, %alloc_50[%44] : memref<?xi32>
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
              %34 = memref.load %alloc_51[%arg1] : memref<?xi64>
              %35 = arith.index_cast %34 : i64 to index
              %36 = memref.load %alloc_49[%35] : memref<?xf64>
              %37 = arith.addi %27, %arg1 : index
              memref.store %34, %alloc_40[%37] : memref<?xi64>
              memref.store %36, %alloc_41[%37] : memref<?xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
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


loc("mult_spgemm_CSRxCSR_oCSR.ta.SCF.v1.mlir":198:5): error: 'memref.alloca_scope' op expects region #0 to have 0 or 1 blocks
// -----// IR Dump After SCFToControlFlow Failed (convert-scf-to-cf) //----- //
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "index.constant"() <{value = -1 : index}> : () -> index
    %2 = "index.constant"() <{value = 1 : index}> : () -> index
    %3 = "index.constant"() <{value = 0 : index}> : () -> index
    %4 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %5 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %6 = "arith.constant"() <{value = 10 : index}> : () -> index
    %7 = "arith.constant"() <{value = 9 : index}> : () -> index
    %8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %9 = "arith.constant"() <{value = 7 : index}> : () -> index
    %10 = "arith.constant"() <{value = 6 : index}> : () -> index
    %11 = "arith.constant"() <{value = 5 : index}> : () -> index
    %12 = "arith.constant"() <{value = 4 : index}> : () -> index
    %13 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %14 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %15 = "arith.constant"() <{value = 3 : index}> : () -> index
    %16 = "arith.constant"() <{value = 2 : index}> : () -> index
    %17 = "arith.constant"() <{value = -1 : index}> : () -> index
    %18 = "arith.constant"() <{value = 1 : index}> : () -> index
    %19 = "arith.constant"() <{value = 0 : index}> : () -> index
    %20 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13xindex>
    %21 = "memref.cast"(%20) : (memref<13xindex>) -> memref<*xindex>
    "func.call"(%14, %19, %17, %18, %17, %21, %13) <{callee = @read_input_sizes_2D_f64}> {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %22 = "memref.load"(%20, %19) : (memref<13xindex>, index) -> index
    %23 = "memref.load"(%20, %18) : (memref<13xindex>, index) -> index
    %24 = "memref.load"(%20, %16) : (memref<13xindex>, index) -> index
    %25 = "memref.load"(%20, %15) : (memref<13xindex>, index) -> index
    %26 = "memref.load"(%20, %12) : (memref<13xindex>, index) -> index
    %27 = "memref.load"(%20, %11) : (memref<13xindex>, index) -> index
    %28 = "memref.load"(%20, %10) : (memref<13xindex>, index) -> index
    %29 = "memref.load"(%20, %9) : (memref<13xindex>, index) -> index
    %30 = "memref.load"(%20, %8) : (memref<13xindex>, index) -> index
    %31 = "memref.load"(%20, %7) : (memref<13xindex>, index) -> index
    %32 = "memref.alloc"(%22) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb1] : (index) -> ()
  ^bb1(%33: index):  // 2 preds: ^bb0, ^bb2
    %34 = "arith.cmpi"(%33, %22) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%34)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "memref.store"(%5, %32, %33) : (i64, memref<?xi64>, index) -> ()
    %35 = "arith.addi"(%33, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%35)[^bb1] : (index) -> ()
  ^bb3:  // pred: ^bb1
    %36 = "memref.cast"(%32) : (memref<?xi64>) -> memref<*xi64>
    %37 = "memref.alloc"(%23) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb4] : (index) -> ()
  ^bb4(%38: index):  // 2 preds: ^bb3, ^bb5
    %39 = "arith.cmpi"(%38, %23) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%39)[^bb5, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    "memref.store"(%5, %37, %38) : (i64, memref<?xi64>, index) -> ()
    %40 = "arith.addi"(%38, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%40)[^bb4] : (index) -> ()
  ^bb6:  // pred: ^bb4
    %41 = "memref.cast"(%37) : (memref<?xi64>) -> memref<*xi64>
    %42 = "memref.alloc"(%24) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb7] : (index) -> ()
  ^bb7(%43: index):  // 2 preds: ^bb6, ^bb8
    %44 = "arith.cmpi"(%43, %24) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%44)[^bb8, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb8:  // pred: ^bb7
    "memref.store"(%5, %42, %43) : (i64, memref<?xi64>, index) -> ()
    %45 = "arith.addi"(%43, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%45)[^bb7] : (index) -> ()
  ^bb9:  // pred: ^bb7
    %46 = "memref.cast"(%42) : (memref<?xi64>) -> memref<*xi64>
    %47 = "memref.alloc"(%25) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb10] : (index) -> ()
  ^bb10(%48: index):  // 2 preds: ^bb9, ^bb11
    %49 = "arith.cmpi"(%48, %25) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%49)[^bb11, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    "memref.store"(%5, %47, %48) : (i64, memref<?xi64>, index) -> ()
    %50 = "arith.addi"(%48, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%50)[^bb10] : (index) -> ()
  ^bb12:  // pred: ^bb10
    %51 = "memref.cast"(%47) : (memref<?xi64>) -> memref<*xi64>
    %52 = "memref.alloc"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb13] : (index) -> ()
  ^bb13(%53: index):  // 2 preds: ^bb12, ^bb14
    %54 = "arith.cmpi"(%53, %26) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%54)[^bb14, ^bb15] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb14:  // pred: ^bb13
    "memref.store"(%5, %52, %53) : (i64, memref<?xi64>, index) -> ()
    %55 = "arith.addi"(%53, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%55)[^bb13] : (index) -> ()
  ^bb15:  // pred: ^bb13
    %56 = "memref.cast"(%52) : (memref<?xi64>) -> memref<*xi64>
    %57 = "memref.alloc"(%27) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb16] : (index) -> ()
  ^bb16(%58: index):  // 2 preds: ^bb15, ^bb17
    %59 = "arith.cmpi"(%58, %27) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%59)[^bb17, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb17:  // pred: ^bb16
    "memref.store"(%5, %57, %58) : (i64, memref<?xi64>, index) -> ()
    %60 = "arith.addi"(%58, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%60)[^bb16] : (index) -> ()
  ^bb18:  // pred: ^bb16
    %61 = "memref.cast"(%57) : (memref<?xi64>) -> memref<*xi64>
    %62 = "memref.alloc"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb19] : (index) -> ()
  ^bb19(%63: index):  // 2 preds: ^bb18, ^bb20
    %64 = "arith.cmpi"(%63, %28) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%64)[^bb20, ^bb21] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb20:  // pred: ^bb19
    "memref.store"(%5, %62, %63) : (i64, memref<?xi64>, index) -> ()
    %65 = "arith.addi"(%63, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%65)[^bb19] : (index) -> ()
  ^bb21:  // pred: ^bb19
    %66 = "memref.cast"(%62) : (memref<?xi64>) -> memref<*xi64>
    %67 = "memref.alloc"(%29) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb22] : (index) -> ()
  ^bb22(%68: index):  // 2 preds: ^bb21, ^bb23
    %69 = "arith.cmpi"(%68, %29) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%69)[^bb23, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb23:  // pred: ^bb22
    "memref.store"(%5, %67, %68) : (i64, memref<?xi64>, index) -> ()
    %70 = "arith.addi"(%68, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%70)[^bb22] : (index) -> ()
  ^bb24:  // pred: ^bb22
    %71 = "memref.cast"(%67) : (memref<?xi64>) -> memref<*xi64>
    %72 = "memref.alloc"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
    "cf.br"(%19)[^bb25] : (index) -> ()
  ^bb25(%73: index):  // 2 preds: ^bb24, ^bb26
    %74 = "arith.cmpi"(%73, %30) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%74)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb26:  // pred: ^bb25
    "memref.store"(%4, %72, %73) : (f64, memref<?xf64>, index) -> ()
    %75 = "arith.addi"(%73, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%75)[^bb25] : (index) -> ()
  ^bb27:  // pred: ^bb25
    %76 = "memref.cast"(%72) : (memref<?xf64>) -> memref<*xf64>
    "func.call"(%14, %19, %17, %18, %17, %36, %41, %46, %51, %56, %61, %66, %71, %76, %13) <{callee = @read_input_2D_f64_i64}> {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %77 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13xindex>
    %78 = "memref.cast"(%77) : (memref<13xindex>) -> memref<*xindex>
    "func.call"(%13, %19, %17, %18, %17, %78, %13) <{callee = @read_input_sizes_2D_f64}> {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %79 = "memref.load"(%77, %19) : (memref<13xindex>, index) -> index
    %80 = "memref.load"(%77, %18) : (memref<13xindex>, index) -> index
    %81 = "memref.load"(%77, %16) : (memref<13xindex>, index) -> index
    %82 = "memref.load"(%77, %15) : (memref<13xindex>, index) -> index
    %83 = "memref.load"(%77, %12) : (memref<13xindex>, index) -> index
    %84 = "memref.load"(%77, %11) : (memref<13xindex>, index) -> index
    %85 = "memref.load"(%77, %10) : (memref<13xindex>, index) -> index
    %86 = "memref.load"(%77, %9) : (memref<13xindex>, index) -> index
    %87 = "memref.load"(%77, %8) : (memref<13xindex>, index) -> index
    %88 = "memref.load"(%77, %6) : (memref<13xindex>, index) -> index
    %89 = "memref.alloc"(%79) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb28] : (index) -> ()
  ^bb28(%90: index):  // 2 preds: ^bb27, ^bb29
    %91 = "arith.cmpi"(%90, %79) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%91)[^bb29, ^bb30] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb29:  // pred: ^bb28
    "memref.store"(%5, %89, %90) : (i64, memref<?xi64>, index) -> ()
    %92 = "arith.addi"(%90, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%92)[^bb28] : (index) -> ()
  ^bb30:  // pred: ^bb28
    %93 = "memref.cast"(%89) : (memref<?xi64>) -> memref<*xi64>
    %94 = "memref.alloc"(%80) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb31] : (index) -> ()
  ^bb31(%95: index):  // 2 preds: ^bb30, ^bb32
    %96 = "arith.cmpi"(%95, %80) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%96)[^bb32, ^bb33] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb32:  // pred: ^bb31
    "memref.store"(%5, %94, %95) : (i64, memref<?xi64>, index) -> ()
    %97 = "arith.addi"(%95, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%97)[^bb31] : (index) -> ()
  ^bb33:  // pred: ^bb31
    %98 = "memref.cast"(%94) : (memref<?xi64>) -> memref<*xi64>
    %99 = "memref.alloc"(%81) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb34] : (index) -> ()
  ^bb34(%100: index):  // 2 preds: ^bb33, ^bb35
    %101 = "arith.cmpi"(%100, %81) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%101)[^bb35, ^bb36] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb35:  // pred: ^bb34
    "memref.store"(%5, %99, %100) : (i64, memref<?xi64>, index) -> ()
    %102 = "arith.addi"(%100, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%102)[^bb34] : (index) -> ()
  ^bb36:  // pred: ^bb34
    %103 = "memref.cast"(%99) : (memref<?xi64>) -> memref<*xi64>
    %104 = "memref.alloc"(%82) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb37] : (index) -> ()
  ^bb37(%105: index):  // 2 preds: ^bb36, ^bb38
    %106 = "arith.cmpi"(%105, %82) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%106)[^bb38, ^bb39] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb38:  // pred: ^bb37
    "memref.store"(%5, %104, %105) : (i64, memref<?xi64>, index) -> ()
    %107 = "arith.addi"(%105, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%107)[^bb37] : (index) -> ()
  ^bb39:  // pred: ^bb37
    %108 = "memref.cast"(%104) : (memref<?xi64>) -> memref<*xi64>
    %109 = "memref.alloc"(%83) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb40] : (index) -> ()
  ^bb40(%110: index):  // 2 preds: ^bb39, ^bb41
    %111 = "arith.cmpi"(%110, %83) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%111)[^bb41, ^bb42] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb41:  // pred: ^bb40
    "memref.store"(%5, %109, %110) : (i64, memref<?xi64>, index) -> ()
    %112 = "arith.addi"(%110, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%112)[^bb40] : (index) -> ()
  ^bb42:  // pred: ^bb40
    %113 = "memref.cast"(%109) : (memref<?xi64>) -> memref<*xi64>
    %114 = "memref.alloc"(%84) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb43] : (index) -> ()
  ^bb43(%115: index):  // 2 preds: ^bb42, ^bb44
    %116 = "arith.cmpi"(%115, %84) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%116)[^bb44, ^bb45] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb44:  // pred: ^bb43
    "memref.store"(%5, %114, %115) : (i64, memref<?xi64>, index) -> ()
    %117 = "arith.addi"(%115, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%117)[^bb43] : (index) -> ()
  ^bb45:  // pred: ^bb43
    %118 = "memref.cast"(%114) : (memref<?xi64>) -> memref<*xi64>
    %119 = "memref.alloc"(%85) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb46] : (index) -> ()
  ^bb46(%120: index):  // 2 preds: ^bb45, ^bb47
    %121 = "arith.cmpi"(%120, %85) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%121)[^bb47, ^bb48] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb47:  // pred: ^bb46
    "memref.store"(%5, %119, %120) : (i64, memref<?xi64>, index) -> ()
    %122 = "arith.addi"(%120, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%122)[^bb46] : (index) -> ()
  ^bb48:  // pred: ^bb46
    %123 = "memref.cast"(%119) : (memref<?xi64>) -> memref<*xi64>
    %124 = "memref.alloc"(%86) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "cf.br"(%19)[^bb49] : (index) -> ()
  ^bb49(%125: index):  // 2 preds: ^bb48, ^bb50
    %126 = "arith.cmpi"(%125, %86) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%126)[^bb50, ^bb51] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb50:  // pred: ^bb49
    "memref.store"(%5, %124, %125) : (i64, memref<?xi64>, index) -> ()
    %127 = "arith.addi"(%125, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%127)[^bb49] : (index) -> ()
  ^bb51:  // pred: ^bb49
    %128 = "memref.cast"(%124) : (memref<?xi64>) -> memref<*xi64>
    %129 = "memref.alloc"(%87) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
    "cf.br"(%19)[^bb52] : (index) -> ()
  ^bb52(%130: index):  // 2 preds: ^bb51, ^bb53
    %131 = "arith.cmpi"(%130, %87) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%131)[^bb53, ^bb54] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb53:  // pred: ^bb52
    "memref.store"(%4, %129, %130) : (f64, memref<?xf64>, index) -> ()
    %132 = "arith.addi"(%130, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%132)[^bb52] : (index) -> ()
  ^bb54:  // pred: ^bb52
    %133 = "memref.cast"(%129) : (memref<?xf64>) -> memref<*xf64>
    "func.call"(%13, %19, %17, %18, %17, %93, %98, %103, %108, %113, %118, %123, %128, %133, %13) <{callee = @read_input_2D_f64_i64}> {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %134 = "index.add"(%31, %2) : (index, index) -> index
    %135 = "memref.alloc"(%134) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "omp.parallel"() <{operandSegmentSizes = array<i32: 0, 0, 0, 0, 0, 0>}> ({
      "omp.wsloop"() <{operandSegmentSizes = array<i32: 0, 0, 0, 0, 0, 0, 0>}> ({
        "omp.loop_nest"(%19, %31, %18) ({
        ^bb0(%arg1: index):
          %206 = "arith.addi"(%arg1, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %207 = "memref.load"(%52, %arg1) : (memref<?xi64>, index) -> i64
          %208 = "arith.index_cast"(%207) : (i64) -> index
          %209 = "memref.load"(%52, %206) : (memref<?xi64>, index) -> i64
          %210 = "arith.index_cast"(%209) : (i64) -> index
          %211 = "index.add"(%arg1, %2) : (index, index) -> index
          %212 = "arith.index_cast"(%211) : (index) -> i64
          %213 = "memref.alloc"(%88) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
          "cf.br"(%208, %19)[^bb1] : (index, index) -> ()
        ^bb1(%214: index, %215: index):  // 2 preds: ^bb0, ^bb9
          %216 = "arith.cmpi"(%214, %210) <{predicate = 2 : i64}> : (index, index) -> i1
          "cf.cond_br"(%216)[^bb2, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
        ^bb2:  // pred: ^bb1
          %217 = "memref.load"(%57, %214) : (memref<?xi64>, index) -> i64
          %218 = "arith.index_cast"(%217) : (i64) -> index
          %219 = "arith.addi"(%218, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %220 = "memref.load"(%109, %218) : (memref<?xi64>, index) -> i64
          %221 = "arith.index_cast"(%220) : (i64) -> index
          %222 = "memref.load"(%109, %219) : (memref<?xi64>, index) -> i64
          %223 = "arith.index_cast"(%222) : (i64) -> index
          "cf.br"(%221, %215)[^bb3] : (index, index) -> ()
        ^bb3(%224: index, %225: index):  // 2 preds: ^bb2, ^bb8
          %226 = "arith.cmpi"(%224, %223) <{predicate = 2 : i64}> : (index, index) -> i1
          "cf.cond_br"(%226)[^bb4, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
        ^bb4:  // pred: ^bb3
          %227 = "memref.load"(%114, %224) : (memref<?xi64>, index) -> i64
          %228 = "arith.index_cast"(%227) : (i64) -> index
          %229 = "memref.load"(%213, %228) : (memref<?xi64>, index) -> i64
          %230 = "arith.cmpi"(%212, %229) <{predicate = 0 : i64}> : (i64, i64) -> i1
          "cf.cond_br"(%230)[^bb5, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
        ^bb5:  // pred: ^bb4
          "cf.br"(%225)[^bb7] : (index) -> ()
        ^bb6:  // pred: ^bb4
          "memref.store"(%212, %213, %228) : (i64, memref<?xi64>, index) -> ()
          %231 = "index.add"(%225, %2) : (index, index) -> index
          "cf.br"(%231)[^bb7] : (index) -> ()
        ^bb7(%232: index):  // 2 preds: ^bb5, ^bb6
          "cf.br"()[^bb8] : () -> ()
        ^bb8:  // pred: ^bb7
          %233 = "arith.addi"(%224, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          "cf.br"(%233, %232)[^bb3] : (index, index) -> ()
        ^bb9:  // pred: ^bb3
          %234 = "arith.addi"(%214, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          "cf.br"(%234, %225)[^bb1] : (index, index) -> ()
        ^bb10:  // pred: ^bb1
          %235 = "arith.index_cast"(%215) : (index) -> i64
          %236 = "memref.alloc"(%134) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
          "memref.copy"(%135, %236) : (memref<?xi64>, memref<?xi64>) -> ()
          "memref.store"(%235, %236, %211) : (i64, memref<?xi64>, index) -> ()
          %237 = "memref.subview"(%236, %211) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (memref<?xi64>, index) -> memref<1xi64, strided<[1], offset: ?>>
          %238 = "memref.subview"(%135, %211) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (memref<?xi64>, index) -> memref<1xi64, strided<[1], offset: ?>>
          "memref.copy"(%237, %238) : (memref<1xi64, strided<[1], offset: ?>>, memref<1xi64, strided<[1], offset: ?>>) -> ()
          "omp.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "omp.terminator"() : () -> ()
      }) : () -> ()
      "omp.terminator"() : () -> ()
    }) : () -> ()
    %136 = "arith.addi"(%31, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%18, %5)[^bb55] : (index, i64) -> ()
  ^bb55(%137: index, %138: i64):  // 2 preds: ^bb54, ^bb56
    %139 = "arith.cmpi"(%137, %136) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%139)[^bb56, ^bb57] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb56:  // pred: ^bb55
    %140 = "memref.load"(%135, %137) : (memref<?xi64>, index) -> i64
    %141 = "arith.addi"(%140, %138) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "memref.store"(%141, %135, %137) : (i64, memref<?xi64>, index) -> ()
    %142 = "arith.addi"(%137, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%142, %141)[^bb55] : (index, i64) -> ()
  ^bb57:  // pred: ^bb55
    %143 = "arith.index_cast"(%138) : (i64) -> index
    %144 = "arith.index_cast"(%31) : (index) -> i64
    %145 = "memref.alloc"() <{alignment = 64 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi64>
    "memref.store"(%144, %145, %3) : (i64, memref<1xi64>, index) -> ()
    %146 = "memref.alloc"(%143) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    %147 = "memref.alloc"(%143) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
    "omp.parallel"() <{operandSegmentSizes = array<i32: 0, 0, 0, 0, 0, 0>}> ({
      "omp.wsloop"() <{operandSegmentSizes = array<i32: 0, 0, 0, 0, 0, 0, 0>}> ({
        "omp.loop_nest"(%19, %31, %18) ({
        ^bb0(%arg0: index):
          "memref.alloca_scope"() ({
            %162 = "memref.load"(%135, %arg0) : (memref<?xi64>, index) -> i64
            %163 = "arith.index_cast"(%162) : (i64) -> index
            %164 = "arith.addi"(%arg0, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
            %165 = "memref.load"(%52, %arg0) : (memref<?xi64>, index) -> i64
            %166 = "arith.index_cast"(%165) : (i64) -> index
            %167 = "memref.load"(%52, %164) : (memref<?xi64>, index) -> i64
            %168 = "arith.index_cast"(%167) : (i64) -> index
            %169 = "memref.alloc"(%88) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
            %170 = "memref.alloc"(%88) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi32>
            %171 = "memref.alloc"(%88) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
            "cf.br"(%166, %3)[^bb1] : (index, index) -> ()
          ^bb1(%172: index, %173: index):  // 2 preds: ^bb0, ^bb9
            %174 = "arith.cmpi"(%172, %168) <{predicate = 2 : i64}> : (index, index) -> i1
            "cf.cond_br"(%174)[^bb2, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
          ^bb2:  // pred: ^bb1
            %175 = "memref.load"(%57, %172) : (memref<?xi64>, index) -> i64
            %176 = "arith.index_cast"(%175) : (i64) -> index
            %177 = "arith.addi"(%176, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
            %178 = "memref.load"(%109, %176) : (memref<?xi64>, index) -> i64
            %179 = "arith.index_cast"(%178) : (i64) -> index
            %180 = "memref.load"(%109, %177) : (memref<?xi64>, index) -> i64
            %181 = "arith.index_cast"(%180) : (i64) -> index
            %182 = "memref.load"(%72, %172) : (memref<?xf64>, index) -> f64
            "cf.br"(%179, %173)[^bb3] : (index, index) -> ()
          ^bb3(%183: index, %184: index):  // 2 preds: ^bb2, ^bb8
            %185 = "arith.cmpi"(%183, %181) <{predicate = 2 : i64}> : (index, index) -> i1
            "cf.cond_br"(%185)[^bb4, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
          ^bb4:  // pred: ^bb3
            %186 = "memref.load"(%114, %183) : (memref<?xi64>, index) -> i64
            %187 = "arith.index_cast"(%186) : (i64) -> index
            %188 = "memref.load"(%129, %183) : (memref<?xf64>, index) -> f64
            %189 = "arith.mulf"(%182, %188) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
            %190 = "memref.load"(%170, %187) : (memref<?xi32>, index) -> i32
            %191 = "arith.cmpi"(%190, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
            "cf.cond_br"(%191)[^bb5, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
          ^bb5:  // pred: ^bb4
            %192 = "memref.load"(%169, %187) : (memref<?xf64>, index) -> f64
            %193 = "arith.addf"(%192, %189) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
            "memref.store"(%193, %169, %187) : (f64, memref<?xf64>, index) -> ()
            "cf.br"(%184)[^bb7] : (index) -> ()
          ^bb6:  // pred: ^bb4
            "memref.store"(%0, %170, %187) : (i32, memref<?xi32>, index) -> ()
            "memref.store"(%186, %171, %184) : (i64, memref<?xi64>, index) -> ()
            %194 = "index.add"(%184, %2) : (index, index) -> index
            "memref.store"(%189, %169, %187) : (f64, memref<?xf64>, index) -> ()
            "cf.br"(%194)[^bb7] : (index) -> ()
          ^bb7(%195: index):  // 2 preds: ^bb5, ^bb6
            "cf.br"()[^bb8] : () -> ()
          ^bb8:  // pred: ^bb7
            %196 = "arith.addi"(%183, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
            "cf.br"(%196, %195)[^bb3] : (index, index) -> ()
          ^bb9:  // pred: ^bb3
            %197 = "arith.addi"(%172, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
            "cf.br"(%197, %184)[^bb1] : (index, index) -> ()
          ^bb10:  // pred: ^bb1
            %198 = "memref.cast"(%171) : (memref<?xi64>) -> memref<*xi64>
            "func.call"(%198, %3, %173) <{callee = @comet_sort64}> : (memref<*xi64>, index, index) -> ()
            "cf.br"(%19)[^bb11] : (index) -> ()
          ^bb11(%199: index):  // 2 preds: ^bb10, ^bb12
            %200 = "arith.cmpi"(%199, %173) <{predicate = 2 : i64}> : (index, index) -> i1
            "cf.cond_br"(%200)[^bb12, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
          ^bb12:  // pred: ^bb11
            %201 = "memref.load"(%171, %199) : (memref<?xi64>, index) -> i64
            %202 = "arith.index_cast"(%201) : (i64) -> index
            %203 = "memref.load"(%169, %202) : (memref<?xf64>, index) -> f64
            %204 = "arith.addi"(%163, %199) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
            "memref.store"(%201, %146, %204) : (i64, memref<?xi64>, index) -> ()
            "memref.store"(%203, %147, %204) : (f64, memref<?xf64>, index) -> ()
            %205 = "arith.addi"(%199, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
            "cf.br"(%205)[^bb11] : (index) -> ()
          ^bb13:  // pred: ^bb11
            "memref.alloca_scope.return"() : () -> ()
          }) : () -> ()
          "omp.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "omp.terminator"() : () -> ()
      }) : () -> ()
      "omp.terminator"() : () -> ()
    }) : () -> ()
    %148 = "memref.alloc"() <{alignment = 64 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xindex>
    "memref.store"(%1, %148, %3) : (index, memref<1xindex>, index) -> ()
    %149 = "memref.cast"(%145) : (memref<1xi64>) -> memref<*xi64>
    "func.call"(%149) <{callee = @comet_print_memref_i64}> : (memref<*xi64>) -> ()
    %150 = "memref.cast"(%148) : (memref<1xindex>) -> memref<*xindex>
    "func.call"(%150) <{callee = @comet_print_memref_index}> : (memref<*xindex>) -> ()
    %151 = "memref.cast"(%135) : (memref<?xi64>) -> memref<*xi64>
    "func.call"(%151) <{callee = @comet_print_memref_i64}> : (memref<*xi64>) -> ()
    %152 = "memref.cast"(%146) : (memref<?xi64>) -> memref<*xi64>
    "func.call"(%152) <{callee = @comet_print_memref_i64}> : (memref<*xi64>) -> ()
    %153 = "memref.cast"(%147) : (memref<?xf64>) -> memref<*xf64>
    "func.call"(%153) <{callee = @comet_print_memref_f64}> : (memref<*xf64>) -> ()
    %154 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xf64>
    "memref.store"(%4, %154, %19) : (f64, memref<1xf64>, index) -> ()
    "cf.br"(%19)[^bb58] : (index) -> ()
  ^bb58(%155: index):  // 2 preds: ^bb57, ^bb59
    %156 = "arith.cmpi"(%155, %143) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%156)[^bb59, ^bb60] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb59:  // pred: ^bb58
    %157 = "memref.load"(%147, %155) : (memref<?xf64>, index) -> f64
    %158 = "memref.load"(%154, %19) : (memref<1xf64>, index) -> f64
    %159 = "arith.addf"(%157, %158) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "memref.store"(%159, %154, %19) : (f64, memref<1xf64>, index) -> ()
    %160 = "arith.addi"(%155, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "cf.br"(%160)[^bb58] : (index) -> ()
  ^bb60:  // pred: ^bb58
    %161 = "memref.load"(%154, %19) : (memref<1xf64>, index) -> f64
    "func.call"(%161) <{callee = @printF64}> : (f64) -> ()
    "func.call"() <{callee = @printNewline}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> (), sym_name = "read_input_2D_f64_i64", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index, index, memref<*xindex>, i32) -> (), sym_name = "read_input_sizes_2D_f64", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (memref<*xi64>, index, index) -> (), sym_name = "comet_sort64", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (memref<*xi64>) -> (), sym_name = "comet_print_memref_i64", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (memref<*xindex>) -> (), sym_name = "comet_print_memref_index", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (memref<*xf64>) -> (), sym_name = "comet_print_memref_f64", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> (), sym_name = "printF64", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "printNewline", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()


