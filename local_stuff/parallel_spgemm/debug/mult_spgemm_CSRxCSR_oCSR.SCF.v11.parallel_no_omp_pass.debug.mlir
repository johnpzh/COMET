// after SparseTensorConversionPass and IndexTreeInliningPass //
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
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>  /// num of columns
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
    %43 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %10[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_41 : i64 to index
    %46:2 = scf.for %arg2 = %44 to %45 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
      %extracted_43 = tensor.extract %11[%arg2] : tensor<?xi64>
      %49 = arith.index_cast %extracted_43 : i64 to index
      %50 = arith.addi %49, %c1 : index
      %extracted_44 = tensor.extract %23[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %23[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_45 : i64 to index
      %53:2 = scf.for %arg5 = %51 to %52 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_46 = tensor.extract %24[%arg5] : tensor<?xi64>
        %54 = arith.index_cast %extracted_46 : i64 to index
        %55 = index.add %arg0, %idx1
        %56 = arith.index_cast %55 : index to i64
        %extracted_47 = tensor.extract %arg7[%54] : tensor<?xi64>
        %57 = arith.cmpi eq, %56, %extracted_47 : i64
        %58:2 = scf.if %57 -> (index, tensor<?xi64>) {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        } else {
          %inserted_48 = tensor.insert %56 into %arg7[%54] : tensor<?xi64>
          %59 = index.add %arg6, %idx1
          scf.yield %59, %inserted_48 : index, tensor<?xi64>
        }
        scf.yield %58#0, %58#1 : index, tensor<?xi64>
      }
      scf.yield %53#0, %53#1 : index, tensor<?xi64>
    }
    %47 = index.add %arg0, %idx1
    %48 = arith.index_cast %46#0 : index to i64
    %inserted_42 = tensor.insert %48 into %arg1[%47] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted_42[%47] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%47] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %43 = arith.addi %extracted, %arg1 : i64
    %inserted_41 = tensor.insert %43 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %43, %inserted_41 : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index /// num of non-zeros
  %33 = arith.index_cast %9 : index to i64
  %34 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xi64> /// crds
  %36 = tensor.empty(%32) : tensor<?xf64> /// vals
  %37 = bufferization.alloc_tensor(%22) : tensor<?xf64> /// %37 = workspace.vals; %22 = num of columns
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi32> /// %38 = workspace.mark_array;
  %39 = bufferization.alloc_tensor(%22) : tensor<?xi64> /// %39 = workspace.crds
  %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64> /// extracted: offset, %31#1: pos
    %43 = arith.index_cast %extracted : i64 to index /// %43: offset, %31#1: pos
    %44 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %31#1[%44] : tensor<?xi64>
    %45 = arith.index_cast %extracted_41 : i64 to index
    %46 = arith.subi %45, %43 : index  /// row length: pos[i + 1] - pos[i]
    %extracted_slice = tensor.extract_slice %arg1[%43] [%46] [1] : tensor<?xi64> to tensor<?xi64> /// crds_extracted_slice
    %extracted_slice_42 = tensor.extract_slice %arg2[%43] [%46] [1] : tensor<?xf64> to tensor<?xf64> /// vals_extracted_slice
    %47 = arith.addi %arg0, %c1 : index
    %extracted_43 = tensor.extract %10[%arg0] : tensor<?xi64>
    %48 = arith.index_cast %extracted_43 : i64 to index
    %extracted_44 = tensor.extract %10[%47] : tensor<?xi64>
    %49 = arith.index_cast %extracted_44 : i64 to index
    /// %arg4 = workspace.vals, %arg5 = workspace.mark_array, %arg6 = 0 (mark value???), %arg7 = workspace.crds
    %50:4 = scf.for %arg3 = %48 to %49 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
      %53 = arith.index_cast %extracted_45 : i64 to index
      %54 = arith.addi %53, %c1 : index
      %extracted_46 = tensor.extract %23[%53] : tensor<?xi64>
      %55 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %23[%54] : tensor<?xi64>
      %56 = arith.index_cast %extracted_47 : i64 to index
      /// %arg9 = workspace.vals, %arg10 = workspace.mark_array, %arg11 = (mark value), %arg12 = workspace.crds
      %57:4 = scf.for %arg8 = %55 to %56 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_48 = tensor.extract %24[%arg8] : tensor<?xi64> /// %24 = B.crds
        %58 = arith.index_cast %extracted_48 : i64 to index /// %58 = colId
        %extracted_49 = tensor.extract %12[%arg3] : tensor<?xf64> /// %extracted_49 = A_val
        %extracted_50 = tensor.extract %25[%arg8] : tensor<?xf64> /// %extracted_50 = B_val
        %59 = arith.mulf %extracted_49, %extracted_50 : f64
        %extracted_51 = tensor.extract %arg10[%58] : tensor<?xi32> /// %arg10 = workspace.mark_array
        %60 = arith.cmpi eq, %extracted_51, %c2_i32 : i32 /// !!! %c2_i32 should be the %arg11 (mark value), not static 2 !!!
        %61:4 = scf.if %60 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {  /// mark == mark_array[j]
          %extracted_52 = tensor.extract %arg9[%58] : tensor<?xf64> /// %arg9 = vals
          %62 = arith.addf %extracted_52, %59 : f64
          %inserted_53 = tensor.insert %62 into %arg9[%58] : tensor<?xf64>
          scf.yield %arg10, %arg11, %arg12, %inserted_53 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else { /// mark != mark_array[j]
          %inserted_52 = tensor.insert %c2_i32 into %arg10[%58] : tensor<?xi32> /// !!! %c2_i32 should be the %arg11 (mark value), not static 2 !!!
          %inserted_53 = tensor.insert %extracted_48 into %arg12[%arg11] : tensor<?xi64>
          %62 = index.add %arg11, %idx1
          %inserted_54 = tensor.insert %59 into %arg9[%58] : tensor<?xf64>
          scf.yield %inserted_52, %62, %inserted_53, %inserted_54 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %61#3, %61#0, %61#1, %61#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %57#0, %57#1, %57#2, %57#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    /// %50#0 = workspace.vals, %50#1 = workspace.mark_array, %50#2 = (mark value), %50#3 = workspace.crds
    %51 = "ta.TensorSortOp"(%50#3, %idx0, %50#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %52:2 = scf.for %arg3 = %c0 to %50#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_45 = tensor.extract %51[%arg3] : tensor<?xi64> /// %extracted_45 = colId
      %53 = arith.index_cast %extracted_45 : i64 to index /// %53 = colId
      %extracted_46 = tensor.extract %50#0[%53] : tensor<?xf64> /// %extracted_46 = val
      %inserted_47 = tensor.insert %extracted_45 into %arg4[%arg3] : tensor<?xi64>
      %inserted_48 = tensor.insert %extracted_46 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_47, %inserted_48 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %52#0 into %arg1[%43] [%46] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %52#1 into %arg2[%43] [%46] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %41 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%40#0) : (tensor<?xi64>) -> ()
  "ta.print"(%40#1) : (tensor<?xf64>) -> ()
  %alloc_40 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_40[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %32 step %c1 {
    %extracted = tensor.extract %40#1[%arg0] : tensor<?xf64>
    %43 = memref.load %alloc_40[%c0] : memref<1xf64>
    %44 = arith.addf %extracted, %43 : f64
    memref.store %44, %alloc_40[%c0] : memref<1xf64>
  }
  %42 = memref.load %alloc_40[%c0] : memref<1xf64>
  "ta.print"(%42) : (f64) -> ()
  return
}