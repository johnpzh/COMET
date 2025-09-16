// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
    %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
    %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
    %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
    %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
    %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %dim = tensor.dim %22, %c0 : tensor<?xi64>
    %dim_19 = tensor.dim %23, %c0 : tensor<?xi64>
    %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %alloc_20 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
    %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
    %28 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
    %29 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
    ^bb0(%arg0: tensor<?x4xf64>):
      %30 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %arg0) -> (tensor<?x4xf64>) {
        %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
        %c1_22 = arith.constant 1 : index
        %31 = arith.addi %arg1, %c1_22 : index
        %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
        %32 = arith.index_cast %extracted : i64 to index
        %extracted_23 = tensor.extract %22[%31] : tensor<?xi64>
        %33 = arith.index_cast %extracted_23 : i64 to index
        %c1_24 = arith.constant 1 : index
        %34 = scf.for %arg3 = %32 to %33 step %c1_24 iter_args(%arg4 = %extracted_slice) -> (tensor<1x4xf64>) {
          %c0_25 = arith.constant 0 : index
          %c1_26 = arith.constant 1 : index
          %35 = scf.for %arg5 = %c0_25 to %idx4 step %c1_26 iter_args(%arg6 = %arg4) -> (tensor<1x4xf64>) {
            %idx0 = index.constant 0
            %36 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %37 = arith.index_cast %36 : i64 to index
            %38 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %39 = arith.index_cast %38 : i64 to index
            %40 = "ta.TAExtractOp"(%20, %arg3, %arg1, %37) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %extracted_27 = tensor.extract %27[%39, %arg5] : tensor<?x4xf64>
            %41 = arith.mulf %40, %extracted_27 : f64
            %extracted_28 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x4xf64>
            %42 = arith.addf %extracted_28, %41 : f64
            %inserted = tensor.insert %42 into %arg6[%idx0, %arg5] : tensor<1x4xf64>
            scf.yield %inserted : tensor<1x4xf64>
          }
          scf.yield %35 : tensor<1x4xf64>
        }
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %34 into %arg2[%arg1, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
        }
      }
      it.yield %30 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.print"(%29) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %29 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %30 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %22[%29] : tensor<?xi64>
      %31 = arith.index_cast %extracted_21 : i64 to index
      %32 = scf.for %arg3 = %30 to %31 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x4xf64>) {
        %33 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x4xf64>) {
          %34 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %35 = arith.index_cast %34 : i64 to index
          %36 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %37 = arith.index_cast %36 : i64 to index
          %38 = "ta.TAExtractOp"(%20, %arg3, %arg1, %35) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_22 = tensor.extract %25[%37, %arg5] : tensor<?x4xf64>
          %39 = arith.mulf %38, %extracted_22 : f64
          %extracted_23 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x4xf64>
          %40 = arith.addf %extracted_23, %39 : f64
          %inserted = tensor.insert %40 into %arg6[%idx0, %arg5] : tensor<1x4xf64>
          scf.yield %inserted : tensor<1x4xf64>
        }
        scf.yield %33 : tensor<1x4xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %32 into %arg2[%arg1, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      }
    }
    it.yield %28 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %29 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %30 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %22[%29] : tensor<?xi64>
      %31 = arith.index_cast %extracted_21 : i64 to index
      %32 = scf.for %arg3 = %30 to %31 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x4xf64>) {
        %33 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x4xf64>) {
          %34 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %35 = arith.index_cast %34 : i64 to index
          %36 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %37 = arith.index_cast %36 : i64 to index
          %38 = "ta.TAExtractOp"(%20, %arg3, %arg1, %35) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_22 = tensor.extract %25[%37, %arg5] : tensor<?x4xf64>
          %39 = arith.mulf %38, %extracted_22 : f64
          %extracted_23 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x4xf64>
          %40 = arith.addf %extracted_23, %39 : f64
          %inserted = tensor.insert %40 into %arg6[%idx0, %arg5] : tensor<1x4xf64>
          scf.yield %inserted : tensor<1x4xf64>
        }
        scf.yield %33 : tensor<1x4xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %32 into %arg2[%arg1, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      }
    }
    it.yield %28 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_19 = index.constant 0
  %idx0_20 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_19, %11, %idx0_20, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_21 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_21] : tensor<2xindex>
  %idx0_22 = index.constant 0
  %extracted_23 = tensor.extract %from_elements[%idx0_22] : tensor<2xindex>
  %idx1 = index.constant 1
  %extracted_24 = tensor.extract %from_elements[%idx1] : tensor<2xindex>
  %alloc_25 = memref.alloc(%extracted_24) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_25 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x4xf64>
  %alloc_26 = memref.alloc(%extracted_23) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_26 : memref<?x4xf64>)
  %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<?x4xf64>
  %23 = "it.itree"(%22) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %24 = scf.forall (%arg1) in (%extracted) shared_outs(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %25 = arith.addi %arg1, %c1 : index
      %extracted_27 = tensor.extract %15[%arg1] : tensor<?xi64>
      %26 = arith.index_cast %extracted_27 : i64 to index
      %extracted_28 = tensor.extract %15[%25] : tensor<?xi64>
      %27 = arith.index_cast %extracted_28 : i64 to index
      %28 = scf.for %arg3 = %26 to %27 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x4xf64>) {
        %29 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x4xf64>) {
          %extracted_29 = tensor.extract %16[%arg3] : tensor<?xi64>
          %30 = arith.index_cast %extracted_29 : i64 to index
          %extracted_30 = tensor.extract %16[%arg3] : tensor<?xi64>
          %31 = arith.index_cast %extracted_30 : i64 to index
          %extracted_31 = tensor.extract %19[%arg3] : tensor<?xf64>
          %extracted_32 = tensor.extract %21[%31, %arg5] : tensor<?x4xf64>
          %32 = arith.mulf %extracted_31, %extracted_32 : f64
          %extracted_33 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x4xf64>
          %33 = arith.addf %extracted_33, %32 : f64
          %inserted = tensor.insert %33 into %arg6[%idx0, %arg5] : tensor<1x4xf64>
          scf.yield %inserted : tensor<1x4xf64>
        }
        scf.yield %29 : tensor<1x4xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %28 into %arg2[%arg1, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      }
    }
    it.yield %24 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%23) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_19 = index.constant 0
  %idx0_20 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_19, %11, %idx0_20, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_21 = index.constant 0
  %idx0_22 = index.constant 0
  %idx1 = index.constant 1
  %alloc_23 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_23 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %22 = bufferization.to_tensor %alloc_24 restrict writable : memref<?x4xf64>
  %23 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %22) -> (tensor<?x4xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
    %24 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %25 = arith.index_cast %extracted : i64 to index
    %extracted_25 = tensor.extract %15[%24] : tensor<?xi64>
    %26 = arith.index_cast %extracted_25 : i64 to index
    %27 = scf.for %arg2 = %25 to %26 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
      %28 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
        %extracted_26 = tensor.extract %16[%arg2] : tensor<?xi64>
        %29 = arith.index_cast %extracted_26 : i64 to index
        %extracted_27 = tensor.extract %16[%arg2] : tensor<?xi64>
        %30 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %19[%arg2] : tensor<?xf64>
        %extracted_29 = tensor.extract %21[%30, %arg4] : tensor<?x4xf64>
        %31 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
        %32 = arith.addf %extracted_30, %31 : f64
        %inserted = tensor.insert %32 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
        scf.yield %inserted : tensor<1x4xf64>
      }
      scf.yield %28 : tensor<1x4xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %27 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
    }
  }
  "ta.print"(%23) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %16 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?x4xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
    %17 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %18 = arith.index_cast %extracted : i64 to index
    %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
    %19 = arith.index_cast %extracted_21 : i64 to index
    %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
      %21 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
        %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
        %22 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
        %extracted_24 = tensor.extract %14[%22, %arg4] : tensor<?x4xf64>
        %23 = arith.mulf %extracted_23, %extracted_24 : f64
        %extracted_25 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
        %24 = arith.addf %extracted_25, %23 : f64
        %inserted = tensor.insert %24 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
        scf.yield %inserted : tensor<1x4xf64>
      }
      scf.yield %21 : tensor<1x4xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %20 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
    }
  }
  "ta.print"(%16) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %16 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?x4xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
    %17 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %18 = arith.index_cast %extracted : i64 to index
    %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
    %19 = arith.index_cast %extracted_21 : i64 to index
    %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
      %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
      %21 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
      %22 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
        %extracted_24 = tensor.extract %14[%21, %arg4] : tensor<?x4xf64>
        %23 = arith.mulf %extracted_23, %extracted_24 : f64
        %extracted_25 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
        %24 = arith.addf %extracted_25, %23 : f64
        %inserted = tensor.insert %24 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
        scf.yield %inserted : tensor<1x4xf64>
      }
      scf.yield %22 : tensor<1x4xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %20 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
    }
  }
  "ta.print"(%16) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %16 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?x4xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
    %17 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %18 = arith.index_cast %extracted : i64 to index
    %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
    %19 = arith.index_cast %extracted_21 : i64 to index
    %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
      %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
      %21 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
      %22 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
        %extracted_24 = tensor.extract %14[%21, %arg4] : tensor<?x4xf64>
        %23 = arith.mulf %extracted_23, %extracted_24 : f64
        %extracted_25 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
        %24 = arith.addf %extracted_25, %23 : f64
        %inserted = tensor.insert %24 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
        scf.yield %inserted : tensor<1x4xf64>
      }
      scf.yield %22 : tensor<1x4xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %20 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
    }
  }
  "ta.print"(%16) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %16 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?x4xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
    %17 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %18 = arith.index_cast %extracted : i64 to index
    %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
    %19 = arith.index_cast %extracted_21 : i64 to index
    %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
      %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
      %21 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
      %22 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
        %extracted_24 = tensor.extract %14[%21, %arg4] : tensor<?x4xf64>
        %23 = arith.mulf %extracted_23, %extracted_24 : f64
        %extracted_25 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
        %24 = arith.addf %extracted_25, %23 : f64
        %inserted = tensor.insert %24 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
        scf.yield %inserted : tensor<1x4xf64>
      }
      scf.yield %22 : tensor<1x4xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %20 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
    }
  }
  "ta.print"(%16) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %16 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?x4xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %17 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %18 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
      %19 = arith.index_cast %extracted_21 : i64 to index
      %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
        %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
        %21 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
        %22 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
          %extracted_24 = tensor.extract %14[%21, %arg4] : tensor<?x4xf64>
          %23 = arith.mulf %extracted_23, %extracted_24 : f64
          %extracted_25 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
          %24 = arith.addf %extracted_25, %23 : f64
          %inserted = tensor.insert %24 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
          scf.yield %inserted : tensor<1x4xf64>
        }
        scf.yield %22 : tensor<1x4xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %20 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      }
    }
    "ta.print"(%16) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %16 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?x4xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %17 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %18 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
      %19 = arith.index_cast %extracted_21 : i64 to index
      %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
        %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
        %21 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
        %22 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
          %extracted_24 = tensor.extract %14[%21, %arg4] : tensor<?x4xf64>
          %23 = arith.mulf %extracted_23, %extracted_24 : f64
          %extracted_25 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
          %24 = arith.addf %extracted_25, %23 : f64
          %inserted = tensor.insert %24 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
          scf.yield %inserted : tensor<1x4xf64>
        }
        scf.yield %22 : tensor<1x4xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %20 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      }
    }
    "ta.print"(%16) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %16 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?x4xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %17 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %18 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
      %19 = arith.index_cast %extracted_21 : i64 to index
      %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
        %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
        %21 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
        %22 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
          %extracted_24 = tensor.extract %14[%21, %arg4] : tensor<?x4xf64>
          %23 = arith.mulf %extracted_23, %extracted_24 : f64
          %extracted_25 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
          %24 = arith.addf %extracted_25, %23 : f64
          %inserted = tensor.insert %24 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
          scf.yield %inserted : tensor<1x4xf64>
        }
        scf.yield %22 : tensor<1x4xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %20 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      }
    }
    "ta.print"(%16) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      %12 = arith.addi %arg0, %c1 : index
      %13 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %14 = arith.index_cast %13 : i64 to index
      %15 = memref.load %alloc_9[%12] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = scf.for %arg1 = %14 to %16 step %c1 iter_args(%arg2 = %subview) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
        %18 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %19 = arith.index_cast %18 : i64 to index
        %20 = memref.load %alloc_17[%arg1] : memref<?xf64>
        %21 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
          %22 = memref.load %alloc_19[%19, %arg3] : memref<?x4xf64>
          %23 = arith.mulf %20, %22 : f64
          %24 = memref.load %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
          scf.yield %arg4 : memref<1x4xf64, strided<[4, 1], offset: ?>>
        }
        scf.yield %21 : memref<1x4xf64, strided<[4, 1], offset: ?>>
      }
      %subview_21 = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      memref.copy %17, %subview_21 : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %11 = bufferization.to_tensor %alloc_20 : memref<?x4xf64>
    "ta.print"(%11) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  scf.forall (%arg0) in (%9) {
    %subview = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    %12 = arith.addi %arg0, %c1 : index
    %13 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %14 = arith.index_cast %13 : i64 to index
    %15 = memref.load %alloc_9[%12] : memref<?xi64>
    %16 = arith.index_cast %15 : i64 to index
    %17 = scf.for %arg1 = %14 to %16 step %c1 iter_args(%arg2 = %subview) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
      %18 = memref.load %alloc_11[%arg1] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_17[%arg1] : memref<?xf64>
      %21 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
        %22 = memref.load %alloc_19[%19, %arg3] : memref<?x4xf64>
        %23 = arith.mulf %20, %22 : f64
        %24 = memref.load %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        %25 = arith.addf %24, %23 : f64
        memref.store %25, %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        scf.yield %arg4 : memref<1x4xf64, strided<[4, 1], offset: ?>>
      }
      scf.yield %21 : memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %subview_21 = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    memref.copy %17, %subview_21 : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
  }
  %11 = bufferization.to_tensor %alloc_20 : memref<?x4xf64>
  "ta.print"(%11) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  scf.forall (%arg0) in (%9) {
    %subview = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    %13 = arith.addi %arg0, %c1 : index
    %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    %16 = memref.load %alloc_9[%13] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = scf.for %arg1 = %15 to %17 step %c1 iter_args(%arg2 = %subview) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
      %19 = memref.load %alloc_11[%arg1] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_17[%arg1] : memref<?xf64>
      %22 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
        %23 = memref.load %alloc_19[%20, %arg3] : memref<?x4xf64>
        %24 = arith.mulf %21, %23 : f64
        %25 = memref.load %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        %26 = arith.addf %25, %24 : f64
        memref.store %26, %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        scf.yield %arg4 : memref<1x4xf64, strided<[4, 1], offset: ?>>
      }
      scf.yield %22 : memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %subview_22 = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    memref.copy %18, %subview_22 : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
  }
  %11 = bufferization.to_tensor %alloc_20 : memref<?x4xf64>
  %12 = bufferization.to_memref %11 : memref<?x4xf64>
  %cast_21 = memref.cast %12 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %subview[%idx0, %arg2] : memref<1x4xf64, strided<[4, 1], offset: ?>>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %subview[%idx0, %arg2] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        }
      }
      %subview_22 = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      memref.copy %subview, %subview_22 : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %subview[%idx0, %arg2] : memref<1x4xf64, strided<[4, 1], offset: ?>>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %subview[%idx0, %arg2] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        }
      }
      memref.copy %subview, %subview : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_20[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      memref.copy %subview, %subview : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  scf.forall (%arg0) in (%9) {
    %11 = arith.addi %arg0, %c1 : index
    %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %13 = arith.index_cast %12 : i64 to index
    %14 = memref.load %alloc_9[%11] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    scf.for %arg1 = %13 to %15 step %c1 {
      %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
  }
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
  }
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
  }
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
  }
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
  }
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
  }
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
  }
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
  }
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
  }
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %10 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %9 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  scf.forall (%arg0) in (%9) {
    %11 = arith.addi %arg0, %c1 : index
    %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %13 = arith.index_cast %12 : i64 to index
    %14 = memref.load %alloc_9[%11] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    scf.for %arg1 = %13 to %15 step %c1 {
      %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    scf.forall (%arg0) in (%9) {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %c0_21 = arith.constant 0 : index
    %c1_22 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_21) to (%9) step (%c1_22) {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      scf.reduce 
    }
    %cast_23 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_23) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %c0_21 = arith.constant 0 : index
    %c1_22 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_21) to (%9) step (%c1_22) {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      scf.reduce 
    }
    %cast_23 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_23) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      scf.reduce 
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      scf.reduce 
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertSCFToOpenMPPass (convert-scf-to-openmp) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %11 = llvm.mlir.constant(1 : i64) : i64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          memref.alloca_scope  {
            %12 = arith.addi %arg0, %c1 : index
            %13 = memref.load %alloc_9[%arg0] : memref<?xi64>
            %14 = arith.index_cast %13 : i64 to index
            %15 = memref.load %alloc_9[%12] : memref<?xi64>
            %16 = arith.index_cast %15 : i64 to index
            scf.for %arg1 = %14 to %16 step %c1 {
              %17 = memref.load %alloc_11[%arg1] : memref<?xi64>
              %18 = arith.index_cast %17 : i64 to index
              %19 = memref.load %alloc_17[%arg1] : memref<?xf64>
              scf.for %arg2 = %c0 to %idx4 step %c1 {
                %20 = memref.load %alloc_19[%18, %arg2] : memref<?x4xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
                %23 = arith.addf %22, %21 : f64
                memref.store %23, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
              }
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          %11 = arith.addi %arg0, %c1 : index
          %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
          %13 = arith.index_cast %12 : i64 to index
          %14 = memref.load %alloc_9[%11] : memref<?xi64>
          %15 = arith.index_cast %14 : i64 to index
          scf.for %arg1 = %13 to %15 step %c1 {
            %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
            %17 = arith.index_cast %16 : i64 to index
            %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
            scf.for %arg2 = %c0 to %idx4 step %c1 {
              %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
              %22 = arith.addf %21, %20 : f64
              memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          %11 = arith.addi %arg0, %c1 : index
          %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
          %13 = arith.index_cast %12 : i64 to index
          %14 = memref.load %alloc_9[%11] : memref<?xi64>
          %15 = arith.index_cast %14 : i64 to index
          scf.for %arg1 = %13 to %15 step %c1 {
            %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
            %17 = arith.index_cast %16 : i64 to index
            %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
            scf.for %arg2 = %c0 to %idx4 step %c1 {
              %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
              %22 = arith.addf %21, %20 : f64
              memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb32
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%40: index):  // 2 preds: ^bb29, ^bb31
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb30(%42 : index)
  ^bb32:  // pred: ^bb30
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb33:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%44: index):  // 2 preds: ^bb33, ^bb38
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    cf.br ^bb36(%c0 : index)
  ^bb36(%46: index):  // 2 preds: ^bb35, ^bb37
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb36(%48 : index)
  ^bb38:  // pred: ^bb36
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb34(%49 : index)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          %50 = arith.addi %arg0, %c1 : index
          %51 = memref.load %alloc_9[%arg0] : memref<?xi64>
          %52 = arith.index_cast %51 : i64 to index
          %53 = memref.load %alloc_9[%50] : memref<?xi64>
          %54 = arith.index_cast %53 : i64 to index
          cf.br ^bb1(%52 : index)
        ^bb1(%55: index):  // 2 preds: ^bb0, ^bb5
          %56 = arith.cmpi slt, %55, %54 : index
          cf.cond_br %56, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %57 = memref.load %alloc_11[%55] : memref<?xi64>
          %58 = arith.index_cast %57 : i64 to index
          %59 = memref.load %alloc_17[%55] : memref<?xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%60: index):  // 2 preds: ^bb2, ^bb4
          %61 = arith.cmpi slt, %60, %idx4 : index
          cf.cond_br %61, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %62 = memref.load %alloc_19[%58, %60] : memref<?x4xf64>
          %63 = arith.mulf %59, %62 : f64
          %64 = memref.load %alloc_20[%arg0, %60] : memref<?x4xf64>
          %65 = arith.addf %64, %63 : f64
          memref.store %65, %alloc_20[%arg0, %60] : memref<?x4xf64>
          %66 = arith.addi %60, %c1 : index
          cf.br ^bb3(%66 : index)
        ^bb5:  // pred: ^bb3
          %67 = arith.addi %55, %c1 : index
          cf.br ^bb1(%67 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb32
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%40: index):  // 2 preds: ^bb29, ^bb31
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb30(%42 : index)
  ^bb32:  // pred: ^bb30
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb33:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%44: index):  // 2 preds: ^bb33, ^bb38
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    cf.br ^bb36(%c0 : index)
  ^bb36(%46: index):  // 2 preds: ^bb35, ^bb37
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb36(%48 : index)
  ^bb38:  // pred: ^bb36
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb34(%49 : index)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          %50 = arith.addi %arg0, %c1 : index
          %51 = memref.load %alloc_9[%arg0] : memref<?xi64>
          %52 = arith.index_cast %51 : i64 to index
          %53 = memref.load %alloc_9[%50] : memref<?xi64>
          %54 = arith.index_cast %53 : i64 to index
          cf.br ^bb1(%52 : index)
        ^bb1(%55: index):  // 2 preds: ^bb0, ^bb5
          %56 = arith.cmpi slt, %55, %54 : index
          cf.cond_br %56, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %57 = memref.load %alloc_11[%55] : memref<?xi64>
          %58 = arith.index_cast %57 : i64 to index
          %59 = memref.load %alloc_17[%55] : memref<?xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%60: index):  // 2 preds: ^bb2, ^bb4
          %61 = arith.cmpi slt, %60, %idx4 : index
          cf.cond_br %61, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %62 = memref.load %alloc_19[%58, %60] : memref<?x4xf64>
          %63 = arith.mulf %59, %62 : f64
          %64 = memref.load %alloc_20[%arg0, %60] : memref<?x4xf64>
          %65 = arith.addf %64, %63 : f64
          memref.store %65, %alloc_20[%arg0, %60] : memref<?x4xf64>
          %66 = arith.addi %60, %c1 : index
          cf.br ^bb3(%66 : index)
        ^bb5:  // pred: ^bb3
          %67 = arith.addi %55, %c1 : index
          cf.br ^bb1(%67 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %idx4 = index.constant 4
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
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  cf.br ^bb1(%c0 : index)
^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
  %12 = arith.cmpi slt, %11, %0 : index
  cf.cond_br %12, ^bb2, ^bb3
^bb2:  // pred: ^bb1
  memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
  %13 = arith.addi %11, %c1 : index
  cf.br ^bb1(%13 : index)
^bb3:  // pred: ^bb1
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  cf.br ^bb4(%c0 : index)
^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
  %15 = arith.cmpi slt, %14, %1 : index
  cf.cond_br %15, ^bb5, ^bb6
^bb5:  // pred: ^bb4
  memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb4(%16 : index)
^bb6:  // pred: ^bb4
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  cf.br ^bb7(%c0 : index)
^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
  %18 = arith.cmpi slt, %17, %2 : index
  cf.cond_br %18, ^bb8, ^bb9
^bb8:  // pred: ^bb7
  memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
  %19 = arith.addi %17, %c1 : index
  cf.br ^bb7(%19 : index)
^bb9:  // pred: ^bb7
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  cf.br ^bb10(%c0 : index)
^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
  %21 = arith.cmpi slt, %20, %3 : index
  cf.cond_br %21, ^bb11, ^bb12
^bb11:  // pred: ^bb10
  memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
  %22 = arith.addi %20, %c1 : index
  cf.br ^bb10(%22 : index)
^bb12:  // pred: ^bb10
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  cf.br ^bb13(%c0 : index)
^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
  %24 = arith.cmpi slt, %23, %4 : index
  cf.cond_br %24, ^bb14, ^bb15
^bb14:  // pred: ^bb13
  memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
  %25 = arith.addi %23, %c1 : index
  cf.br ^bb13(%25 : index)
^bb15:  // pred: ^bb13
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  cf.br ^bb16(%c0 : index)
^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
  %27 = arith.cmpi slt, %26, %5 : index
  cf.cond_br %27, ^bb17, ^bb18
^bb17:  // pred: ^bb16
  memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
  %28 = arith.addi %26, %c1 : index
  cf.br ^bb16(%28 : index)
^bb18:  // pred: ^bb16
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  cf.br ^bb19(%c0 : index)
^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
  %30 = arith.cmpi slt, %29, %6 : index
  cf.cond_br %30, ^bb20, ^bb21
^bb20:  // pred: ^bb19
  memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
  %31 = arith.addi %29, %c1 : index
  cf.br ^bb19(%31 : index)
^bb21:  // pred: ^bb19
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  cf.br ^bb22(%c0 : index)
^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
  %33 = arith.cmpi slt, %32, %7 : index
  cf.cond_br %33, ^bb23, ^bb24
^bb23:  // pred: ^bb22
  memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
  %34 = arith.addi %32, %c1 : index
  cf.br ^bb22(%34 : index)
^bb24:  // pred: ^bb22
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  cf.br ^bb25(%c0 : index)
^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
  %36 = arith.cmpi slt, %35, %8 : index
  cf.cond_br %36, ^bb26, ^bb27
^bb26:  // pred: ^bb25
  memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
  %37 = arith.addi %35, %c1 : index
  cf.br ^bb25(%37 : index)
^bb27:  // pred: ^bb25
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  cf.br ^bb28(%c0 : index)
^bb28(%38: index):  // 2 preds: ^bb27, ^bb32
  %39 = arith.cmpi slt, %38, %10 : index
  cf.cond_br %39, ^bb29, ^bb33
^bb29:  // pred: ^bb28
  cf.br ^bb30(%c0 : index)
^bb30(%40: index):  // 2 preds: ^bb29, ^bb31
  %41 = arith.cmpi slt, %40, %c4 : index
  cf.cond_br %41, ^bb31, ^bb32
^bb31:  // pred: ^bb30
  memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
  %42 = arith.addi %40, %c1 : index
  cf.br ^bb30(%42 : index)
^bb32:  // pred: ^bb30
  %43 = arith.addi %38, %c1 : index
  cf.br ^bb28(%43 : index)
^bb33:  // pred: ^bb28
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  cf.br ^bb34(%c0 : index)
^bb34(%44: index):  // 2 preds: ^bb33, ^bb38
  %45 = arith.cmpi slt, %44, %9 : index
  cf.cond_br %45, ^bb35, ^bb39
^bb35:  // pred: ^bb34
  cf.br ^bb36(%c0 : index)
^bb36(%46: index):  // 2 preds: ^bb35, ^bb37
  %47 = arith.cmpi slt, %46, %c4 : index
  cf.cond_br %47, ^bb37, ^bb38
^bb37:  // pred: ^bb36
  memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
  %48 = arith.addi %46, %c1 : index
  cf.br ^bb36(%48 : index)
^bb38:  // pred: ^bb36
  %49 = arith.addi %44, %c1 : index
  cf.br ^bb34(%49 : index)
^bb39:  // pred: ^bb34
  omp.parallel {
    omp.wsloop {
      omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
        %50 = arith.addi %arg0, %c1 : index
        %51 = memref.load %alloc_9[%arg0] : memref<?xi64>
        %52 = arith.index_cast %51 : i64 to index
        %53 = memref.load %alloc_9[%50] : memref<?xi64>
        %54 = arith.index_cast %53 : i64 to index
        cf.br ^bb1(%52 : index)
      ^bb1(%55: index):  // 2 preds: ^bb0, ^bb5
        %56 = arith.cmpi slt, %55, %54 : index
        cf.cond_br %56, ^bb2, ^bb6
      ^bb2:  // pred: ^bb1
        %57 = memref.load %alloc_11[%55] : memref<?xi64>
        %58 = arith.index_cast %57 : i64 to index
        %59 = memref.load %alloc_17[%55] : memref<?xf64>
        cf.br ^bb3(%c0 : index)
      ^bb3(%60: index):  // 2 preds: ^bb2, ^bb4
        %61 = arith.cmpi slt, %60, %idx4 : index
        cf.cond_br %61, ^bb4, ^bb5
      ^bb4:  // pred: ^bb3
        %62 = memref.load %alloc_19[%58, %60] : memref<?x4xf64>
        %63 = arith.mulf %59, %62 : f64
        %64 = memref.load %alloc_20[%arg0, %60] : memref<?x4xf64>
        %65 = arith.addf %64, %63 : f64
        memref.store %65, %alloc_20[%arg0, %60] : memref<?x4xf64>
        %66 = arith.addi %60, %c1 : index
        cf.br ^bb3(%66 : index)
      ^bb5:  // pred: ^bb3
        %67 = arith.addi %55, %c1 : index
        cf.br ^bb1(%67 : index)
      ^bb6:  // pred: ^bb1
        omp.yield
      }
      omp.terminator
    }
    omp.terminator
  }
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb32
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%40: index):  // 2 preds: ^bb29, ^bb31
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb30(%42 : index)
  ^bb32:  // pred: ^bb30
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb33:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%44: index):  // 2 preds: ^bb33, ^bb38
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    cf.br ^bb36(%c0 : index)
  ^bb36(%46: index):  // 2 preds: ^bb35, ^bb37
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb36(%48 : index)
  ^bb38:  // pred: ^bb36
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb34(%49 : index)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          %50 = arith.addi %arg0, %c1 : index
          %51 = memref.load %alloc_9[%arg0] : memref<?xi64>
          %52 = arith.index_cast %51 : i64 to index
          %53 = memref.load %alloc_9[%50] : memref<?xi64>
          %54 = arith.index_cast %53 : i64 to index
          cf.br ^bb1(%52 : index)
        ^bb1(%55: index):  // 2 preds: ^bb0, ^bb5
          %56 = arith.cmpi slt, %55, %54 : index
          cf.cond_br %56, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %57 = memref.load %alloc_11[%55] : memref<?xi64>
          %58 = arith.index_cast %57 : i64 to index
          %59 = memref.load %alloc_17[%55] : memref<?xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%60: index):  // 2 preds: ^bb2, ^bb4
          %61 = arith.cmpi slt, %60, %idx4 : index
          cf.cond_br %61, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %62 = memref.load %alloc_19[%58, %60] : memref<?x4xf64>
          %63 = arith.mulf %59, %62 : f64
          %64 = memref.load %alloc_20[%arg0, %60] : memref<?x4xf64>
          %65 = arith.addf %64, %63 : f64
          memref.store %65, %alloc_20[%arg0, %60] : memref<?x4xf64>
          %66 = arith.addi %60, %c1 : index
          cf.br ^bb3(%66 : index)
        ^bb5:  // pred: ^bb3
          %67 = arith.addi %55, %c1 : index
          cf.br ^bb1(%67 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb32
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%40: index):  // 2 preds: ^bb29, ^bb31
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb30(%42 : index)
  ^bb32:  // pred: ^bb30
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb33:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%44: index):  // 2 preds: ^bb33, ^bb38
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    cf.br ^bb36(%c0 : index)
  ^bb36(%46: index):  // 2 preds: ^bb35, ^bb37
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb36(%48 : index)
  ^bb38:  // pred: ^bb36
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb34(%49 : index)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          %50 = arith.addi %arg0, %c1 : index
          %51 = memref.load %alloc_9[%arg0] : memref<?xi64>
          %52 = arith.index_cast %51 : i64 to index
          %53 = memref.load %alloc_9[%50] : memref<?xi64>
          %54 = arith.index_cast %53 : i64 to index
          cf.br ^bb1(%52 : index)
        ^bb1(%55: index):  // 2 preds: ^bb0, ^bb5
          %56 = arith.cmpi slt, %55, %54 : index
          cf.cond_br %56, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %57 = memref.load %alloc_11[%55] : memref<?xi64>
          %58 = arith.index_cast %57 : i64 to index
          %59 = memref.load %alloc_17[%55] : memref<?xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%60: index):  // 2 preds: ^bb2, ^bb4
          %61 = arith.cmpi slt, %60, %idx4 : index
          cf.cond_br %61, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %62 = memref.load %alloc_19[%58, %60] : memref<?x4xf64>
          %63 = arith.mulf %59, %62 : f64
          %64 = memref.load %alloc_20[%arg0, %60] : memref<?x4xf64>
          %65 = arith.addf %64, %63 : f64
          memref.store %65, %alloc_20[%arg0, %60] : memref<?x4xf64>
          %66 = arith.addi %60, %c1 : index
          cf.br ^bb3(%66 : index)
        ^bb5:  // pred: ^bb3
          %67 = arith.addi %55, %c1 : index
          cf.br ^bb1(%67 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertControlFlowToLLVMPass (convert-cf-to-llvm) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %idx4 = index.constant 4
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
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    llvm.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    llvm.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    llvm.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    llvm.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    llvm.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    llvm.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    llvm.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    llvm.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    llvm.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb32
    %39 = arith.cmpi slt, %38, %10 : index
    llvm.cond_br %39, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%40: index):  // 2 preds: ^bb29, ^bb31
    %41 = arith.cmpi slt, %40, %c4 : index
    llvm.cond_br %41, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb30(%42 : index)
  ^bb32:  // pred: ^bb30
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb33:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%44: index):  // 2 preds: ^bb33, ^bb38
    %45 = arith.cmpi slt, %44, %9 : index
    llvm.cond_br %45, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    cf.br ^bb36(%c0 : index)
  ^bb36(%46: index):  // 2 preds: ^bb35, ^bb37
    %47 = arith.cmpi slt, %46, %c4 : index
    llvm.cond_br %47, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb36(%48 : index)
  ^bb38:  // pred: ^bb36
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb34(%49 : index)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%9) step (%c1) {
          %50 = arith.addi %arg0, %c1 : index
          %51 = memref.load %alloc_9[%arg0] : memref<?xi64>
          %52 = arith.index_cast %51 : i64 to index
          %53 = memref.load %alloc_9[%50] : memref<?xi64>
          %54 = arith.index_cast %53 : i64 to index
          cf.br ^bb1(%52 : index)
        ^bb1(%55: index):  // 2 preds: ^bb0, ^bb5
          %56 = arith.cmpi slt, %55, %54 : index
          llvm.cond_br %56, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %57 = memref.load %alloc_11[%55] : memref<?xi64>
          %58 = arith.index_cast %57 : i64 to index
          %59 = memref.load %alloc_17[%55] : memref<?xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%60: index):  // 2 preds: ^bb2, ^bb4
          %61 = arith.cmpi slt, %60, %idx4 : index
          llvm.cond_br %61, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %62 = memref.load %alloc_19[%58, %60] : memref<?x4xf64>
          %63 = arith.mulf %59, %62 : f64
          %64 = memref.load %alloc_20[%arg0, %60] : memref<?x4xf64>
          %65 = arith.addf %64, %63 : f64
          memref.store %65, %alloc_20[%arg0, %60] : memref<?x4xf64>
          %66 = arith.addi %60, %c1 : index
          cf.br ^bb3(%66 : index)
        ^bb5:  // pred: ^bb3
          %67 = arith.addi %55, %c1 : index
          cf.br ^bb1(%67 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %0 = builtin.unrealized_conversion_cast %c10 : index to i64
    %c9 = arith.constant 9 : index
    %1 = builtin.unrealized_conversion_cast %c9 : index to i64
    %c8 = arith.constant 8 : index
    %2 = builtin.unrealized_conversion_cast %c8 : index to i64
    %c7 = arith.constant 7 : index
    %3 = builtin.unrealized_conversion_cast %c7 : index to i64
    %c6 = arith.constant 6 : index
    %4 = builtin.unrealized_conversion_cast %c6 : index to i64
    %c5 = arith.constant 5 : index
    %5 = builtin.unrealized_conversion_cast %c5 : index to i64
    %c4 = arith.constant 4 : index
    %6 = builtin.unrealized_conversion_cast %c4 : index to i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %7 = builtin.unrealized_conversion_cast %c3 : index to i64
    %c2 = arith.constant 2 : index
    %8 = builtin.unrealized_conversion_cast %c2 : index to i64
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %9 = builtin.unrealized_conversion_cast %c1 : index to i64
    %c0 = arith.constant 0 : index
    %10 = builtin.unrealized_conversion_cast %c0 : index to i64
    %11 = llvm.mlir.constant(13 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.zero : !llvm.ptr
    %14 = llvm.getelementptr %13[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %15 = llvm.ptrtoint %14 : !llvm.ptr to i64
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr
    %17 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %11, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %12, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.alloca %24 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %23, %25 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(i64, ptr)> 
    %29 = llvm.insertvalue %25, %28[1] : !llvm.struct<(i64, ptr)> 
    %30 = builtin.unrealized_conversion_cast %29 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %31 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.getelementptr %31[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %33 = llvm.load %32 : !llvm.ptr -> i64
    %34 = builtin.unrealized_conversion_cast %33 : i64 to index
    %35 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.getelementptr %35[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %37 = llvm.load %36 : !llvm.ptr -> i64
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.getelementptr %39[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = builtin.unrealized_conversion_cast %41 : i64 to index
    %43 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.getelementptr %43[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %45 = llvm.load %44 : !llvm.ptr -> i64
    %46 = builtin.unrealized_conversion_cast %45 : i64 to index
    %47 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.getelementptr %47[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = builtin.unrealized_conversion_cast %49 : i64 to index
    %51 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.getelementptr %51[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = builtin.unrealized_conversion_cast %53 : i64 to index
    %55 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.getelementptr %55[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %57 = llvm.load %56 : !llvm.ptr -> i64
    %58 = builtin.unrealized_conversion_cast %57 : i64 to index
    %59 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %59[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %61 = llvm.load %60 : !llvm.ptr -> i64
    %62 = builtin.unrealized_conversion_cast %61 : i64 to index
    %63 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.getelementptr %63[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %65 = llvm.load %64 : !llvm.ptr -> i64
    %66 = builtin.unrealized_conversion_cast %65 : i64 to index
    %67 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%1] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %69 = llvm.load %68 : !llvm.ptr -> i64
    %70 = builtin.unrealized_conversion_cast %69 : i64 to index
    %71 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.getelementptr %71[%0] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %73 = llvm.load %72 : !llvm.ptr -> i64
    %74 = builtin.unrealized_conversion_cast %73 : i64 to index
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.zero : !llvm.ptr
    %77 = llvm.getelementptr %76[%33] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    %79 = llvm.call @malloc(%78) : (i64) -> !llvm.ptr
    %80 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %81 = llvm.insertvalue %79, %80[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.insertvalue %79, %81[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.insertvalue %83, %82[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %33, %84[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %75, %85[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%87: index):  // 2 preds: ^bb0, ^bb2
    %88 = builtin.unrealized_conversion_cast %87 : index to i64
    %89 = arith.cmpi slt, %87, %34 : index
    llvm.cond_br %89, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %90 = llvm.extractvalue %86[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.getelementptr %90[%88] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %91 : i64, !llvm.ptr
    %92 = arith.addi %87, %c1 : index
    cf.br ^bb1(%92 : index)
  ^bb3:  // pred: ^bb1
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.alloca %93 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %86, %94 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %97 = llvm.insertvalue %95, %96[0] : !llvm.struct<(i64, ptr)> 
    %98 = llvm.insertvalue %94, %97[1] : !llvm.struct<(i64, ptr)> 
    %99 = builtin.unrealized_conversion_cast %98 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.zero : !llvm.ptr
    %102 = llvm.getelementptr %101[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %103 = llvm.ptrtoint %102 : !llvm.ptr to i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr
    %105 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %106 = llvm.insertvalue %104, %105[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %37, %109[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %100, %110[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb4(%c0 : index)
  ^bb4(%112: index):  // 2 preds: ^bb3, ^bb5
    %113 = builtin.unrealized_conversion_cast %112 : index to i64
    %114 = arith.cmpi slt, %112, %38 : index
    llvm.cond_br %114, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %115 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.getelementptr %115[%113] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %116 : i64, !llvm.ptr
    %117 = arith.addi %112, %c1 : index
    cf.br ^bb4(%117 : index)
  ^bb6:  // pred: ^bb4
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.alloca %118 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %111, %119 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %122 = llvm.insertvalue %120, %121[0] : !llvm.struct<(i64, ptr)> 
    %123 = llvm.insertvalue %119, %122[1] : !llvm.struct<(i64, ptr)> 
    %124 = builtin.unrealized_conversion_cast %123 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.zero : !llvm.ptr
    %127 = llvm.getelementptr %126[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %128 = llvm.ptrtoint %127 : !llvm.ptr to i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr
    %130 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %131 = llvm.insertvalue %129, %130[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %129, %131[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.insertvalue %133, %132[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %41, %134[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %125, %135[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb7(%c0 : index)
  ^bb7(%137: index):  // 2 preds: ^bb6, ^bb8
    %138 = builtin.unrealized_conversion_cast %137 : index to i64
    %139 = arith.cmpi slt, %137, %42 : index
    llvm.cond_br %139, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %140 = llvm.extractvalue %136[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.getelementptr %140[%138] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %141 : i64, !llvm.ptr
    %142 = arith.addi %137, %c1 : index
    cf.br ^bb7(%142 : index)
  ^bb9:  // pred: ^bb7
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.alloca %143 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %136, %144 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %147 = llvm.insertvalue %145, %146[0] : !llvm.struct<(i64, ptr)> 
    %148 = llvm.insertvalue %144, %147[1] : !llvm.struct<(i64, ptr)> 
    %149 = builtin.unrealized_conversion_cast %148 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.zero : !llvm.ptr
    %152 = llvm.getelementptr %151[%45] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %153 = llvm.ptrtoint %152 : !llvm.ptr to i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr
    %155 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %156 = llvm.insertvalue %154, %155[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %154, %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.insertvalue %158, %157[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %45, %159[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.insertvalue %150, %160[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb10(%c0 : index)
  ^bb10(%162: index):  // 2 preds: ^bb9, ^bb11
    %163 = builtin.unrealized_conversion_cast %162 : index to i64
    %164 = arith.cmpi slt, %162, %46 : index
    llvm.cond_br %164, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %165 = llvm.extractvalue %161[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.getelementptr %165[%163] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %166 : i64, !llvm.ptr
    %167 = arith.addi %162, %c1 : index
    cf.br ^bb10(%167 : index)
  ^bb12:  // pred: ^bb10
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.alloca %168 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %161, %169 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %172 = llvm.insertvalue %170, %171[0] : !llvm.struct<(i64, ptr)> 
    %173 = llvm.insertvalue %169, %172[1] : !llvm.struct<(i64, ptr)> 
    %174 = builtin.unrealized_conversion_cast %173 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.zero : !llvm.ptr
    %177 = llvm.getelementptr %176[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %178 = llvm.ptrtoint %177 : !llvm.ptr to i64
    %179 = llvm.call @malloc(%178) : (i64) -> !llvm.ptr
    %180 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %181 = llvm.insertvalue %179, %180[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %49, %184[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %175, %185[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb13(%c0 : index)
  ^bb13(%187: index):  // 2 preds: ^bb12, ^bb14
    %188 = builtin.unrealized_conversion_cast %187 : index to i64
    %189 = arith.cmpi slt, %187, %50 : index
    llvm.cond_br %189, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %190 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.getelementptr %190[%188] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %191 : i64, !llvm.ptr
    %192 = arith.addi %187, %c1 : index
    cf.br ^bb13(%192 : index)
  ^bb15:  // pred: ^bb13
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.alloca %193 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %186, %194 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %197 = llvm.insertvalue %195, %196[0] : !llvm.struct<(i64, ptr)> 
    %198 = llvm.insertvalue %194, %197[1] : !llvm.struct<(i64, ptr)> 
    %199 = builtin.unrealized_conversion_cast %198 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.zero : !llvm.ptr
    %202 = llvm.getelementptr %201[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %203 = llvm.ptrtoint %202 : !llvm.ptr to i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr
    %205 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %206 = llvm.insertvalue %204, %205[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.insertvalue %204, %206[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.insertvalue %208, %207[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.insertvalue %53, %209[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %200, %210[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb16(%c0 : index)
  ^bb16(%212: index):  // 2 preds: ^bb15, ^bb17
    %213 = builtin.unrealized_conversion_cast %212 : index to i64
    %214 = arith.cmpi slt, %212, %54 : index
    llvm.cond_br %214, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %215 = llvm.extractvalue %211[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.getelementptr %215[%213] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %216 : i64, !llvm.ptr
    %217 = arith.addi %212, %c1 : index
    cf.br ^bb16(%217 : index)
  ^bb18:  // pred: ^bb16
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.alloca %218 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %211, %219 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %222 = llvm.insertvalue %220, %221[0] : !llvm.struct<(i64, ptr)> 
    %223 = llvm.insertvalue %219, %222[1] : !llvm.struct<(i64, ptr)> 
    %224 = builtin.unrealized_conversion_cast %223 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.zero : !llvm.ptr
    %227 = llvm.getelementptr %226[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %228 = llvm.ptrtoint %227 : !llvm.ptr to i64
    %229 = llvm.call @malloc(%228) : (i64) -> !llvm.ptr
    %230 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.insertvalue %57, %234[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.insertvalue %225, %235[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb19(%c0 : index)
  ^bb19(%237: index):  // 2 preds: ^bb18, ^bb20
    %238 = builtin.unrealized_conversion_cast %237 : index to i64
    %239 = arith.cmpi slt, %237, %58 : index
    llvm.cond_br %239, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %240 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.getelementptr %240[%238] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %241 : i64, !llvm.ptr
    %242 = arith.addi %237, %c1 : index
    cf.br ^bb19(%242 : index)
  ^bb21:  // pred: ^bb19
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.alloca %243 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %236, %244 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %247 = llvm.insertvalue %245, %246[0] : !llvm.struct<(i64, ptr)> 
    %248 = llvm.insertvalue %244, %247[1] : !llvm.struct<(i64, ptr)> 
    %249 = builtin.unrealized_conversion_cast %248 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.zero : !llvm.ptr
    %252 = llvm.getelementptr %251[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %253 = llvm.ptrtoint %252 : !llvm.ptr to i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr
    %255 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %256 = llvm.insertvalue %254, %255[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.insertvalue %254, %256[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.insertvalue %258, %257[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %61, %259[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.insertvalue %250, %260[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb22(%c0 : index)
  ^bb22(%262: index):  // 2 preds: ^bb21, ^bb23
    %263 = builtin.unrealized_conversion_cast %262 : index to i64
    %264 = arith.cmpi slt, %262, %62 : index
    llvm.cond_br %264, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %265 = llvm.extractvalue %261[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.getelementptr %265[%263] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %266 : i64, !llvm.ptr
    %267 = arith.addi %262, %c1 : index
    cf.br ^bb22(%267 : index)
  ^bb24:  // pred: ^bb22
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.alloca %268 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %261, %269 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %272 = llvm.insertvalue %270, %271[0] : !llvm.struct<(i64, ptr)> 
    %273 = llvm.insertvalue %269, %272[1] : !llvm.struct<(i64, ptr)> 
    %274 = builtin.unrealized_conversion_cast %273 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.zero : !llvm.ptr
    %277 = llvm.getelementptr %276[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %278 = llvm.ptrtoint %277 : !llvm.ptr to i64
    %279 = llvm.call @malloc(%278) : (i64) -> !llvm.ptr
    %280 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %281 = llvm.insertvalue %279, %280[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %65, %284[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %275, %285[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb25(%c0 : index)
  ^bb25(%287: index):  // 2 preds: ^bb24, ^bb26
    %288 = builtin.unrealized_conversion_cast %287 : index to i64
    %289 = arith.cmpi slt, %287, %66 : index
    llvm.cond_br %289, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %290 = llvm.extractvalue %286[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%288] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %291 : f64, !llvm.ptr
    %292 = arith.addi %287, %c1 : index
    cf.br ^bb25(%292 : index)
  ^bb27:  // pred: ^bb25
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.alloca %293 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %286, %294 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %297 = llvm.insertvalue %295, %296[0] : !llvm.struct<(i64, ptr)> 
    %298 = llvm.insertvalue %294, %297[1] : !llvm.struct<(i64, ptr)> 
    %299 = builtin.unrealized_conversion_cast %298 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %99, %124, %149, %174, %199, %224, %249, %274, %299, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mul %300, %73 : i64
    %303 = llvm.mlir.zero : !llvm.ptr
    %304 = llvm.getelementptr %303[%302] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %305 = llvm.ptrtoint %304 : !llvm.ptr to i64
    %306 = llvm.mlir.constant(32 : index) : i64
    %307 = llvm.add %305, %306 : i64
    %308 = llvm.call @malloc(%307) : (i64) -> !llvm.ptr
    %309 = llvm.ptrtoint %308 : !llvm.ptr to i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.sub %306, %310 : i64
    %312 = llvm.add %309, %311 : i64
    %313 = llvm.urem %312, %306  : i64
    %314 = llvm.sub %312, %313 : i64
    %315 = llvm.inttoptr %314 : i64 to !llvm.ptr
    %316 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %317 = llvm.insertvalue %308, %316[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %318 = llvm.insertvalue %315, %317[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.insertvalue %319, %318[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %321 = llvm.insertvalue %73, %320[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %322 = llvm.insertvalue %300, %321[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %323 = llvm.insertvalue %300, %322[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %324 = llvm.insertvalue %301, %323[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb28(%c0 : index)
  ^bb28(%325: index):  // 2 preds: ^bb27, ^bb32
    %326 = builtin.unrealized_conversion_cast %325 : index to i64
    %327 = arith.cmpi slt, %325, %74 : index
    llvm.cond_br %327, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%328: index):  // 2 preds: ^bb29, ^bb31
    %329 = builtin.unrealized_conversion_cast %328 : index to i64
    %330 = arith.cmpi slt, %328, %c4 : index
    llvm.cond_br %330, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %331 = llvm.extractvalue %324[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %332 = llvm.mlir.constant(4 : index) : i64
    %333 = llvm.mul %326, %332 : i64
    %334 = llvm.add %333, %329 : i64
    %335 = llvm.getelementptr %331[%334] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %335 : f64, !llvm.ptr
    %336 = arith.addi %328, %c1 : index
    cf.br ^bb30(%336 : index)
  ^bb32:  // pred: ^bb30
    %337 = arith.addi %325, %c1 : index
    cf.br ^bb28(%337 : index)
  ^bb33:  // pred: ^bb28
    %338 = llvm.mlir.constant(4 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mul %338, %69 : i64
    %341 = llvm.mlir.zero : !llvm.ptr
    %342 = llvm.getelementptr %341[%340] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %343 = llvm.ptrtoint %342 : !llvm.ptr to i64
    %344 = llvm.mlir.constant(32 : index) : i64
    %345 = llvm.add %343, %344 : i64
    %346 = llvm.call @malloc(%345) : (i64) -> !llvm.ptr
    %347 = llvm.ptrtoint %346 : !llvm.ptr to i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.sub %344, %348 : i64
    %350 = llvm.add %347, %349 : i64
    %351 = llvm.urem %350, %344  : i64
    %352 = llvm.sub %350, %351 : i64
    %353 = llvm.inttoptr %352 : i64 to !llvm.ptr
    %354 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %355 = llvm.insertvalue %346, %354[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %356 = llvm.insertvalue %353, %355[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.insertvalue %357, %356[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.insertvalue %69, %358[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %360 = llvm.insertvalue %338, %359[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %361 = llvm.insertvalue %338, %360[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.insertvalue %339, %361[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb34(%c0 : index)
  ^bb34(%363: index):  // 2 preds: ^bb33, ^bb38
    %364 = builtin.unrealized_conversion_cast %363 : index to i64
    %365 = arith.cmpi slt, %363, %70 : index
    llvm.cond_br %365, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    cf.br ^bb36(%c0 : index)
  ^bb36(%366: index):  // 2 preds: ^bb35, ^bb37
    %367 = builtin.unrealized_conversion_cast %366 : index to i64
    %368 = arith.cmpi slt, %366, %c4 : index
    llvm.cond_br %368, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %369 = llvm.extractvalue %362[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mul %364, %370 : i64
    %372 = llvm.add %371, %367 : i64
    %373 = llvm.getelementptr %369[%372] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %373 : f64, !llvm.ptr
    %374 = arith.addi %366, %c1 : index
    cf.br ^bb36(%374 : index)
  ^bb38:  // pred: ^bb36
    %375 = arith.addi %363, %c1 : index
    cf.br ^bb34(%375 : index)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%70) step (%c1) {
          %383 = builtin.unrealized_conversion_cast %arg0 : index to i64
          %384 = arith.addi %arg0, %c1 : index
          %385 = builtin.unrealized_conversion_cast %384 : index to i64
          %386 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %387 = llvm.getelementptr %386[%383] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %388 = llvm.load %387 : !llvm.ptr -> i64
          %389 = arith.index_cast %388 : i64 to index
          %390 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %391 = llvm.getelementptr %390[%385] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %392 = llvm.load %391 : !llvm.ptr -> i64
          %393 = arith.index_cast %392 : i64 to index
          cf.br ^bb1(%389 : index)
        ^bb1(%394: index):  // 2 preds: ^bb0, ^bb5
          %395 = builtin.unrealized_conversion_cast %394 : index to i64
          %396 = arith.cmpi slt, %394, %393 : index
          llvm.cond_br %396, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %397 = llvm.extractvalue %211[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %398 = llvm.getelementptr %397[%395] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %399 = llvm.load %398 : !llvm.ptr -> i64
          %400 = arith.index_cast %399 : i64 to index
          %401 = builtin.unrealized_conversion_cast %400 : index to i64
          %402 = llvm.extractvalue %286[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %403 = llvm.getelementptr %402[%395] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %404 = llvm.load %403 : !llvm.ptr -> f64
          cf.br ^bb3(%c0 : index)
        ^bb3(%405: index):  // 2 preds: ^bb2, ^bb4
          %406 = builtin.unrealized_conversion_cast %405 : index to i64
          %407 = arith.cmpi slt, %405, %idx4 : index
          llvm.cond_br %407, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %408 = llvm.extractvalue %324[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %409 = llvm.mlir.constant(4 : index) : i64
          %410 = llvm.mul %401, %409 : i64
          %411 = llvm.add %410, %406 : i64
          %412 = llvm.getelementptr %408[%411] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %413 = llvm.load %412 : !llvm.ptr -> f64
          %414 = arith.mulf %404, %413 : f64
          %415 = llvm.extractvalue %362[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %416 = llvm.mlir.constant(4 : index) : i64
          %417 = llvm.mul %383, %416 : i64
          %418 = llvm.add %417, %406 : i64
          %419 = llvm.getelementptr %415[%418] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %420 = llvm.load %419 : !llvm.ptr -> f64
          %421 = arith.addf %420, %414 : f64
          %422 = llvm.extractvalue %362[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %423 = llvm.mlir.constant(4 : index) : i64
          %424 = llvm.mul %383, %423 : i64
          %425 = llvm.add %424, %406 : i64
          %426 = llvm.getelementptr %422[%425] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %421, %426 : f64, !llvm.ptr
          %427 = arith.addi %405, %c1 : index
          cf.br ^bb3(%427 : index)
        ^bb5:  // pred: ^bb3
          %428 = arith.addi %394, %c1 : index
          cf.br ^bb1(%428 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.alloca %376 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %362, %377 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %380 = llvm.insertvalue %378, %379[0] : !llvm.struct<(i64, ptr)> 
    %381 = llvm.insertvalue %377, %380[1] : !llvm.struct<(i64, ptr)> 
    %382 = builtin.unrealized_conversion_cast %381 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%382) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(10 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = builtin.unrealized_conversion_cast %4 : index to i64
    %6 = llvm.mlir.constant(9 : index) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = builtin.unrealized_conversion_cast %7 : index to i64
    %9 = llvm.mlir.constant(8 : index) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = builtin.unrealized_conversion_cast %10 : index to i64
    %12 = llvm.mlir.constant(7 : index) : i64
    %13 = builtin.unrealized_conversion_cast %12 : i64 to index
    %14 = builtin.unrealized_conversion_cast %13 : index to i64
    %15 = llvm.mlir.constant(6 : index) : i64
    %16 = builtin.unrealized_conversion_cast %15 : i64 to index
    %17 = builtin.unrealized_conversion_cast %16 : index to i64
    %18 = llvm.mlir.constant(5 : index) : i64
    %19 = builtin.unrealized_conversion_cast %18 : i64 to index
    %20 = builtin.unrealized_conversion_cast %19 : index to i64
    %21 = llvm.mlir.constant(4 : index) : i64
    %22 = builtin.unrealized_conversion_cast %21 : i64 to index
    %23 = builtin.unrealized_conversion_cast %22 : index to i64
    %24 = llvm.mlir.constant(1 : i32) : i32
    %25 = llvm.mlir.constant(0 : i32) : i32
    %26 = llvm.mlir.constant(3 : index) : i64
    %27 = builtin.unrealized_conversion_cast %26 : i64 to index
    %28 = builtin.unrealized_conversion_cast %27 : index to i64
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = builtin.unrealized_conversion_cast %29 : i64 to index
    %31 = builtin.unrealized_conversion_cast %30 : index to i64
    %32 = llvm.mlir.constant(-1 : index) : i64
    %idx4 = index.constant 4
    %33 = builtin.unrealized_conversion_cast %idx4 : index to i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = builtin.unrealized_conversion_cast %35 : index to i64
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = builtin.unrealized_conversion_cast %38 : index to i64
    %40 = llvm.mlir.constant(13 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.zero : !llvm.ptr
    %43 = llvm.getelementptr %42[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %44 = llvm.ptrtoint %43 : !llvm.ptr to i64
    %45 = llvm.call @malloc(%44) : (i64) -> !llvm.ptr
    %46 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %40, %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %41, %51[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.alloca %53 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %52, %54 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(i64, ptr)> 
    %58 = llvm.insertvalue %54, %57[1] : !llvm.struct<(i64, ptr)> 
    %59 = llvm.extractvalue %58[0] : !llvm.struct<(i64, ptr)> 
    %60 = llvm.extractvalue %58[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%25, %37, %32, %34, %32, %59, %60, %24) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %61 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.getelementptr %61[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %63 = llvm.load %62 : !llvm.ptr -> i64
    %64 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %64[%36] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %66 = llvm.load %65 : !llvm.ptr -> i64
    %67 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%31] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %69 = llvm.load %68 : !llvm.ptr -> i64
    %70 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.getelementptr %70[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %72 = llvm.load %71 : !llvm.ptr -> i64
    %73 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.getelementptr %73[%23] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %75 = llvm.load %74 : !llvm.ptr -> i64
    %76 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.getelementptr %76[%20] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %78 = llvm.load %77 : !llvm.ptr -> i64
    %79 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.getelementptr %79[%17] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %81 = llvm.load %80 : !llvm.ptr -> i64
    %82 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.getelementptr %82[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %84 = llvm.load %83 : !llvm.ptr -> i64
    %85 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.getelementptr %85[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %87 = llvm.load %86 : !llvm.ptr -> i64
    %88 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.getelementptr %88[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %90 = llvm.load %89 : !llvm.ptr -> i64
    %91 = builtin.unrealized_conversion_cast %90 : i64 to index
    %92 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.getelementptr %92[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %94 = llvm.load %93 : !llvm.ptr -> i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.zero : !llvm.ptr
    %97 = llvm.getelementptr %96[%63] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %98 = llvm.ptrtoint %97 : !llvm.ptr to i64
    %99 = llvm.call @malloc(%98) : (i64) -> !llvm.ptr
    %100 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %101 = llvm.insertvalue %99, %100[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.insertvalue %63, %104[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %95, %105[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%37 : i64)
  ^bb1(%107: i64):  // 2 preds: ^bb0, ^bb2
    %108 = builtin.unrealized_conversion_cast %107 : i64 to index
    %109 = builtin.unrealized_conversion_cast %108 : index to i64
    %110 = llvm.icmp "slt" %107, %63 : i64
    llvm.cond_br %110, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %111 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.getelementptr %111[%109] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %112 : i64, !llvm.ptr
    %113 = llvm.add %107, %34 : i64
    llvm.br ^bb1(%113 : i64)
  ^bb3:  // pred: ^bb1
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.alloca %114 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %106, %115 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %118 = llvm.insertvalue %116, %117[0] : !llvm.struct<(i64, ptr)> 
    %119 = llvm.insertvalue %115, %118[1] : !llvm.struct<(i64, ptr)> 
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.zero : !llvm.ptr
    %122 = llvm.getelementptr %121[%66] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %123 = llvm.ptrtoint %122 : !llvm.ptr to i64
    %124 = llvm.call @malloc(%123) : (i64) -> !llvm.ptr
    %125 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %126 = llvm.insertvalue %124, %125[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %127 = llvm.insertvalue %124, %126[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.insertvalue %128, %127[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.insertvalue %66, %129[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %120, %130[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%37 : i64)
  ^bb4(%132: i64):  // 2 preds: ^bb3, ^bb5
    %133 = builtin.unrealized_conversion_cast %132 : i64 to index
    %134 = builtin.unrealized_conversion_cast %133 : index to i64
    %135 = llvm.icmp "slt" %132, %66 : i64
    llvm.cond_br %135, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %136 = llvm.extractvalue %131[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.getelementptr %136[%134] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %137 : i64, !llvm.ptr
    %138 = llvm.add %132, %34 : i64
    llvm.br ^bb4(%138 : i64)
  ^bb6:  // pred: ^bb4
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.alloca %139 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %131, %140 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %143 = llvm.insertvalue %141, %142[0] : !llvm.struct<(i64, ptr)> 
    %144 = llvm.insertvalue %140, %143[1] : !llvm.struct<(i64, ptr)> 
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.zero : !llvm.ptr
    %147 = llvm.getelementptr %146[%69] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %148 = llvm.ptrtoint %147 : !llvm.ptr to i64
    %149 = llvm.call @malloc(%148) : (i64) -> !llvm.ptr
    %150 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %151 = llvm.insertvalue %149, %150[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %69, %154[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %145, %155[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%37 : i64)
  ^bb7(%157: i64):  // 2 preds: ^bb6, ^bb8
    %158 = builtin.unrealized_conversion_cast %157 : i64 to index
    %159 = builtin.unrealized_conversion_cast %158 : index to i64
    %160 = llvm.icmp "slt" %157, %69 : i64
    llvm.cond_br %160, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %161 = llvm.extractvalue %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.getelementptr %161[%159] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %162 : i64, !llvm.ptr
    %163 = llvm.add %157, %34 : i64
    llvm.br ^bb7(%163 : i64)
  ^bb9:  // pred: ^bb7
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.alloca %164 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %156, %165 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %168 = llvm.insertvalue %166, %167[0] : !llvm.struct<(i64, ptr)> 
    %169 = llvm.insertvalue %165, %168[1] : !llvm.struct<(i64, ptr)> 
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.zero : !llvm.ptr
    %172 = llvm.getelementptr %171[%72] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %173 = llvm.ptrtoint %172 : !llvm.ptr to i64
    %174 = llvm.call @malloc(%173) : (i64) -> !llvm.ptr
    %175 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %176 = llvm.insertvalue %174, %175[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %174, %176[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.insertvalue %178, %177[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %72, %179[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.insertvalue %170, %180[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%37 : i64)
  ^bb10(%182: i64):  // 2 preds: ^bb9, ^bb11
    %183 = builtin.unrealized_conversion_cast %182 : i64 to index
    %184 = builtin.unrealized_conversion_cast %183 : index to i64
    %185 = llvm.icmp "slt" %182, %72 : i64
    llvm.cond_br %185, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %186 = llvm.extractvalue %181[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.getelementptr %186[%184] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %187 : i64, !llvm.ptr
    %188 = llvm.add %182, %34 : i64
    llvm.br ^bb10(%188 : i64)
  ^bb12:  // pred: ^bb10
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.alloca %189 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %181, %190 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %193 = llvm.insertvalue %191, %192[0] : !llvm.struct<(i64, ptr)> 
    %194 = llvm.insertvalue %190, %193[1] : !llvm.struct<(i64, ptr)> 
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.zero : !llvm.ptr
    %197 = llvm.getelementptr %196[%75] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %198 = llvm.ptrtoint %197 : !llvm.ptr to i64
    %199 = llvm.call @malloc(%198) : (i64) -> !llvm.ptr
    %200 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %201 = llvm.insertvalue %199, %200[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %199, %201[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.insertvalue %203, %202[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.insertvalue %75, %204[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.insertvalue %195, %205[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%37 : i64)
  ^bb13(%207: i64):  // 2 preds: ^bb12, ^bb14
    %208 = builtin.unrealized_conversion_cast %207 : i64 to index
    %209 = builtin.unrealized_conversion_cast %208 : index to i64
    %210 = llvm.icmp "slt" %207, %75 : i64
    llvm.cond_br %210, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %211 = llvm.extractvalue %206[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.getelementptr %211[%209] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %212 : i64, !llvm.ptr
    %213 = llvm.add %207, %34 : i64
    llvm.br ^bb13(%213 : i64)
  ^bb15:  // pred: ^bb13
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.alloca %214 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %206, %215 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %218 = llvm.insertvalue %216, %217[0] : !llvm.struct<(i64, ptr)> 
    %219 = llvm.insertvalue %215, %218[1] : !llvm.struct<(i64, ptr)> 
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.zero : !llvm.ptr
    %222 = llvm.getelementptr %221[%78] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %223 = llvm.ptrtoint %222 : !llvm.ptr to i64
    %224 = llvm.call @malloc(%223) : (i64) -> !llvm.ptr
    %225 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %226 = llvm.insertvalue %224, %225[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.insertvalue %224, %226[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.insertvalue %228, %227[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %78, %229[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.insertvalue %220, %230[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%37 : i64)
  ^bb16(%232: i64):  // 2 preds: ^bb15, ^bb17
    %233 = builtin.unrealized_conversion_cast %232 : i64 to index
    %234 = builtin.unrealized_conversion_cast %233 : index to i64
    %235 = llvm.icmp "slt" %232, %78 : i64
    llvm.cond_br %235, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %236 = llvm.extractvalue %231[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.getelementptr %236[%234] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %237 : i64, !llvm.ptr
    %238 = llvm.add %232, %34 : i64
    llvm.br ^bb16(%238 : i64)
  ^bb18:  // pred: ^bb16
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.alloca %239 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %231, %240 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %243 = llvm.insertvalue %241, %242[0] : !llvm.struct<(i64, ptr)> 
    %244 = llvm.insertvalue %240, %243[1] : !llvm.struct<(i64, ptr)> 
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.zero : !llvm.ptr
    %247 = llvm.getelementptr %246[%81] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %248 = llvm.ptrtoint %247 : !llvm.ptr to i64
    %249 = llvm.call @malloc(%248) : (i64) -> !llvm.ptr
    %250 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %251 = llvm.insertvalue %249, %250[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.insertvalue %249, %251[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.insertvalue %253, %252[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %81, %254[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.insertvalue %245, %255[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%37 : i64)
  ^bb19(%257: i64):  // 2 preds: ^bb18, ^bb20
    %258 = builtin.unrealized_conversion_cast %257 : i64 to index
    %259 = builtin.unrealized_conversion_cast %258 : index to i64
    %260 = llvm.icmp "slt" %257, %81 : i64
    llvm.cond_br %260, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %261 = llvm.extractvalue %256[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%259] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %262 : i64, !llvm.ptr
    %263 = llvm.add %257, %34 : i64
    llvm.br ^bb19(%263 : i64)
  ^bb21:  // pred: ^bb19
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.alloca %264 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %256, %265 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %268 = llvm.insertvalue %266, %267[0] : !llvm.struct<(i64, ptr)> 
    %269 = llvm.insertvalue %265, %268[1] : !llvm.struct<(i64, ptr)> 
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.zero : !llvm.ptr
    %272 = llvm.getelementptr %271[%84] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %273 = llvm.ptrtoint %272 : !llvm.ptr to i64
    %274 = llvm.call @malloc(%273) : (i64) -> !llvm.ptr
    %275 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %276 = llvm.insertvalue %274, %275[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.insertvalue %274, %276[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.insertvalue %278, %277[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.insertvalue %84, %279[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.insertvalue %270, %280[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%37 : i64)
  ^bb22(%282: i64):  // 2 preds: ^bb21, ^bb23
    %283 = builtin.unrealized_conversion_cast %282 : i64 to index
    %284 = builtin.unrealized_conversion_cast %283 : index to i64
    %285 = llvm.icmp "slt" %282, %84 : i64
    llvm.cond_br %285, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %286 = llvm.extractvalue %281[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.getelementptr %286[%284] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %287 : i64, !llvm.ptr
    %288 = llvm.add %282, %34 : i64
    llvm.br ^bb22(%288 : i64)
  ^bb24:  // pred: ^bb22
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.alloca %289 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %281, %290 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %293 = llvm.insertvalue %291, %292[0] : !llvm.struct<(i64, ptr)> 
    %294 = llvm.insertvalue %290, %293[1] : !llvm.struct<(i64, ptr)> 
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.zero : !llvm.ptr
    %297 = llvm.getelementptr %296[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %298 = llvm.ptrtoint %297 : !llvm.ptr to i64
    %299 = llvm.call @malloc(%298) : (i64) -> !llvm.ptr
    %300 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %301 = llvm.insertvalue %299, %300[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.insertvalue %299, %301[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.insertvalue %303, %302[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %87, %304[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %295, %305[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%37 : i64)
  ^bb25(%307: i64):  // 2 preds: ^bb24, ^bb26
    %308 = builtin.unrealized_conversion_cast %307 : i64 to index
    %309 = builtin.unrealized_conversion_cast %308 : index to i64
    %310 = llvm.icmp "slt" %307, %87 : i64
    llvm.cond_br %310, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %311 = llvm.extractvalue %306[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %312 = llvm.getelementptr %311[%309] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %312 : f64, !llvm.ptr
    %313 = llvm.add %307, %34 : i64
    llvm.br ^bb25(%313 : i64)
  ^bb27:  // pred: ^bb25
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.alloca %314 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %306, %315 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %318 = llvm.insertvalue %316, %317[0] : !llvm.struct<(i64, ptr)> 
    %319 = llvm.insertvalue %315, %318[1] : !llvm.struct<(i64, ptr)> 
    %320 = llvm.extractvalue %119[0] : !llvm.struct<(i64, ptr)> 
    %321 = llvm.extractvalue %119[1] : !llvm.struct<(i64, ptr)> 
    %322 = llvm.extractvalue %144[0] : !llvm.struct<(i64, ptr)> 
    %323 = llvm.extractvalue %144[1] : !llvm.struct<(i64, ptr)> 
    %324 = llvm.extractvalue %169[0] : !llvm.struct<(i64, ptr)> 
    %325 = llvm.extractvalue %169[1] : !llvm.struct<(i64, ptr)> 
    %326 = llvm.extractvalue %194[0] : !llvm.struct<(i64, ptr)> 
    %327 = llvm.extractvalue %194[1] : !llvm.struct<(i64, ptr)> 
    %328 = llvm.extractvalue %219[0] : !llvm.struct<(i64, ptr)> 
    %329 = llvm.extractvalue %219[1] : !llvm.struct<(i64, ptr)> 
    %330 = llvm.extractvalue %244[0] : !llvm.struct<(i64, ptr)> 
    %331 = llvm.extractvalue %244[1] : !llvm.struct<(i64, ptr)> 
    %332 = llvm.extractvalue %269[0] : !llvm.struct<(i64, ptr)> 
    %333 = llvm.extractvalue %269[1] : !llvm.struct<(i64, ptr)> 
    %334 = llvm.extractvalue %294[0] : !llvm.struct<(i64, ptr)> 
    %335 = llvm.extractvalue %294[1] : !llvm.struct<(i64, ptr)> 
    %336 = llvm.extractvalue %319[0] : !llvm.struct<(i64, ptr)> 
    %337 = llvm.extractvalue %319[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%25, %37, %32, %34, %32, %320, %321, %322, %323, %324, %325, %326, %327, %328, %329, %330, %331, %332, %333, %334, %335, %336, %337, %24) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %338 = llvm.mlir.constant(4 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mul %338, %94 : i64
    %341 = llvm.mlir.zero : !llvm.ptr
    %342 = llvm.getelementptr %341[%340] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %343 = llvm.ptrtoint %342 : !llvm.ptr to i64
    %344 = llvm.mlir.constant(32 : index) : i64
    %345 = llvm.add %343, %344 : i64
    %346 = llvm.call @malloc(%345) : (i64) -> !llvm.ptr
    %347 = llvm.ptrtoint %346 : !llvm.ptr to i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.sub %344, %348 : i64
    %350 = llvm.add %347, %349 : i64
    %351 = llvm.urem %350, %344  : i64
    %352 = llvm.sub %350, %351 : i64
    %353 = llvm.inttoptr %352 : i64 to !llvm.ptr
    %354 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %355 = llvm.insertvalue %346, %354[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %356 = llvm.insertvalue %353, %355[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.insertvalue %357, %356[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.insertvalue %94, %358[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %360 = llvm.insertvalue %338, %359[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %361 = llvm.insertvalue %338, %360[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.insertvalue %339, %361[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%37 : i64)
  ^bb28(%363: i64):  // 2 preds: ^bb27, ^bb32
    %364 = builtin.unrealized_conversion_cast %363 : i64 to index
    %365 = builtin.unrealized_conversion_cast %364 : index to i64
    %366 = llvm.icmp "slt" %363, %94 : i64
    llvm.cond_br %366, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%37 : i64)
  ^bb30(%367: i64):  // 2 preds: ^bb29, ^bb31
    %368 = builtin.unrealized_conversion_cast %367 : i64 to index
    %369 = builtin.unrealized_conversion_cast %368 : index to i64
    %370 = llvm.icmp "slt" %367, %21 : i64
    llvm.cond_br %370, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %371 = llvm.extractvalue %362[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %372 = llvm.mlir.constant(4 : index) : i64
    %373 = llvm.mul %365, %372 : i64
    %374 = llvm.add %373, %369 : i64
    %375 = llvm.getelementptr %371[%374] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %375 : f64, !llvm.ptr
    %376 = llvm.add %367, %34 : i64
    llvm.br ^bb30(%376 : i64)
  ^bb32:  // pred: ^bb30
    %377 = llvm.add %363, %34 : i64
    llvm.br ^bb28(%377 : i64)
  ^bb33:  // pred: ^bb28
    %378 = llvm.mlir.constant(4 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mul %378, %90 : i64
    %381 = llvm.mlir.zero : !llvm.ptr
    %382 = llvm.getelementptr %381[%380] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %383 = llvm.ptrtoint %382 : !llvm.ptr to i64
    %384 = llvm.mlir.constant(32 : index) : i64
    %385 = llvm.add %383, %384 : i64
    %386 = llvm.call @malloc(%385) : (i64) -> !llvm.ptr
    %387 = llvm.ptrtoint %386 : !llvm.ptr to i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.sub %384, %388 : i64
    %390 = llvm.add %387, %389 : i64
    %391 = llvm.urem %390, %384  : i64
    %392 = llvm.sub %390, %391 : i64
    %393 = llvm.inttoptr %392 : i64 to !llvm.ptr
    %394 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %395 = llvm.insertvalue %386, %394[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %396 = llvm.insertvalue %393, %395[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.insertvalue %397, %396[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %399 = llvm.insertvalue %90, %398[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %400 = llvm.insertvalue %378, %399[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %401 = llvm.insertvalue %378, %400[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %402 = llvm.insertvalue %379, %401[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb34(%37 : i64)
  ^bb34(%403: i64):  // 2 preds: ^bb33, ^bb38
    %404 = builtin.unrealized_conversion_cast %403 : i64 to index
    %405 = builtin.unrealized_conversion_cast %404 : index to i64
    %406 = llvm.icmp "slt" %403, %90 : i64
    llvm.cond_br %406, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    llvm.br ^bb36(%37 : i64)
  ^bb36(%407: i64):  // 2 preds: ^bb35, ^bb37
    %408 = builtin.unrealized_conversion_cast %407 : i64 to index
    %409 = builtin.unrealized_conversion_cast %408 : index to i64
    %410 = llvm.icmp "slt" %407, %21 : i64
    llvm.cond_br %410, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %411 = llvm.extractvalue %402[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %412 = llvm.mlir.constant(4 : index) : i64
    %413 = llvm.mul %405, %412 : i64
    %414 = llvm.add %413, %409 : i64
    %415 = llvm.getelementptr %411[%414] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %415 : f64, !llvm.ptr
    %416 = llvm.add %407, %34 : i64
    llvm.br ^bb36(%416 : i64)
  ^bb38:  // pred: ^bb36
    %417 = llvm.add %403, %34 : i64
    llvm.br ^bb34(%417 : i64)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%38) to (%91) step (%35) {
          %426 = builtin.unrealized_conversion_cast %arg0 : index to i64
          %427 = builtin.unrealized_conversion_cast %arg0 : index to i64
          %428 = llvm.add %426, %34 : i64
          %429 = builtin.unrealized_conversion_cast %428 : i64 to index
          %430 = builtin.unrealized_conversion_cast %429 : index to i64
          %431 = llvm.extractvalue %206[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %432 = llvm.getelementptr %431[%427] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %433 = llvm.load %432 : !llvm.ptr -> i64
          %434 = builtin.unrealized_conversion_cast %433 : i64 to index
          %435 = llvm.extractvalue %206[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %436 = llvm.getelementptr %435[%430] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %437 = llvm.load %436 : !llvm.ptr -> i64
          cf.br ^bb1(%434 : index)
        ^bb1(%438: index):  // 2 preds: ^bb0, ^bb5
          %439 = builtin.unrealized_conversion_cast %438 : index to i64
          %440 = builtin.unrealized_conversion_cast %438 : index to i64
          %441 = llvm.icmp "slt" %439, %437 : i64
          llvm.cond_br %441, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %442 = llvm.extractvalue %231[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %443 = llvm.getelementptr %442[%440] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %444 = llvm.load %443 : !llvm.ptr -> i64
          %445 = builtin.unrealized_conversion_cast %444 : i64 to index
          %446 = builtin.unrealized_conversion_cast %445 : index to i64
          %447 = llvm.extractvalue %306[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %448 = llvm.getelementptr %447[%440] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %449 = llvm.load %448 : !llvm.ptr -> f64
          cf.br ^bb3(%38 : index)
        ^bb3(%450: index):  // 2 preds: ^bb2, ^bb4
          %451 = builtin.unrealized_conversion_cast %450 : index to i64
          %452 = builtin.unrealized_conversion_cast %450 : index to i64
          %453 = llvm.icmp "slt" %451, %33 : i64
          llvm.cond_br %453, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %454 = llvm.extractvalue %362[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %455 = llvm.mlir.constant(4 : index) : i64
          %456 = llvm.mul %446, %455 : i64
          %457 = llvm.add %456, %452 : i64
          %458 = llvm.getelementptr %454[%457] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %459 = llvm.load %458 : !llvm.ptr -> f64
          %460 = llvm.fmul %449, %459  : f64
          %461 = llvm.extractvalue %402[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %462 = llvm.mlir.constant(4 : index) : i64
          %463 = llvm.mul %427, %462 : i64
          %464 = llvm.add %463, %452 : i64
          %465 = llvm.getelementptr %461[%464] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %466 = llvm.load %465 : !llvm.ptr -> f64
          %467 = llvm.fadd %466, %460  : f64
          %468 = llvm.extractvalue %402[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %469 = llvm.mlir.constant(4 : index) : i64
          %470 = llvm.mul %427, %469 : i64
          %471 = llvm.add %470, %452 : i64
          %472 = llvm.getelementptr %468[%471] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %467, %472 : f64, !llvm.ptr
          %473 = llvm.add %451, %34 : i64
          %474 = builtin.unrealized_conversion_cast %473 : i64 to index
          cf.br ^bb3(%474 : index)
        ^bb5:  // pred: ^bb3
          %475 = llvm.add %439, %34 : i64
          %476 = builtin.unrealized_conversion_cast %475 : i64 to index
          cf.br ^bb1(%476 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.alloca %418 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %402, %419 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %422 = llvm.insertvalue %420, %421[0] : !llvm.struct<(i64, ptr)> 
    %423 = llvm.insertvalue %419, %422[1] : !llvm.struct<(i64, ptr)> 
    %424 = llvm.extractvalue %423[0] : !llvm.struct<(i64, ptr)> 
    %425 = llvm.extractvalue %423[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%424, %425) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(10 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = llvm.mlir.constant(9 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(8 : index) : i64
    %8 = builtin.unrealized_conversion_cast %7 : i64 to index
    %9 = llvm.mlir.constant(7 : index) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = llvm.mlir.constant(6 : index) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = llvm.mlir.constant(5 : index) : i64
    %14 = builtin.unrealized_conversion_cast %13 : i64 to index
    %15 = llvm.mlir.constant(4 : index) : i64
    %16 = builtin.unrealized_conversion_cast %15 : i64 to index
    %17 = llvm.mlir.constant(1 : i32) : i32
    %18 = llvm.mlir.constant(0 : i32) : i32
    %19 = llvm.mlir.constant(3 : index) : i64
    %20 = builtin.unrealized_conversion_cast %19 : i64 to index
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = builtin.unrealized_conversion_cast %21 : i64 to index
    %23 = llvm.mlir.constant(-1 : index) : i64
    %24 = llvm.mlir.constant(4 : i64) : i64
    %25 = builtin.unrealized_conversion_cast %24 : i64 to index
    %26 = builtin.unrealized_conversion_cast %25 : index to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = builtin.unrealized_conversion_cast %27 : i64 to index
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = builtin.unrealized_conversion_cast %29 : i64 to index
    %31 = llvm.mlir.constant(13 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.zero : !llvm.ptr
    %34 = llvm.getelementptr %33[%31] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.call @malloc(%35) : (i64) -> !llvm.ptr
    %37 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.insertvalue %31, %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %32, %42[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.alloca %44 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %43, %45 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(i64, ptr)> 
    %49 = llvm.insertvalue %45, %48[1] : !llvm.struct<(i64, ptr)> 
    %50 = llvm.extractvalue %49[0] : !llvm.struct<(i64, ptr)> 
    %51 = llvm.extractvalue %49[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%18, %29, %23, %27, %23, %50, %51, %17) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %52 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.getelementptr %52[%29] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %54 = llvm.load %53 : !llvm.ptr -> i64
    %55 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.getelementptr %55[%27] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %57 = llvm.load %56 : !llvm.ptr -> i64
    %58 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.getelementptr %58[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %60 = llvm.load %59 : !llvm.ptr -> i64
    %61 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.getelementptr %61[%19] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %63 = llvm.load %62 : !llvm.ptr -> i64
    %64 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %64[%15] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %66 = llvm.load %65 : !llvm.ptr -> i64
    %67 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%13] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %69 = llvm.load %68 : !llvm.ptr -> i64
    %70 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.getelementptr %70[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %72 = llvm.load %71 : !llvm.ptr -> i64
    %73 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.getelementptr %73[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %75 = llvm.load %74 : !llvm.ptr -> i64
    %76 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.getelementptr %76[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %78 = llvm.load %77 : !llvm.ptr -> i64
    %79 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.getelementptr %79[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %81 = llvm.load %80 : !llvm.ptr -> i64
    %82 = builtin.unrealized_conversion_cast %81 : i64 to index
    %83 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.getelementptr %83[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %85 = llvm.load %84 : !llvm.ptr -> i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.zero : !llvm.ptr
    %88 = llvm.getelementptr %87[%54] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr
    %91 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %92 = llvm.insertvalue %90, %91[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.insertvalue %90, %92[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %54, %95[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %86, %96[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%29 : i64)
  ^bb1(%98: i64):  // 2 preds: ^bb0, ^bb2
    %99 = builtin.unrealized_conversion_cast %98 : i64 to index
    %100 = llvm.icmp "slt" %98, %54 : i64
    llvm.cond_br %100, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %101 = llvm.extractvalue %97[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.getelementptr %101[%98] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %102 : i64, !llvm.ptr
    %103 = llvm.add %98, %27 : i64
    llvm.br ^bb1(%103 : i64)
  ^bb3:  // pred: ^bb1
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.alloca %104 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %97, %105 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %108 = llvm.insertvalue %106, %107[0] : !llvm.struct<(i64, ptr)> 
    %109 = llvm.insertvalue %105, %108[1] : !llvm.struct<(i64, ptr)> 
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.zero : !llvm.ptr
    %112 = llvm.getelementptr %111[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %113 = llvm.ptrtoint %112 : !llvm.ptr to i64
    %114 = llvm.call @malloc(%113) : (i64) -> !llvm.ptr
    %115 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %116 = llvm.insertvalue %114, %115[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %114, %116[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.insertvalue %118, %117[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = llvm.insertvalue %57, %119[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.insertvalue %110, %120[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%29 : i64)
  ^bb4(%122: i64):  // 2 preds: ^bb3, ^bb5
    %123 = builtin.unrealized_conversion_cast %122 : i64 to index
    %124 = llvm.icmp "slt" %122, %57 : i64
    llvm.cond_br %124, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %125 = llvm.extractvalue %121[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.getelementptr %125[%122] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %126 : i64, !llvm.ptr
    %127 = llvm.add %122, %27 : i64
    llvm.br ^bb4(%127 : i64)
  ^bb6:  // pred: ^bb4
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.alloca %128 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %121, %129 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %132 = llvm.insertvalue %130, %131[0] : !llvm.struct<(i64, ptr)> 
    %133 = llvm.insertvalue %129, %132[1] : !llvm.struct<(i64, ptr)> 
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.zero : !llvm.ptr
    %136 = llvm.getelementptr %135[%60] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %137 = llvm.ptrtoint %136 : !llvm.ptr to i64
    %138 = llvm.call @malloc(%137) : (i64) -> !llvm.ptr
    %139 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %140 = llvm.insertvalue %138, %139[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.insertvalue %60, %143[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.insertvalue %134, %144[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%29 : i64)
  ^bb7(%146: i64):  // 2 preds: ^bb6, ^bb8
    %147 = builtin.unrealized_conversion_cast %146 : i64 to index
    %148 = llvm.icmp "slt" %146, %60 : i64
    llvm.cond_br %148, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %149 = llvm.extractvalue %145[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%146] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %150 : i64, !llvm.ptr
    %151 = llvm.add %146, %27 : i64
    llvm.br ^bb7(%151 : i64)
  ^bb9:  // pred: ^bb7
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.alloca %152 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %145, %153 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %156 = llvm.insertvalue %154, %155[0] : !llvm.struct<(i64, ptr)> 
    %157 = llvm.insertvalue %153, %156[1] : !llvm.struct<(i64, ptr)> 
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.zero : !llvm.ptr
    %160 = llvm.getelementptr %159[%63] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %161 = llvm.ptrtoint %160 : !llvm.ptr to i64
    %162 = llvm.call @malloc(%161) : (i64) -> !llvm.ptr
    %163 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %164 = llvm.insertvalue %162, %163[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %162, %164[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.insertvalue %166, %165[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %63, %167[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %158, %168[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%29 : i64)
  ^bb10(%170: i64):  // 2 preds: ^bb9, ^bb11
    %171 = builtin.unrealized_conversion_cast %170 : i64 to index
    %172 = llvm.icmp "slt" %170, %63 : i64
    llvm.cond_br %172, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %173 = llvm.extractvalue %169[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.getelementptr %173[%170] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %174 : i64, !llvm.ptr
    %175 = llvm.add %170, %27 : i64
    llvm.br ^bb10(%175 : i64)
  ^bb12:  // pred: ^bb10
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.alloca %176 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %169, %177 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %180 = llvm.insertvalue %178, %179[0] : !llvm.struct<(i64, ptr)> 
    %181 = llvm.insertvalue %177, %180[1] : !llvm.struct<(i64, ptr)> 
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.zero : !llvm.ptr
    %184 = llvm.getelementptr %183[%66] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %185 = llvm.ptrtoint %184 : !llvm.ptr to i64
    %186 = llvm.call @malloc(%185) : (i64) -> !llvm.ptr
    %187 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %188 = llvm.insertvalue %186, %187[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.insertvalue %66, %191[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.insertvalue %182, %192[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%29 : i64)
  ^bb13(%194: i64):  // 2 preds: ^bb12, ^bb14
    %195 = builtin.unrealized_conversion_cast %194 : i64 to index
    %196 = llvm.icmp "slt" %194, %66 : i64
    llvm.cond_br %196, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %197 = llvm.extractvalue %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.getelementptr %197[%194] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %198 : i64, !llvm.ptr
    %199 = llvm.add %194, %27 : i64
    llvm.br ^bb13(%199 : i64)
  ^bb15:  // pred: ^bb13
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.alloca %200 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %193, %201 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %204 = llvm.insertvalue %202, %203[0] : !llvm.struct<(i64, ptr)> 
    %205 = llvm.insertvalue %201, %204[1] : !llvm.struct<(i64, ptr)> 
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.zero : !llvm.ptr
    %208 = llvm.getelementptr %207[%69] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %209 = llvm.ptrtoint %208 : !llvm.ptr to i64
    %210 = llvm.call @malloc(%209) : (i64) -> !llvm.ptr
    %211 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %212 = llvm.insertvalue %210, %211[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %210, %212[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.insertvalue %214, %213[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.insertvalue %69, %215[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %206, %216[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%29 : i64)
  ^bb16(%218: i64):  // 2 preds: ^bb15, ^bb17
    %219 = builtin.unrealized_conversion_cast %218 : i64 to index
    %220 = llvm.icmp "slt" %218, %69 : i64
    llvm.cond_br %220, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %221 = llvm.extractvalue %217[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.getelementptr %221[%218] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %222 : i64, !llvm.ptr
    %223 = llvm.add %218, %27 : i64
    llvm.br ^bb16(%223 : i64)
  ^bb18:  // pred: ^bb16
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.alloca %224 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %217, %225 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %228 = llvm.insertvalue %226, %227[0] : !llvm.struct<(i64, ptr)> 
    %229 = llvm.insertvalue %225, %228[1] : !llvm.struct<(i64, ptr)> 
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.zero : !llvm.ptr
    %232 = llvm.getelementptr %231[%72] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %233 = llvm.ptrtoint %232 : !llvm.ptr to i64
    %234 = llvm.call @malloc(%233) : (i64) -> !llvm.ptr
    %235 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %236 = llvm.insertvalue %234, %235[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %234, %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.insertvalue %238, %237[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %72, %239[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %230, %240[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%29 : i64)
  ^bb19(%242: i64):  // 2 preds: ^bb18, ^bb20
    %243 = builtin.unrealized_conversion_cast %242 : i64 to index
    %244 = llvm.icmp "slt" %242, %72 : i64
    llvm.cond_br %244, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %245 = llvm.extractvalue %241[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.getelementptr %245[%242] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %246 : i64, !llvm.ptr
    %247 = llvm.add %242, %27 : i64
    llvm.br ^bb19(%247 : i64)
  ^bb21:  // pred: ^bb19
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.alloca %248 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %241, %249 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %252 = llvm.insertvalue %250, %251[0] : !llvm.struct<(i64, ptr)> 
    %253 = llvm.insertvalue %249, %252[1] : !llvm.struct<(i64, ptr)> 
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.zero : !llvm.ptr
    %256 = llvm.getelementptr %255[%75] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %257 = llvm.ptrtoint %256 : !llvm.ptr to i64
    %258 = llvm.call @malloc(%257) : (i64) -> !llvm.ptr
    %259 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %260 = llvm.insertvalue %258, %259[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.insertvalue %258, %260[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.insertvalue %262, %261[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.insertvalue %75, %263[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %254, %264[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%29 : i64)
  ^bb22(%266: i64):  // 2 preds: ^bb21, ^bb23
    %267 = builtin.unrealized_conversion_cast %266 : i64 to index
    %268 = llvm.icmp "slt" %266, %75 : i64
    llvm.cond_br %268, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %269 = llvm.extractvalue %265[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.getelementptr %269[%266] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %270 : i64, !llvm.ptr
    %271 = llvm.add %266, %27 : i64
    llvm.br ^bb22(%271 : i64)
  ^bb24:  // pred: ^bb22
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.alloca %272 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %265, %273 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %276 = llvm.insertvalue %274, %275[0] : !llvm.struct<(i64, ptr)> 
    %277 = llvm.insertvalue %273, %276[1] : !llvm.struct<(i64, ptr)> 
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.zero : !llvm.ptr
    %280 = llvm.getelementptr %279[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %281 = llvm.ptrtoint %280 : !llvm.ptr to i64
    %282 = llvm.call @malloc(%281) : (i64) -> !llvm.ptr
    %283 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %284 = llvm.insertvalue %282, %283[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %282, %284[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.insertvalue %286, %285[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.insertvalue %78, %287[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %278, %288[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%29 : i64)
  ^bb25(%290: i64):  // 2 preds: ^bb24, ^bb26
    %291 = builtin.unrealized_conversion_cast %290 : i64 to index
    %292 = llvm.icmp "slt" %290, %78 : i64
    llvm.cond_br %292, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %293 = llvm.extractvalue %289[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.getelementptr %293[%290] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %294 : f64, !llvm.ptr
    %295 = llvm.add %290, %27 : i64
    llvm.br ^bb25(%295 : i64)
  ^bb27:  // pred: ^bb25
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.alloca %296 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %289, %297 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %300 = llvm.insertvalue %298, %299[0] : !llvm.struct<(i64, ptr)> 
    %301 = llvm.insertvalue %297, %300[1] : !llvm.struct<(i64, ptr)> 
    %302 = llvm.extractvalue %109[0] : !llvm.struct<(i64, ptr)> 
    %303 = llvm.extractvalue %109[1] : !llvm.struct<(i64, ptr)> 
    %304 = llvm.extractvalue %133[0] : !llvm.struct<(i64, ptr)> 
    %305 = llvm.extractvalue %133[1] : !llvm.struct<(i64, ptr)> 
    %306 = llvm.extractvalue %157[0] : !llvm.struct<(i64, ptr)> 
    %307 = llvm.extractvalue %157[1] : !llvm.struct<(i64, ptr)> 
    %308 = llvm.extractvalue %181[0] : !llvm.struct<(i64, ptr)> 
    %309 = llvm.extractvalue %181[1] : !llvm.struct<(i64, ptr)> 
    %310 = llvm.extractvalue %205[0] : !llvm.struct<(i64, ptr)> 
    %311 = llvm.extractvalue %205[1] : !llvm.struct<(i64, ptr)> 
    %312 = llvm.extractvalue %229[0] : !llvm.struct<(i64, ptr)> 
    %313 = llvm.extractvalue %229[1] : !llvm.struct<(i64, ptr)> 
    %314 = llvm.extractvalue %253[0] : !llvm.struct<(i64, ptr)> 
    %315 = llvm.extractvalue %253[1] : !llvm.struct<(i64, ptr)> 
    %316 = llvm.extractvalue %277[0] : !llvm.struct<(i64, ptr)> 
    %317 = llvm.extractvalue %277[1] : !llvm.struct<(i64, ptr)> 
    %318 = llvm.extractvalue %301[0] : !llvm.struct<(i64, ptr)> 
    %319 = llvm.extractvalue %301[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%18, %29, %23, %27, %23, %302, %303, %304, %305, %306, %307, %308, %309, %310, %311, %312, %313, %314, %315, %316, %317, %318, %319, %17) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mul %320, %85 : i64
    %323 = llvm.mlir.zero : !llvm.ptr
    %324 = llvm.getelementptr %323[%322] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %325 = llvm.ptrtoint %324 : !llvm.ptr to i64
    %326 = llvm.mlir.constant(32 : index) : i64
    %327 = llvm.add %325, %326 : i64
    %328 = llvm.call @malloc(%327) : (i64) -> !llvm.ptr
    %329 = llvm.ptrtoint %328 : !llvm.ptr to i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.sub %326, %330 : i64
    %332 = llvm.add %329, %331 : i64
    %333 = llvm.urem %332, %326  : i64
    %334 = llvm.sub %332, %333 : i64
    %335 = llvm.inttoptr %334 : i64 to !llvm.ptr
    %336 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %337 = llvm.insertvalue %328, %336[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %338 = llvm.insertvalue %335, %337[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.insertvalue %339, %338[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %341 = llvm.insertvalue %85, %340[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %342 = llvm.insertvalue %320, %341[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %343 = llvm.insertvalue %320, %342[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %344 = llvm.insertvalue %321, %343[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%29 : i64)
  ^bb28(%345: i64):  // 2 preds: ^bb27, ^bb32
    %346 = builtin.unrealized_conversion_cast %345 : i64 to index
    %347 = llvm.icmp "slt" %345, %85 : i64
    llvm.cond_br %347, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%29 : i64)
  ^bb30(%348: i64):  // 2 preds: ^bb29, ^bb31
    %349 = builtin.unrealized_conversion_cast %348 : i64 to index
    %350 = llvm.icmp "slt" %348, %15 : i64
    llvm.cond_br %350, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %351 = llvm.extractvalue %344[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mul %345, %352 : i64
    %354 = llvm.add %353, %348 : i64
    %355 = llvm.getelementptr %351[%354] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %355 : f64, !llvm.ptr
    %356 = llvm.add %348, %27 : i64
    llvm.br ^bb30(%356 : i64)
  ^bb32:  // pred: ^bb30
    %357 = llvm.add %345, %27 : i64
    llvm.br ^bb28(%357 : i64)
  ^bb33:  // pred: ^bb28
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mul %358, %81 : i64
    %361 = llvm.mlir.zero : !llvm.ptr
    %362 = llvm.getelementptr %361[%360] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %363 = llvm.ptrtoint %362 : !llvm.ptr to i64
    %364 = llvm.mlir.constant(32 : index) : i64
    %365 = llvm.add %363, %364 : i64
    %366 = llvm.call @malloc(%365) : (i64) -> !llvm.ptr
    %367 = llvm.ptrtoint %366 : !llvm.ptr to i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.sub %364, %368 : i64
    %370 = llvm.add %367, %369 : i64
    %371 = llvm.urem %370, %364  : i64
    %372 = llvm.sub %370, %371 : i64
    %373 = llvm.inttoptr %372 : i64 to !llvm.ptr
    %374 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %375 = llvm.insertvalue %366, %374[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %376 = llvm.insertvalue %373, %375[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.insertvalue %377, %376[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %379 = llvm.insertvalue %81, %378[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %380 = llvm.insertvalue %358, %379[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %381 = llvm.insertvalue %358, %380[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %382 = llvm.insertvalue %359, %381[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb34(%29 : i64)
  ^bb34(%383: i64):  // 2 preds: ^bb33, ^bb38
    %384 = builtin.unrealized_conversion_cast %383 : i64 to index
    %385 = llvm.icmp "slt" %383, %81 : i64
    llvm.cond_br %385, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    llvm.br ^bb36(%29 : i64)
  ^bb36(%386: i64):  // 2 preds: ^bb35, ^bb37
    %387 = builtin.unrealized_conversion_cast %386 : i64 to index
    %388 = llvm.icmp "slt" %386, %15 : i64
    llvm.cond_br %388, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %389 = llvm.extractvalue %382[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %390 = llvm.mlir.constant(4 : index) : i64
    %391 = llvm.mul %383, %390 : i64
    %392 = llvm.add %391, %386 : i64
    %393 = llvm.getelementptr %389[%392] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %393 : f64, !llvm.ptr
    %394 = llvm.add %386, %27 : i64
    llvm.br ^bb36(%394 : i64)
  ^bb38:  // pred: ^bb36
    %395 = llvm.add %383, %27 : i64
    llvm.br ^bb34(%395 : i64)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%30) to (%82) step (%28) {
          %404 = builtin.unrealized_conversion_cast %arg0 : index to i64
          %405 = builtin.unrealized_conversion_cast %arg0 : index to i64
          %406 = llvm.add %404, %27 : i64
          %407 = builtin.unrealized_conversion_cast %406 : i64 to index
          %408 = llvm.extractvalue %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %409 = llvm.getelementptr %408[%405] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %410 = llvm.load %409 : !llvm.ptr -> i64
          %411 = builtin.unrealized_conversion_cast %410 : i64 to index
          %412 = llvm.extractvalue %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %413 = llvm.getelementptr %412[%406] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %414 = llvm.load %413 : !llvm.ptr -> i64
          cf.br ^bb1(%411 : index)
        ^bb1(%415: index):  // 2 preds: ^bb0, ^bb5
          %416 = builtin.unrealized_conversion_cast %415 : index to i64
          %417 = builtin.unrealized_conversion_cast %415 : index to i64
          %418 = llvm.icmp "slt" %416, %414 : i64
          llvm.cond_br %418, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %419 = llvm.extractvalue %217[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %420 = llvm.getelementptr %419[%417] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %421 = llvm.load %420 : !llvm.ptr -> i64
          %422 = builtin.unrealized_conversion_cast %421 : i64 to index
          %423 = llvm.extractvalue %289[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %424 = llvm.getelementptr %423[%417] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %425 = llvm.load %424 : !llvm.ptr -> f64
          cf.br ^bb3(%30 : index)
        ^bb3(%426: index):  // 2 preds: ^bb2, ^bb4
          %427 = builtin.unrealized_conversion_cast %426 : index to i64
          %428 = builtin.unrealized_conversion_cast %426 : index to i64
          %429 = llvm.icmp "slt" %427, %26 : i64
          llvm.cond_br %429, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %430 = llvm.extractvalue %344[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %431 = llvm.mlir.constant(4 : index) : i64
          %432 = llvm.mul %421, %431 : i64
          %433 = llvm.add %432, %428 : i64
          %434 = llvm.getelementptr %430[%433] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %435 = llvm.load %434 : !llvm.ptr -> f64
          %436 = llvm.fmul %425, %435  : f64
          %437 = llvm.extractvalue %382[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %438 = llvm.mlir.constant(4 : index) : i64
          %439 = llvm.mul %405, %438 : i64
          %440 = llvm.add %439, %428 : i64
          %441 = llvm.getelementptr %437[%440] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %442 = llvm.load %441 : !llvm.ptr -> f64
          %443 = llvm.fadd %442, %436  : f64
          %444 = llvm.extractvalue %382[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %445 = llvm.mlir.constant(4 : index) : i64
          %446 = llvm.mul %405, %445 : i64
          %447 = llvm.add %446, %428 : i64
          %448 = llvm.getelementptr %444[%447] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %443, %448 : f64, !llvm.ptr
          %449 = llvm.add %427, %27 : i64
          %450 = builtin.unrealized_conversion_cast %449 : i64 to index
          cf.br ^bb3(%450 : index)
        ^bb5:  // pred: ^bb3
          %451 = llvm.add %416, %27 : i64
          %452 = builtin.unrealized_conversion_cast %451 : i64 to index
          cf.br ^bb1(%452 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.alloca %396 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %382, %397 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %400 = llvm.insertvalue %398, %399[0] : !llvm.struct<(i64, ptr)> 
    %401 = llvm.insertvalue %397, %400[1] : !llvm.struct<(i64, ptr)> 
    %402 = llvm.extractvalue %401[0] : !llvm.struct<(i64, ptr)> 
    %403 = llvm.extractvalue %401[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%402, %403) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertOpenMPToLLVMPass (convert-openmp-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(10 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = llvm.mlir.constant(9 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(8 : index) : i64
    %8 = builtin.unrealized_conversion_cast %7 : i64 to index
    %9 = llvm.mlir.constant(7 : index) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = llvm.mlir.constant(6 : index) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = llvm.mlir.constant(5 : index) : i64
    %14 = builtin.unrealized_conversion_cast %13 : i64 to index
    %15 = llvm.mlir.constant(4 : index) : i64
    %16 = builtin.unrealized_conversion_cast %15 : i64 to index
    %17 = llvm.mlir.constant(1 : i32) : i32
    %18 = llvm.mlir.constant(0 : i32) : i32
    %19 = llvm.mlir.constant(3 : index) : i64
    %20 = builtin.unrealized_conversion_cast %19 : i64 to index
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = builtin.unrealized_conversion_cast %21 : i64 to index
    %23 = llvm.mlir.constant(-1 : index) : i64
    %24 = llvm.mlir.constant(4 : i64) : i64
    %25 = builtin.unrealized_conversion_cast %24 : i64 to index
    %26 = builtin.unrealized_conversion_cast %25 : index to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.mlir.constant(13 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.zero : !llvm.ptr
    %32 = llvm.getelementptr %31[%29] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.call @malloc(%33) : (i64) -> !llvm.ptr
    %35 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %29, %39[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %30, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.alloca %42 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %41, %43 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(i64, ptr)> 
    %47 = llvm.insertvalue %43, %46[1] : !llvm.struct<(i64, ptr)> 
    %48 = llvm.extractvalue %47[0] : !llvm.struct<(i64, ptr)> 
    %49 = llvm.extractvalue %47[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%18, %28, %23, %27, %23, %48, %49, %17) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %50 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.getelementptr %50[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %52 = llvm.load %51 : !llvm.ptr -> i64
    %53 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.getelementptr %53[%27] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.getelementptr %56[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %58 = llvm.load %57 : !llvm.ptr -> i64
    %59 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %59[%19] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %61 = llvm.load %60 : !llvm.ptr -> i64
    %62 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %62[%15] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %64 = llvm.load %63 : !llvm.ptr -> i64
    %65 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.getelementptr %65[%13] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %67 = llvm.load %66 : !llvm.ptr -> i64
    %68 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %68[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %70 = llvm.load %69 : !llvm.ptr -> i64
    %71 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.getelementptr %71[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %73 = llvm.load %72 : !llvm.ptr -> i64
    %74 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.getelementptr %74[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %76 = llvm.load %75 : !llvm.ptr -> i64
    %77 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.getelementptr %77[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %79 = llvm.load %78 : !llvm.ptr -> i64
    %80 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.getelementptr %80[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %82 = llvm.load %81 : !llvm.ptr -> i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.zero : !llvm.ptr
    %85 = llvm.getelementptr %84[%52] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %86 = llvm.ptrtoint %85 : !llvm.ptr to i64
    %87 = llvm.call @malloc(%86) : (i64) -> !llvm.ptr
    %88 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %89 = llvm.insertvalue %87, %88[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %87, %89[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.insertvalue %91, %90[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.insertvalue %52, %92[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.insertvalue %83, %93[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%28 : i64)
  ^bb1(%95: i64):  // 2 preds: ^bb0, ^bb2
    %96 = builtin.unrealized_conversion_cast %95 : i64 to index
    %97 = llvm.icmp "slt" %95, %52 : i64
    llvm.cond_br %97, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %98 = llvm.extractvalue %94[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.getelementptr %98[%95] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %99 : i64, !llvm.ptr
    %100 = llvm.add %95, %27 : i64
    llvm.br ^bb1(%100 : i64)
  ^bb3:  // pred: ^bb1
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.alloca %101 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %94, %102 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %105 = llvm.insertvalue %103, %104[0] : !llvm.struct<(i64, ptr)> 
    %106 = llvm.insertvalue %102, %105[1] : !llvm.struct<(i64, ptr)> 
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.zero : !llvm.ptr
    %109 = llvm.getelementptr %108[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %110 = llvm.ptrtoint %109 : !llvm.ptr to i64
    %111 = llvm.call @malloc(%110) : (i64) -> !llvm.ptr
    %112 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %113 = llvm.insertvalue %111, %112[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %55, %116[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.insertvalue %107, %117[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%28 : i64)
  ^bb4(%119: i64):  // 2 preds: ^bb3, ^bb5
    %120 = builtin.unrealized_conversion_cast %119 : i64 to index
    %121 = llvm.icmp "slt" %119, %55 : i64
    llvm.cond_br %121, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %122 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.getelementptr %122[%119] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %123 : i64, !llvm.ptr
    %124 = llvm.add %119, %27 : i64
    llvm.br ^bb4(%124 : i64)
  ^bb6:  // pred: ^bb4
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.alloca %125 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %118, %126 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %129 = llvm.insertvalue %127, %128[0] : !llvm.struct<(i64, ptr)> 
    %130 = llvm.insertvalue %126, %129[1] : !llvm.struct<(i64, ptr)> 
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.zero : !llvm.ptr
    %133 = llvm.getelementptr %132[%58] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %134 = llvm.ptrtoint %133 : !llvm.ptr to i64
    %135 = llvm.call @malloc(%134) : (i64) -> !llvm.ptr
    %136 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %137 = llvm.insertvalue %135, %136[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.insertvalue %135, %137[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.insertvalue %139, %138[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.insertvalue %58, %140[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.insertvalue %131, %141[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%28 : i64)
  ^bb7(%143: i64):  // 2 preds: ^bb6, ^bb8
    %144 = builtin.unrealized_conversion_cast %143 : i64 to index
    %145 = llvm.icmp "slt" %143, %58 : i64
    llvm.cond_br %145, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %146 = llvm.extractvalue %142[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.getelementptr %146[%143] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %147 : i64, !llvm.ptr
    %148 = llvm.add %143, %27 : i64
    llvm.br ^bb7(%148 : i64)
  ^bb9:  // pred: ^bb7
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.alloca %149 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %142, %150 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(i64, ptr)> 
    %154 = llvm.insertvalue %150, %153[1] : !llvm.struct<(i64, ptr)> 
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.zero : !llvm.ptr
    %157 = llvm.getelementptr %156[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %158 = llvm.ptrtoint %157 : !llvm.ptr to i64
    %159 = llvm.call @malloc(%158) : (i64) -> !llvm.ptr
    %160 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %161 = llvm.insertvalue %159, %160[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.insertvalue %159, %161[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.insertvalue %163, %162[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %61, %164[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %155, %165[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%28 : i64)
  ^bb10(%167: i64):  // 2 preds: ^bb9, ^bb11
    %168 = builtin.unrealized_conversion_cast %167 : i64 to index
    %169 = llvm.icmp "slt" %167, %61 : i64
    llvm.cond_br %169, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %170 = llvm.extractvalue %166[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.getelementptr %170[%167] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %171 : i64, !llvm.ptr
    %172 = llvm.add %167, %27 : i64
    llvm.br ^bb10(%172 : i64)
  ^bb12:  // pred: ^bb10
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.alloca %173 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %166, %174 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %177 = llvm.insertvalue %175, %176[0] : !llvm.struct<(i64, ptr)> 
    %178 = llvm.insertvalue %174, %177[1] : !llvm.struct<(i64, ptr)> 
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.zero : !llvm.ptr
    %181 = llvm.getelementptr %180[%64] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %182 = llvm.ptrtoint %181 : !llvm.ptr to i64
    %183 = llvm.call @malloc(%182) : (i64) -> !llvm.ptr
    %184 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %185 = llvm.insertvalue %183, %184[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %183, %185[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.insertvalue %187, %186[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %64, %188[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.insertvalue %179, %189[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%28 : i64)
  ^bb13(%191: i64):  // 2 preds: ^bb12, ^bb14
    %192 = builtin.unrealized_conversion_cast %191 : i64 to index
    %193 = llvm.icmp "slt" %191, %64 : i64
    llvm.cond_br %193, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %194 = llvm.extractvalue %190[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.getelementptr %194[%191] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %195 : i64, !llvm.ptr
    %196 = llvm.add %191, %27 : i64
    llvm.br ^bb13(%196 : i64)
  ^bb15:  // pred: ^bb13
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.alloca %197 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %190, %198 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %201 = llvm.insertvalue %199, %200[0] : !llvm.struct<(i64, ptr)> 
    %202 = llvm.insertvalue %198, %201[1] : !llvm.struct<(i64, ptr)> 
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.zero : !llvm.ptr
    %205 = llvm.getelementptr %204[%67] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %206 = llvm.ptrtoint %205 : !llvm.ptr to i64
    %207 = llvm.call @malloc(%206) : (i64) -> !llvm.ptr
    %208 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %209 = llvm.insertvalue %207, %208[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.insertvalue %207, %209[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.insertvalue %211, %210[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %67, %212[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.insertvalue %203, %213[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%28 : i64)
  ^bb16(%215: i64):  // 2 preds: ^bb15, ^bb17
    %216 = builtin.unrealized_conversion_cast %215 : i64 to index
    %217 = llvm.icmp "slt" %215, %67 : i64
    llvm.cond_br %217, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %218 = llvm.extractvalue %214[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.getelementptr %218[%215] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %219 : i64, !llvm.ptr
    %220 = llvm.add %215, %27 : i64
    llvm.br ^bb16(%220 : i64)
  ^bb18:  // pred: ^bb16
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.alloca %221 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %214, %222 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %225 = llvm.insertvalue %223, %224[0] : !llvm.struct<(i64, ptr)> 
    %226 = llvm.insertvalue %222, %225[1] : !llvm.struct<(i64, ptr)> 
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.zero : !llvm.ptr
    %229 = llvm.getelementptr %228[%70] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %230 = llvm.ptrtoint %229 : !llvm.ptr to i64
    %231 = llvm.call @malloc(%230) : (i64) -> !llvm.ptr
    %232 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %233 = llvm.insertvalue %231, %232[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %231, %233[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.insertvalue %235, %234[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %70, %236[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.insertvalue %227, %237[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%28 : i64)
  ^bb19(%239: i64):  // 2 preds: ^bb18, ^bb20
    %240 = builtin.unrealized_conversion_cast %239 : i64 to index
    %241 = llvm.icmp "slt" %239, %70 : i64
    llvm.cond_br %241, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %242 = llvm.extractvalue %238[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.getelementptr %242[%239] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %243 : i64, !llvm.ptr
    %244 = llvm.add %239, %27 : i64
    llvm.br ^bb19(%244 : i64)
  ^bb21:  // pred: ^bb19
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.alloca %245 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %238, %246 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %249 = llvm.insertvalue %247, %248[0] : !llvm.struct<(i64, ptr)> 
    %250 = llvm.insertvalue %246, %249[1] : !llvm.struct<(i64, ptr)> 
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.zero : !llvm.ptr
    %253 = llvm.getelementptr %252[%73] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %254 = llvm.ptrtoint %253 : !llvm.ptr to i64
    %255 = llvm.call @malloc(%254) : (i64) -> !llvm.ptr
    %256 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %257 = llvm.insertvalue %255, %256[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.insertvalue %255, %257[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.insertvalue %259, %258[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.insertvalue %73, %260[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.insertvalue %251, %261[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%28 : i64)
  ^bb22(%263: i64):  // 2 preds: ^bb21, ^bb23
    %264 = builtin.unrealized_conversion_cast %263 : i64 to index
    %265 = llvm.icmp "slt" %263, %73 : i64
    llvm.cond_br %265, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %266 = llvm.extractvalue %262[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%263] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %267 : i64, !llvm.ptr
    %268 = llvm.add %263, %27 : i64
    llvm.br ^bb22(%268 : i64)
  ^bb24:  // pred: ^bb22
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.alloca %269 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %262, %270 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %273 = llvm.insertvalue %271, %272[0] : !llvm.struct<(i64, ptr)> 
    %274 = llvm.insertvalue %270, %273[1] : !llvm.struct<(i64, ptr)> 
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.zero : !llvm.ptr
    %277 = llvm.getelementptr %276[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %278 = llvm.ptrtoint %277 : !llvm.ptr to i64
    %279 = llvm.call @malloc(%278) : (i64) -> !llvm.ptr
    %280 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %281 = llvm.insertvalue %279, %280[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %76, %284[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %275, %285[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%28 : i64)
  ^bb25(%287: i64):  // 2 preds: ^bb24, ^bb26
    %288 = builtin.unrealized_conversion_cast %287 : i64 to index
    %289 = llvm.icmp "slt" %287, %76 : i64
    llvm.cond_br %289, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %290 = llvm.extractvalue %286[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %291 : f64, !llvm.ptr
    %292 = llvm.add %287, %27 : i64
    llvm.br ^bb25(%292 : i64)
  ^bb27:  // pred: ^bb25
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.alloca %293 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %286, %294 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %297 = llvm.insertvalue %295, %296[0] : !llvm.struct<(i64, ptr)> 
    %298 = llvm.insertvalue %294, %297[1] : !llvm.struct<(i64, ptr)> 
    %299 = llvm.extractvalue %106[0] : !llvm.struct<(i64, ptr)> 
    %300 = llvm.extractvalue %106[1] : !llvm.struct<(i64, ptr)> 
    %301 = llvm.extractvalue %130[0] : !llvm.struct<(i64, ptr)> 
    %302 = llvm.extractvalue %130[1] : !llvm.struct<(i64, ptr)> 
    %303 = llvm.extractvalue %154[0] : !llvm.struct<(i64, ptr)> 
    %304 = llvm.extractvalue %154[1] : !llvm.struct<(i64, ptr)> 
    %305 = llvm.extractvalue %178[0] : !llvm.struct<(i64, ptr)> 
    %306 = llvm.extractvalue %178[1] : !llvm.struct<(i64, ptr)> 
    %307 = llvm.extractvalue %202[0] : !llvm.struct<(i64, ptr)> 
    %308 = llvm.extractvalue %202[1] : !llvm.struct<(i64, ptr)> 
    %309 = llvm.extractvalue %226[0] : !llvm.struct<(i64, ptr)> 
    %310 = llvm.extractvalue %226[1] : !llvm.struct<(i64, ptr)> 
    %311 = llvm.extractvalue %250[0] : !llvm.struct<(i64, ptr)> 
    %312 = llvm.extractvalue %250[1] : !llvm.struct<(i64, ptr)> 
    %313 = llvm.extractvalue %274[0] : !llvm.struct<(i64, ptr)> 
    %314 = llvm.extractvalue %274[1] : !llvm.struct<(i64, ptr)> 
    %315 = llvm.extractvalue %298[0] : !llvm.struct<(i64, ptr)> 
    %316 = llvm.extractvalue %298[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%18, %28, %23, %27, %23, %299, %300, %301, %302, %303, %304, %305, %306, %307, %308, %309, %310, %311, %312, %313, %314, %315, %316, %17) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mul %317, %82 : i64
    %320 = llvm.mlir.zero : !llvm.ptr
    %321 = llvm.getelementptr %320[%319] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %322 = llvm.ptrtoint %321 : !llvm.ptr to i64
    %323 = llvm.mlir.constant(32 : index) : i64
    %324 = llvm.add %322, %323 : i64
    %325 = llvm.call @malloc(%324) : (i64) -> !llvm.ptr
    %326 = llvm.ptrtoint %325 : !llvm.ptr to i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.sub %323, %327 : i64
    %329 = llvm.add %326, %328 : i64
    %330 = llvm.urem %329, %323  : i64
    %331 = llvm.sub %329, %330 : i64
    %332 = llvm.inttoptr %331 : i64 to !llvm.ptr
    %333 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %334 = llvm.insertvalue %325, %333[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %335 = llvm.insertvalue %332, %334[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.insertvalue %336, %335[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %338 = llvm.insertvalue %82, %337[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %339 = llvm.insertvalue %317, %338[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %340 = llvm.insertvalue %317, %339[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %341 = llvm.insertvalue %318, %340[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%28 : i64)
  ^bb28(%342: i64):  // 2 preds: ^bb27, ^bb32
    %343 = builtin.unrealized_conversion_cast %342 : i64 to index
    %344 = llvm.icmp "slt" %342, %82 : i64
    llvm.cond_br %344, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%28 : i64)
  ^bb30(%345: i64):  // 2 preds: ^bb29, ^bb31
    %346 = builtin.unrealized_conversion_cast %345 : i64 to index
    %347 = llvm.icmp "slt" %345, %15 : i64
    llvm.cond_br %347, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %348 = llvm.extractvalue %341[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mul %342, %349 : i64
    %351 = llvm.add %350, %345 : i64
    %352 = llvm.getelementptr %348[%351] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %352 : f64, !llvm.ptr
    %353 = llvm.add %345, %27 : i64
    llvm.br ^bb30(%353 : i64)
  ^bb32:  // pred: ^bb30
    %354 = llvm.add %342, %27 : i64
    llvm.br ^bb28(%354 : i64)
  ^bb33:  // pred: ^bb28
    %355 = llvm.mlir.constant(4 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mul %355, %79 : i64
    %358 = llvm.mlir.zero : !llvm.ptr
    %359 = llvm.getelementptr %358[%357] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %360 = llvm.ptrtoint %359 : !llvm.ptr to i64
    %361 = llvm.mlir.constant(32 : index) : i64
    %362 = llvm.add %360, %361 : i64
    %363 = llvm.call @malloc(%362) : (i64) -> !llvm.ptr
    %364 = llvm.ptrtoint %363 : !llvm.ptr to i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.sub %361, %365 : i64
    %367 = llvm.add %364, %366 : i64
    %368 = llvm.urem %367, %361  : i64
    %369 = llvm.sub %367, %368 : i64
    %370 = llvm.inttoptr %369 : i64 to !llvm.ptr
    %371 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %372 = llvm.insertvalue %363, %371[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %373 = llvm.insertvalue %370, %372[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.insertvalue %374, %373[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %376 = llvm.insertvalue %79, %375[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %377 = llvm.insertvalue %355, %376[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %378 = llvm.insertvalue %355, %377[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %379 = llvm.insertvalue %356, %378[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb34(%28 : i64)
  ^bb34(%380: i64):  // 2 preds: ^bb33, ^bb38
    %381 = builtin.unrealized_conversion_cast %380 : i64 to index
    %382 = llvm.icmp "slt" %380, %79 : i64
    llvm.cond_br %382, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    llvm.br ^bb36(%28 : i64)
  ^bb36(%383: i64):  // 2 preds: ^bb35, ^bb37
    %384 = builtin.unrealized_conversion_cast %383 : i64 to index
    %385 = llvm.icmp "slt" %383, %15 : i64
    llvm.cond_br %385, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %386 = llvm.extractvalue %379[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mul %380, %387 : i64
    %389 = llvm.add %388, %383 : i64
    %390 = llvm.getelementptr %386[%389] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %390 : f64, !llvm.ptr
    %391 = llvm.add %383, %27 : i64
    llvm.br ^bb36(%391 : i64)
  ^bb38:  // pred: ^bb36
    %392 = llvm.add %380, %27 : i64
    llvm.br ^bb34(%392 : i64)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%28) to (%79) step (%27) {
          %401 = builtin.unrealized_conversion_cast %arg0 : i64 to index
          %402 = builtin.unrealized_conversion_cast %401 : index to i64
          %403 = builtin.unrealized_conversion_cast %401 : index to i64
          %404 = llvm.add %402, %27 : i64
          %405 = builtin.unrealized_conversion_cast %404 : i64 to index
          %406 = llvm.extractvalue %190[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %407 = llvm.getelementptr %406[%403] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %408 = llvm.load %407 : !llvm.ptr -> i64
          %409 = llvm.extractvalue %190[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %410 = llvm.getelementptr %409[%404] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %411 = llvm.load %410 : !llvm.ptr -> i64
          llvm.br ^bb1(%408 : i64)
        ^bb1(%412: i64):  // 2 preds: ^bb0, ^bb5
          %413 = builtin.unrealized_conversion_cast %412 : i64 to index
          %414 = builtin.unrealized_conversion_cast %413 : index to i64
          %415 = builtin.unrealized_conversion_cast %413 : index to i64
          %416 = llvm.icmp "slt" %414, %411 : i64
          llvm.cond_br %416, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %417 = llvm.extractvalue %214[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %418 = llvm.getelementptr %417[%415] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %419 = llvm.load %418 : !llvm.ptr -> i64
          %420 = builtin.unrealized_conversion_cast %419 : i64 to index
          %421 = llvm.extractvalue %286[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %422 = llvm.getelementptr %421[%415] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %423 = llvm.load %422 : !llvm.ptr -> f64
          llvm.br ^bb3(%28 : i64)
        ^bb3(%424: i64):  // 2 preds: ^bb2, ^bb4
          %425 = builtin.unrealized_conversion_cast %424 : i64 to index
          %426 = builtin.unrealized_conversion_cast %425 : index to i64
          %427 = builtin.unrealized_conversion_cast %425 : index to i64
          %428 = llvm.icmp "slt" %426, %26 : i64
          llvm.cond_br %428, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %429 = llvm.extractvalue %341[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %430 = llvm.mlir.constant(4 : index) : i64
          %431 = llvm.mul %419, %430 : i64
          %432 = llvm.add %431, %427 : i64
          %433 = llvm.getelementptr %429[%432] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %434 = llvm.load %433 : !llvm.ptr -> f64
          %435 = llvm.fmul %423, %434  : f64
          %436 = llvm.extractvalue %379[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %437 = llvm.mlir.constant(4 : index) : i64
          %438 = llvm.mul %403, %437 : i64
          %439 = llvm.add %438, %427 : i64
          %440 = llvm.getelementptr %436[%439] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %441 = llvm.load %440 : !llvm.ptr -> f64
          %442 = llvm.fadd %441, %435  : f64
          %443 = llvm.extractvalue %379[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %444 = llvm.mlir.constant(4 : index) : i64
          %445 = llvm.mul %403, %444 : i64
          %446 = llvm.add %445, %427 : i64
          %447 = llvm.getelementptr %443[%446] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %442, %447 : f64, !llvm.ptr
          %448 = llvm.add %426, %27 : i64
          llvm.br ^bb3(%448 : i64)
        ^bb5:  // pred: ^bb3
          %449 = llvm.add %414, %27 : i64
          llvm.br ^bb1(%449 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.alloca %393 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %379, %394 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %397 = llvm.insertvalue %395, %396[0] : !llvm.struct<(i64, ptr)> 
    %398 = llvm.insertvalue %394, %397[1] : !llvm.struct<(i64, ptr)> 
    %399 = llvm.extractvalue %398[0] : !llvm.struct<(i64, ptr)> 
    %400 = llvm.extractvalue %398[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%399, %400) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(10 : index) : i64
    %4 = llvm.mlir.constant(9 : index) : i64
    %5 = llvm.mlir.constant(8 : index) : i64
    %6 = llvm.mlir.constant(7 : index) : i64
    %7 = llvm.mlir.constant(6 : index) : i64
    %8 = llvm.mlir.constant(5 : index) : i64
    %9 = llvm.mlir.constant(4 : index) : i64
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(0 : i32) : i32
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(-1 : index) : i64
    %15 = llvm.mlir.constant(4 : i64) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(13 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %18, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %19, %29[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.alloca %31 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %30, %32 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(i64, ptr)> 
    %36 = llvm.insertvalue %32, %35[1] : !llvm.struct<(i64, ptr)> 
    %37 = llvm.extractvalue %36[0] : !llvm.struct<(i64, ptr)> 
    %38 = llvm.extractvalue %36[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%11, %17, %14, %16, %14, %37, %38, %10) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %39 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.getelementptr %39[%17] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.getelementptr %42[%16] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %44 = llvm.load %43 : !llvm.ptr -> i64
    %45 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.getelementptr %45[%13] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.getelementptr %48[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %50 = llvm.load %49 : !llvm.ptr -> i64
    %51 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.getelementptr %51[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.getelementptr %54[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %56 = llvm.load %55 : !llvm.ptr -> i64
    %57 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.getelementptr %57[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %59 = llvm.load %58 : !llvm.ptr -> i64
    %60 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %60[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %62 = llvm.load %61 : !llvm.ptr -> i64
    %63 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.getelementptr %63[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %65 = llvm.load %64 : !llvm.ptr -> i64
    %66 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.getelementptr %66[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %68 = llvm.load %67 : !llvm.ptr -> i64
    %69 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.getelementptr %69[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %71 = llvm.load %70 : !llvm.ptr -> i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.zero : !llvm.ptr
    %74 = llvm.getelementptr %73[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %75 = llvm.ptrtoint %74 : !llvm.ptr to i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr
    %77 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %78 = llvm.insertvalue %76, %77[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.insertvalue %41, %81[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.insertvalue %72, %82[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%17 : i64)
  ^bb1(%84: i64):  // 2 preds: ^bb0, ^bb2
    %85 = llvm.icmp "slt" %84, %41 : i64
    llvm.cond_br %85, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %86 = llvm.extractvalue %83[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.getelementptr %86[%84] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %87 : i64, !llvm.ptr
    %88 = llvm.add %84, %16 : i64
    llvm.br ^bb1(%88 : i64)
  ^bb3:  // pred: ^bb1
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.alloca %89 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %83, %90 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %93 = llvm.insertvalue %91, %92[0] : !llvm.struct<(i64, ptr)> 
    %94 = llvm.insertvalue %90, %93[1] : !llvm.struct<(i64, ptr)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.zero : !llvm.ptr
    %97 = llvm.getelementptr %96[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %98 = llvm.ptrtoint %97 : !llvm.ptr to i64
    %99 = llvm.call @malloc(%98) : (i64) -> !llvm.ptr
    %100 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %101 = llvm.insertvalue %99, %100[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.insertvalue %44, %104[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %95, %105[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%17 : i64)
  ^bb4(%107: i64):  // 2 preds: ^bb3, ^bb5
    %108 = llvm.icmp "slt" %107, %44 : i64
    llvm.cond_br %108, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %109 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.getelementptr %109[%107] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %110 : i64, !llvm.ptr
    %111 = llvm.add %107, %16 : i64
    llvm.br ^bb4(%111 : i64)
  ^bb6:  // pred: ^bb4
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.alloca %112 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %106, %113 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %116 = llvm.insertvalue %114, %115[0] : !llvm.struct<(i64, ptr)> 
    %117 = llvm.insertvalue %113, %116[1] : !llvm.struct<(i64, ptr)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.zero : !llvm.ptr
    %120 = llvm.getelementptr %119[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %121 = llvm.ptrtoint %120 : !llvm.ptr to i64
    %122 = llvm.call @malloc(%121) : (i64) -> !llvm.ptr
    %123 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %124 = llvm.insertvalue %122, %123[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %122, %124[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.insertvalue %126, %125[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %47, %127[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %118, %128[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%17 : i64)
  ^bb7(%130: i64):  // 2 preds: ^bb6, ^bb8
    %131 = llvm.icmp "slt" %130, %47 : i64
    llvm.cond_br %131, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %132 = llvm.extractvalue %129[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.getelementptr %132[%130] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %133 : i64, !llvm.ptr
    %134 = llvm.add %130, %16 : i64
    llvm.br ^bb7(%134 : i64)
  ^bb9:  // pred: ^bb7
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.alloca %135 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %129, %136 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %139 = llvm.insertvalue %137, %138[0] : !llvm.struct<(i64, ptr)> 
    %140 = llvm.insertvalue %136, %139[1] : !llvm.struct<(i64, ptr)> 
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.zero : !llvm.ptr
    %143 = llvm.getelementptr %142[%50] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %144 = llvm.ptrtoint %143 : !llvm.ptr to i64
    %145 = llvm.call @malloc(%144) : (i64) -> !llvm.ptr
    %146 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %147 = llvm.insertvalue %145, %146[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %145, %147[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.insertvalue %149, %148[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.insertvalue %50, %150[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %141, %151[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%17 : i64)
  ^bb10(%153: i64):  // 2 preds: ^bb9, ^bb11
    %154 = llvm.icmp "slt" %153, %50 : i64
    llvm.cond_br %154, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %155 = llvm.extractvalue %152[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.getelementptr %155[%153] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %156 : i64, !llvm.ptr
    %157 = llvm.add %153, %16 : i64
    llvm.br ^bb10(%157 : i64)
  ^bb12:  // pred: ^bb10
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.alloca %158 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %152, %159 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %162 = llvm.insertvalue %160, %161[0] : !llvm.struct<(i64, ptr)> 
    %163 = llvm.insertvalue %159, %162[1] : !llvm.struct<(i64, ptr)> 
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.zero : !llvm.ptr
    %166 = llvm.getelementptr %165[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %167 = llvm.ptrtoint %166 : !llvm.ptr to i64
    %168 = llvm.call @malloc(%167) : (i64) -> !llvm.ptr
    %169 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %170 = llvm.insertvalue %168, %169[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.insertvalue %168, %170[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.insertvalue %172, %171[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %53, %173[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.insertvalue %164, %174[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%17 : i64)
  ^bb13(%176: i64):  // 2 preds: ^bb12, ^bb14
    %177 = llvm.icmp "slt" %176, %53 : i64
    llvm.cond_br %177, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %178 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.getelementptr %178[%176] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %179 : i64, !llvm.ptr
    %180 = llvm.add %176, %16 : i64
    llvm.br ^bb13(%180 : i64)
  ^bb15:  // pred: ^bb13
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.alloca %181 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %175, %182 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %185 = llvm.insertvalue %183, %184[0] : !llvm.struct<(i64, ptr)> 
    %186 = llvm.insertvalue %182, %185[1] : !llvm.struct<(i64, ptr)> 
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.zero : !llvm.ptr
    %189 = llvm.getelementptr %188[%56] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %190 = llvm.ptrtoint %189 : !llvm.ptr to i64
    %191 = llvm.call @malloc(%190) : (i64) -> !llvm.ptr
    %192 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %193 = llvm.insertvalue %191, %192[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.insertvalue %191, %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.insertvalue %195, %194[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %56, %196[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %187, %197[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%17 : i64)
  ^bb16(%199: i64):  // 2 preds: ^bb15, ^bb17
    %200 = llvm.icmp "slt" %199, %56 : i64
    llvm.cond_br %200, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %201 = llvm.extractvalue %198[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.getelementptr %201[%199] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %202 : i64, !llvm.ptr
    %203 = llvm.add %199, %16 : i64
    llvm.br ^bb16(%203 : i64)
  ^bb18:  // pred: ^bb16
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.alloca %204 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %198, %205 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %208 = llvm.insertvalue %206, %207[0] : !llvm.struct<(i64, ptr)> 
    %209 = llvm.insertvalue %205, %208[1] : !llvm.struct<(i64, ptr)> 
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.zero : !llvm.ptr
    %212 = llvm.getelementptr %211[%59] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %213 = llvm.ptrtoint %212 : !llvm.ptr to i64
    %214 = llvm.call @malloc(%213) : (i64) -> !llvm.ptr
    %215 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %216 = llvm.insertvalue %214, %215[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %214, %216[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.insertvalue %218, %217[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.insertvalue %59, %219[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %210, %220[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%17 : i64)
  ^bb19(%222: i64):  // 2 preds: ^bb18, ^bb20
    %223 = llvm.icmp "slt" %222, %59 : i64
    llvm.cond_br %223, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %224 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %225 : i64, !llvm.ptr
    %226 = llvm.add %222, %16 : i64
    llvm.br ^bb19(%226 : i64)
  ^bb21:  // pred: ^bb19
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.alloca %227 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %221, %228 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(i64, ptr)> 
    %232 = llvm.insertvalue %228, %231[1] : !llvm.struct<(i64, ptr)> 
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.zero : !llvm.ptr
    %235 = llvm.getelementptr %234[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %236 = llvm.ptrtoint %235 : !llvm.ptr to i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr
    %238 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %239 = llvm.insertvalue %237, %238[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %237, %239[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.insertvalue %241, %240[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %62, %242[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %233, %243[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%17 : i64)
  ^bb22(%245: i64):  // 2 preds: ^bb21, ^bb23
    %246 = llvm.icmp "slt" %245, %62 : i64
    llvm.cond_br %246, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %247 = llvm.extractvalue %244[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.getelementptr %247[%245] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %248 : i64, !llvm.ptr
    %249 = llvm.add %245, %16 : i64
    llvm.br ^bb22(%249 : i64)
  ^bb24:  // pred: ^bb22
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.alloca %250 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %244, %251 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %254 = llvm.insertvalue %252, %253[0] : !llvm.struct<(i64, ptr)> 
    %255 = llvm.insertvalue %251, %254[1] : !llvm.struct<(i64, ptr)> 
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.zero : !llvm.ptr
    %258 = llvm.getelementptr %257[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %259 = llvm.ptrtoint %258 : !llvm.ptr to i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr
    %261 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %262 = llvm.insertvalue %260, %261[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %260, %262[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.insertvalue %264, %263[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %65, %265[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %256, %266[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%17 : i64)
  ^bb25(%268: i64):  // 2 preds: ^bb24, ^bb26
    %269 = llvm.icmp "slt" %268, %65 : i64
    llvm.cond_br %269, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %270 = llvm.extractvalue %267[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.getelementptr %270[%268] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %271 : f64, !llvm.ptr
    %272 = llvm.add %268, %16 : i64
    llvm.br ^bb25(%272 : i64)
  ^bb27:  // pred: ^bb25
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.alloca %273 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %267, %274 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %277 = llvm.insertvalue %275, %276[0] : !llvm.struct<(i64, ptr)> 
    %278 = llvm.insertvalue %274, %277[1] : !llvm.struct<(i64, ptr)> 
    %279 = llvm.extractvalue %94[0] : !llvm.struct<(i64, ptr)> 
    %280 = llvm.extractvalue %94[1] : !llvm.struct<(i64, ptr)> 
    %281 = llvm.extractvalue %117[0] : !llvm.struct<(i64, ptr)> 
    %282 = llvm.extractvalue %117[1] : !llvm.struct<(i64, ptr)> 
    %283 = llvm.extractvalue %140[0] : !llvm.struct<(i64, ptr)> 
    %284 = llvm.extractvalue %140[1] : !llvm.struct<(i64, ptr)> 
    %285 = llvm.extractvalue %163[0] : !llvm.struct<(i64, ptr)> 
    %286 = llvm.extractvalue %163[1] : !llvm.struct<(i64, ptr)> 
    %287 = llvm.extractvalue %186[0] : !llvm.struct<(i64, ptr)> 
    %288 = llvm.extractvalue %186[1] : !llvm.struct<(i64, ptr)> 
    %289 = llvm.extractvalue %209[0] : !llvm.struct<(i64, ptr)> 
    %290 = llvm.extractvalue %209[1] : !llvm.struct<(i64, ptr)> 
    %291 = llvm.extractvalue %232[0] : !llvm.struct<(i64, ptr)> 
    %292 = llvm.extractvalue %232[1] : !llvm.struct<(i64, ptr)> 
    %293 = llvm.extractvalue %255[0] : !llvm.struct<(i64, ptr)> 
    %294 = llvm.extractvalue %255[1] : !llvm.struct<(i64, ptr)> 
    %295 = llvm.extractvalue %278[0] : !llvm.struct<(i64, ptr)> 
    %296 = llvm.extractvalue %278[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%11, %17, %14, %16, %14, %279, %280, %281, %282, %283, %284, %285, %286, %287, %288, %289, %290, %291, %292, %293, %294, %295, %296, %10) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %297 = llvm.mlir.constant(4 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mul %297, %71 : i64
    %300 = llvm.mlir.zero : !llvm.ptr
    %301 = llvm.getelementptr %300[%299] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %302 = llvm.ptrtoint %301 : !llvm.ptr to i64
    %303 = llvm.mlir.constant(32 : index) : i64
    %304 = llvm.add %302, %303 : i64
    %305 = llvm.call @malloc(%304) : (i64) -> !llvm.ptr
    %306 = llvm.ptrtoint %305 : !llvm.ptr to i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.sub %303, %307 : i64
    %309 = llvm.add %306, %308 : i64
    %310 = llvm.urem %309, %303  : i64
    %311 = llvm.sub %309, %310 : i64
    %312 = llvm.inttoptr %311 : i64 to !llvm.ptr
    %313 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %314 = llvm.insertvalue %305, %313[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.insertvalue %312, %314[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.insertvalue %316, %315[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %318 = llvm.insertvalue %71, %317[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %319 = llvm.insertvalue %297, %318[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %320 = llvm.insertvalue %297, %319[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %321 = llvm.insertvalue %298, %320[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%17 : i64)
  ^bb28(%322: i64):  // 2 preds: ^bb27, ^bb32
    %323 = llvm.icmp "slt" %322, %71 : i64
    llvm.cond_br %323, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%17 : i64)
  ^bb30(%324: i64):  // 2 preds: ^bb29, ^bb31
    %325 = llvm.icmp "slt" %324, %9 : i64
    llvm.cond_br %325, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %326 = llvm.extractvalue %321[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mul %322, %327 : i64
    %329 = llvm.add %328, %324 : i64
    %330 = llvm.getelementptr %326[%329] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %330 : f64, !llvm.ptr
    %331 = llvm.add %324, %16 : i64
    llvm.br ^bb30(%331 : i64)
  ^bb32:  // pred: ^bb30
    %332 = llvm.add %322, %16 : i64
    llvm.br ^bb28(%332 : i64)
  ^bb33:  // pred: ^bb28
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mul %333, %68 : i64
    %336 = llvm.mlir.zero : !llvm.ptr
    %337 = llvm.getelementptr %336[%335] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %338 = llvm.ptrtoint %337 : !llvm.ptr to i64
    %339 = llvm.mlir.constant(32 : index) : i64
    %340 = llvm.add %338, %339 : i64
    %341 = llvm.call @malloc(%340) : (i64) -> !llvm.ptr
    %342 = llvm.ptrtoint %341 : !llvm.ptr to i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.sub %339, %343 : i64
    %345 = llvm.add %342, %344 : i64
    %346 = llvm.urem %345, %339  : i64
    %347 = llvm.sub %345, %346 : i64
    %348 = llvm.inttoptr %347 : i64 to !llvm.ptr
    %349 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %350 = llvm.insertvalue %341, %349[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %351 = llvm.insertvalue %348, %350[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %354 = llvm.insertvalue %68, %353[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %355 = llvm.insertvalue %333, %354[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %356 = llvm.insertvalue %333, %355[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.insertvalue %334, %356[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb34(%17 : i64)
  ^bb34(%358: i64):  // 2 preds: ^bb33, ^bb38
    %359 = llvm.icmp "slt" %358, %68 : i64
    llvm.cond_br %359, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    llvm.br ^bb36(%17 : i64)
  ^bb36(%360: i64):  // 2 preds: ^bb35, ^bb37
    %361 = llvm.icmp "slt" %360, %9 : i64
    llvm.cond_br %361, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %362 = llvm.extractvalue %357[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mul %358, %363 : i64
    %365 = llvm.add %364, %360 : i64
    %366 = llvm.getelementptr %362[%365] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %366 : f64, !llvm.ptr
    %367 = llvm.add %360, %16 : i64
    llvm.br ^bb36(%367 : i64)
  ^bb38:  // pred: ^bb36
    %368 = llvm.add %358, %16 : i64
    llvm.br ^bb34(%368 : i64)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%17) to (%68) step (%16) {
          %377 = llvm.add %arg0, %16 : i64
          %378 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %379 = llvm.getelementptr %378[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %380 = llvm.load %379 : !llvm.ptr -> i64
          %381 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %382 = llvm.getelementptr %381[%377] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %383 = llvm.load %382 : !llvm.ptr -> i64
          llvm.br ^bb1(%380 : i64)
        ^bb1(%384: i64):  // 2 preds: ^bb0, ^bb5
          %385 = llvm.icmp "slt" %384, %383 : i64
          llvm.cond_br %385, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %386 = llvm.extractvalue %198[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %387 = llvm.getelementptr %386[%384] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %388 = llvm.load %387 : !llvm.ptr -> i64
          %389 = llvm.extractvalue %267[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %390 = llvm.getelementptr %389[%384] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %391 = llvm.load %390 : !llvm.ptr -> f64
          llvm.br ^bb3(%17 : i64)
        ^bb3(%392: i64):  // 2 preds: ^bb2, ^bb4
          %393 = llvm.icmp "slt" %392, %15 : i64
          llvm.cond_br %393, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %394 = llvm.extractvalue %321[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %395 = llvm.mlir.constant(4 : index) : i64
          %396 = llvm.mul %388, %395 : i64
          %397 = llvm.add %396, %392 : i64
          %398 = llvm.getelementptr %394[%397] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %399 = llvm.load %398 : !llvm.ptr -> f64
          %400 = llvm.fmul %391, %399  : f64
          %401 = llvm.extractvalue %357[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %402 = llvm.mlir.constant(4 : index) : i64
          %403 = llvm.mul %arg0, %402 : i64
          %404 = llvm.add %403, %392 : i64
          %405 = llvm.getelementptr %401[%404] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %406 = llvm.load %405 : !llvm.ptr -> f64
          %407 = llvm.fadd %406, %400  : f64
          %408 = llvm.extractvalue %357[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %409 = llvm.mlir.constant(4 : index) : i64
          %410 = llvm.mul %arg0, %409 : i64
          %411 = llvm.add %410, %392 : i64
          %412 = llvm.getelementptr %408[%411] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %407, %412 : f64, !llvm.ptr
          %413 = llvm.add %392, %16 : i64
          llvm.br ^bb3(%413 : i64)
        ^bb5:  // pred: ^bb3
          %414 = llvm.add %384, %16 : i64
          llvm.br ^bb1(%414 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.alloca %369 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %357, %370 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %373 = llvm.insertvalue %371, %372[0] : !llvm.struct<(i64, ptr)> 
    %374 = llvm.insertvalue %370, %373[1] : !llvm.struct<(i64, ptr)> 
    %375 = llvm.extractvalue %374[0] : !llvm.struct<(i64, ptr)> 
    %376 = llvm.extractvalue %374[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%375, %376) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(10 : index) : i64
    %4 = llvm.mlir.constant(9 : index) : i64
    %5 = llvm.mlir.constant(8 : index) : i64
    %6 = llvm.mlir.constant(7 : index) : i64
    %7 = llvm.mlir.constant(6 : index) : i64
    %8 = llvm.mlir.constant(5 : index) : i64
    %9 = llvm.mlir.constant(4 : index) : i64
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(0 : i32) : i32
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(-1 : index) : i64
    %15 = llvm.mlir.constant(4 : i64) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(13 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %18, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %19, %29[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.alloca %31 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %30, %32 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(i64, ptr)> 
    %36 = llvm.insertvalue %32, %35[1] : !llvm.struct<(i64, ptr)> 
    %37 = llvm.extractvalue %36[0] : !llvm.struct<(i64, ptr)> 
    %38 = llvm.extractvalue %36[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%11, %17, %14, %16, %14, %37, %38, %10) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %39 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.getelementptr %39[%17] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.getelementptr %42[%16] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %44 = llvm.load %43 : !llvm.ptr -> i64
    %45 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.getelementptr %45[%13] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.getelementptr %48[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %50 = llvm.load %49 : !llvm.ptr -> i64
    %51 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.getelementptr %51[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.getelementptr %54[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %56 = llvm.load %55 : !llvm.ptr -> i64
    %57 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.getelementptr %57[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %59 = llvm.load %58 : !llvm.ptr -> i64
    %60 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %60[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %62 = llvm.load %61 : !llvm.ptr -> i64
    %63 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.getelementptr %63[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %65 = llvm.load %64 : !llvm.ptr -> i64
    %66 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.getelementptr %66[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %68 = llvm.load %67 : !llvm.ptr -> i64
    %69 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.getelementptr %69[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %71 = llvm.load %70 : !llvm.ptr -> i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.zero : !llvm.ptr
    %74 = llvm.getelementptr %73[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %75 = llvm.ptrtoint %74 : !llvm.ptr to i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr
    %77 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %78 = llvm.insertvalue %76, %77[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.insertvalue %41, %81[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.insertvalue %72, %82[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%17 : i64)
  ^bb1(%84: i64):  // 2 preds: ^bb0, ^bb2
    %85 = llvm.icmp "slt" %84, %41 : i64
    llvm.cond_br %85, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %86 = llvm.extractvalue %83[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.getelementptr %86[%84] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %87 : i64, !llvm.ptr
    %88 = llvm.add %84, %16 : i64
    llvm.br ^bb1(%88 : i64)
  ^bb3:  // pred: ^bb1
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.alloca %89 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %83, %90 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %93 = llvm.insertvalue %91, %92[0] : !llvm.struct<(i64, ptr)> 
    %94 = llvm.insertvalue %90, %93[1] : !llvm.struct<(i64, ptr)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.zero : !llvm.ptr
    %97 = llvm.getelementptr %96[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %98 = llvm.ptrtoint %97 : !llvm.ptr to i64
    %99 = llvm.call @malloc(%98) : (i64) -> !llvm.ptr
    %100 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %101 = llvm.insertvalue %99, %100[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.insertvalue %44, %104[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %95, %105[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%17 : i64)
  ^bb4(%107: i64):  // 2 preds: ^bb3, ^bb5
    %108 = llvm.icmp "slt" %107, %44 : i64
    llvm.cond_br %108, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %109 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.getelementptr %109[%107] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %110 : i64, !llvm.ptr
    %111 = llvm.add %107, %16 : i64
    llvm.br ^bb4(%111 : i64)
  ^bb6:  // pred: ^bb4
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.alloca %112 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %106, %113 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %116 = llvm.insertvalue %114, %115[0] : !llvm.struct<(i64, ptr)> 
    %117 = llvm.insertvalue %113, %116[1] : !llvm.struct<(i64, ptr)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.zero : !llvm.ptr
    %120 = llvm.getelementptr %119[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %121 = llvm.ptrtoint %120 : !llvm.ptr to i64
    %122 = llvm.call @malloc(%121) : (i64) -> !llvm.ptr
    %123 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %124 = llvm.insertvalue %122, %123[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %122, %124[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.insertvalue %126, %125[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %47, %127[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %118, %128[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%17 : i64)
  ^bb7(%130: i64):  // 2 preds: ^bb6, ^bb8
    %131 = llvm.icmp "slt" %130, %47 : i64
    llvm.cond_br %131, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %132 = llvm.extractvalue %129[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.getelementptr %132[%130] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %133 : i64, !llvm.ptr
    %134 = llvm.add %130, %16 : i64
    llvm.br ^bb7(%134 : i64)
  ^bb9:  // pred: ^bb7
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.alloca %135 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %129, %136 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %139 = llvm.insertvalue %137, %138[0] : !llvm.struct<(i64, ptr)> 
    %140 = llvm.insertvalue %136, %139[1] : !llvm.struct<(i64, ptr)> 
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.zero : !llvm.ptr
    %143 = llvm.getelementptr %142[%50] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %144 = llvm.ptrtoint %143 : !llvm.ptr to i64
    %145 = llvm.call @malloc(%144) : (i64) -> !llvm.ptr
    %146 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %147 = llvm.insertvalue %145, %146[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %145, %147[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.insertvalue %149, %148[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.insertvalue %50, %150[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %141, %151[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%17 : i64)
  ^bb10(%153: i64):  // 2 preds: ^bb9, ^bb11
    %154 = llvm.icmp "slt" %153, %50 : i64
    llvm.cond_br %154, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %155 = llvm.extractvalue %152[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.getelementptr %155[%153] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %156 : i64, !llvm.ptr
    %157 = llvm.add %153, %16 : i64
    llvm.br ^bb10(%157 : i64)
  ^bb12:  // pred: ^bb10
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.alloca %158 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %152, %159 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %162 = llvm.insertvalue %160, %161[0] : !llvm.struct<(i64, ptr)> 
    %163 = llvm.insertvalue %159, %162[1] : !llvm.struct<(i64, ptr)> 
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.zero : !llvm.ptr
    %166 = llvm.getelementptr %165[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %167 = llvm.ptrtoint %166 : !llvm.ptr to i64
    %168 = llvm.call @malloc(%167) : (i64) -> !llvm.ptr
    %169 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %170 = llvm.insertvalue %168, %169[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.insertvalue %168, %170[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.insertvalue %172, %171[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %53, %173[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.insertvalue %164, %174[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%17 : i64)
  ^bb13(%176: i64):  // 2 preds: ^bb12, ^bb14
    %177 = llvm.icmp "slt" %176, %53 : i64
    llvm.cond_br %177, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %178 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.getelementptr %178[%176] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %179 : i64, !llvm.ptr
    %180 = llvm.add %176, %16 : i64
    llvm.br ^bb13(%180 : i64)
  ^bb15:  // pred: ^bb13
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.alloca %181 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %175, %182 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %185 = llvm.insertvalue %183, %184[0] : !llvm.struct<(i64, ptr)> 
    %186 = llvm.insertvalue %182, %185[1] : !llvm.struct<(i64, ptr)> 
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.zero : !llvm.ptr
    %189 = llvm.getelementptr %188[%56] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %190 = llvm.ptrtoint %189 : !llvm.ptr to i64
    %191 = llvm.call @malloc(%190) : (i64) -> !llvm.ptr
    %192 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %193 = llvm.insertvalue %191, %192[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.insertvalue %191, %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.insertvalue %195, %194[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %56, %196[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %187, %197[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%17 : i64)
  ^bb16(%199: i64):  // 2 preds: ^bb15, ^bb17
    %200 = llvm.icmp "slt" %199, %56 : i64
    llvm.cond_br %200, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %201 = llvm.extractvalue %198[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.getelementptr %201[%199] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %202 : i64, !llvm.ptr
    %203 = llvm.add %199, %16 : i64
    llvm.br ^bb16(%203 : i64)
  ^bb18:  // pred: ^bb16
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.alloca %204 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %198, %205 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %208 = llvm.insertvalue %206, %207[0] : !llvm.struct<(i64, ptr)> 
    %209 = llvm.insertvalue %205, %208[1] : !llvm.struct<(i64, ptr)> 
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.zero : !llvm.ptr
    %212 = llvm.getelementptr %211[%59] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %213 = llvm.ptrtoint %212 : !llvm.ptr to i64
    %214 = llvm.call @malloc(%213) : (i64) -> !llvm.ptr
    %215 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %216 = llvm.insertvalue %214, %215[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %214, %216[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.insertvalue %218, %217[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.insertvalue %59, %219[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %210, %220[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%17 : i64)
  ^bb19(%222: i64):  // 2 preds: ^bb18, ^bb20
    %223 = llvm.icmp "slt" %222, %59 : i64
    llvm.cond_br %223, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %224 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %225 : i64, !llvm.ptr
    %226 = llvm.add %222, %16 : i64
    llvm.br ^bb19(%226 : i64)
  ^bb21:  // pred: ^bb19
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.alloca %227 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %221, %228 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(i64, ptr)> 
    %232 = llvm.insertvalue %228, %231[1] : !llvm.struct<(i64, ptr)> 
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.zero : !llvm.ptr
    %235 = llvm.getelementptr %234[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %236 = llvm.ptrtoint %235 : !llvm.ptr to i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr
    %238 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %239 = llvm.insertvalue %237, %238[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %237, %239[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.insertvalue %241, %240[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %62, %242[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %233, %243[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%17 : i64)
  ^bb22(%245: i64):  // 2 preds: ^bb21, ^bb23
    %246 = llvm.icmp "slt" %245, %62 : i64
    llvm.cond_br %246, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %247 = llvm.extractvalue %244[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.getelementptr %247[%245] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %248 : i64, !llvm.ptr
    %249 = llvm.add %245, %16 : i64
    llvm.br ^bb22(%249 : i64)
  ^bb24:  // pred: ^bb22
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.alloca %250 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %244, %251 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %254 = llvm.insertvalue %252, %253[0] : !llvm.struct<(i64, ptr)> 
    %255 = llvm.insertvalue %251, %254[1] : !llvm.struct<(i64, ptr)> 
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.zero : !llvm.ptr
    %258 = llvm.getelementptr %257[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %259 = llvm.ptrtoint %258 : !llvm.ptr to i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr
    %261 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %262 = llvm.insertvalue %260, %261[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %260, %262[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.insertvalue %264, %263[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %65, %265[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %256, %266[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%17 : i64)
  ^bb25(%268: i64):  // 2 preds: ^bb24, ^bb26
    %269 = llvm.icmp "slt" %268, %65 : i64
    llvm.cond_br %269, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %270 = llvm.extractvalue %267[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.getelementptr %270[%268] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %271 : f64, !llvm.ptr
    %272 = llvm.add %268, %16 : i64
    llvm.br ^bb25(%272 : i64)
  ^bb27:  // pred: ^bb25
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.alloca %273 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %267, %274 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %277 = llvm.insertvalue %275, %276[0] : !llvm.struct<(i64, ptr)> 
    %278 = llvm.insertvalue %274, %277[1] : !llvm.struct<(i64, ptr)> 
    %279 = llvm.extractvalue %94[0] : !llvm.struct<(i64, ptr)> 
    %280 = llvm.extractvalue %94[1] : !llvm.struct<(i64, ptr)> 
    %281 = llvm.extractvalue %117[0] : !llvm.struct<(i64, ptr)> 
    %282 = llvm.extractvalue %117[1] : !llvm.struct<(i64, ptr)> 
    %283 = llvm.extractvalue %140[0] : !llvm.struct<(i64, ptr)> 
    %284 = llvm.extractvalue %140[1] : !llvm.struct<(i64, ptr)> 
    %285 = llvm.extractvalue %163[0] : !llvm.struct<(i64, ptr)> 
    %286 = llvm.extractvalue %163[1] : !llvm.struct<(i64, ptr)> 
    %287 = llvm.extractvalue %186[0] : !llvm.struct<(i64, ptr)> 
    %288 = llvm.extractvalue %186[1] : !llvm.struct<(i64, ptr)> 
    %289 = llvm.extractvalue %209[0] : !llvm.struct<(i64, ptr)> 
    %290 = llvm.extractvalue %209[1] : !llvm.struct<(i64, ptr)> 
    %291 = llvm.extractvalue %232[0] : !llvm.struct<(i64, ptr)> 
    %292 = llvm.extractvalue %232[1] : !llvm.struct<(i64, ptr)> 
    %293 = llvm.extractvalue %255[0] : !llvm.struct<(i64, ptr)> 
    %294 = llvm.extractvalue %255[1] : !llvm.struct<(i64, ptr)> 
    %295 = llvm.extractvalue %278[0] : !llvm.struct<(i64, ptr)> 
    %296 = llvm.extractvalue %278[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%11, %17, %14, %16, %14, %279, %280, %281, %282, %283, %284, %285, %286, %287, %288, %289, %290, %291, %292, %293, %294, %295, %296, %10) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %297 = llvm.mlir.constant(4 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mul %297, %71 : i64
    %300 = llvm.mlir.zero : !llvm.ptr
    %301 = llvm.getelementptr %300[%299] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %302 = llvm.ptrtoint %301 : !llvm.ptr to i64
    %303 = llvm.mlir.constant(32 : index) : i64
    %304 = llvm.add %302, %303 : i64
    %305 = llvm.call @malloc(%304) : (i64) -> !llvm.ptr
    %306 = llvm.ptrtoint %305 : !llvm.ptr to i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.sub %303, %307 : i64
    %309 = llvm.add %306, %308 : i64
    %310 = llvm.urem %309, %303  : i64
    %311 = llvm.sub %309, %310 : i64
    %312 = llvm.inttoptr %311 : i64 to !llvm.ptr
    %313 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %314 = llvm.insertvalue %305, %313[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.insertvalue %312, %314[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.insertvalue %316, %315[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %318 = llvm.insertvalue %71, %317[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %319 = llvm.insertvalue %297, %318[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %320 = llvm.insertvalue %297, %319[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %321 = llvm.insertvalue %298, %320[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%17 : i64)
  ^bb28(%322: i64):  // 2 preds: ^bb27, ^bb32
    %323 = llvm.icmp "slt" %322, %71 : i64
    llvm.cond_br %323, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%17 : i64)
  ^bb30(%324: i64):  // 2 preds: ^bb29, ^bb31
    %325 = llvm.icmp "slt" %324, %9 : i64
    llvm.cond_br %325, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %326 = llvm.extractvalue %321[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mul %322, %327 : i64
    %329 = llvm.add %328, %324 : i64
    %330 = llvm.getelementptr %326[%329] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %330 : f64, !llvm.ptr
    %331 = llvm.add %324, %16 : i64
    llvm.br ^bb30(%331 : i64)
  ^bb32:  // pred: ^bb30
    %332 = llvm.add %322, %16 : i64
    llvm.br ^bb28(%332 : i64)
  ^bb33:  // pred: ^bb28
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mul %333, %68 : i64
    %336 = llvm.mlir.zero : !llvm.ptr
    %337 = llvm.getelementptr %336[%335] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %338 = llvm.ptrtoint %337 : !llvm.ptr to i64
    %339 = llvm.mlir.constant(32 : index) : i64
    %340 = llvm.add %338, %339 : i64
    %341 = llvm.call @malloc(%340) : (i64) -> !llvm.ptr
    %342 = llvm.ptrtoint %341 : !llvm.ptr to i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.sub %339, %343 : i64
    %345 = llvm.add %342, %344 : i64
    %346 = llvm.urem %345, %339  : i64
    %347 = llvm.sub %345, %346 : i64
    %348 = llvm.inttoptr %347 : i64 to !llvm.ptr
    %349 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %350 = llvm.insertvalue %341, %349[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %351 = llvm.insertvalue %348, %350[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %354 = llvm.insertvalue %68, %353[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %355 = llvm.insertvalue %333, %354[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %356 = llvm.insertvalue %333, %355[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.insertvalue %334, %356[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb34(%17 : i64)
  ^bb34(%358: i64):  // 2 preds: ^bb33, ^bb38
    %359 = llvm.icmp "slt" %358, %68 : i64
    llvm.cond_br %359, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    llvm.br ^bb36(%17 : i64)
  ^bb36(%360: i64):  // 2 preds: ^bb35, ^bb37
    %361 = llvm.icmp "slt" %360, %9 : i64
    llvm.cond_br %361, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %362 = llvm.extractvalue %357[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mul %358, %363 : i64
    %365 = llvm.add %364, %360 : i64
    %366 = llvm.getelementptr %362[%365] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %366 : f64, !llvm.ptr
    %367 = llvm.add %360, %16 : i64
    llvm.br ^bb36(%367 : i64)
  ^bb38:  // pred: ^bb36
    %368 = llvm.add %358, %16 : i64
    llvm.br ^bb34(%368 : i64)
  ^bb39:  // pred: ^bb34
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%17) to (%68) step (%16) {
          %377 = llvm.add %arg0, %16 : i64
          %378 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %379 = llvm.getelementptr %378[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %380 = llvm.load %379 : !llvm.ptr -> i64
          %381 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %382 = llvm.getelementptr %381[%377] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %383 = llvm.load %382 : !llvm.ptr -> i64
          llvm.br ^bb1(%380 : i64)
        ^bb1(%384: i64):  // 2 preds: ^bb0, ^bb5
          %385 = llvm.icmp "slt" %384, %383 : i64
          llvm.cond_br %385, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %386 = llvm.extractvalue %198[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %387 = llvm.getelementptr %386[%384] : (!llvm.ptr, i64) -> !llvm.ptr, i64
          %388 = llvm.load %387 : !llvm.ptr -> i64
          %389 = llvm.extractvalue %267[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
          %390 = llvm.getelementptr %389[%384] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %391 = llvm.load %390 : !llvm.ptr -> f64
          llvm.br ^bb3(%17 : i64)
        ^bb3(%392: i64):  // 2 preds: ^bb2, ^bb4
          %393 = llvm.icmp "slt" %392, %15 : i64
          llvm.cond_br %393, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %394 = llvm.extractvalue %321[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %395 = llvm.mlir.constant(4 : index) : i64
          %396 = llvm.mul %388, %395 : i64
          %397 = llvm.add %396, %392 : i64
          %398 = llvm.getelementptr %394[%397] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %399 = llvm.load %398 : !llvm.ptr -> f64
          %400 = llvm.fmul %391, %399  : f64
          %401 = llvm.extractvalue %357[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %402 = llvm.mlir.constant(4 : index) : i64
          %403 = llvm.mul %arg0, %402 : i64
          %404 = llvm.add %403, %392 : i64
          %405 = llvm.getelementptr %401[%404] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %406 = llvm.load %405 : !llvm.ptr -> f64
          %407 = llvm.fadd %406, %400  : f64
          %408 = llvm.extractvalue %357[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %409 = llvm.mlir.constant(4 : index) : i64
          %410 = llvm.mul %arg0, %409 : i64
          %411 = llvm.add %410, %392 : i64
          %412 = llvm.getelementptr %408[%411] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %407, %412 : f64, !llvm.ptr
          %413 = llvm.add %392, %16 : i64
          llvm.br ^bb3(%413 : i64)
        ^bb5:  // pred: ^bb3
          %414 = llvm.add %384, %16 : i64
          llvm.br ^bb1(%414 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.alloca %369 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %357, %370 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %373 = llvm.insertvalue %371, %372[0] : !llvm.struct<(i64, ptr)> 
    %374 = llvm.insertvalue %370, %373[1] : !llvm.struct<(i64, ptr)> 
    %375 = llvm.extractvalue %374[0] : !llvm.struct<(i64, ptr)> 
    %376 = llvm.extractvalue %374[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%375, %376) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
