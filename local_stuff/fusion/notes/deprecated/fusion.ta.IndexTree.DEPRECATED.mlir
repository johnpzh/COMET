/// T[i, h] = B[i, k] * C[k, h];
/// A[i, j] = T[i, h] * D[h, j];

module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>  /// %0 = B
    %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, index) -> index
    %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, index) -> index
    %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %3 = C
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>  /// %4 = D
    %5 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %5 = A
    %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %6 = T
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>) -> ()
    "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %7 = "it.itree"() ({
      %9 = "it.RootOp"() : () -> !it.index_tree
      %10 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain  /// %3 = C, %10 = h
      %11 = "it.IndexOp"(%9, %10) : (!it.index_tree, !it.domain) -> !it.index  /// %10 = h
      %12 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>) -> !it.domain  /// %0 = B, %12 = i
      %13 = "it.IndexOp"(%11, %12) : (!it.index, !it.domain) -> !it.index  /// %12 = i
      %14 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain  /// %3 = C, %14 = k
      %15 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>) -> !it.domain  /// %0 = B, %15 = k
      %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain  /// %16 = k
      %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index /// %16 = k
      %crd, %pos = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %6 = T, %13 = i
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%6, %11, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %6 = T, %11 = h
      %18 = "it.LHSOperandOp"(%6, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %6 = T
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, !it.index) -> (index, index)   /// %0 = B, %13 = i
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %17, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, !it.index, index) -> (index, index)  /// %0 = B, %17 = k
      %19 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, [?, ?], [1, 0, 2, 0]>, index, index, index, index) -> !it.operand  /// %0 = B
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %17) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %3 = C, %17 = k
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %11, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %3 = C, %11 = h
      %20 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %3 = C
      %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %21 : tensor<?x4xf64>  /// %18 = T, %19 = B, %20 = C
    }) : () -> tensor<?x4xf64>
    "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    %8 = "it.itree"() ({
      %9 = "it.RootOp"() : () -> !it.index_tree
      %10 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain  /// %4 = D, %10 = h
      %11 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain  /// %6 = T, %11 = h
      %12 = "it.DomainIntersectionOp"(%11, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain  /// %12 = h
      %13 = "it.IndexOp"(%9, %12) : (!it.index_tree, !it.domain) -> !it.index  /// %13 = h
      %14 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain  /// %6 = T, %14 = i
      %15 = "it.IndexOp"(%13, %14) : (!it.index, !it.domain) -> !it.index  /// %15 = i
      %16 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain  /// %4 = D, %16 = j
      %17 = "it.IndexOp"(%15, %16) : (!it.index, !it.domain) -> !it.index  /// %17 = j
      %crd, %pos = "it.IndexToTensorDim"(%5, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %5 = A, %15 = i
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%5, %17, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %5 = A, %17 = j
      %18 = "it.LHSOperandOp"(%5, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %18 = A
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %6 = T, %15 = i
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %13, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %6 = T, %13 = h
      %19 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %19 = T
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)  /// %4 = D, %13 = h
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %17, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)  /// %4 = D, %17 = j
      %20 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand  /// %20 = D
      %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %21 : tensor<?x4xf64>  /// %18 = A, %19 = %, %20 = D
    }) : () -> tensor<?x4xf64>
    "ta.set_op"(%8, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%5) : (tensor<?x4xf64>) -> ()
    return
  }
}
