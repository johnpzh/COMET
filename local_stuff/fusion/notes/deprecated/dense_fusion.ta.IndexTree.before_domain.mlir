/// T[i, h] = B[i, k] * C[k, h];
/// A[i, j] = T[i, h] * D[h, j];

module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x6xf64>  /// %4 = B
    %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<6x4xf64>  /// %5 = C
    %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>  /// %6 = D
    %7 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>  /// %7 = A
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>  /// %8 = T
    "ta.fill"(%4) <{value = 1.700000e+00 : f64}> : (tensor<8x6xf64>) -> ()
    "ta.fill"(%5) <{value = 1.200000e+00 : f64}> : (tensor<6x4xf64>) -> ()
    "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    %9 = "it.itree"() ({
      %11 = "it.RootOp"() : () -> !it.index_tree
      %12 = "it.IndexOp"(%11) : (!it.index_tree) -> !it.index  /// %12 = h
      %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index  /// %13 = i
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index  /// %14 = k
      %crd, %pos = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)  /// %8 = T, %13 = i
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%8, %12, %pos) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)  /// %8 = T, %12 = h
      %15 = "it.LHSOperandOp"(%8, %pos, %pos_1, %crd, %crd_0) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %13) <{dim = 0 : ui32}> : (tensor<8x6xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<8x6xf64>, !it.index, index) -> (index, index)  /// %4 = B, %14 = k
      %16 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x6xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%5, %14) <{dim = 0 : ui32}> : (tensor<6x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%5, %12, %pos_7) <{dim = 1 : ui32}> : (tensor<6x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%5, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<6x4xf64>, index, index, index, index) -> !it.operand
      %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x4xf64>
      it.yield %18 : tensor<8x4xf64>
    }) : () -> tensor<8x4xf64>
    "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<8x4xf64>) -> ()
    %10 = "it.itree"() ({
      %11 = "it.RootOp"() : () -> !it.index_tree
      %12 = "it.IndexOp"(%11) : (!it.index_tree) -> !it.index  /// %12 = h
      %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index  /// %13 = i
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index  /// %14 = j
      %crd, %pos = "it.IndexToTensorDim"(%7, %13) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)  /// %7 = A, %13 = i
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%7, %14, %pos) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)  /// %7 = A, %14 = j
      %15 = "it.LHSOperandOp"(%7, %pos, %pos_1, %crd, %crd_0) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%8, %12, %pos_3) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)  /// %8 = T, %12 = h
      %16 = "it.OperandOp"(%8, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%6, %12) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%6, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%6, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x4xf64>
      it.yield %18 : tensor<8x4xf64>
    }) : () -> tensor<8x4xf64>
    "ta.set_op"(%10, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<8x4xf64>) -> ()
    "ta.print"(%7) : (tensor<8x4xf64>) -> ()
    return
  }
}