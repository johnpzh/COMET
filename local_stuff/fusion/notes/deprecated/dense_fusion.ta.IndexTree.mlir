/// T[i, h] = B[i, k] * C[k, h];
/// A[i, j] = T[i, h] * D[h, j];

module {
  func.func @main() {
    %0 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x6xf64>  /// %0 = B
    %1 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<6x4xf64>  /// %1 = C
    %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>  /// %2 = D
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>  /// %3 = A
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>  /// %4 = T
    "ta.fill"(%0) <{value = 1.700000e+00 : f64}> : (tensor<8x6xf64>) -> ()
    "ta.fill"(%1) <{value = 1.200000e+00 : f64}> : (tensor<6x4xf64>) -> ()
    "ta.fill"(%2) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%3) <{value = 0.000000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    %5 = "it.itree"() ({
      %7 = "it.RootOp"() : () -> !it.index_tree
      %8 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<6x4xf64>) -> !it.domain  /// %1 = C, %8 = h
      %9 = "it.IndexOp"(%7, %8) : (!it.index_tree, !it.domain) -> !it.index  /// %9 = h
      %10 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x6xf64>) -> !it.domain  /// %0 = B, %10 = i
      %11 = "it.IndexOp"(%9, %10) : (!it.index, !it.domain) -> !it.index  /// %11 = i
      %12 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<6x4xf64>) -> !it.domain  /// %1 = C, %12 = k
      %13 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x6xf64>) -> !it.domain  /// %0 = B, %13 = k
      %14 = "it.DomainIntersectionOp"(%13, %12) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain  /// %14 = k
      %15 = "it.IndexOp"(%11, %14) : (!it.index, !it.domain) -> !it.index  /// %15 = k
      %crd, %pos = "it.IndexToTensorDim"(%4, %11) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %9, %pos) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
      %16 = "it.LHSOperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %11) <{dim = 0 : ui32}> : (tensor<8x6xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %15, %pos_3) <{dim = 1 : ui32}> : (tensor<8x6xf64>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x6xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %15) <{dim = 0 : ui32}> : (tensor<6x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %9, %pos_7) <{dim = 1 : ui32}> : (tensor<6x4xf64>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<6x4xf64>, index, index, index, index) -> !it.operand
      %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x4xf64>
      it.yield %19 : tensor<8x4xf64>
    }) : () -> tensor<8x4xf64>
    "ta.set_op"(%5, %4) {__beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<8x4xf64>) -> ()
    %6 = "it.itree"() ({
      %7 = "it.RootOp"() : () -> !it.index_tree
      %8 = "it.DomainOp"(%2) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain  /// %2 = D, %8 = h
      %9 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain  /// %4 = T, %9 = h
      %10 = "it.DomainIntersectionOp"(%9, %8) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain  /// %10 = h
      %11 = "it.IndexOp"(%7, %10) : (!it.index_tree, !it.domain) -> !it.index  /// %11 = h
      %12 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain  /// %4 = T, %12 = i
      %13 = "it.IndexOp"(%11, %12) : (!it.index, !it.domain) -> !it.index  /// %13 = i
      %14 = "it.DomainOp"(%2) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain  /// %2 = D, %14 = j
      %15 = "it.IndexOp"(%13, %14) : (!it.index, !it.domain) -> !it.index  /// %15 = j
      %crd, %pos = "it.IndexToTensorDim"(%3, %13) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%3, %15, %pos) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
      %16 = "it.LHSOperandOp"(%3, %pos, %pos_1, %crd, %crd_0) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %13) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %11, %pos_3) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%2, %11) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%2, %15, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%2, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x4xf64>
      it.yield %19 : tensor<8x4xf64>
    }) : () -> tensor<8x4xf64>
    "ta.set_op"(%6, %3) {__beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<8x4xf64>) -> ()
    "ta.print"(%3) : (tensor<8x4xf64>) -> ()
    return
  }
}
