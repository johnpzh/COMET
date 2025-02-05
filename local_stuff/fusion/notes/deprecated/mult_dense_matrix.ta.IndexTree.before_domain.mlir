/// C[i, k] = A[i, j] * B[j, k];

module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>  /// %3 = A
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>  /// %4 = B
    %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>  /// %5 = C
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
    %6 = "it.itree"() ({
      %7 = "it.RootOp"() : () -> !it.index_tree
      %8 = "it.IndexOp"(%7) : (!it.index_tree) -> !it.index  /// %8 = i
      %9 = "it.IndexOp"(%8) : (!it.index) -> !it.index  /// %9 = j
      %10 = "it.IndexOp"(%9) : (!it.index) -> !it.index  /// %10 = k
      %crd, %pos = "it.IndexToTensorDim"(%5, %8) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)  /// %5 = C, %8 = i
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%5, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)  /// %5 = C, %10 = k
      %11 = "it.LHSOperandOp"(%5, %pos, %pos_1, %crd, %crd_0) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %8) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %9, %pos_3) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)  /// %3 = A, %9 = j
      %12 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %9) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %10, %pos_7) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
      %13 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
      %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
      it.yield %14 : tensor<8x2xf64>
    }) : () -> tensor<8x2xf64>
    "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    "ta.print"(%5) : (tensor<8x2xf64>) -> ()
    return
  }
}