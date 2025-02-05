module {
  func.func @main() {
    %0 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<2x2x2x2xf64>
    %1 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<2x2x2x2xf64>
    %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<2x2x2x2xf64>
    "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<2x2x2x2xf64>) -> ()
    "ta.fill"(%1) <{value = 3.600000e+00 : f64}> : (tensor<2x2x2x2xf64>) -> ()
    "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<2x2x2x2xf64>) -> ()
    %3 = "it.itree"() ({
      %4 = "it.RootOp"() : () -> !it.index_tree
      %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<2x2x2x2xf64>) -> !it.domain
      %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
      %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<2x2x2x2xf64>) -> !it.domain
      %8 = "it.IndexOp"(%6, %7) : (!it.index, !it.domain) -> !it.index
      %9 = "it.DomainOp"(%1) <{dim = 2 : ui32, format = 0 : i32}> : (tensor<2x2x2x2xf64>) -> !it.domain
      %10 = "it.IndexOp"(%8, %9) : (!it.index, !it.domain) -> !it.index
      %11 = "it.DomainOp"(%0) <{dim = 2 : ui32, format = 0 : i32}> : (tensor<2x2x2x2xf64>) -> !it.domain
      %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
      %13 = "it.DomainOp"(%1) <{dim = 3 : ui32, format = 0 : i32}> : (tensor<2x2x2x2xf64>) -> !it.domain
      %14 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<2x2x2x2xf64>) -> !it.domain
      %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %16 = "it.IndexOp"(%12, %15) : (!it.index, !it.domain) -> !it.index
      %17 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<2x2x2x2xf64>) -> !it.domain
      %18 = "it.DomainOp"(%0) <{dim = 3 : ui32, format = 0 : i32}> : (tensor<2x2x2x2xf64>) -> !it.domain
      %19 = "it.DomainIntersectionOp"(%18, %17) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %20 = "it.IndexOp"(%16, %19) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%2, %6) <{dim = 0 : ui32}> : (tensor<2x2x2x2xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%2, %8, %pos) <{dim = 1 : ui32}> : (tensor<2x2x2x2xf64>, !it.index, index) -> (index, index)
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%2, %10, %pos_1) <{dim = 2 : ui32}> : (tensor<2x2x2x2xf64>, !it.index, index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%2, %12, %pos_3) <{dim = 3 : ui32}> : (tensor<2x2x2x2xf64>, !it.index, index) -> (index, index)
      %21 = "it.LHSOperandOp"(%2, %pos, %pos_1, %pos_3, %pos_5, %crd, %crd_0, %crd_2, %crd_4) : (tensor<2x2x2x2xf64>, index, index, index, index, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<2x2x2x2xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<2x2x2x2xf64>, !it.index, index) -> (index, index)
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%0, %12, %pos_9) <{dim = 2 : ui32}> : (tensor<2x2x2x2xf64>, !it.index, index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%0, %20, %pos_11) <{dim = 3 : ui32}> : (tensor<2x2x2x2xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%0, %pos_7, %pos_9, %pos_11, %pos_13, %crd_6, %crd_8, %crd_10, %crd_12) : (tensor<2x2x2x2xf64>, index, index, index, index, index, index, index, index) -> !it.operand
      %crd_14, %pos_15 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<2x2x2x2xf64>, !it.index) -> (index, index)
      %crd_16, %pos_17 = "it.IndexToTensorDim"(%1, %20, %pos_15) <{dim = 1 : ui32}> : (tensor<2x2x2x2xf64>, !it.index, index) -> (index, index)
      %crd_18, %pos_19 = "it.IndexToTensorDim"(%1, %10, %pos_17) <{dim = 2 : ui32}> : (tensor<2x2x2x2xf64>, !it.index, index) -> (index, index)
      %crd_20, %pos_21 = "it.IndexToTensorDim"(%1, %16, %pos_19) <{dim = 3 : ui32}> : (tensor<2x2x2x2xf64>, !it.index, index) -> (index, index)
      %23 = "it.OperandOp"(%1, %pos_15, %pos_17, %pos_19, %pos_21, %crd_14, %crd_16, %crd_18, %crd_20) : (tensor<2x2x2x2xf64>, index, index, index, index, index, index, index, index) -> !it.operand
      %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<2x2x2x2xf64>
      it.yield %24 : tensor<2x2x2x2xf64>
    }) : () -> tensor<2x2x2x2xf64>
    "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<2x2x2x2xf64>, tensor<2x2x2x2xf64>) -> ()
    "ta.print"(%2) : (tensor<2x2x2x2xf64>) -> ()
    return
  }
}
