module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %5 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %7 = "it.itree"(%6) ({
      %8 = "it.RootOp"() : () -> !it.index_tree
      %9 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %10 = "it.IndexOp"(%8, %9) : (!it.index_tree, !it.domain) -> !it.index
      %11 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
      %13 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %14 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %16 = "it.IndexOp"(%12, %15) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%6, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%6, %10, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.LHSOperandOp"(%6, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %10, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %20 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.print"(%7) : (tensor<?x4xf64>) -> ()
    return
  }
}
