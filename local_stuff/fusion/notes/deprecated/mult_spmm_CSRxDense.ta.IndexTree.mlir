module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>  /// %0 = A
    %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, index) -> index
    %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, index) -> index
    %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %3 = B
    %4 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %4 = C
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>) -> ()
    "ta.fill"(%3) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %5 = "it.itree"() ({
      %6 = "it.RootOp"() : () -> !it.index_tree
      %7 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>) -> !it.domain  /// %0 = A, %7 = a
      %8 = "it.IndexOp"(%6, %7) : (!it.index_tree, !it.domain) -> !it.index  /// %8 = a
      %9 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain  /// %3 = B, %9 = b
      %10 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>) -> !it.domain  /// %0 = A, %10 = b
      %11 = "it.DomainIntersectionOp"(%10, %9) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain  /// %11 = b
      %12 = "it.IndexOp"(%8, %11) : (!it.index, !it.domain) -> !it.index  /// %12 = b
      %13 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain  /// %3 = B, %13 = c
      %14 = "it.IndexOp"(%12, %13) : (!it.index, !it.domain) -> !it.index  /// %14 = c
      %crd, %pos = "it.IndexToTensorDim"(%4, %8) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %15 = "it.LHSOperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %8) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %12, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, !it.index, index) -> (index, index)
      %16 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %18 : tensor<?x4xf64>
    }) : () -> tensor<?x4xf64>
    "ta.set_op"(%5, %4) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%4) : (tensor<?x4xf64>) -> ()
    return
  }
}
