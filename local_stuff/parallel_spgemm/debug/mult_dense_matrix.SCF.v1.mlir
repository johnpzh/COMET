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