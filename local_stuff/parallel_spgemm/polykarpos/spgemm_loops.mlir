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
      %41 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted : i64 to index
      %extracted_39 = tensor.extract %10[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_39 : i64 to index
      %44 = index.add %arg0, %idx1
      %45 = arith.index_cast %44 : index to i64
      %46 = scf.for %arg2 = %42 to %43 step %c1 iter_args(%arg3 = %c0) -> (index) {
        %extracted_41 = tensor.extract %11[%arg2] : tensor<?xi64>
        %48 = arith.index_cast %extracted_41 : i64 to index
        %49 = arith.addi %48, %c1 : index
        %extracted_42 = tensor.extract %23[%48] : tensor<?xi64>
        %50 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %23[%49] : tensor<?xi64>
        %51 = arith.index_cast %extracted_43 : i64 to index
        %52 = scf.for %arg4 = %50 to %51 step %c1 iter_args(%arg5 = %arg3) -> (index) {
          %extracted_44 = tensor.extract %24[%arg4] : tensor<?xi64>
          %53 = arith.index_cast %extracted_44 : i64 to index
          %extracted_45 = tensor.extract %28[%53] : tensor<?xi64>
          %54 = arith.cmpi eq, %45, %extracted_45 : i64
          %55 = scf.if %54 -> (index) {
            scf.yield %arg5 : index
          } else {
            %56 = index.add %arg5, %idx1
            scf.yield %56 : index
          }
          scf.yield %55 : index
        }
        scf.yield %52 : index
      }
      %47 = arith.index_cast %46 : index to i64
      %inserted_40 = tensor.insert %47 into %arg1[%44] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted_40[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %41 = arith.addi %extracted, %arg1 : i64
      %inserted_39 = tensor.insert %41 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %41, %inserted_39 : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = tensor.empty() : tensor<1xi64>
    %cast_38 = tensor.cast %33 : tensor<1xi64> to tensor<?xi64>
    %34 = tensor.empty(%32) : tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xf64>
    %36 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %39:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %34, %arg3 = %35, %arg4 = %36, %arg5 = %c1_i32, %arg6 = %37, %arg7 = %38) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %41 = arith.addi %arg5, %c1_i32 : i32
      %42 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %extracted_39 = tensor.extract %10[%42] : tensor<?xi64>
      %44 = arith.index_cast %extracted_39 : i64 to index
      %45:4 = scf.for %arg8 = %43 to %44 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_40 = tensor.extract %11[%arg8] : tensor<?xi64>
        %48 = arith.index_cast %extracted_40 : i64 to index
        %49 = arith.addi %48, %c1 : index
        %extracted_41 = tensor.extract %23[%48] : tensor<?xi64>
        %50 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %23[%49] : tensor<?xi64>
        %51 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %12[%arg8] : tensor<?xf64>
        %52:4 = scf.for %arg13 = %50 to %51 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_44 = tensor.extract %24[%arg13] : tensor<?xi64>
          %53 = arith.index_cast %extracted_44 : i64 to index
          %extracted_45 = tensor.extract %25[%arg13] : tensor<?xf64>
          %54 = arith.mulf %extracted_43, %extracted_45 : f64
          %extracted_46 = tensor.extract %arg15[%53] : tensor<?xi32>
          %55 = arith.cmpi eq, %extracted_46, %41 : i32
          %56:4 = scf.if %55 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_47 = tensor.extract %arg14[%53] : tensor<?xf64>
            %57 = arith.addf %extracted_47, %54 : f64
            %inserted_48 = tensor.insert %57 into %arg14[%53] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted_48 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_47 = tensor.insert %41 into %arg15[%53] : tensor<?xi32>
            %inserted_48 = tensor.insert %extracted_44 into %arg17[%arg16] : tensor<?xi64>
            %57 = index.add %arg16, %idx1
            %inserted_49 = tensor.insert %54 into %arg14[%53] : tensor<?xf64>
            scf.yield %inserted_47, %57, %inserted_48, %inserted_49 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %56#3, %56#0, %56#1, %56#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %52#0, %52#1, %52#2, %52#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %46 = "ta.TensorSortOp"(%45#3, %idx0, %45#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %47:3 = scf.for %arg8 = %c0 to %45#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_40 = tensor.extract %46[%arg8] : tensor<?xi64>
        %48 = arith.index_cast %extracted_40 : i64 to index
        %extracted_41 = tensor.extract %45#0[%48] : tensor<?xf64>
        %inserted_42 = tensor.insert %extracted_40 into %arg10[%arg9] : tensor<?xi64>
        %49 = index.add %arg9, %idx1
        %inserted_43 = tensor.insert %extracted_41 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %49, %inserted_42, %inserted_43 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %47#0, %47#1, %47#2, %45#0, %41, %45#1, %46 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %40 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %40[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%39#1) : (tensor<?xi64>) -> ()
    "ta.print"(%39#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}
