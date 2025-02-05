/// SDDMM
/// A[i,j] = B[i,j] .* (C[i,k] * D[k,j]); 
/// A and B are sparse
/// T[i, j] = C[i, k] * D[k, j]
/// A[i, j] = B[i, j] .* T[i, j]
///
/// void sddmm_no_fusion()
/// {
///   for (i = 0 to NI) {
///     for (j = 0 to NJ) {  /// j here is dense
///       for (k = 0 to NK) {
///         T[i][j] += C[i][k] * D[k][j];
///       }
///     }
///   }
///   for (i = 0 to NI) {
///     for (j = 0 to NJ) {  /// j here is sparse
///       A[i][j] += B[i][j] .* T[i][j];
///     }
///   }
/// }
/// 
/// void sddmm_fusion()
/// {
///   for (i = 0 to NI) {
///     for (j = 0 to NJ) {  /// j here is sparse
///       for (k = 0 to NK) {
///         t += C[i][k] * D[k][j];
///       }
///       A[i][j] += B[i][j] * t;
///       t = 0;
///     }
///   }
/// }

module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>  /// %3 = B
    %c0 = arith.constant 0 : index
    %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %6 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %6 = C
    %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<4x?xf64>  /// %7 = D
    %8 = "ta.spTensor_decl"(%4, %5) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>  /// %8 = A
    %cst = arith.constant 0.000000e+00 : f64
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
    %9:2 = "it.itree"(%cst, %8) ({
    ^bb0(%arg0: f64, %arg1: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
      %10 = "it.RootOp"() : () -> !it.index_tree
      %11 = "it.IndexOp"(%10) : (!it.index_tree) -> !it.index  /// %11 = i
      %12 = "it.IndexOp"(%11) : (!it.index) -> !it.index  /// %12 = j
      %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index  /// %13 = k
      %14 = "it.LHSOperandOp"(%arg0) : (f64) -> !it.operand
      %crd, %pos = "it.IndexToTensorDim"(%6, %11) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%6, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %15 = "it.OperandOp"(%6, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %13) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %12, %pos_3) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
      %16 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
      %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%arg1, %11) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg1, %12, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %18 = "it.LHSOperandOp"(%arg1, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%3, %11) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%3, %12, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%3, %pos_11, %pos_13, %crd_10, %crd_12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %20 = "it.OperandOp"(%17) : (f64) -> !it.operand
      %21 = "it.ComputeOp"(%12, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %22 = "it.LHSOperandOp"(%17) : (f64) -> !it.operand
      %cst_14 = arith.constant 0.000000e+00 : f64
      %23 = "it.OperandOp"(%cst_14) : (f64) -> !it.operand
      %24 = "it.ComputeOp"(%12, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
      it.yield %24, %21 : f64, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }) : (f64, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> (f64, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>)
    "ta.set_op"(%9#1, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
}