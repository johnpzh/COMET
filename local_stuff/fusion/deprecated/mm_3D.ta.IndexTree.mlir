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
    %5 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?x4xf64>
    %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    "ta.fill"(%4) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
    "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %7 = "it.itree"(%5) ({
    ^bb0(%arg0: tensor<?x?x4xf64>):
      %8 = "it.RootOp"() : () -> !it.index_tree
      %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> !it.domain
      %10 = "it.IndexOp"(%8, %9) : (!it.index_tree, !it.domain) -> !it.index
      %11 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> !it.domain
      %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
      %13 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %14 = "it.DomainOp"(%0) <{dim = 2 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> !it.domain
      %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %16 = "it.IndexOp"(%12, %15) : (!it.index, !it.domain) -> !it.index
      %17 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %18 = "it.IndexOp"(%16, %17) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %10) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %18, %pos_1) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %pos_3, %crd, %crd_0, %crd_2) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %12, %pos_5) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %16, %pos_7) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
      %20 = "it.OperandOp"(%0, %pos_5, %pos_7, %pos_9, %crd_4, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%4, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%4, %18, %pos_11) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %21 = "it.OperandOp"(%4, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %22 = "it.ComputeOp"(%18, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
      it.yield %22 : tensor<?x?x4xf64>
    }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
    "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
    "ta.print"(%0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    "ta.print"(%4) : (tensor<?x4xf64>) -> ()
    "ta.print"(%5) : (tensor<?x?x4xf64>) -> ()
    "ta.print"(%6) : (tensor<4x4xf64>) -> ()
    return
  }
}
