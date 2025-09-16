
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %23 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %25 = index.add %9, %idx1
    %26 = tensor.empty(%25) : tensor<?xi64>
    %27 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %26) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_40 : i64 to index
      %40 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %41 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_42 : i64 to index
      %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
        %46 = arith.cmpi ult, %arg5, %42 : index
        %47 = arith.cmpi ult, %arg4, %39 : index
        %48 = arith.andi %47, %46 : i1
        scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %extracted_44 = tensor.extract %23[%arg5] : tensor<?xi64>
        %46 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %11[%arg4] : tensor<?xi64>
        %47 = arith.index_cast %extracted_45 : i64 to index
        %48 = arith.minui %47, %46 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %46 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = index.add %arg2, %idx1
          %58 = index.add %arg3, %idx1
          scf.yield %57, %58 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg4, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg5, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %44 = index.add %arg0, %idx1
      %45 = arith.index_cast %43#0 : index to i64
      %inserted_43 = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted_43[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %28 = arith.addi %9, %c1 : index
    %29:2 = scf.for %arg0 = %c1 to %28 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %27) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted_40 = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted_40 : i64, tensor<?xi64>
    }
    %30 = arith.index_cast %29#0 : i64 to index
    %31 = arith.index_cast %9 : index to i64
    %32 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %31 into %32[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %33 = tensor.empty(%30) : tensor<?xi64>
    %34 = tensor.empty(%30) : tensor<?xf64>
    %35:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %33, %arg2 = %34) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %29#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_40 = tensor.extract %29#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_40 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_41 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.addi %arg0, %c1 : index
      %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %10[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_43 : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_44 = tensor.extract %22[%arg0] : tensor<?xi64>
      %45 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %22[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_45 : i64 to index
      %47:6 = scf.while (%arg3 = %c0, %arg4 = %extracted_slice, %arg5 = %extracted_slice_41, %arg6 = %idx0, %arg7 = %42, %arg8 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %52 = arith.cmpi ult, %arg8, %46 : index
        %53 = arith.cmpi ult, %arg7, %43 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xf64>, %arg6: index, %arg7: index, %arg8: index):
        %extracted_48 = tensor.extract %23[%arg8] : tensor<?xi64>
        %52 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %11[%arg7] : tensor<?xi64>
        %53 = arith.index_cast %extracted_49 : i64 to index
        %54 = arith.minui %53, %52 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %52 : index
        %57 = arith.andi %55, %56 : i1
        %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_50 = tensor.extract %12[%arg7] : tensor<?xf64>
          %extracted_51 = tensor.extract %24[%arg8] : tensor<?xf64>
          %63 = arith.mulf %extracted_50, %extracted_51 : f64
          %64 = arith.index_cast %54 : index to i64
          %inserted_52 = tensor.insert %64 into %arg4[%arg3] : tensor<?xi64>
          %65 = index.add %arg3, %idx1
          %inserted_53 = tensor.insert %63 into %arg5[%arg3] : tensor<?xf64>
          %66 = index.add %arg6, %idx1
          scf.yield %65, %inserted_52, %inserted_53, %66 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg3, %arg4, %arg5, %arg6 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg7, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg8, %61
        scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %extracted_46 = tensor.extract %29#1[%arg0] : tensor<?xi64>
      %48 = arith.index_cast %extracted_46 : i64 to index
      %49 = arith.addi %arg0, %c1 : index
      %extracted_47 = tensor.extract %29#1[%49] : tensor<?xi64>
      %50 = arith.index_cast %extracted_47 : i64 to index
      %51 = arith.subi %50, %48 : index
      scf.forall.in_parallel {
        // Changed this :
        // ---
        // tensor.parallel_insert_slice %47#1 into %arg1[%48] [%51] [1] : tensor<?xi64> into tensor<?xi64>
        // tensor.parallel_insert_slice %47#2 into %arg2[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
        // Into this: -->
        tensor.parallel_insert_slice %47#1 into %arg1[%37] [%40] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %47#2 into %arg2[%37] [%40] [1] : tensor<?xf64> into tensor<?xf64>
        // --
      }
    }
    %36 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %36[%idx0] : tensor<1xindex>
    // "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    // "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    // "ta.print"(%29#1) : (tensor<?xi64>) -> ()
    // "ta.print"(%35#0) : (tensor<?xi64>) -> ()
    // "ta.print"(%35#1) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}