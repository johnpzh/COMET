module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
    %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %3 = "ta.dim"(%0, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %4 = "ta.dense_tensor_decl"(%3) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %5 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %7 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?x4xf64>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    "ta.fill"(%4) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%5) <{value = 3.400000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
    %8 = "it.itree"(%7) ({
    ^bb0(%arg0: tensor<?x?x4xf64>):
      %10 = "it.RootOp"() : () -> !it.index_tree
      %11 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> !it.domain
      %12 = "it.IndexOp"(%10, %11) : (!it.index_tree, !it.domain) -> !it.index
      %13 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> !it.domain
      %14 = "it.IndexOp"(%12, %13) : (!it.index, !it.domain) -> !it.index
      %15 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %16 = "it.DomainOp"(%0) <{dim = 2 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> !it.domain
      %17 = "it.DomainIntersectionOp"(%16, %15) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %18 = "it.IndexOp"(%14, %17) : (!it.index, !it.domain) -> !it.index
      %19 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %20 = "it.IndexOp"(%18, %19) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %20, %pos_1) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
      %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %pos_3, %crd, %crd_0, %crd_2) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %14, %pos_5) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %18, %pos_7) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%0, %pos_5, %pos_7, %pos_9, %crd_4, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%4, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%4, %20, %pos_11) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %23 = "it.OperandOp"(%4, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
      it.yield %24 : tensor<?x?x4xf64>
    }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
    "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
    %9 = "it.itree"(%6) ({
    ^bb0(%arg0: tensor<?x4xf64>):
      %10 = "it.RootOp"() : () -> !it.index_tree
      %11 = "it.DomainOp"(%7) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?x4xf64>) -> !it.domain
      %12 = "it.IndexOp"(%10, %11) : (!it.index_tree, !it.domain) -> !it.index
      %13 = "it.DomainOp"(%5) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %14 = "it.DomainOp"(%7) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?x4xf64>) -> !it.domain
      %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %16 = "it.IndexOp"(%12, %15) : (!it.index, !it.domain) -> !it.index
      %17 = "it.DomainOp"(%5) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %18 = "it.DomainOp"(%7) <{dim = 2 : ui32, format = 0 : i32}> : (tensor<?x?x4xf64>) -> !it.domain
      %19 = "it.DomainIntersectionOp"(%18, %17) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %20 = "it.IndexOp"(%16, %19) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %20, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %12) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %16, %pos_3) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %20, %pos_5) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%7, %pos_3, %pos_5, %pos_7, %crd_2, %crd_4, %crd_6) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%5, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%5, %20, %pos_9) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %23 = "it.OperandOp"(%5, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %24 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.set_op"(%9, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%6) : (tensor<?x4xf64>) -> ()
    return
  }
}
