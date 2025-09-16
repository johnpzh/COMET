// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printI64(i64)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printComma()

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printI64(i64)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printComma()

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printI64(i64)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printComma()

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printNewline()

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printNewline()

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printNewline()

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @printF64(f64)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @printF64(f64)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
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
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %27 = tensor.empty(%26) : tensor<?xi64>
  %28 = tensor.empty(%22) : tensor<?xi64>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %42 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %43 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%42] : tensor<?xi64>
    %44 = arith.index_cast %extracted_40 : i64 to index
    %45 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %c0) -> (index) {
      %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
      %48 = arith.index_cast %extracted_42 : i64 to index
      %49 = arith.addi %48, %c1 : index
      %extracted_43 = tensor.extract %23[%48] : tensor<?xi64>
      %50 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_44 : i64 to index
      %52 = scf.for %arg4 = %50 to %51 step %c1 iter_args(%arg5 = %arg3) -> (index) {
        %extracted_45 = tensor.extract %24[%arg4] : tensor<?xi64>
        %53 = arith.index_cast %extracted_45 : i64 to index
        %54 = index.add %arg0, %idx1
        %55 = arith.index_cast %54 : index to i64
        %extracted_46 = tensor.extract %28[%53] : tensor<?xi64>
        %56 = arith.cmpi eq, %55, %extracted_46 : i64
        %57 = scf.if %56 -> (index) {
          scf.yield %arg5 : index
        } else {
          %58 = index.add %arg5, %idx1
          scf.yield %58 : index
        }
        scf.yield %57 : index
      }
      scf.yield %52 : index
    }
    %46 = index.add %arg0, %idx1
    %47 = arith.index_cast %45 : index to i64
    %inserted_41 = tensor.insert %47 into %arg1[%46] : tensor<?xi64>
    "ta.print"(%inserted_41) : (tensor<?xi64>) -> ()
    %extracted_slice = tensor.extract_slice %arg1[%46] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%46] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %42 = arith.addi %extracted, %arg1 : i64
    %inserted_40 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %42, %inserted_40 : i64, tensor<?xi64>
  }
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = tensor.empty() : tensor<1xi64>
  %cast_38 = tensor.cast %33 : tensor<1xi64> to tensor<?xi64>
  %34 = tensor.empty(%32) : tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xf64>
  %36 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %37 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %39:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %34, %arg3 = %35, %arg4 = %36, %arg5 = %c1_i32, %arg6 = %37, %arg7 = %38) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %42 = arith.addi %arg5, %c1_i32 : i32
    %43 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_40 : i64 to index
    %46:4 = scf.for %arg8 = %44 to %45 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_41 = tensor.extract %11[%arg8] : tensor<?xi64>
      %49 = arith.index_cast %extracted_41 : i64 to index
      %50 = arith.addi %49, %c1 : index
      %extracted_42 = tensor.extract %23[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_43 : i64 to index
      %53:4 = scf.for %arg13 = %51 to %52 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_44 = tensor.extract %24[%arg13] : tensor<?xi64>
        %54 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
        %extracted_46 = tensor.extract %25[%arg13] : tensor<?xf64>
        %55 = arith.mulf %extracted_45, %extracted_46 : f64
        %extracted_47 = tensor.extract %arg15[%54] : tensor<?xi32>
        %56 = arith.cmpi eq, %extracted_47, %42 : i32
        %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_48 = tensor.extract %arg14[%54] : tensor<?xf64>
          %58 = arith.addf %extracted_48, %55 : f64
          %inserted_49 = tensor.insert %58 into %arg14[%54] : tensor<?xf64>
          scf.yield %arg15, %arg16, %arg17, %inserted_49 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_48 = tensor.insert %42 into %arg15[%54] : tensor<?xi32>
          %inserted_49 = tensor.insert %extracted_44 into %arg17[%arg16] : tensor<?xi64>
          %58 = index.add %arg16, %idx1
          %inserted_50 = tensor.insert %55 into %arg14[%54] : tensor<?xf64>
          scf.yield %inserted_48, %58, %inserted_49, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %48:3 = scf.for %arg8 = %c0 to %46#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_41 = tensor.extract %47[%arg8] : tensor<?xi64>
      %49 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %46#0[%49] : tensor<?xf64>
      %inserted_43 = tensor.insert %extracted_41 into %arg10[%arg9] : tensor<?xi64>
      %50 = index.add %arg9, %idx1
      %inserted_44 = tensor.insert %extracted_42 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %50, %inserted_43, %inserted_44 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %48#0, %48#1, %48#2, %46#0, %42, %46#1, %47 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %40 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted = tensor.insert %idx-1 into %40[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%39#1) : (tensor<?xi64>) -> ()
  "ta.print"(%39#2) : (tensor<?xf64>) -> ()
  %alloc_39 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_39[%c0] : memref<1xf64>
  %dim = tensor.dim %39#2, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %39#2[%arg0] : tensor<?xf64>
    %42 = memref.load %alloc_39[%c0] : memref<1xf64>
    %43 = arith.addf %extracted, %42 : f64
    memref.store %43, %alloc_39[%c0] : memref<1xf64>
  }
  %41 = memref.load %alloc_39[%c0] : memref<1xf64>
  "ta.print"(%41) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
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
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %27 = tensor.empty(%26) : tensor<?xi64>
  %28 = tensor.empty(%22) : tensor<?xi64>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %42 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %43 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%42] : tensor<?xi64>
    %44 = arith.index_cast %extracted_40 : i64 to index
    %45 = index.add %arg0, %idx1
    %46 = arith.index_cast %45 : index to i64
    %47 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %c0) -> (index) {
      %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
      %50 = arith.index_cast %extracted_42 : i64 to index
      %51 = arith.addi %50, %c1 : index
      %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%51] : tensor<?xi64>
      %53 = arith.index_cast %extracted_44 : i64 to index
      %54 = scf.for %arg4 = %52 to %53 step %c1 iter_args(%arg5 = %arg3) -> (index) {
        %extracted_45 = tensor.extract %24[%arg4] : tensor<?xi64>
        %55 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %28[%55] : tensor<?xi64>
        %56 = arith.cmpi eq, %46, %extracted_46 : i64
        %57 = scf.if %56 -> (index) {
          scf.yield %arg5 : index
        } else {
          %58 = index.add %arg5, %idx1
          scf.yield %58 : index
        }
        scf.yield %57 : index
      }
      scf.yield %54 : index
    }
    %48 = index.add %arg0, %idx1
    %49 = arith.index_cast %47 : index to i64
    %inserted_41 = tensor.insert %49 into %arg1[%48] : tensor<?xi64>
    "ta.print"(%inserted_41) : (tensor<?xi64>) -> ()
    %extracted_slice = tensor.extract_slice %arg1[%48] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%48] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %42 = arith.addi %extracted, %arg1 : i64
    %inserted_40 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %42, %inserted_40 : i64, tensor<?xi64>
  }
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = tensor.empty() : tensor<1xi64>
  %cast_38 = tensor.cast %33 : tensor<1xi64> to tensor<?xi64>
  %34 = tensor.empty(%32) : tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xf64>
  %36 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %37 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %39:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %34, %arg3 = %35, %arg4 = %36, %arg5 = %c1_i32, %arg6 = %37, %arg7 = %38) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %42 = arith.addi %arg5, %c1_i32 : i32
    %43 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_40 : i64 to index
    %46:4 = scf.for %arg8 = %44 to %45 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_41 = tensor.extract %11[%arg8] : tensor<?xi64>
      %49 = arith.index_cast %extracted_41 : i64 to index
      %50 = arith.addi %49, %c1 : index
      %extracted_42 = tensor.extract %23[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %12[%arg8] : tensor<?xf64>
      %53:4 = scf.for %arg13 = %51 to %52 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %24[%arg13] : tensor<?xi64>
        %54 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %25[%arg13] : tensor<?xf64>
        %55 = arith.mulf %extracted_44, %extracted_46 : f64
        %extracted_47 = tensor.extract %arg15[%54] : tensor<?xi32>
        %56 = arith.cmpi eq, %extracted_47, %42 : i32
        %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_48 = tensor.extract %arg14[%54] : tensor<?xf64>
          %58 = arith.addf %extracted_48, %55 : f64
          %inserted_49 = tensor.insert %58 into %arg14[%54] : tensor<?xf64>
          scf.yield %arg15, %arg16, %arg17, %inserted_49 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_48 = tensor.insert %42 into %arg15[%54] : tensor<?xi32>
          %inserted_49 = tensor.insert %extracted_45 into %arg17[%arg16] : tensor<?xi64>
          %58 = index.add %arg16, %idx1
          %inserted_50 = tensor.insert %55 into %arg14[%54] : tensor<?xf64>
          scf.yield %inserted_48, %58, %inserted_49, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %48:3 = scf.for %arg8 = %c0 to %46#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_41 = tensor.extract %47[%arg8] : tensor<?xi64>
      %49 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %46#0[%49] : tensor<?xf64>
      %inserted_43 = tensor.insert %extracted_41 into %arg10[%arg9] : tensor<?xi64>
      %50 = index.add %arg9, %idx1
      %inserted_44 = tensor.insert %extracted_42 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %50, %inserted_43, %inserted_44 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %48#0, %48#1, %48#2, %46#0, %42, %46#1, %47 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %40 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted = tensor.insert %idx-1 into %40[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%39#1) : (tensor<?xi64>) -> ()
  "ta.print"(%39#2) : (tensor<?xf64>) -> ()
  %alloc_39 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_39[%c0] : memref<1xf64>
  %dim = tensor.dim %39#2, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %39#2[%arg0] : tensor<?xf64>
    %42 = memref.load %alloc_39[%c0] : memref<1xf64>
    %43 = arith.addf %extracted, %42 : f64
    memref.store %43, %alloc_39[%c0] : memref<1xf64>
  }
  %41 = memref.load %alloc_39[%c0] : memref<1xf64>
  "ta.print"(%41) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
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
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %27 = tensor.empty(%26) : tensor<?xi64>
  %28 = tensor.empty(%22) : tensor<?xi64>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %42 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %43 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%42] : tensor<?xi64>
    %44 = arith.index_cast %extracted_40 : i64 to index
    %45 = index.add %arg0, %idx1
    %46 = arith.index_cast %45 : index to i64
    %47 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %c0) -> (index) {
      %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
      %50 = arith.index_cast %extracted_42 : i64 to index
      %51 = arith.addi %50, %c1 : index
      %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%51] : tensor<?xi64>
      %53 = arith.index_cast %extracted_44 : i64 to index
      %54 = scf.for %arg4 = %52 to %53 step %c1 iter_args(%arg5 = %arg3) -> (index) {
        %extracted_45 = tensor.extract %24[%arg4] : tensor<?xi64>
        %55 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %28[%55] : tensor<?xi64>
        %56 = arith.cmpi eq, %46, %extracted_46 : i64
        %57 = scf.if %56 -> (index) {
          scf.yield %arg5 : index
        } else {
          %58 = index.add %arg5, %idx1
          scf.yield %58 : index
        }
        scf.yield %57 : index
      }
      scf.yield %54 : index
    }
    %48 = index.add %arg0, %idx1
    %49 = arith.index_cast %47 : index to i64
    %inserted_41 = tensor.insert %49 into %arg1[%48] : tensor<?xi64>
    "ta.print"(%inserted_41) : (tensor<?xi64>) -> ()
    %extracted_slice = tensor.extract_slice %arg1[%48] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%48] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %42 = arith.addi %extracted, %arg1 : i64
    %inserted_40 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %42, %inserted_40 : i64, tensor<?xi64>
  }
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = tensor.empty() : tensor<1xi64>
  %cast_38 = tensor.cast %33 : tensor<1xi64> to tensor<?xi64>
  %34 = tensor.empty(%32) : tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xf64>
  %36 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %37 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %39:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %34, %arg3 = %35, %arg4 = %36, %arg5 = %c1_i32, %arg6 = %37, %arg7 = %38) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %42 = arith.addi %arg5, %c1_i32 : i32
    %43 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_40 : i64 to index
    %46:4 = scf.for %arg8 = %44 to %45 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_41 = tensor.extract %11[%arg8] : tensor<?xi64>
      %49 = arith.index_cast %extracted_41 : i64 to index
      %50 = arith.addi %49, %c1 : index
      %extracted_42 = tensor.extract %23[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %12[%arg8] : tensor<?xf64>
      %53:4 = scf.for %arg13 = %51 to %52 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %24[%arg13] : tensor<?xi64>
        %54 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %25[%arg13] : tensor<?xf64>
        %55 = arith.mulf %extracted_44, %extracted_46 : f64
        %extracted_47 = tensor.extract %arg15[%54] : tensor<?xi32>
        %56 = arith.cmpi eq, %extracted_47, %42 : i32
        %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_48 = tensor.extract %arg14[%54] : tensor<?xf64>
          %58 = arith.addf %extracted_48, %55 : f64
          %inserted_49 = tensor.insert %58 into %arg14[%54] : tensor<?xf64>
          scf.yield %arg15, %arg16, %arg17, %inserted_49 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_48 = tensor.insert %42 into %arg15[%54] : tensor<?xi32>
          %inserted_49 = tensor.insert %extracted_45 into %arg17[%arg16] : tensor<?xi64>
          %58 = index.add %arg16, %idx1
          %inserted_50 = tensor.insert %55 into %arg14[%54] : tensor<?xf64>
          scf.yield %inserted_48, %58, %inserted_49, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %48:3 = scf.for %arg8 = %c0 to %46#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_41 = tensor.extract %47[%arg8] : tensor<?xi64>
      %49 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %46#0[%49] : tensor<?xf64>
      %inserted_43 = tensor.insert %extracted_41 into %arg10[%arg9] : tensor<?xi64>
      %50 = index.add %arg9, %idx1
      %inserted_44 = tensor.insert %extracted_42 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %50, %inserted_43, %inserted_44 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %48#0, %48#1, %48#2, %46#0, %42, %46#1, %47 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %40 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted = tensor.insert %idx-1 into %40[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%39#1) : (tensor<?xi64>) -> ()
  "ta.print"(%39#2) : (tensor<?xf64>) -> ()
  %alloc_39 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_39[%c0] : memref<1xf64>
  %dim = tensor.dim %39#2, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %39#2[%arg0] : tensor<?xf64>
    %42 = memref.load %alloc_39[%c0] : memref<1xf64>
    %43 = arith.addf %extracted, %42 : f64
    memref.store %43, %alloc_39[%c0] : memref<1xf64>
  }
  %41 = memref.load %alloc_39[%c0] : memref<1xf64>
  "ta.print"(%41) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %27 = tensor.empty(%26) : tensor<?xi64>
    %28 = tensor.empty(%22) : tensor<?xi64>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %42 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%42] : tensor<?xi64>
      %44 = arith.index_cast %extracted_40 : i64 to index
      %45 = index.add %arg0, %idx1
      %46 = arith.index_cast %45 : index to i64
      %47 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %c0) -> (index) {
        %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
        %50 = arith.index_cast %extracted_42 : i64 to index
        %51 = arith.addi %50, %c1 : index
        %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %23[%51] : tensor<?xi64>
        %53 = arith.index_cast %extracted_44 : i64 to index
        %54 = scf.for %arg4 = %52 to %53 step %c1 iter_args(%arg5 = %arg3) -> (index) {
          %extracted_45 = tensor.extract %24[%arg4] : tensor<?xi64>
          %55 = arith.index_cast %extracted_45 : i64 to index
          %extracted_46 = tensor.extract %28[%55] : tensor<?xi64>
          %56 = arith.cmpi eq, %46, %extracted_46 : i64
          %57 = scf.if %56 -> (index) {
            scf.yield %arg5 : index
          } else {
            %58 = index.add %arg5, %idx1
            scf.yield %58 : index
          }
          scf.yield %57 : index
        }
        scf.yield %54 : index
      }
      %48 = index.add %arg0, %idx1
      %49 = arith.index_cast %47 : index to i64
      %inserted_41 = tensor.insert %49 into %arg1[%48] : tensor<?xi64>
      "ta.print"(%inserted_41) : (tensor<?xi64>) -> ()
      %extracted_slice = tensor.extract_slice %arg1[%48] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%48] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %42 = arith.addi %extracted, %arg1 : i64
      %inserted_40 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %42, %inserted_40 : i64, tensor<?xi64>
    }
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = tensor.empty() : tensor<1xi64>
    %cast_38 = tensor.cast %33 : tensor<1xi64> to tensor<?xi64>
    %34 = tensor.empty(%32) : tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xf64>
    %36 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %39:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %34, %arg3 = %35, %arg4 = %36, %arg5 = %c1_i32, %arg6 = %37, %arg7 = %38) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %42 = arith.addi %arg5, %c1_i32 : i32
      %43 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_40 : i64 to index
      %46:4 = scf.for %arg8 = %44 to %45 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_41 = tensor.extract %11[%arg8] : tensor<?xi64>
        %49 = arith.index_cast %extracted_41 : i64 to index
        %50 = arith.addi %49, %c1 : index
        %extracted_42 = tensor.extract %23[%49] : tensor<?xi64>
        %51 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %12[%arg8] : tensor<?xf64>
        %53:4 = scf.for %arg13 = %51 to %52 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_45 = tensor.extract %24[%arg13] : tensor<?xi64>
          %54 = arith.index_cast %extracted_45 : i64 to index
          %extracted_46 = tensor.extract %25[%arg13] : tensor<?xf64>
          %55 = arith.mulf %extracted_44, %extracted_46 : f64
          %extracted_47 = tensor.extract %arg15[%54] : tensor<?xi32>
          %56 = arith.cmpi eq, %extracted_47, %42 : i32
          %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_48 = tensor.extract %arg14[%54] : tensor<?xf64>
            %58 = arith.addf %extracted_48, %55 : f64
            %inserted_49 = tensor.insert %58 into %arg14[%54] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted_49 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_48 = tensor.insert %42 into %arg15[%54] : tensor<?xi32>
            %inserted_49 = tensor.insert %extracted_45 into %arg17[%arg16] : tensor<?xi64>
            %58 = index.add %arg16, %idx1
            %inserted_50 = tensor.insert %55 into %arg14[%54] : tensor<?xf64>
            scf.yield %inserted_48, %58, %inserted_49, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %48:3 = scf.for %arg8 = %c0 to %46#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_41 = tensor.extract %47[%arg8] : tensor<?xi64>
        %49 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %46#0[%49] : tensor<?xf64>
        %inserted_43 = tensor.insert %extracted_41 into %arg10[%arg9] : tensor<?xi64>
        %50 = index.add %arg9, %idx1
        %inserted_44 = tensor.insert %extracted_42 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %50, %inserted_43, %inserted_44 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %48#0, %48#1, %48#2, %46#0, %42, %46#1, %47 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %40 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %40[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%39#1) : (tensor<?xi64>) -> ()
    "ta.print"(%39#2) : (tensor<?xf64>) -> ()
    %alloc_39 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_39[%c0] : memref<1xf64>
    %dim = tensor.dim %39#2, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %39#2[%arg0] : tensor<?xf64>
      %42 = memref.load %alloc_39[%c0] : memref<1xf64>
      %43 = arith.addf %extracted, %42 : f64
      memref.store %43, %alloc_39[%c0] : memref<1xf64>
    }
    %41 = memref.load %alloc_39[%c0] : memref<1xf64>
    "ta.print"(%41) : (f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %27 = tensor.empty(%26) : tensor<?xi64>
    %28 = tensor.empty(%22) : tensor<?xi64>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %42 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%42] : tensor<?xi64>
      %44 = arith.index_cast %extracted_40 : i64 to index
      %45 = index.add %arg0, %idx1
      %46 = arith.index_cast %45 : index to i64
      %47 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %c0) -> (index) {
        %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
        %50 = arith.index_cast %extracted_42 : i64 to index
        %51 = arith.addi %50, %c1 : index
        %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %23[%51] : tensor<?xi64>
        %53 = arith.index_cast %extracted_44 : i64 to index
        %54 = scf.for %arg4 = %52 to %53 step %c1 iter_args(%arg5 = %arg3) -> (index) {
          %extracted_45 = tensor.extract %24[%arg4] : tensor<?xi64>
          %55 = arith.index_cast %extracted_45 : i64 to index
          %extracted_46 = tensor.extract %28[%55] : tensor<?xi64>
          %56 = arith.cmpi eq, %46, %extracted_46 : i64
          %57 = scf.if %56 -> (index) {
            scf.yield %arg5 : index
          } else {
            %58 = index.add %arg5, %idx1
            scf.yield %58 : index
          }
          scf.yield %57 : index
        }
        scf.yield %54 : index
      }
      %48 = index.add %arg0, %idx1
      %49 = arith.index_cast %47 : index to i64
      %inserted_41 = tensor.insert %49 into %arg1[%48] : tensor<?xi64>
      "ta.print"(%inserted_41) : (tensor<?xi64>) -> ()
      %extracted_slice = tensor.extract_slice %arg1[%48] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%48] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %42 = arith.addi %extracted, %arg1 : i64
      %inserted_40 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %42, %inserted_40 : i64, tensor<?xi64>
    }
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = tensor.empty() : tensor<1xi64>
    %cast_38 = tensor.cast %33 : tensor<1xi64> to tensor<?xi64>
    %34 = tensor.empty(%32) : tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xf64>
    %36 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %39:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %34, %arg3 = %35, %arg4 = %36, %arg5 = %c1_i32, %arg6 = %37, %arg7 = %38) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %42 = arith.addi %arg5, %c1_i32 : i32
      %43 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_40 : i64 to index
      %46:4 = scf.for %arg8 = %44 to %45 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_41 = tensor.extract %11[%arg8] : tensor<?xi64>
        %49 = arith.index_cast %extracted_41 : i64 to index
        %50 = arith.addi %49, %c1 : index
        %extracted_42 = tensor.extract %23[%49] : tensor<?xi64>
        %51 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %12[%arg8] : tensor<?xf64>
        %53:4 = scf.for %arg13 = %51 to %52 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_45 = tensor.extract %24[%arg13] : tensor<?xi64>
          %54 = arith.index_cast %extracted_45 : i64 to index
          %extracted_46 = tensor.extract %25[%arg13] : tensor<?xf64>
          %55 = arith.mulf %extracted_44, %extracted_46 : f64
          %extracted_47 = tensor.extract %arg15[%54] : tensor<?xi32>
          %56 = arith.cmpi eq, %extracted_47, %42 : i32
          %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_48 = tensor.extract %arg14[%54] : tensor<?xf64>
            %58 = arith.addf %extracted_48, %55 : f64
            %inserted_49 = tensor.insert %58 into %arg14[%54] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted_49 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_48 = tensor.insert %42 into %arg15[%54] : tensor<?xi32>
            %inserted_49 = tensor.insert %extracted_45 into %arg17[%arg16] : tensor<?xi64>
            %58 = index.add %arg16, %idx1
            %inserted_50 = tensor.insert %55 into %arg14[%54] : tensor<?xf64>
            scf.yield %inserted_48, %58, %inserted_49, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %48:3 = scf.for %arg8 = %c0 to %46#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_41 = tensor.extract %47[%arg8] : tensor<?xi64>
        %49 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %46#0[%49] : tensor<?xf64>
        %inserted_43 = tensor.insert %extracted_41 into %arg10[%arg9] : tensor<?xi64>
        %50 = index.add %arg9, %idx1
        %inserted_44 = tensor.insert %extracted_42 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %50, %inserted_43, %inserted_44 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %48#0, %48#1, %48#2, %46#0, %42, %46#1, %47 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %40 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %40[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%39#1) : (tensor<?xi64>) -> ()
    "ta.print"(%39#2) : (tensor<?xf64>) -> ()
    %alloc_39 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_39[%c0] : memref<1xf64>
    %dim = tensor.dim %39#2, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %39#2[%arg0] : tensor<?xf64>
      %42 = memref.load %alloc_39[%c0] : memref<1xf64>
      %43 = arith.addf %extracted, %42 : f64
      memref.store %43, %alloc_39[%c0] : memref<1xf64>
    }
    %41 = memref.load %alloc_39[%c0] : memref<1xf64>
    "ta.print"(%41) : (f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %27 = tensor.empty(%26) : tensor<?xi64>
    %28 = tensor.empty(%22) : tensor<?xi64>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %42 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%42] : tensor<?xi64>
      %44 = arith.index_cast %extracted_40 : i64 to index
      %45 = index.add %arg0, %idx1
      %46 = arith.index_cast %45 : index to i64
      %47 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %c0) -> (index) {
        %extracted_42 = tensor.extract %11[%arg2] : tensor<?xi64>
        %50 = arith.index_cast %extracted_42 : i64 to index
        %51 = arith.addi %50, %c1 : index
        %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %23[%51] : tensor<?xi64>
        %53 = arith.index_cast %extracted_44 : i64 to index
        %54 = scf.for %arg4 = %52 to %53 step %c1 iter_args(%arg5 = %arg3) -> (index) {
          %extracted_45 = tensor.extract %24[%arg4] : tensor<?xi64>
          %55 = arith.index_cast %extracted_45 : i64 to index
          %extracted_46 = tensor.extract %28[%55] : tensor<?xi64>
          %56 = arith.cmpi eq, %46, %extracted_46 : i64
          %57 = scf.if %56 -> (index) {
            scf.yield %arg5 : index
          } else {
            %58 = index.add %arg5, %idx1
            scf.yield %58 : index
          }
          scf.yield %57 : index
        }
        scf.yield %54 : index
      }
      %48 = index.add %arg0, %idx1
      %49 = arith.index_cast %47 : index to i64
      %inserted_41 = tensor.insert %49 into %arg1[%48] : tensor<?xi64>
      "ta.print"(%inserted_41) : (tensor<?xi64>) -> ()
      %extracted_slice = tensor.extract_slice %arg1[%48] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%48] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %42 = arith.addi %extracted, %arg1 : i64
      %inserted_40 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %42, %inserted_40 : i64, tensor<?xi64>
    }
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = tensor.empty() : tensor<1xi64>
    %cast_38 = tensor.cast %33 : tensor<1xi64> to tensor<?xi64>
    %34 = tensor.empty(%32) : tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xf64>
    %36 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %39:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %34, %arg3 = %35, %arg4 = %36, %arg5 = %c1_i32, %arg6 = %37, %arg7 = %38) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %42 = arith.addi %arg5, %c1_i32 : i32
      %43 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_40 : i64 to index
      %46:4 = scf.for %arg8 = %44 to %45 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_41 = tensor.extract %11[%arg8] : tensor<?xi64>
        %49 = arith.index_cast %extracted_41 : i64 to index
        %50 = arith.addi %49, %c1 : index
        %extracted_42 = tensor.extract %23[%49] : tensor<?xi64>
        %51 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %23[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %12[%arg8] : tensor<?xf64>
        %53:4 = scf.for %arg13 = %51 to %52 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_45 = tensor.extract %24[%arg13] : tensor<?xi64>
          %54 = arith.index_cast %extracted_45 : i64 to index
          %extracted_46 = tensor.extract %25[%arg13] : tensor<?xf64>
          %55 = arith.mulf %extracted_44, %extracted_46 : f64
          %extracted_47 = tensor.extract %arg15[%54] : tensor<?xi32>
          %56 = arith.cmpi eq, %extracted_47, %42 : i32
          %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_48 = tensor.extract %arg14[%54] : tensor<?xf64>
            %58 = arith.addf %extracted_48, %55 : f64
            %inserted_49 = tensor.insert %58 into %arg14[%54] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted_49 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_48 = tensor.insert %42 into %arg15[%54] : tensor<?xi32>
            %inserted_49 = tensor.insert %extracted_45 into %arg17[%arg16] : tensor<?xi64>
            %58 = index.add %arg16, %idx1
            %inserted_50 = tensor.insert %55 into %arg14[%54] : tensor<?xf64>
            scf.yield %inserted_48, %58, %inserted_49, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %48:3 = scf.for %arg8 = %c0 to %46#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_41 = tensor.extract %47[%arg8] : tensor<?xi64>
        %49 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %46#0[%49] : tensor<?xf64>
        %inserted_43 = tensor.insert %extracted_41 into %arg10[%arg9] : tensor<?xi64>
        %50 = index.add %arg9, %idx1
        %inserted_44 = tensor.insert %extracted_42 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %50, %inserted_43, %inserted_44 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %48#0, %48#1, %48#2, %46#0, %42, %46#1, %47 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %40 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %40[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%39#1) : (tensor<?xi64>) -> ()
    "ta.print"(%39#2) : (tensor<?xf64>) -> ()
    %alloc_39 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_39[%c0] : memref<1xf64>
    %dim = tensor.dim %39#2, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %39#2[%arg0] : tensor<?xf64>
      %42 = memref.load %alloc_39[%c0] : memref<1xf64>
      %43 = arith.addf %extracted, %42 : f64
      memref.store %43, %alloc_39[%c0] : memref<1xf64>
    }
    %41 = memref.load %alloc_39[%c0] : memref<1xf64>
    "ta.print"(%41) : (f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %31 = arith.addi %arg0, %c1 : index
      %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_8[%31] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = index.add %arg0, %idx1
      %37 = arith.index_cast %36 : index to i64
      %38 = scf.for %arg1 = %33 to %35 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %42 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = arith.addi %43, %c1 : index
        %45 = memref.load %alloc_28[%43] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_28[%44] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49 = scf.for %arg3 = %46 to %48 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %50 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %51 = arith.index_cast %50 : i64 to index
          %52 = memref.load %alloc_39[%51] : memref<?xi64>
          %53 = arith.cmpi eq, %37, %52 : i64
          %54 = scf.if %53 -> (index) {
            scf.yield %arg4 : index
          } else {
            %55 = index.add %arg4, %idx1
            scf.yield %55 : index
          }
          scf.yield %54 : index
        }
        scf.yield %49 : index
      }
      %39 = index.add %arg0, %idx1
      %40 = arith.index_cast %38 : index to i64
      %c0_49 = arith.constant 0 : index
      %dim_50 = memref.dim %alloc_38, %c0_49 : memref<?xi64>
      %alloc_51 = memref.alloc(%dim_50) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_51 : memref<?xi64> to memref<?xi64>
      memref.store %40, %alloc_51[%39] : memref<?xi64>
      %41 = bufferization.to_tensor %alloc_51 : memref<?xi64>
      "ta.print"(%41) : (tensor<?xi64>) -> ()
      %subview = memref.subview %alloc_38[%39] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_38[%39] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_52 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22:2 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
      %31 = memref.load %arg2[%arg0] : memref<?xi64>
      %32 = arith.addi %31, %arg1 : i64
      memref.store %32, %arg2[%arg0] : memref<?xi64>
      scf.yield %32, %arg2 : i64, memref<?xi64>
    }
    %23 = bufferization.to_tensor %22#1 : memref<?xi64>
    "ta.print"(%23) : (tensor<?xi64>) -> ()
    %24 = arith.index_cast %22#0 : i64 to index
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
    %25 = bufferization.to_tensor %cast_41 : memref<?xi64>
    %alloc_42 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %26:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_42, %arg3 = %alloc_43, %arg4 = %alloc_44, %arg5 = %c1_i32, %arg6 = %alloc_45, %arg7 = %alloc_46) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
      %31 = arith.addi %arg5, %c1_i32 : i32
      %32 = arith.addi %arg0, %c1 : index
      %33 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_8[%32] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37:4 = scf.for %arg8 = %34 to %36 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %39 = memref.load %alloc_10[%arg8] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_16[%arg8] : memref<?xf64>
        %47:4 = scf.for %arg13 = %43 to %45 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
          %48 = memref.load %alloc_30[%arg13] : memref<?xi64>
          %49 = arith.index_cast %48 : i64 to index
          %50 = memref.load %alloc_36[%arg13] : memref<?xf64>
          %51 = arith.mulf %46, %50 : f64
          %52 = memref.load %arg15[%49] : memref<?xi32>
          %53 = arith.cmpi eq, %52, %31 : i32
          %54:4 = scf.if %53 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
            %55 = memref.load %arg14[%49] : memref<?xf64>
            %56 = arith.addf %55, %51 : f64
            memref.store %56, %arg14[%49] : memref<?xf64>
            scf.yield %arg15, %arg16, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          } else {
            memref.store %31, %arg15[%49] : memref<?xi32>
            memref.store %48, %arg17[%arg16] : memref<?xi64>
            %55 = index.add %arg16, %idx1
            memref.store %51, %arg14[%49] : memref<?xf64>
            scf.yield %arg15, %55, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          }
          scf.yield %54#3, %54#0, %54#1, %54#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        }
        scf.yield %47#0, %47#1, %47#2, %47#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      %cast_49 = memref.cast %37#3 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_49, %idx0, %37#2) : (memref<*xi64>, index, index) -> ()
      %38:3 = scf.for %arg8 = %c0 to %37#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
        %39 = memref.load %37#3[%arg8] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %37#0[%40] : memref<?xf64>
        memref.store %39, %arg10[%arg9] : memref<?xi64>
        %42 = index.add %arg9, %idx1
        memref.store %41, %arg11[%arg9] : memref<?xf64>
        scf.yield %42, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
      }
      scf.yield %38#0, %38#1, %38#2, %37#0, %31, %37#1, %37#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
    }
    %27 = bufferization.to_tensor %26#2 : memref<?xf64>
    %28 = bufferization.to_tensor %26#1 : memref<?xi64>
    %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
    %29 = bufferization.to_tensor %alloc_47 : memref<1xindex>
    "ta.print"(%25) : (tensor<?xi64>) -> ()
    "ta.print"(%29) : (tensor<1xindex>) -> ()
    "ta.print"(%23) : (tensor<?xi64>) -> ()
    "ta.print"(%28) : (tensor<?xi64>) -> ()
    "ta.print"(%27) : (tensor<?xf64>) -> ()
    %alloc_48 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_48[%c0] : memref<1xf64>
    %dim = memref.dim %26#2, %c0 : memref<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %31 = memref.load %26#2[%arg0] : memref<?xf64>
      %32 = memref.load %alloc_48[%c0] : memref<1xf64>
      %33 = arith.addf %31, %32 : f64
      memref.store %33, %alloc_48[%c0] : memref<1xf64>
    }
    %30 = memref.load %alloc_48[%c0] : memref<1xf64>
    "ta.print"(%30) : (f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printNewline()

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printComma()

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printI64(i64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printComma()

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printF64(f64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printI64(i64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
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
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
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
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %31 = arith.addi %arg0, %c1 : index
    %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = memref.load %alloc_8[%31] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = index.add %arg0, %idx1
    %37 = arith.index_cast %36 : index to i64
    %38 = scf.for %arg1 = %33 to %35 step %c1 iter_args(%arg2 = %c0) -> (index) {
      %42 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = arith.addi %43, %c1 : index
      %45 = memref.load %alloc_28[%43] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = memref.load %alloc_28[%44] : memref<?xi64>
      %48 = arith.index_cast %47 : i64 to index
      %49 = scf.for %arg3 = %46 to %48 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %50 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %51 = arith.index_cast %50 : i64 to index
        %52 = memref.load %alloc_39[%51] : memref<?xi64>
        %53 = arith.cmpi eq, %37, %52 : i64
        %54 = scf.if %53 -> (index) {
          scf.yield %arg4 : index
        } else {
          %55 = index.add %arg4, %idx1
          scf.yield %55 : index
        }
        scf.yield %54 : index
      }
      scf.yield %49 : index
    }
    %39 = index.add %arg0, %idx1
    %40 = arith.index_cast %38 : index to i64
    %c0_49 = arith.constant 0 : index
    %dim_50 = memref.dim %alloc_38, %c0_49 : memref<?xi64>
    %alloc_51 = memref.alloc(%dim_50) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_51 : memref<?xi64> to memref<?xi64>
    memref.store %40, %alloc_51[%39] : memref<?xi64>
    %41 = bufferization.to_tensor %alloc_51 : memref<?xi64>
    "ta.print"(%41) : (tensor<?xi64>) -> ()
    %subview = memref.subview %alloc_38[%39] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_52 = memref.subview %alloc_38[%39] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_52 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21 = arith.addi %9, %c1 : index
  %22:2 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %31 = memref.load %arg2[%arg0] : memref<?xi64>
    %32 = arith.addi %31, %arg1 : i64
    memref.store %32, %arg2[%arg0] : memref<?xi64>
    scf.yield %32, %arg2 : i64, memref<?xi64>
  }
  %23 = bufferization.to_tensor %22#1 : memref<?xi64>
  "ta.print"(%23) : (tensor<?xi64>) -> ()
  %24 = arith.index_cast %22#0 : i64 to index
  %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
  %25 = bufferization.to_tensor %cast_41 : memref<?xi64>
  %alloc_42 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xi64>
  %alloc_43 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf64>
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %26:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_42, %arg3 = %alloc_43, %arg4 = %alloc_44, %arg5 = %c1_i32, %arg6 = %alloc_45, %arg7 = %alloc_46) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
    %31 = arith.addi %arg5, %c1_i32 : i32
    %32 = arith.addi %arg0, %c1 : index
    %33 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %34 = arith.index_cast %33 : i64 to index
    %35 = memref.load %alloc_8[%32] : memref<?xi64>
    %36 = arith.index_cast %35 : i64 to index
    %37:4 = scf.for %arg8 = %34 to %36 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %39 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = arith.addi %40, %c1 : index
      %42 = memref.load %alloc_28[%40] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = memref.load %alloc_28[%41] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = memref.load %alloc_16[%arg8] : memref<?xf64>
      %47:4 = scf.for %arg13 = %43 to %45 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %48 = memref.load %alloc_30[%arg13] : memref<?xi64>
        %49 = arith.index_cast %48 : i64 to index
        %50 = memref.load %alloc_36[%arg13] : memref<?xf64>
        %51 = arith.mulf %46, %50 : f64
        %52 = memref.load %arg15[%49] : memref<?xi32>
        %53 = arith.cmpi eq, %52, %31 : i32
        %54:4 = scf.if %53 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %55 = memref.load %arg14[%49] : memref<?xf64>
          %56 = arith.addf %55, %51 : f64
          memref.store %56, %arg14[%49] : memref<?xf64>
          scf.yield %arg15, %arg16, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %31, %arg15[%49] : memref<?xi32>
          memref.store %48, %arg17[%arg16] : memref<?xi64>
          %55 = index.add %arg16, %idx1
          memref.store %51, %arg14[%49] : memref<?xf64>
          scf.yield %arg15, %55, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %54#3, %54#0, %54#1, %54#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %47#0, %47#1, %47#2, %47#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    %cast_49 = memref.cast %37#3 : memref<?xi64> to memref<*xi64>
    func.call @comet_sort64(%cast_49, %idx0, %37#2) : (memref<*xi64>, index, index) -> ()
    %38:3 = scf.for %arg8 = %c0 to %37#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %39 = memref.load %37#3[%arg8] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %37#0[%40] : memref<?xf64>
      memref.store %39, %arg10[%arg9] : memref<?xi64>
      %42 = index.add %arg9, %idx1
      memref.store %41, %arg11[%arg9] : memref<?xf64>
      scf.yield %42, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %38#0, %38#1, %38#2, %37#0, %31, %37#1, %37#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
  }
  %27 = bufferization.to_tensor %26#2 : memref<?xf64>
  %28 = bufferization.to_tensor %26#1 : memref<?xi64>
  %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
  %29 = bufferization.to_tensor %alloc_47 : memref<1xindex>
  "ta.print"(%25) : (tensor<?xi64>) -> ()
  "ta.print"(%29) : (tensor<1xindex>) -> ()
  "ta.print"(%23) : (tensor<?xi64>) -> ()
  "ta.print"(%28) : (tensor<?xi64>) -> ()
  "ta.print"(%27) : (tensor<?xf64>) -> ()
  %alloc_48 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_48[%c0] : memref<1xf64>
  %dim = memref.dim %26#2, %c0 : memref<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %31 = memref.load %26#2[%arg0] : memref<?xf64>
    %32 = memref.load %alloc_48[%c0] : memref<1xf64>
    %33 = arith.addf %31, %32 : f64
    memref.store %33, %alloc_48[%c0] : memref<1xf64>
  }
  %30 = memref.load %alloc_48[%c0] : memref<1xf64>
  "ta.print"(%30) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
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
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
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
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %37 = arith.addi %arg0, %c1 : index
    %38 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %39 = arith.index_cast %38 : i64 to index
    %40 = memref.load %alloc_8[%37] : memref<?xi64>
    %41 = arith.index_cast %40 : i64 to index
    %42 = index.add %arg0, %idx1
    %43 = arith.index_cast %42 : index to i64
    %44 = scf.for %arg1 = %39 to %41 step %c1 iter_args(%arg2 = %c0) -> (index) {
      %49 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %50 = arith.index_cast %49 : i64 to index
      %51 = arith.addi %50, %c1 : index
      %52 = memref.load %alloc_28[%50] : memref<?xi64>
      %53 = arith.index_cast %52 : i64 to index
      %54 = memref.load %alloc_28[%51] : memref<?xi64>
      %55 = arith.index_cast %54 : i64 to index
      %56 = scf.for %arg3 = %53 to %55 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %57 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %58 = arith.index_cast %57 : i64 to index
        %59 = memref.load %alloc_39[%58] : memref<?xi64>
        %60 = arith.cmpi eq, %43, %59 : i64
        %61 = scf.if %60 -> (index) {
          scf.yield %arg4 : index
        } else {
          %62 = index.add %arg4, %idx1
          scf.yield %62 : index
        }
        scf.yield %61 : index
      }
      scf.yield %56 : index
    }
    %45 = index.add %arg0, %idx1
    %46 = arith.index_cast %44 : index to i64
    %c0_55 = arith.constant 0 : index
    %dim_56 = memref.dim %alloc_38, %c0_55 : memref<?xi64>
    %alloc_57 = memref.alloc(%dim_56) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_57 : memref<?xi64> to memref<?xi64>
    memref.store %46, %alloc_57[%45] : memref<?xi64>
    %47 = bufferization.to_tensor %alloc_57 : memref<?xi64>
    %48 = bufferization.to_memref %47 : memref<?xi64>
    %cast_58 = memref.cast %48 : memref<?xi64> to memref<*xi64>
    func.call @comet_print_memref_i64(%cast_58) : (memref<*xi64>) -> ()
    %subview = memref.subview %alloc_38[%45] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_59 = memref.subview %alloc_38[%45] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_59 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21 = arith.addi %9, %c1 : index
  %22:2 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %37 = memref.load %arg2[%arg0] : memref<?xi64>
    %38 = arith.addi %37, %arg1 : i64
    memref.store %38, %arg2[%arg0] : memref<?xi64>
    scf.yield %38, %arg2 : i64, memref<?xi64>
  }
  %23 = bufferization.to_tensor %22#1 : memref<?xi64>
  %24 = bufferization.to_memref %23 : memref<?xi64>
  %cast_40 = memref.cast %24 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
  %25 = arith.index_cast %22#0 : i64 to index
  %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  %cast_42 = memref.cast %alloc_41 : memref<1xi64> to memref<?xi64>
  %26 = bufferization.to_tensor %cast_42 : memref<?xi64>
  %alloc_43 = memref.alloc(%25) {alignment = 64 : i64} : memref<?xi64>
  %alloc_44 = memref.alloc(%25) {alignment = 64 : i64} : memref<?xf64>
  %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_47 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %27:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_43, %arg3 = %alloc_44, %arg4 = %alloc_45, %arg5 = %c1_i32, %arg6 = %alloc_46, %arg7 = %alloc_47) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
    %37 = arith.addi %arg5, %c1_i32 : i32
    %38 = arith.addi %arg0, %c1 : index
    %39 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %41 = memref.load %alloc_8[%38] : memref<?xi64>
    %42 = arith.index_cast %41 : i64 to index
    %43:4 = scf.for %arg8 = %40 to %42 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %45 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = arith.addi %46, %c1 : index
      %48 = memref.load %alloc_28[%46] : memref<?xi64>
      %49 = arith.index_cast %48 : i64 to index
      %50 = memref.load %alloc_28[%47] : memref<?xi64>
      %51 = arith.index_cast %50 : i64 to index
      %52 = memref.load %alloc_16[%arg8] : memref<?xf64>
      %53:4 = scf.for %arg13 = %49 to %51 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %54 = memref.load %alloc_30[%arg13] : memref<?xi64>
        %55 = arith.index_cast %54 : i64 to index
        %56 = memref.load %alloc_36[%arg13] : memref<?xf64>
        %57 = arith.mulf %52, %56 : f64
        %58 = memref.load %arg15[%55] : memref<?xi32>
        %59 = arith.cmpi eq, %58, %37 : i32
        %60:4 = scf.if %59 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %61 = memref.load %arg14[%55] : memref<?xf64>
          %62 = arith.addf %61, %57 : f64
          memref.store %62, %arg14[%55] : memref<?xf64>
          scf.yield %arg15, %arg16, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %37, %arg15[%55] : memref<?xi32>
          memref.store %54, %arg17[%arg16] : memref<?xi64>
          %61 = index.add %arg16, %idx1
          memref.store %57, %arg14[%55] : memref<?xf64>
          scf.yield %arg15, %61, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %60#3, %60#0, %60#1, %60#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %53#0, %53#1, %53#2, %53#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    %cast_55 = memref.cast %43#3 : memref<?xi64> to memref<*xi64>
    func.call @comet_sort64(%cast_55, %idx0, %43#2) : (memref<*xi64>, index, index) -> ()
    %44:3 = scf.for %arg8 = %c0 to %43#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %45 = memref.load %43#3[%arg8] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = memref.load %43#0[%46] : memref<?xf64>
      memref.store %45, %arg10[%arg9] : memref<?xi64>
      %48 = index.add %arg9, %idx1
      memref.store %47, %arg11[%arg9] : memref<?xf64>
      scf.yield %48, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %44#0, %44#1, %44#2, %43#0, %37, %43#1, %43#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
  }
  %28 = bufferization.to_tensor %27#2 : memref<?xf64>
  %29 = bufferization.to_tensor %27#1 : memref<?xi64>
  %alloc_48 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_48[%idx0] : memref<1xindex>
  %30 = bufferization.to_tensor %alloc_48 : memref<1xindex>
  %31 = bufferization.to_memref %26 : memref<?xi64>
  %cast_49 = memref.cast %31 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
  %32 = bufferization.to_memref %30 : memref<1xindex>
  %cast_50 = memref.cast %32 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_50) : (memref<*xindex>) -> ()
  %33 = bufferization.to_memref %23 : memref<?xi64>
  %cast_51 = memref.cast %33 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_51) : (memref<*xi64>) -> ()
  %34 = bufferization.to_memref %29 : memref<?xi64>
  %cast_52 = memref.cast %34 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_52) : (memref<*xi64>) -> ()
  %35 = bufferization.to_memref %28 : memref<?xf64>
  %cast_53 = memref.cast %35 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_53) : (memref<*xf64>) -> ()
  %alloc_54 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_54[%c0] : memref<1xf64>
  %dim = memref.dim %27#2, %c0 : memref<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %37 = memref.load %27#2[%arg0] : memref<?xf64>
    %38 = memref.load %alloc_54[%c0] : memref<1xf64>
    %39 = arith.addf %37, %38 : f64
    memref.store %39, %alloc_54[%c0] : memref<1xf64>
  }
  %36 = memref.load %alloc_54[%c0] : memref<1xf64>
  call @printF64(%36) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
      %33 = scf.for %arg1 = %28 to %30 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %36 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.addi %37, %c1 : index
        %39 = memref.load %alloc_28[%37] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%38] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = scf.for %arg3 = %40 to %42 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %44 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %45 = arith.index_cast %44 : i64 to index
          %46 = memref.load %alloc_39[%45] : memref<?xi64>
          %47 = arith.cmpi eq, %32, %46 : i64
          %48 = scf.if %47 -> (index) {
            scf.yield %arg4 : index
          } else {
            %49 = index.add %arg4, %idx1
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %43 : index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33 : index to i64
      %alloc_54 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_54 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_54[%34] : memref<?xi64>
      %cast_55 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_55) : (memref<*xi64>) -> ()
      %subview = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_56 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_56 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_45[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_44[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_44[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_45[%44] : memref<?xi32>
            memref.store %43, %alloc_46[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_44[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      %cast_54 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_54, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_44[%35] : memref<?xf64>
        memref.store %34, %alloc_42[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_43[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
    %cast_48 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_47 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_49) : (memref<*xindex>) -> ()
    %cast_50 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_51) : (memref<*xi64>) -> ()
    %cast_52 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_52) : (memref<*xf64>) -> ()
    %alloc_53 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_53[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_53[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_53[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_53[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
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
          %45 = memref.load %alloc_39[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_53 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_53 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_53[%31] : memref<?xi64>
      %cast_54 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_54) : (memref<*xi64>) -> ()
      %subview = memref.subview %alloc_38[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_45[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_44[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_44[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_45[%44] : memref<?xi32>
            memref.store %43, %alloc_46[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_44[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      %cast_53 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_53, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_44[%35] : memref<?xf64>
        memref.store %34, %alloc_42[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_43[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
    %cast_48 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_47 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_49) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_52[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_52[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_52[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
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
          %45 = memref.load %alloc_39[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_53 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_53 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_53[%31] : memref<?xi64>
      %cast_54 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_54) : (memref<*xi64>) -> ()
      %subview = memref.subview %alloc_38[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_45[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_44[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_44[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_45[%44] : memref<?xi32>
            memref.store %43, %alloc_46[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_44[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      %cast_53 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_53, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_44[%35] : memref<?xf64>
        memref.store %34, %alloc_42[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_43[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
    %cast_48 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_47 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_49) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_52[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_52[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_52[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
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
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
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
          %45 = memref.load %alloc_39[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_53 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_53 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_53[%31] : memref<?xi64>
      %cast_54 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_54) : (memref<*xi64>) -> ()
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_45[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_44[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_44[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_45[%44] : memref<?xi32>
            memref.store %43, %alloc_46[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_44[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      %cast_53 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_53, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_44[%35] : memref<?xf64>
        memref.store %34, %alloc_42[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_43[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
    %cast_48 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_47 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_49) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_52[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_52[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_52[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printComma()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printI64(i64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printI64(i64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printComma()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
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
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
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
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %alloc_8[%26] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = index.add %arg0, %idx1
    %32 = arith.index_cast %31 : index to i64
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
        %45 = memref.load %alloc_39[%44] : memref<?xi64>
        %46 = arith.cmpi eq, %32, %45 : i64
        %47 = scf.if %46 -> (index) {
          scf.yield %arg4 : index
        } else {
          %48 = index.add %arg4, %idx1
          scf.yield %48 : index
        }
        scf.yield %47 : index
      }
      scf.yield %42 : index
    }
    %34 = arith.index_cast %33 : index to i64
    %alloc_53 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_53 : memref<?xi64> to memref<?xi64>
    memref.store %34, %alloc_53[%31] : memref<?xi64>
    %cast_54 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
    func.call @comet_print_memref_i64(%cast_54) : (memref<*xi64>) -> ()
  }
  %21 = arith.addi %9, %c1 : index
  %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %27 = arith.addi %26, %arg1 : i64
    memref.store %27, %alloc_38[%arg0] : memref<?xi64>
    scf.yield %27 : i64
  }
  %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
  %23 = arith.index_cast %22 : i64 to index
  %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
    %26 = arith.addi %arg2, %c1_i32 : i32
    %27 = arith.addi %arg0, %c1 : index
    %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_8[%27] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
      %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = arith.addi %35, %c1 : index
      %37 = memref.load %alloc_28[%35] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = memref.load %alloc_28[%36] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
      %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
        %46 = arith.mulf %41, %45 : f64
        %47 = memref.load %alloc_45[%44] : memref<?xi32>
        %48 = arith.cmpi eq, %47, %26 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_44[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_44[%44] : memref<?xf64>
          scf.yield %arg6 : index
        } else {
          memref.store %26, %alloc_45[%44] : memref<?xi32>
          memref.store %43, %alloc_46[%arg6] : memref<?xi64>
          %50 = index.add %arg6, %idx1
          memref.store %46, %alloc_44[%44] : memref<?xf64>
          scf.yield %50 : index
        }
        scf.yield %49 : index
      }
      scf.yield %42 : index
    }
    %cast_53 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
    func.call @comet_sort64(%cast_53, %idx0, %32) : (memref<*xi64>, index, index) -> ()
    %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
      %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_44[%35] : memref<?xf64>
      memref.store %34, %alloc_42[%arg4] : memref<?xi64>
      %37 = index.add %arg4, %idx1
      memref.store %36, %alloc_43[%arg4] : memref<?xf64>
      scf.yield %37 : index
    }
    scf.yield %33, %26 : index, i32
  }
  %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
  %cast_48 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
  %cast_49 = memref.cast %alloc_47 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_49) : (memref<*xindex>) -> ()
  call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
  %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
  %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
  %alloc_52 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_52[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %23 step %c1 {
    %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
    %27 = memref.load %alloc_52[%c0] : memref<1xf64>
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_52[%c0] : memref<1xf64>
  }
  %25 = memref.load %alloc_52[%c0] : memref<1xf64>
  call @printF64(%25) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
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
  %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %alloc_8[%26] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = index.add %arg0, %idx1
    %32 = arith.index_cast %31 : index to i64
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
        %45 = memref.load %alloc_39[%44] : memref<?xi64>
        %46 = arith.cmpi eq, %32, %45 : i64
        %47 = scf.if %46 -> (index) {
          scf.yield %arg4 : index
        } else {
          %48 = index.add %arg4, %idx1
          scf.yield %48 : index
        }
        scf.yield %47 : index
      }
      scf.yield %42 : index
    }
    %34 = arith.index_cast %33 : index to i64
    %alloc_53 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_53 : memref<?xi64> to memref<?xi64>
    memref.store %34, %alloc_53[%31] : memref<?xi64>
    %cast_54 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
    func.call @comet_print_memref_i64(%cast_54) : (memref<*xi64>) -> ()
  }
  %21 = arith.addi %9, %c1 : index
  %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %27 = arith.addi %26, %arg1 : i64
    memref.store %27, %alloc_38[%arg0] : memref<?xi64>
    scf.yield %27 : i64
  }
  %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
  %23 = arith.index_cast %22 : i64 to index
  %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
    %26 = arith.addi %arg2, %c1_i32 : i32
    %27 = arith.addi %arg0, %c1 : index
    %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_8[%27] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
      %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = arith.addi %35, %c1 : index
      %37 = memref.load %alloc_28[%35] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = memref.load %alloc_28[%36] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
      %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
        %46 = arith.mulf %41, %45 : f64
        %47 = memref.load %alloc_45[%44] : memref<?xi32>
        %48 = arith.cmpi eq, %47, %26 : i32
        %49 = scf.if %48 -> (index) {
          %50 = memref.load %alloc_44[%44] : memref<?xf64>
          %51 = arith.addf %50, %46 : f64
          memref.store %51, %alloc_44[%44] : memref<?xf64>
          scf.yield %arg6 : index
        } else {
          memref.store %26, %alloc_45[%44] : memref<?xi32>
          memref.store %43, %alloc_46[%arg6] : memref<?xi64>
          %50 = index.add %arg6, %idx1
          memref.store %46, %alloc_44[%44] : memref<?xf64>
          scf.yield %50 : index
        }
        scf.yield %49 : index
      }
      scf.yield %42 : index
    }
    %cast_53 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
    func.call @comet_sort64(%cast_53, %idx0, %32) : (memref<*xi64>, index, index) -> ()
    %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
      %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_44[%35] : memref<?xf64>
      memref.store %34, %alloc_42[%arg4] : memref<?xi64>
      %37 = index.add %arg4, %idx1
      memref.store %36, %alloc_43[%arg4] : memref<?xf64>
      scf.yield %37 : index
    }
    scf.yield %33, %26 : index, i32
  }
  %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
  %cast_48 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
  %cast_49 = memref.cast %alloc_47 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_49) : (memref<*xindex>) -> ()
  call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
  %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
  %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
  %alloc_52 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_52[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %23 step %c1 {
    %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
    %27 = memref.load %alloc_52[%c0] : memref<1xf64>
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_52[%c0] : memref<1xf64>
  }
  %25 = memref.load %alloc_52[%c0] : memref<1xf64>
  call @printF64(%25) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
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
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
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
          %45 = memref.load %alloc_39[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_53 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_53 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_53[%31] : memref<?xi64>
      %cast_54 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_54) : (memref<*xi64>) -> ()
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_45[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_44[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_44[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_45[%44] : memref<?xi32>
            memref.store %43, %alloc_46[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_44[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      %cast_53 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_53, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_44[%35] : memref<?xf64>
        memref.store %34, %alloc_42[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_43[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
    %cast_48 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_47 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_49) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_52[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_52[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_52[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
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
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %c0_40 = arith.constant 0 : index
    %c1_41 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_40) to (%9) step (%c1_41) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
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
          %45 = memref.load %alloc_39[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_55 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_55 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_55[%31] : memref<?xi64>
      %cast_56 = memref.cast %alloc_55 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_56) : (memref<*xi64>) -> ()
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_42 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_42) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_44 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_45 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_47 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_47[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_46[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_46[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_47[%44] : memref<?xi32>
            memref.store %43, %alloc_48[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_46[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      %cast_55 = memref.cast %alloc_48 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_55, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_48[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_46[%35] : memref<?xf64>
        memref.store %34, %alloc_44[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_45[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_49 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_49[%idx0] : memref<1xindex>
    %cast_50 = memref.cast %alloc_43 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_49 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_51) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_42) : (memref<*xi64>) -> ()
    %cast_52 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_52) : (memref<*xi64>) -> ()
    %cast_53 = memref.cast %alloc_45 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_53) : (memref<*xf64>) -> ()
    %alloc_54 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_54[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_45[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_54[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_54[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_54[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
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
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %c0_40 = arith.constant 0 : index
    %c1_41 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_40) to (%9) step (%c1_41) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
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
          %45 = memref.load %alloc_39[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_56 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_56 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_56[%31] : memref<?xi64>
      %cast_57 = memref.cast %alloc_56 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_57) : (memref<*xi64>) -> ()
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_42 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_42) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_44 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_45 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_47 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %cast_49 = memref.cast %alloc_48 : memref<?xi64> to memref<*xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_47[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_46[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_46[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_47[%44] : memref<?xi32>
            memref.store %43, %alloc_48[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_46[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      func.call @comet_sort64(%cast_49, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_48[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_46[%35] : memref<?xf64>
        memref.store %34, %alloc_44[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_45[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_50 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_50[%idx0] : memref<1xindex>
    %cast_51 = memref.cast %alloc_43 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_51) : (memref<*xi64>) -> ()
    %cast_52 = memref.cast %alloc_50 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_52) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_42) : (memref<*xi64>) -> ()
    %cast_53 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_53) : (memref<*xi64>) -> ()
    %cast_54 = memref.cast %alloc_45 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_54) : (memref<*xf64>) -> ()
    %alloc_55 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_55[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_45[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_55[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_55[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_55[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
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
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
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
          %45 = memref.load %alloc_39[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_54 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_54 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_54[%31] : memref<?xi64>
      %cast_55 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_55) : (memref<*xi64>) -> ()
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %cast_47 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_45[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_44[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_44[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_45[%44] : memref<?xi32>
            memref.store %43, %alloc_46[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_44[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      func.call @comet_sort64(%cast_47, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_44[%35] : memref<?xf64>
        memref.store %34, %alloc_42[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_43[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_48 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_48[%idx0] : memref<1xindex>
    %cast_49 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_48 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_50) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_51) : (memref<*xi64>) -> ()
    %cast_52 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_52) : (memref<*xf64>) -> ()
    %alloc_53 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_53[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_53[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_53[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_53[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
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
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
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
          %45 = memref.load %alloc_39[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_54 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_54 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_54[%31] : memref<?xi64>
      %cast_55 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_55) : (memref<*xi64>) -> ()
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %cast_47 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_45[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_44[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_44[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_45[%44] : memref<?xi32>
            memref.store %43, %alloc_46[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_44[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      func.call @comet_sort64(%cast_47, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_44[%35] : memref<?xf64>
        memref.store %34, %alloc_42[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_43[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_48 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_48[%idx0] : memref<1xindex>
    %cast_49 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_48 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_50) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_51) : (memref<*xi64>) -> ()
    %cast_52 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_52) : (memref<*xf64>) -> ()
    %alloc_53 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_53[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_53[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_53[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_53[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}


module {
  func.func @main() {
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
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %31 : index to i64
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
          %45 = memref.load %alloc_39[%44] : memref<?xi64>
          %46 = arith.cmpi eq, %32, %45 : i64
          %47 = scf.if %46 -> (index) {
            scf.yield %arg4 : index
          } else {
            %48 = index.add %arg4, %idx1
            scf.yield %48 : index
          }
          scf.yield %47 : index
        }
        scf.yield %42 : index
      }
      %34 = arith.index_cast %33 : index to i64
      %alloc_54 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_54 : memref<?xi64> to memref<?xi64>
      memref.store %34, %alloc_54[%31] : memref<?xi64>
      %cast_55 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
      func.call @comet_print_memref_i64(%cast_55) : (memref<*xi64>) -> ()
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %26 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %27 = arith.addi %26, %arg1 : i64
      memref.store %27, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %27 : i64
    }
    %cast_40 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %23 = arith.index_cast %22 : i64 to index
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %cast_47 = memref.cast %alloc_46 : memref<?xi64> to memref<*xi64>
    %24:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %26 = arith.addi %arg2, %c1_i32 : i32
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = scf.for %arg3 = %29 to %31 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_28[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_28[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %42 = scf.for %arg5 = %38 to %40 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %43 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_45[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %26 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_44[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_44[%44] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %26, %alloc_45[%44] : memref<?xi32>
            memref.store %43, %alloc_46[%arg6] : memref<?xi64>
            %50 = index.add %arg6, %idx1
            memref.store %46, %alloc_44[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      func.call @comet_sort64(%cast_47, %idx0, %32) : (memref<*xi64>, index, index) -> ()
      %33 = scf.for %arg3 = %c0 to %32 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %34 = memref.load %alloc_46[%arg3] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_44[%35] : memref<?xf64>
        memref.store %34, %alloc_42[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_43[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %33, %26 : index, i32
    }
    %alloc_48 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_48[%idx0] : memref<1xindex>
    %cast_49 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_48 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_50) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_40) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_51) : (memref<*xi64>) -> ()
    %cast_52 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_52) : (memref<*xf64>) -> ()
    %alloc_53 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_53[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %23 step %c1 {
      %26 = memref.load %alloc_43[%arg0] : memref<?xf64>
      %27 = memref.load %alloc_53[%c0] : memref<1xf64>
      %28 = arith.addf %26, %27 : f64
      memref.store %28, %alloc_53[%c0] : memref<1xf64>
    }
    %25 = memref.load %alloc_53[%c0] : memref<1xf64>
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
  func.func private @printI64(i64)
  func.func private @printComma()
  func.func private @printNewline()
}
