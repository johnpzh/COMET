module {
  func.func @main() {
    %0 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
    %1 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
    %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
    "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
    "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
    %3 = "it.itree"(%2) ({
      %4 = "it.RootOp"() : () -> !it.index_tree
      %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
      %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
      %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
      %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
      %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %10 = "it.IndexOp"(%6, %9) : (!it.index, !it.domain) -> !it.index
      %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
      %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%2, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%2, %12, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
      %13 = "it.LHSOperandOp"(%2, %pos, %pos_1, %crd, %crd_0) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %10, %pos_3) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
      %14 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %10) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %12, %pos_7) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
      %15 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
      %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
      it.yield %16 : tensor<8x2xf64>
    }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
    "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    "ta.print"(%2) : (tensor<8x2xf64>) -> ()
    return
  }
}
