/// T[i, j] = C[i, k] * D[k, j];
/// A[i, j] = B[i, j] .* T[i, j];

module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>  /// %0 = B
    %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, index) -> index
    %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, index) -> index
    %3 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %3 = C
    %4 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<4x?xf64>  /// %4 = D
    %5 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>  /// %5 = A
    %6 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>  /// %6 = T
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>) -> ()
    "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    %7 = "it.itree"() ({
      %9 = "it.RootOp"() : () -> !it.index_tree
      %10 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %11 = "it.IndexOp"(%9, %10) : (!it.index_tree, !it.domain) -> !it.index  /// %11 = i
      %12 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
      %13 = "it.IndexOp"(%11, %12) : (!it.index, !it.domain) -> !it.index  /// %13 = j
      %14 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
      %15 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index  /// %17 = k
      %crd, %pos = "it.IndexToTensorDim"(%6, %11) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)  /// %6 = T, %11 = i
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%6, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)  /// %6 = T, %13 = j
      %18 = "it.LHSOperandOp"(%6, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %11) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %17, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %3 = C, %17 = k
      %19 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %17) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
      %20 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
      %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
      it.yield %21 : tensor<?x?xf64>
    }) : () -> tensor<?x?xf64>
    "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    %8 = "it.itree"() ({
      %9 = "it.RootOp"() : () -> !it.index_tree
      %10 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
      %11 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>) -> !it.domain
      %12 = "it.DomainIntersectionOp"(%11, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %13 = "it.IndexOp"(%9, %12) : (!it.index_tree, !it.domain) -> !it.index  /// %13 = i
      %14 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
      %15 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>) -> !it.domain
      %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index  /// %17 = j
      %crd, %pos = "it.IndexToTensorDim"(%5, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)  /// %5 = A, %13 = i
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%5, %17, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)  /// %5 = A, %17 = j
      %18 = "it.LHSOperandOp"(%5, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %17, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%6, %17, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
      %20 = "it.OperandOp"(%6, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
      %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
      it.yield %21 : tensor<?x?xf64>
    }) : () -> tensor<?x?xf64>
    "ta.set_op"(%8, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    "ta.print"(%6) : (tensor<?x?xf64>) -> ()
    "ta.print"(%5) : (tensor<?x?xf64>) -> ()
    return
  }
}
