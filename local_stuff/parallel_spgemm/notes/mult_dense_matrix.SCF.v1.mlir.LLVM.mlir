// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
module {
  func.func @main() {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
    ^bb0(%arg0: tensor<8x2xf64>):
      %4 = scf.forall (%arg1) in (%idx8) shared_outs(%arg2 = %arg0) -> (tensor<8x2xf64>) {
        %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %5 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x2xf64>) {
          %c0_4 = arith.constant 0 : index
          %c1_5 = arith.constant 1 : index
          %6 = scf.for %arg5 = %c0_4 to %idx2 step %c1_5 iter_args(%arg6 = %arg4) -> (tensor<1x2xf64>) {
            %idx0 = index.constant 0
            %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
            %extracted_6 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
            %7 = arith.mulf %extracted, %extracted_6 : f64
            %extracted_7 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x2xf64>
            %8 = arith.addf %extracted_7, %7 : f64
            %inserted = tensor.insert %8 into %arg6[%idx0, %arg5] : tensor<1x2xf64>
            scf.yield %inserted : tensor<1x2xf64>
          }
          scf.yield %6 : tensor<1x2xf64>
        }
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %5 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
        }
      }
      it.yield %4 : tensor<8x2xf64>
    }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = scf.forall (%arg1) in (%idx8) shared_outs(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %5 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x2xf64>) {
        %6 = scf.for %arg5 = %c0 to %idx2 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x2xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_4 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x2xf64>
          %8 = arith.addf %extracted_5, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%idx0, %arg5] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %6 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %5 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = scf.forall (%arg1) in (%idx8) shared_outs(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %5 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x2xf64>) {
        %6 = scf.for %arg5 = %c0 to %idx2 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x2xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_4 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x2xf64>
          %8 = arith.addf %extracted_5, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%idx0, %arg5] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %6 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %5 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = scf.forall (%arg1) in (%idx8) shared_outs(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %5 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x2xf64>) {
        %6 = scf.for %arg5 = %c0 to %idx2 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x2xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_4 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x2xf64>
          %8 = arith.addf %extracted_5, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%idx0, %arg5] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %6 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %5 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (%idx8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
          %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
          %6 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
          %7 = arith.addf %extracted_5, %6 : f64
          %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %5 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
          %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
          %6 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
          %7 = arith.addf %extracted_5, %6 : f64
          %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %5 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
          %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
          %6 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
          %7 = arith.addf %extracted_5, %6 : f64
          %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %5 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      %1 = scf.for %arg1 = %c0 to %idx4 step %c1 iter_args(%arg2 = %subview) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
        %2 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %3 = scf.for %arg3 = %c0 to %idx2 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
          %4 = memref.load %alloc_2[%arg1, %arg3] : memref<4x2xf64>
          %5 = arith.mulf %2, %4 : f64
          %6 = memref.load %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
          scf.yield %arg4 : memref<1x2xf64, strided<[2, 1], offset: ?>>
        }
        scf.yield %3 : memref<1x2xf64, strided<[2, 1], offset: ?>>
      }
      %subview_4 = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      memref.copy %1, %subview_4 : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %0 = bufferization.to_tensor %alloc_3 : memref<8x2xf64>
    "ta.print"(%0) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  scf.forall (%arg0) in (8) {
    %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    %1 = scf.for %arg1 = %c0 to %idx4 step %c1 iter_args(%arg2 = %subview) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
      %2 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
      %3 = scf.for %arg3 = %c0 to %idx2 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
        %4 = memref.load %alloc_2[%arg1, %arg3] : memref<4x2xf64>
        %5 = arith.mulf %2, %4 : f64
        %6 = memref.load %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        scf.yield %arg4 : memref<1x2xf64, strided<[2, 1], offset: ?>>
      }
      scf.yield %3 : memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %subview_4 = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    memref.copy %1, %subview_4 : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
  }
  %0 = bufferization.to_tensor %alloc_3 : memref<8x2xf64>
  "ta.print"(%0) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  scf.forall (%arg0) in (8) {
    %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    %2 = scf.for %arg1 = %c0 to %idx4 step %c1 iter_args(%arg2 = %subview) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
      %3 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
      %4 = scf.for %arg3 = %c0 to %idx2 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
        %5 = memref.load %alloc_2[%arg1, %arg3] : memref<4x2xf64>
        %6 = arith.mulf %3, %5 : f64
        %7 = memref.load %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        %8 = arith.addf %7, %6 : f64
        memref.store %8, %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        scf.yield %arg4 : memref<1x2xf64, strided<[2, 1], offset: ?>>
      }
      scf.yield %4 : memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %subview_4 = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    memref.copy %2, %subview_4 : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
  }
  %0 = bufferization.to_tensor %alloc_3 : memref<8x2xf64>
  %1 = bufferization.to_memref %0 : memref<8x2xf64>
  %cast = memref.cast %1 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %subview[%idx0, %arg2] : memref<1x2xf64, strided<[2, 1], offset: ?>>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %subview[%idx0, %arg2] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        }
      }
      %subview_4 = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      memref.copy %subview, %subview_4 : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %subview[%idx0, %arg2] : memref<1x2xf64, strided<[2, 1], offset: ?>>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %subview[%idx0, %arg2] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        }
      }
      memref.copy %subview, %subview : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
      memref.copy %subview, %subview : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  scf.forall (%arg0) in (8) {
    scf.for %arg1 = %c0 to %idx4 step %c1 {
      %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
      scf.for %arg2 = %c0 to %idx2 step %c1 {
        %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        %4 = arith.addf %3, %2 : f64
        memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c4 = arith.constant 4 : index
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
    }
  }
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  scf.for %arg0 = %c0 to %c4 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
    }
  }
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
    }
  }
  scf.forall (%arg0) in (8) {
    scf.for %arg1 = %c0 to %idx4 step %c1 {
      %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
      scf.for %arg2 = %c0 to %idx2 step %c1 {
        %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        %4 = arith.addf %3, %2 : f64
        memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    scf.forall (%arg0) in (8) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c8_5 = arith.constant 8 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_4) to (%c8_5) step (%c1_6) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
      scf.reduce 
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c8_5 = arith.constant 8 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_4) to (%c8_5) step (%c1_6) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
      scf.reduce 
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    scf.parallel (%arg0) = (%c0) to (%c8) step (%c1) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
      scf.reduce 
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    scf.parallel (%arg0) = (%c0) to (%c8) step (%c1) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
      scf.reduce 
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertSCFToOpenMPPass (convert-scf-to-openmp) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    %0 = llvm.mlir.constant(1 : i64) : i64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          memref.alloca_scope  {
            scf.for %arg1 = %c0 to %idx4 step %c1 {
              %1 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
              scf.for %arg2 = %c0 to %idx2 step %c1 {
                %2 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
                %3 = arith.mulf %1, %2 : f64
                %4 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
                %5 = arith.addf %4, %3 : f64
                memref.store %5, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
              }
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          scf.for %arg1 = %c0 to %idx4 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
            scf.for %arg2 = %c0 to %idx2 step %c1 {
              %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
              %2 = arith.mulf %0, %1 : f64
              %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
              %4 = arith.addf %3, %2 : f64
              memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          scf.for %arg1 = %c0 to %idx4 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
            scf.for %arg2 = %c0 to %idx2 step %c1 {
              %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
              %2 = arith.mulf %0, %1 : f64
              %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
              %4 = arith.addf %3, %2 : f64
              memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          cf.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          cf.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          cf.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          cf.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c4 = arith.constant 4 : index
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
  %1 = arith.cmpi slt, %0, %c8 : index
  cf.cond_br %1, ^bb2, ^bb6
^bb2:  // pred: ^bb1
  cf.br ^bb3(%c0 : index)
^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
  %3 = arith.cmpi slt, %2, %c4 : index
  cf.cond_br %3, ^bb4, ^bb5
^bb4:  // pred: ^bb3
  memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
  %4 = arith.addi %2, %c1 : index
  cf.br ^bb3(%4 : index)
^bb5:  // pred: ^bb3
  %5 = arith.addi %0, %c1 : index
  cf.br ^bb1(%5 : index)
^bb6:  // pred: ^bb1
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  cf.br ^bb7(%c0 : index)
^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
  %7 = arith.cmpi slt, %6, %c4 : index
  cf.cond_br %7, ^bb8, ^bb12
^bb8:  // pred: ^bb7
  cf.br ^bb9(%c0 : index)
^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
  %9 = arith.cmpi slt, %8, %c2 : index
  cf.cond_br %9, ^bb10, ^bb11
^bb10:  // pred: ^bb9
  memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
  %10 = arith.addi %8, %c1 : index
  cf.br ^bb9(%10 : index)
^bb11:  // pred: ^bb9
  %11 = arith.addi %6, %c1 : index
  cf.br ^bb7(%11 : index)
^bb12:  // pred: ^bb7
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  cf.br ^bb13(%c0 : index)
^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
  %13 = arith.cmpi slt, %12, %c8 : index
  cf.cond_br %13, ^bb14, ^bb18
^bb14:  // pred: ^bb13
  cf.br ^bb15(%c0 : index)
^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
  %15 = arith.cmpi slt, %14, %c2 : index
  cf.cond_br %15, ^bb16, ^bb17
^bb16:  // pred: ^bb15
  memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb15(%16 : index)
^bb17:  // pred: ^bb15
  %17 = arith.addi %12, %c1 : index
  cf.br ^bb13(%17 : index)
^bb18:  // pred: ^bb13
  omp.parallel {
    omp.wsloop {
      omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
        cf.br ^bb1(%c0 : index)
      ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
        %19 = arith.cmpi slt, %18, %idx4 : index
        cf.cond_br %19, ^bb2, ^bb6
      ^bb2:  // pred: ^bb1
        %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
        cf.br ^bb3(%c0 : index)
      ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
        %22 = arith.cmpi slt, %21, %idx2 : index
        cf.cond_br %22, ^bb4, ^bb5
      ^bb4:  // pred: ^bb3
        %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
        %24 = arith.mulf %20, %23 : f64
        %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
        %26 = arith.addf %25, %24 : f64
        memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
        %27 = arith.addi %21, %c1 : index
        cf.br ^bb3(%27 : index)
      ^bb5:  // pred: ^bb3
        %28 = arith.addi %18, %c1 : index
        cf.br ^bb1(%28 : index)
      ^bb6:  // pred: ^bb1
        omp.yield
      }
      omp.terminator
    }
    omp.terminator
  }
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          cf.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          cf.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          cf.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          cf.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertControlFlowToLLVMPass (convert-cf-to-llvm) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    llvm.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    llvm.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    llvm.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    llvm.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    llvm.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    llvm.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          llvm.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          llvm.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %0 = llvm.mlir.constant(8 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.zero : !llvm.ptr
    %5 = llvm.getelementptr %4[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %6 = llvm.ptrtoint %5 : !llvm.ptr to i64
    %7 = llvm.mlir.constant(32 : index) : i64
    %8 = llvm.add %6, %7 : i64
    %9 = llvm.call @malloc(%8) : (i64) -> !llvm.ptr
    %10 = llvm.ptrtoint %9 : !llvm.ptr to i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.sub %7, %11 : i64
    %13 = llvm.add %10, %12 : i64
    %14 = llvm.urem %13, %7  : i64
    %15 = llvm.sub %13, %14 : i64
    %16 = llvm.inttoptr %15 : i64 to !llvm.ptr
    %17 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %18 = llvm.insertvalue %9, %17[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %0, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %1, %22[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %1, %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %2, %24[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%26: index):  // 2 preds: ^bb0, ^bb5
    %27 = builtin.unrealized_conversion_cast %26 : index to i64
    %28 = arith.cmpi slt, %26, %c8 : index
    llvm.cond_br %28, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%29: index):  // 2 preds: ^bb2, ^bb4
    %30 = builtin.unrealized_conversion_cast %29 : index to i64
    %31 = arith.cmpi slt, %29, %c4 : index
    llvm.cond_br %31, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %32 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.mul %27, %33 : i64
    %35 = llvm.add %34, %30 : i64
    %36 = llvm.getelementptr %32[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_1, %36 : f64, !llvm.ptr
    %37 = arith.addi %29, %c1 : index
    cf.br ^bb3(%37 : index)
  ^bb5:  // pred: ^bb3
    %38 = arith.addi %26, %c1 : index
    cf.br ^bb1(%38 : index)
  ^bb6:  // pred: ^bb1
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(8 : index) : i64
    %43 = llvm.mlir.zero : !llvm.ptr
    %44 = llvm.getelementptr %43[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %45 = llvm.ptrtoint %44 : !llvm.ptr to i64
    %46 = llvm.mlir.constant(32 : index) : i64
    %47 = llvm.add %45, %46 : i64
    %48 = llvm.call @malloc(%47) : (i64) -> !llvm.ptr
    %49 = llvm.ptrtoint %48 : !llvm.ptr to i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.sub %46, %50 : i64
    %52 = llvm.add %49, %51 : i64
    %53 = llvm.urem %52, %46  : i64
    %54 = llvm.sub %52, %53 : i64
    %55 = llvm.inttoptr %54 : i64 to !llvm.ptr
    %56 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %57 = llvm.insertvalue %48, %56[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.insertvalue %39, %60[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.insertvalue %40, %61[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %40, %62[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.insertvalue %41, %63[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb7(%c0 : index)
  ^bb7(%65: index):  // 2 preds: ^bb6, ^bb11
    %66 = builtin.unrealized_conversion_cast %65 : index to i64
    %67 = arith.cmpi slt, %65, %c4 : index
    llvm.cond_br %67, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%68: index):  // 2 preds: ^bb8, ^bb10
    %69 = builtin.unrealized_conversion_cast %68 : index to i64
    %70 = arith.cmpi slt, %68, %c2 : index
    llvm.cond_br %70, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %71 = llvm.extractvalue %64[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mul %66, %72 : i64
    %74 = llvm.add %73, %69 : i64
    %75 = llvm.getelementptr %71[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %75 : f64, !llvm.ptr
    %76 = arith.addi %68, %c1 : index
    cf.br ^bb9(%76 : index)
  ^bb11:  // pred: ^bb9
    %77 = arith.addi %65, %c1 : index
    cf.br ^bb7(%77 : index)
  ^bb12:  // pred: ^bb7
    %78 = llvm.mlir.constant(8 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.mlir.zero : !llvm.ptr
    %83 = llvm.getelementptr %82[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %84 = llvm.ptrtoint %83 : !llvm.ptr to i64
    %85 = llvm.mlir.constant(32 : index) : i64
    %86 = llvm.add %84, %85 : i64
    %87 = llvm.call @malloc(%86) : (i64) -> !llvm.ptr
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.sub %85, %89 : i64
    %91 = llvm.add %88, %90 : i64
    %92 = llvm.urem %91, %85  : i64
    %93 = llvm.sub %91, %92 : i64
    %94 = llvm.inttoptr %93 : i64 to !llvm.ptr
    %95 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %96 = llvm.insertvalue %87, %95[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.insertvalue %78, %99[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.insertvalue %79, %100[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %79, %101[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %80, %102[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb13(%c0 : index)
  ^bb13(%104: index):  // 2 preds: ^bb12, ^bb17
    %105 = builtin.unrealized_conversion_cast %104 : index to i64
    %106 = arith.cmpi slt, %104, %c8 : index
    llvm.cond_br %106, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%107: index):  // 2 preds: ^bb14, ^bb16
    %108 = builtin.unrealized_conversion_cast %107 : index to i64
    %109 = arith.cmpi slt, %107, %c2 : index
    llvm.cond_br %109, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %110 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mul %105, %111 : i64
    %113 = llvm.add %112, %108 : i64
    %114 = llvm.getelementptr %110[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %114 : f64, !llvm.ptr
    %115 = arith.addi %107, %c1 : index
    cf.br ^bb15(%115 : index)
  ^bb17:  // pred: ^bb15
    %116 = arith.addi %104, %c1 : index
    cf.br ^bb13(%116 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          %124 = builtin.unrealized_conversion_cast %arg0 : index to i64
          cf.br ^bb1(%c0 : index)
        ^bb1(%125: index):  // 2 preds: ^bb0, ^bb5
          %126 = builtin.unrealized_conversion_cast %125 : index to i64
          %127 = arith.cmpi slt, %125, %idx4 : index
          llvm.cond_br %127, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %128 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %129 = llvm.mlir.constant(4 : index) : i64
          %130 = llvm.mul %124, %129 : i64
          %131 = llvm.add %130, %126 : i64
          %132 = llvm.getelementptr %128[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %133 = llvm.load %132 : !llvm.ptr -> f64
          cf.br ^bb3(%c0 : index)
        ^bb3(%134: index):  // 2 preds: ^bb2, ^bb4
          %135 = builtin.unrealized_conversion_cast %134 : index to i64
          %136 = arith.cmpi slt, %134, %idx2 : index
          llvm.cond_br %136, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %137 = llvm.extractvalue %64[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %138 = llvm.mlir.constant(2 : index) : i64
          %139 = llvm.mul %126, %138 : i64
          %140 = llvm.add %139, %135 : i64
          %141 = llvm.getelementptr %137[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %142 = llvm.load %141 : !llvm.ptr -> f64
          %143 = arith.mulf %133, %142 : f64
          %144 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %145 = llvm.mlir.constant(2 : index) : i64
          %146 = llvm.mul %124, %145 : i64
          %147 = llvm.add %146, %135 : i64
          %148 = llvm.getelementptr %144[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %149 = llvm.load %148 : !llvm.ptr -> f64
          %150 = arith.addf %149, %143 : f64
          %151 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %152 = llvm.mlir.constant(2 : index) : i64
          %153 = llvm.mul %124, %152 : i64
          %154 = llvm.add %153, %135 : i64
          %155 = llvm.getelementptr %151[%154] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %150, %155 : f64, !llvm.ptr
          %156 = arith.addi %134, %c1 : index
          cf.br ^bb3(%156 : index)
        ^bb5:  // pred: ^bb3
          %157 = arith.addi %125, %c1 : index
          cf.br ^bb1(%157 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.alloca %117 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %103, %118 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %121 = llvm.insertvalue %119, %120[0] : !llvm.struct<(i64, ptr)> 
    %122 = llvm.insertvalue %118, %121[1] : !llvm.struct<(i64, ptr)> 
    %123 = builtin.unrealized_conversion_cast %122 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%123) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %idx2 = index.constant 2
    %11 = builtin.unrealized_conversion_cast %idx2 : index to i64
    %idx4 = index.constant 4
    %12 = builtin.unrealized_conversion_cast %idx4 : index to i64
    %13 = llvm.mlir.constant(8 : index) : i64
    %14 = llvm.mlir.constant(4 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(32 : index) : i64
    %17 = llvm.mlir.zero : !llvm.ptr
    %18 = llvm.getelementptr %17[%16] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %19 = llvm.ptrtoint %18 : !llvm.ptr to i64
    %20 = llvm.mlir.constant(32 : index) : i64
    %21 = llvm.add %19, %20 : i64
    %22 = llvm.call @malloc(%21) : (i64) -> !llvm.ptr
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.sub %20, %24 : i64
    %26 = llvm.add %23, %25 : i64
    %27 = llvm.urem %26, %20  : i64
    %28 = llvm.sub %26, %27 : i64
    %29 = llvm.inttoptr %28 : i64 to !llvm.ptr
    %30 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %31 = llvm.insertvalue %22, %30[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %13, %34[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %14, %35[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %14, %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %15, %37[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%6 : i64)
  ^bb1(%39: i64):  // 2 preds: ^bb0, ^bb5
    %40 = builtin.unrealized_conversion_cast %39 : i64 to index
    %41 = builtin.unrealized_conversion_cast %40 : index to i64
    %42 = llvm.icmp "slt" %39, %2 : i64
    llvm.cond_br %42, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%6 : i64)
  ^bb3(%43: i64):  // 2 preds: ^bb2, ^bb4
    %44 = builtin.unrealized_conversion_cast %43 : i64 to index
    %45 = builtin.unrealized_conversion_cast %44 : index to i64
    %46 = llvm.icmp "slt" %43, %1 : i64
    llvm.cond_br %46, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %47 = llvm.extractvalue %38[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.mul %41, %48 : i64
    %50 = llvm.add %49, %45 : i64
    %51 = llvm.getelementptr %47[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %51 : f64, !llvm.ptr
    %52 = llvm.add %43, %4 : i64
    llvm.br ^bb3(%52 : i64)
  ^bb5:  // pred: ^bb3
    %53 = llvm.add %39, %4 : i64
    llvm.br ^bb1(%53 : i64)
  ^bb6:  // pred: ^bb1
    %54 = llvm.mlir.constant(4 : index) : i64
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(8 : index) : i64
    %58 = llvm.mlir.zero : !llvm.ptr
    %59 = llvm.getelementptr %58[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.mlir.constant(32 : index) : i64
    %62 = llvm.add %60, %61 : i64
    %63 = llvm.call @malloc(%62) : (i64) -> !llvm.ptr
    %64 = llvm.ptrtoint %63 : !llvm.ptr to i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.sub %61, %65 : i64
    %67 = llvm.add %64, %66 : i64
    %68 = llvm.urem %67, %61  : i64
    %69 = llvm.sub %67, %68 : i64
    %70 = llvm.inttoptr %69 : i64 to !llvm.ptr
    %71 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %72 = llvm.insertvalue %63, %71[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.insertvalue %70, %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.insertvalue %74, %73[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.insertvalue %54, %75[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.insertvalue %55, %76[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.insertvalue %55, %77[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %56, %78[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%6 : i64)
  ^bb7(%80: i64):  // 2 preds: ^bb6, ^bb11
    %81 = builtin.unrealized_conversion_cast %80 : i64 to index
    %82 = builtin.unrealized_conversion_cast %81 : index to i64
    %83 = llvm.icmp "slt" %80, %1 : i64
    llvm.cond_br %83, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%6 : i64)
  ^bb9(%84: i64):  // 2 preds: ^bb8, ^bb10
    %85 = builtin.unrealized_conversion_cast %84 : i64 to index
    %86 = builtin.unrealized_conversion_cast %85 : index to i64
    %87 = llvm.icmp "slt" %84, %0 : i64
    llvm.cond_br %87, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %88 = llvm.extractvalue %79[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %82, %89 : i64
    %91 = llvm.add %90, %86 : i64
    %92 = llvm.getelementptr %88[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %92 : f64, !llvm.ptr
    %93 = llvm.add %84, %4 : i64
    llvm.br ^bb9(%93 : i64)
  ^bb11:  // pred: ^bb9
    %94 = llvm.add %80, %4 : i64
    llvm.br ^bb7(%94 : i64)
  ^bb12:  // pred: ^bb7
    %95 = llvm.mlir.constant(8 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(16 : index) : i64
    %99 = llvm.mlir.zero : !llvm.ptr
    %100 = llvm.getelementptr %99[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %101 = llvm.ptrtoint %100 : !llvm.ptr to i64
    %102 = llvm.mlir.constant(32 : index) : i64
    %103 = llvm.add %101, %102 : i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.sub %102, %106 : i64
    %108 = llvm.add %105, %107 : i64
    %109 = llvm.urem %108, %102  : i64
    %110 = llvm.sub %108, %109 : i64
    %111 = llvm.inttoptr %110 : i64 to !llvm.ptr
    %112 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %113 = llvm.insertvalue %104, %112[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.insertvalue %95, %116[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %96, %117[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.insertvalue %96, %118[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %120 = llvm.insertvalue %97, %119[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%6 : i64)
  ^bb13(%121: i64):  // 2 preds: ^bb12, ^bb17
    %122 = builtin.unrealized_conversion_cast %121 : i64 to index
    %123 = builtin.unrealized_conversion_cast %122 : index to i64
    %124 = llvm.icmp "slt" %121, %2 : i64
    llvm.cond_br %124, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%6 : i64)
  ^bb15(%125: i64):  // 2 preds: ^bb14, ^bb16
    %126 = builtin.unrealized_conversion_cast %125 : i64 to index
    %127 = builtin.unrealized_conversion_cast %126 : index to i64
    %128 = llvm.icmp "slt" %125, %0 : i64
    llvm.cond_br %128, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %129 = llvm.extractvalue %120[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %123, %130 : i64
    %132 = llvm.add %131, %127 : i64
    %133 = llvm.getelementptr %129[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %133 : f64, !llvm.ptr
    %134 = llvm.add %125, %4 : i64
    llvm.br ^bb15(%134 : i64)
  ^bb17:  // pred: ^bb15
    %135 = llvm.add %121, %4 : i64
    llvm.br ^bb13(%135 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%7) to (%3) step (%5) {
          %144 = builtin.unrealized_conversion_cast %arg0 : index to i64
          cf.br ^bb1(%7 : index)
        ^bb1(%145: index):  // 2 preds: ^bb0, ^bb5
          %146 = builtin.unrealized_conversion_cast %145 : index to i64
          %147 = builtin.unrealized_conversion_cast %145 : index to i64
          %148 = llvm.icmp "slt" %146, %12 : i64
          llvm.cond_br %148, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %149 = llvm.extractvalue %38[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %150 = llvm.mlir.constant(4 : index) : i64
          %151 = llvm.mul %144, %150 : i64
          %152 = llvm.add %151, %147 : i64
          %153 = llvm.getelementptr %149[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %154 = llvm.load %153 : !llvm.ptr -> f64
          cf.br ^bb3(%7 : index)
        ^bb3(%155: index):  // 2 preds: ^bb2, ^bb4
          %156 = builtin.unrealized_conversion_cast %155 : index to i64
          %157 = builtin.unrealized_conversion_cast %155 : index to i64
          %158 = llvm.icmp "slt" %156, %11 : i64
          llvm.cond_br %158, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %159 = llvm.extractvalue %79[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %160 = llvm.mlir.constant(2 : index) : i64
          %161 = llvm.mul %147, %160 : i64
          %162 = llvm.add %161, %157 : i64
          %163 = llvm.getelementptr %159[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %164 = llvm.load %163 : !llvm.ptr -> f64
          %165 = llvm.fmul %154, %164  : f64
          %166 = llvm.extractvalue %120[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %167 = llvm.mlir.constant(2 : index) : i64
          %168 = llvm.mul %144, %167 : i64
          %169 = llvm.add %168, %157 : i64
          %170 = llvm.getelementptr %166[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %171 = llvm.load %170 : !llvm.ptr -> f64
          %172 = llvm.fadd %171, %165  : f64
          %173 = llvm.extractvalue %120[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %174 = llvm.mlir.constant(2 : index) : i64
          %175 = llvm.mul %144, %174 : i64
          %176 = llvm.add %175, %157 : i64
          %177 = llvm.getelementptr %173[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %172, %177 : f64, !llvm.ptr
          %178 = llvm.add %156, %4 : i64
          %179 = builtin.unrealized_conversion_cast %178 : i64 to index
          cf.br ^bb3(%179 : index)
        ^bb5:  // pred: ^bb3
          %180 = llvm.add %146, %4 : i64
          %181 = builtin.unrealized_conversion_cast %180 : i64 to index
          cf.br ^bb1(%181 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.alloca %136 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %120, %137 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %140 = llvm.insertvalue %138, %139[0] : !llvm.struct<(i64, ptr)> 
    %141 = llvm.insertvalue %137, %140[1] : !llvm.struct<(i64, ptr)> 
    %142 = llvm.extractvalue %141[0] : !llvm.struct<(i64, ptr)> 
    %143 = llvm.extractvalue %141[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%142, %143) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = builtin.unrealized_conversion_cast %12 : index to i64
    %14 = llvm.mlir.constant(4 : i64) : i64
    %15 = builtin.unrealized_conversion_cast %14 : i64 to index
    %16 = builtin.unrealized_conversion_cast %15 : index to i64
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.mlir.constant(4 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(32 : index) : i64
    %21 = llvm.mlir.zero : !llvm.ptr
    %22 = llvm.getelementptr %21[%20] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.mlir.constant(32 : index) : i64
    %25 = llvm.add %23, %24 : i64
    %26 = llvm.call @malloc(%25) : (i64) -> !llvm.ptr
    %27 = llvm.ptrtoint %26 : !llvm.ptr to i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.sub %24, %28 : i64
    %30 = llvm.add %27, %29 : i64
    %31 = llvm.urem %30, %24  : i64
    %32 = llvm.sub %30, %31 : i64
    %33 = llvm.inttoptr %32 : i64 to !llvm.ptr
    %34 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.insertvalue %26, %34[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %17, %38[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %18, %39[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %18, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.insertvalue %19, %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%6 : i64)
  ^bb1(%43: i64):  // 2 preds: ^bb0, ^bb5
    %44 = builtin.unrealized_conversion_cast %43 : i64 to index
    %45 = llvm.icmp "slt" %43, %2 : i64
    llvm.cond_br %45, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%6 : i64)
  ^bb3(%46: i64):  // 2 preds: ^bb2, ^bb4
    %47 = builtin.unrealized_conversion_cast %46 : i64 to index
    %48 = llvm.icmp "slt" %46, %1 : i64
    llvm.cond_br %48, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %49 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(4 : index) : i64
    %51 = llvm.mul %43, %50 : i64
    %52 = llvm.add %51, %46 : i64
    %53 = llvm.getelementptr %49[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %53 : f64, !llvm.ptr
    %54 = llvm.add %46, %4 : i64
    llvm.br ^bb3(%54 : i64)
  ^bb5:  // pred: ^bb3
    %55 = llvm.add %43, %4 : i64
    llvm.br ^bb1(%55 : i64)
  ^bb6:  // pred: ^bb1
    %56 = llvm.mlir.constant(4 : index) : i64
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(8 : index) : i64
    %60 = llvm.mlir.zero : !llvm.ptr
    %61 = llvm.getelementptr %60[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    %63 = llvm.mlir.constant(32 : index) : i64
    %64 = llvm.add %62, %63 : i64
    %65 = llvm.call @malloc(%64) : (i64) -> !llvm.ptr
    %66 = llvm.ptrtoint %65 : !llvm.ptr to i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.sub %63, %67 : i64
    %69 = llvm.add %66, %68 : i64
    %70 = llvm.urem %69, %63  : i64
    %71 = llvm.sub %69, %70 : i64
    %72 = llvm.inttoptr %71 : i64 to !llvm.ptr
    %73 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %74 = llvm.insertvalue %65, %73[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.insertvalue %56, %77[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %57, %78[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.insertvalue %57, %79[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.insertvalue %58, %80[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%6 : i64)
  ^bb7(%82: i64):  // 2 preds: ^bb6, ^bb11
    %83 = builtin.unrealized_conversion_cast %82 : i64 to index
    %84 = llvm.icmp "slt" %82, %1 : i64
    llvm.cond_br %84, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%6 : i64)
  ^bb9(%85: i64):  // 2 preds: ^bb8, ^bb10
    %86 = builtin.unrealized_conversion_cast %85 : i64 to index
    %87 = llvm.icmp "slt" %85, %0 : i64
    llvm.cond_br %87, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %88 = llvm.extractvalue %81[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %82, %89 : i64
    %91 = llvm.add %90, %85 : i64
    %92 = llvm.getelementptr %88[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %92 : f64, !llvm.ptr
    %93 = llvm.add %85, %4 : i64
    llvm.br ^bb9(%93 : i64)
  ^bb11:  // pred: ^bb9
    %94 = llvm.add %82, %4 : i64
    llvm.br ^bb7(%94 : i64)
  ^bb12:  // pred: ^bb7
    %95 = llvm.mlir.constant(8 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(16 : index) : i64
    %99 = llvm.mlir.zero : !llvm.ptr
    %100 = llvm.getelementptr %99[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %101 = llvm.ptrtoint %100 : !llvm.ptr to i64
    %102 = llvm.mlir.constant(32 : index) : i64
    %103 = llvm.add %101, %102 : i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.sub %102, %106 : i64
    %108 = llvm.add %105, %107 : i64
    %109 = llvm.urem %108, %102  : i64
    %110 = llvm.sub %108, %109 : i64
    %111 = llvm.inttoptr %110 : i64 to !llvm.ptr
    %112 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %113 = llvm.insertvalue %104, %112[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.insertvalue %95, %116[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %96, %117[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.insertvalue %96, %118[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %120 = llvm.insertvalue %97, %119[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%6 : i64)
  ^bb13(%121: i64):  // 2 preds: ^bb12, ^bb17
    %122 = builtin.unrealized_conversion_cast %121 : i64 to index
    %123 = llvm.icmp "slt" %121, %2 : i64
    llvm.cond_br %123, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%6 : i64)
  ^bb15(%124: i64):  // 2 preds: ^bb14, ^bb16
    %125 = builtin.unrealized_conversion_cast %124 : i64 to index
    %126 = llvm.icmp "slt" %124, %0 : i64
    llvm.cond_br %126, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %127 = llvm.extractvalue %120[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mul %121, %128 : i64
    %130 = llvm.add %129, %124 : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %131 : f64, !llvm.ptr
    %132 = llvm.add %124, %4 : i64
    llvm.br ^bb15(%132 : i64)
  ^bb17:  // pred: ^bb15
    %133 = llvm.add %121, %4 : i64
    llvm.br ^bb13(%133 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%7) to (%3) step (%5) {
          %142 = builtin.unrealized_conversion_cast %arg0 : index to i64
          cf.br ^bb1(%7 : index)
        ^bb1(%143: index):  // 2 preds: ^bb0, ^bb5
          %144 = builtin.unrealized_conversion_cast %143 : index to i64
          %145 = builtin.unrealized_conversion_cast %143 : index to i64
          %146 = llvm.icmp "slt" %144, %16 : i64
          llvm.cond_br %146, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %147 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %148 = llvm.mlir.constant(4 : index) : i64
          %149 = llvm.mul %142, %148 : i64
          %150 = llvm.add %149, %145 : i64
          %151 = llvm.getelementptr %147[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %152 = llvm.load %151 : !llvm.ptr -> f64
          cf.br ^bb3(%7 : index)
        ^bb3(%153: index):  // 2 preds: ^bb2, ^bb4
          %154 = builtin.unrealized_conversion_cast %153 : index to i64
          %155 = builtin.unrealized_conversion_cast %153 : index to i64
          %156 = llvm.icmp "slt" %154, %13 : i64
          llvm.cond_br %156, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %157 = llvm.extractvalue %81[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %158 = llvm.mlir.constant(2 : index) : i64
          %159 = llvm.mul %145, %158 : i64
          %160 = llvm.add %159, %155 : i64
          %161 = llvm.getelementptr %157[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %162 = llvm.load %161 : !llvm.ptr -> f64
          %163 = llvm.fmul %152, %162  : f64
          %164 = llvm.extractvalue %120[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %165 = llvm.mlir.constant(2 : index) : i64
          %166 = llvm.mul %142, %165 : i64
          %167 = llvm.add %166, %155 : i64
          %168 = llvm.getelementptr %164[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %169 = llvm.load %168 : !llvm.ptr -> f64
          %170 = llvm.fadd %169, %163  : f64
          %171 = llvm.extractvalue %120[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %172 = llvm.mlir.constant(2 : index) : i64
          %173 = llvm.mul %142, %172 : i64
          %174 = llvm.add %173, %155 : i64
          %175 = llvm.getelementptr %171[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %170, %175 : f64, !llvm.ptr
          %176 = llvm.add %154, %4 : i64
          %177 = builtin.unrealized_conversion_cast %176 : i64 to index
          cf.br ^bb3(%177 : index)
        ^bb5:  // pred: ^bb3
          %178 = llvm.add %144, %4 : i64
          %179 = builtin.unrealized_conversion_cast %178 : i64 to index
          cf.br ^bb1(%179 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.alloca %134 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %120, %135 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %138 = llvm.insertvalue %136, %137[0] : !llvm.struct<(i64, ptr)> 
    %139 = llvm.insertvalue %135, %138[1] : !llvm.struct<(i64, ptr)> 
    %140 = llvm.extractvalue %139[0] : !llvm.struct<(i64, ptr)> 
    %141 = llvm.extractvalue %139[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%140, %141) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertOpenMPToLLVMPass (convert-openmp-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = builtin.unrealized_conversion_cast %8 : i64 to index
    %10 = builtin.unrealized_conversion_cast %9 : index to i64
    %11 = llvm.mlir.constant(4 : i64) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = builtin.unrealized_conversion_cast %12 : index to i64
    %14 = llvm.mlir.constant(8 : index) : i64
    %15 = llvm.mlir.constant(4 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(32 : index) : i64
    %18 = llvm.mlir.zero : !llvm.ptr
    %19 = llvm.getelementptr %18[%17] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %20 = llvm.ptrtoint %19 : !llvm.ptr to i64
    %21 = llvm.mlir.constant(32 : index) : i64
    %22 = llvm.add %20, %21 : i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.sub %21, %25 : i64
    %27 = llvm.add %24, %26 : i64
    %28 = llvm.urem %27, %21  : i64
    %29 = llvm.sub %27, %28 : i64
    %30 = llvm.inttoptr %29 : i64 to !llvm.ptr
    %31 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %32 = llvm.insertvalue %23, %31[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %14, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %15, %36[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %15, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %16, %38[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%40: i64):  // 2 preds: ^bb0, ^bb5
    %41 = builtin.unrealized_conversion_cast %40 : i64 to index
    %42 = llvm.icmp "slt" %40, %2 : i64
    llvm.cond_br %42, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%43: i64):  // 2 preds: ^bb2, ^bb4
    %44 = builtin.unrealized_conversion_cast %43 : i64 to index
    %45 = llvm.icmp "slt" %43, %1 : i64
    llvm.cond_br %45, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %46 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mul %40, %47 : i64
    %49 = llvm.add %48, %43 : i64
    %50 = llvm.getelementptr %46[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %50 : f64, !llvm.ptr
    %51 = llvm.add %43, %3 : i64
    llvm.br ^bb3(%51 : i64)
  ^bb5:  // pred: ^bb3
    %52 = llvm.add %40, %3 : i64
    llvm.br ^bb1(%52 : i64)
  ^bb6:  // pred: ^bb1
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(8 : index) : i64
    %57 = llvm.mlir.zero : !llvm.ptr
    %58 = llvm.getelementptr %57[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %59 = llvm.ptrtoint %58 : !llvm.ptr to i64
    %60 = llvm.mlir.constant(32 : index) : i64
    %61 = llvm.add %59, %60 : i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr
    %63 = llvm.ptrtoint %62 : !llvm.ptr to i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.sub %60, %64 : i64
    %66 = llvm.add %63, %65 : i64
    %67 = llvm.urem %66, %60  : i64
    %68 = llvm.sub %66, %67 : i64
    %69 = llvm.inttoptr %68 : i64 to !llvm.ptr
    %70 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %71 = llvm.insertvalue %62, %70[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.insertvalue %53, %74[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.insertvalue %54, %75[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.insertvalue %54, %76[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.insertvalue %55, %77[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%79: i64):  // 2 preds: ^bb6, ^bb11
    %80 = builtin.unrealized_conversion_cast %79 : i64 to index
    %81 = llvm.icmp "slt" %79, %1 : i64
    llvm.cond_br %81, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%82: i64):  // 2 preds: ^bb8, ^bb10
    %83 = builtin.unrealized_conversion_cast %82 : i64 to index
    %84 = llvm.icmp "slt" %82, %0 : i64
    llvm.cond_br %84, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %85 = llvm.extractvalue %78[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mul %79, %86 : i64
    %88 = llvm.add %87, %82 : i64
    %89 = llvm.getelementptr %85[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %89 : f64, !llvm.ptr
    %90 = llvm.add %82, %3 : i64
    llvm.br ^bb9(%90 : i64)
  ^bb11:  // pred: ^bb9
    %91 = llvm.add %79, %3 : i64
    llvm.br ^bb7(%91 : i64)
  ^bb12:  // pred: ^bb7
    %92 = llvm.mlir.constant(8 : index) : i64
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(16 : index) : i64
    %96 = llvm.mlir.zero : !llvm.ptr
    %97 = llvm.getelementptr %96[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %98 = llvm.ptrtoint %97 : !llvm.ptr to i64
    %99 = llvm.mlir.constant(32 : index) : i64
    %100 = llvm.add %98, %99 : i64
    %101 = llvm.call @malloc(%100) : (i64) -> !llvm.ptr
    %102 = llvm.ptrtoint %101 : !llvm.ptr to i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.sub %99, %103 : i64
    %105 = llvm.add %102, %104 : i64
    %106 = llvm.urem %105, %99  : i64
    %107 = llvm.sub %105, %106 : i64
    %108 = llvm.inttoptr %107 : i64 to !llvm.ptr
    %109 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %110 = llvm.insertvalue %101, %109[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.insertvalue %108, %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.insertvalue %112, %111[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.insertvalue %92, %113[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.insertvalue %93, %114[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.insertvalue %93, %115[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.insertvalue %94, %116[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%118: i64):  // 2 preds: ^bb12, ^bb17
    %119 = builtin.unrealized_conversion_cast %118 : i64 to index
    %120 = llvm.icmp "slt" %118, %2 : i64
    llvm.cond_br %120, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%121: i64):  // 2 preds: ^bb14, ^bb16
    %122 = builtin.unrealized_conversion_cast %121 : i64 to index
    %123 = llvm.icmp "slt" %121, %0 : i64
    llvm.cond_br %123, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %124 = llvm.extractvalue %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %118, %125 : i64
    %127 = llvm.add %126, %121 : i64
    %128 = llvm.getelementptr %124[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %128 : f64, !llvm.ptr
    %129 = llvm.add %121, %3 : i64
    llvm.br ^bb15(%129 : i64)
  ^bb17:  // pred: ^bb15
    %130 = llvm.add %118, %3 : i64
    llvm.br ^bb13(%130 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%4) to (%2) step (%3) {
          %139 = builtin.unrealized_conversion_cast %arg0 : i64 to index
          %140 = builtin.unrealized_conversion_cast %139 : index to i64
          llvm.br ^bb1(%4 : i64)
        ^bb1(%141: i64):  // 2 preds: ^bb0, ^bb5
          %142 = builtin.unrealized_conversion_cast %141 : i64 to index
          %143 = builtin.unrealized_conversion_cast %142 : index to i64
          %144 = builtin.unrealized_conversion_cast %142 : index to i64
          %145 = llvm.icmp "slt" %143, %13 : i64
          llvm.cond_br %145, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %146 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %147 = llvm.mlir.constant(4 : index) : i64
          %148 = llvm.mul %140, %147 : i64
          %149 = llvm.add %148, %144 : i64
          %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %151 = llvm.load %150 : !llvm.ptr -> f64
          llvm.br ^bb3(%4 : i64)
        ^bb3(%152: i64):  // 2 preds: ^bb2, ^bb4
          %153 = builtin.unrealized_conversion_cast %152 : i64 to index
          %154 = builtin.unrealized_conversion_cast %153 : index to i64
          %155 = builtin.unrealized_conversion_cast %153 : index to i64
          %156 = llvm.icmp "slt" %154, %10 : i64
          llvm.cond_br %156, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %157 = llvm.extractvalue %78[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %158 = llvm.mlir.constant(2 : index) : i64
          %159 = llvm.mul %144, %158 : i64
          %160 = llvm.add %159, %155 : i64
          %161 = llvm.getelementptr %157[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %162 = llvm.load %161 : !llvm.ptr -> f64
          %163 = llvm.fmul %151, %162  : f64
          %164 = llvm.extractvalue %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %165 = llvm.mlir.constant(2 : index) : i64
          %166 = llvm.mul %140, %165 : i64
          %167 = llvm.add %166, %155 : i64
          %168 = llvm.getelementptr %164[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %169 = llvm.load %168 : !llvm.ptr -> f64
          %170 = llvm.fadd %169, %163  : f64
          %171 = llvm.extractvalue %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %172 = llvm.mlir.constant(2 : index) : i64
          %173 = llvm.mul %140, %172 : i64
          %174 = llvm.add %173, %155 : i64
          %175 = llvm.getelementptr %171[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %170, %175 : f64, !llvm.ptr
          %176 = llvm.add %154, %3 : i64
          llvm.br ^bb3(%176 : i64)
        ^bb5:  // pred: ^bb3
          %177 = llvm.add %143, %3 : i64
          llvm.br ^bb1(%177 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.alloca %131 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %117, %132 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %135 = llvm.insertvalue %133, %134[0] : !llvm.struct<(i64, ptr)> 
    %136 = llvm.insertvalue %132, %135[1] : !llvm.struct<(i64, ptr)> 
    %137 = llvm.extractvalue %136[0] : !llvm.struct<(i64, ptr)> 
    %138 = llvm.extractvalue %136[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%137, %138) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = llvm.mlir.constant(4 : i64) : i64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.getelementptr %14[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %16 = llvm.ptrtoint %15 : !llvm.ptr to i64
    %17 = llvm.mlir.constant(32 : index) : i64
    %18 = llvm.add %16, %17 : i64
    %19 = llvm.call @malloc(%18) : (i64) -> !llvm.ptr
    %20 = llvm.ptrtoint %19 : !llvm.ptr to i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.sub %17, %21 : i64
    %23 = llvm.add %20, %22 : i64
    %24 = llvm.urem %23, %17  : i64
    %25 = llvm.sub %23, %24 : i64
    %26 = llvm.inttoptr %25 : i64 to !llvm.ptr
    %27 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %28 = llvm.insertvalue %19, %27[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %10, %31[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %11, %32[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %11, %33[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %12, %34[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb5
    %37 = llvm.icmp "slt" %36, %2 : i64
    llvm.cond_br %37, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = llvm.icmp "slt" %38, %1 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mul %36, %41 : i64
    %43 = llvm.add %42, %38 : i64
    %44 = llvm.getelementptr %40[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %44 : f64, !llvm.ptr
    %45 = llvm.add %38, %3 : i64
    llvm.br ^bb3(%45 : i64)
  ^bb5:  // pred: ^bb3
    %46 = llvm.add %36, %3 : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(8 : index) : i64
    %51 = llvm.mlir.zero : !llvm.ptr
    %52 = llvm.getelementptr %51[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(32 : index) : i64
    %55 = llvm.add %53, %54 : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %54, %58 : i64
    %60 = llvm.add %57, %59 : i64
    %61 = llvm.urem %60, %54  : i64
    %62 = llvm.sub %60, %61 : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr
    %64 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %47, %68[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %48, %69[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %48, %70[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %49, %71[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = llvm.icmp "slt" %73, %1 : i64
    llvm.cond_br %74, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%75: i64):  // 2 preds: ^bb8, ^bb10
    %76 = llvm.icmp "slt" %75, %0 : i64
    llvm.cond_br %76, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %77 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mul %73, %78 : i64
    %80 = llvm.add %79, %75 : i64
    %81 = llvm.getelementptr %77[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %81 : f64, !llvm.ptr
    %82 = llvm.add %75, %3 : i64
    llvm.br ^bb9(%82 : i64)
  ^bb11:  // pred: ^bb9
    %83 = llvm.add %73, %3 : i64
    llvm.br ^bb7(%83 : i64)
  ^bb12:  // pred: ^bb7
    %84 = llvm.mlir.constant(8 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(16 : index) : i64
    %88 = llvm.mlir.zero : !llvm.ptr
    %89 = llvm.getelementptr %88[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.mlir.constant(32 : index) : i64
    %92 = llvm.add %90, %91 : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr
    %94 = llvm.ptrtoint %93 : !llvm.ptr to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %91, %95 : i64
    %97 = llvm.add %94, %96 : i64
    %98 = llvm.urem %97, %91  : i64
    %99 = llvm.sub %97, %98 : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr
    %101 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %84, %105[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %85, %106[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %85, %107[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %86, %108[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%110: i64):  // 2 preds: ^bb12, ^bb17
    %111 = llvm.icmp "slt" %110, %2 : i64
    llvm.cond_br %111, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%112: i64):  // 2 preds: ^bb14, ^bb16
    %113 = llvm.icmp "slt" %112, %0 : i64
    llvm.cond_br %113, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %114 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %110, %115 : i64
    %117 = llvm.add %116, %112 : i64
    %118 = llvm.getelementptr %114[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %118 : f64, !llvm.ptr
    %119 = llvm.add %112, %3 : i64
    llvm.br ^bb15(%119 : i64)
  ^bb17:  // pred: ^bb15
    %120 = llvm.add %110, %3 : i64
    llvm.br ^bb13(%120 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%4) to (%2) step (%3) {
          llvm.br ^bb1(%4 : i64)
        ^bb1(%129: i64):  // 2 preds: ^bb0, ^bb5
          %130 = llvm.icmp "slt" %129, %9 : i64
          llvm.cond_br %130, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %131 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %132 = llvm.mlir.constant(4 : index) : i64
          %133 = llvm.mul %arg0, %132 : i64
          %134 = llvm.add %133, %129 : i64
          %135 = llvm.getelementptr %131[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %136 = llvm.load %135 : !llvm.ptr -> f64
          llvm.br ^bb3(%4 : i64)
        ^bb3(%137: i64):  // 2 preds: ^bb2, ^bb4
          %138 = llvm.icmp "slt" %137, %8 : i64
          llvm.cond_br %138, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %139 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %140 = llvm.mlir.constant(2 : index) : i64
          %141 = llvm.mul %129, %140 : i64
          %142 = llvm.add %141, %137 : i64
          %143 = llvm.getelementptr %139[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %144 = llvm.load %143 : !llvm.ptr -> f64
          %145 = llvm.fmul %136, %144  : f64
          %146 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %147 = llvm.mlir.constant(2 : index) : i64
          %148 = llvm.mul %arg0, %147 : i64
          %149 = llvm.add %148, %137 : i64
          %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %151 = llvm.load %150 : !llvm.ptr -> f64
          %152 = llvm.fadd %151, %145  : f64
          %153 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %154 = llvm.mlir.constant(2 : index) : i64
          %155 = llvm.mul %arg0, %154 : i64
          %156 = llvm.add %155, %137 : i64
          %157 = llvm.getelementptr %153[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %152, %157 : f64, !llvm.ptr
          %158 = llvm.add %137, %3 : i64
          llvm.br ^bb3(%158 : i64)
        ^bb5:  // pred: ^bb3
          %159 = llvm.add %129, %3 : i64
          llvm.br ^bb1(%159 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.alloca %121 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %109, %122 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %125 = llvm.insertvalue %123, %124[0] : !llvm.struct<(i64, ptr)> 
    %126 = llvm.insertvalue %122, %125[1] : !llvm.struct<(i64, ptr)> 
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(i64, ptr)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%127, %128) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = llvm.mlir.constant(4 : i64) : i64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.getelementptr %14[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %16 = llvm.ptrtoint %15 : !llvm.ptr to i64
    %17 = llvm.mlir.constant(32 : index) : i64
    %18 = llvm.add %16, %17 : i64
    %19 = llvm.call @malloc(%18) : (i64) -> !llvm.ptr
    %20 = llvm.ptrtoint %19 : !llvm.ptr to i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.sub %17, %21 : i64
    %23 = llvm.add %20, %22 : i64
    %24 = llvm.urem %23, %17  : i64
    %25 = llvm.sub %23, %24 : i64
    %26 = llvm.inttoptr %25 : i64 to !llvm.ptr
    %27 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %28 = llvm.insertvalue %19, %27[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %10, %31[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %11, %32[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %11, %33[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %12, %34[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb5
    %37 = llvm.icmp "slt" %36, %2 : i64
    llvm.cond_br %37, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = llvm.icmp "slt" %38, %1 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mul %36, %41 : i64
    %43 = llvm.add %42, %38 : i64
    %44 = llvm.getelementptr %40[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %44 : f64, !llvm.ptr
    %45 = llvm.add %38, %3 : i64
    llvm.br ^bb3(%45 : i64)
  ^bb5:  // pred: ^bb3
    %46 = llvm.add %36, %3 : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(8 : index) : i64
    %51 = llvm.mlir.zero : !llvm.ptr
    %52 = llvm.getelementptr %51[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(32 : index) : i64
    %55 = llvm.add %53, %54 : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %54, %58 : i64
    %60 = llvm.add %57, %59 : i64
    %61 = llvm.urem %60, %54  : i64
    %62 = llvm.sub %60, %61 : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr
    %64 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %47, %68[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %48, %69[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %48, %70[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %49, %71[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = llvm.icmp "slt" %73, %1 : i64
    llvm.cond_br %74, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%75: i64):  // 2 preds: ^bb8, ^bb10
    %76 = llvm.icmp "slt" %75, %0 : i64
    llvm.cond_br %76, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %77 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mul %73, %78 : i64
    %80 = llvm.add %79, %75 : i64
    %81 = llvm.getelementptr %77[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %81 : f64, !llvm.ptr
    %82 = llvm.add %75, %3 : i64
    llvm.br ^bb9(%82 : i64)
  ^bb11:  // pred: ^bb9
    %83 = llvm.add %73, %3 : i64
    llvm.br ^bb7(%83 : i64)
  ^bb12:  // pred: ^bb7
    %84 = llvm.mlir.constant(8 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(16 : index) : i64
    %88 = llvm.mlir.zero : !llvm.ptr
    %89 = llvm.getelementptr %88[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.mlir.constant(32 : index) : i64
    %92 = llvm.add %90, %91 : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr
    %94 = llvm.ptrtoint %93 : !llvm.ptr to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %91, %95 : i64
    %97 = llvm.add %94, %96 : i64
    %98 = llvm.urem %97, %91  : i64
    %99 = llvm.sub %97, %98 : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr
    %101 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %84, %105[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %85, %106[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %85, %107[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %86, %108[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%110: i64):  // 2 preds: ^bb12, ^bb17
    %111 = llvm.icmp "slt" %110, %2 : i64
    llvm.cond_br %111, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%112: i64):  // 2 preds: ^bb14, ^bb16
    %113 = llvm.icmp "slt" %112, %0 : i64
    llvm.cond_br %113, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %114 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %110, %115 : i64
    %117 = llvm.add %116, %112 : i64
    %118 = llvm.getelementptr %114[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %118 : f64, !llvm.ptr
    %119 = llvm.add %112, %3 : i64
    llvm.br ^bb15(%119 : i64)
  ^bb17:  // pred: ^bb15
    %120 = llvm.add %110, %3 : i64
    llvm.br ^bb13(%120 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%4) to (%2) step (%3) {
          llvm.br ^bb1(%4 : i64)
        ^bb1(%129: i64):  // 2 preds: ^bb0, ^bb5
          %130 = llvm.icmp "slt" %129, %9 : i64
          llvm.cond_br %130, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %131 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %132 = llvm.mlir.constant(4 : index) : i64
          %133 = llvm.mul %arg0, %132 : i64
          %134 = llvm.add %133, %129 : i64
          %135 = llvm.getelementptr %131[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %136 = llvm.load %135 : !llvm.ptr -> f64
          llvm.br ^bb3(%4 : i64)
        ^bb3(%137: i64):  // 2 preds: ^bb2, ^bb4
          %138 = llvm.icmp "slt" %137, %8 : i64
          llvm.cond_br %138, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %139 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %140 = llvm.mlir.constant(2 : index) : i64
          %141 = llvm.mul %129, %140 : i64
          %142 = llvm.add %141, %137 : i64
          %143 = llvm.getelementptr %139[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %144 = llvm.load %143 : !llvm.ptr -> f64
          %145 = llvm.fmul %136, %144  : f64
          %146 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %147 = llvm.mlir.constant(2 : index) : i64
          %148 = llvm.mul %arg0, %147 : i64
          %149 = llvm.add %148, %137 : i64
          %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %151 = llvm.load %150 : !llvm.ptr -> f64
          %152 = llvm.fadd %151, %145  : f64
          %153 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %154 = llvm.mlir.constant(2 : index) : i64
          %155 = llvm.mul %arg0, %154 : i64
          %156 = llvm.add %155, %137 : i64
          %157 = llvm.getelementptr %153[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %152, %157 : f64, !llvm.ptr
          %158 = llvm.add %137, %3 : i64
          llvm.br ^bb3(%158 : i64)
        ^bb5:  // pred: ^bb3
          %159 = llvm.add %129, %3 : i64
          llvm.br ^bb1(%159 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.alloca %121 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %109, %122 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %125 = llvm.insertvalue %123, %124[0] : !llvm.struct<(i64, ptr)> 
    %126 = llvm.insertvalue %122, %125[1] : !llvm.struct<(i64, ptr)> 
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(i64, ptr)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%127, %128) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
