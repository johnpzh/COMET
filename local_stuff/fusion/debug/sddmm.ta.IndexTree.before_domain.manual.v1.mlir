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
/// void sddmm_fusion_1()
/// {
///   for (i = 0 to NI) {
///     for (j = 0 to NJ) {  /// j here is sparse
///       for (k = 0 to NK) {
///         T[i][j] += C[i][k] * D[k][j];
///       }
///       A[i][j] += B[i][j] * T[i][j];
///     }
///   }
/// }
/// 
/// void sddmm_fusion_2()
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
  // %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>  /// %9 = T
  %t = arith.constant 0.000000e+00 : f64

  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  // "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  // %10 = "it.itree"(%9) ({
  // ^bb0(%arg0: tensor<?x?xf64>):
  %10:2 = "it.itree"(%t, %8) ({
  ^bb0(%arg0: f64, %arg1: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index  /// %13 = i
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index  /// %14 = j
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index  /// %15 = k
    // %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)  /// %arg0 = T
    // %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    // %16 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %16 = "it.LHSOperandOp"(%arg0) : (f64) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %15, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %t19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64


    %Acrd, %Apos = "it.IndexToTensorDim"(%arg1, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)  /// %arg1 = A
    %Acrd_0, %Apos_1 = "it.IndexToTensorDim"(%arg1, %14, %Apos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %A15 = "it.LHSOperandOp"(%arg1, %Apos, %Apos_1, %Acrd, %Acrd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %Bcrd_2, %Bpos_3 = "it.IndexToTensorDim"(%3, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)  /// %3 = B
    %Bcrd_4, %Bpos_5 = "it.IndexToTensorDim"(%3, %14, %Bpos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %B16 = "it.OperandOp"(%3, %Bpos_3, %Bpos_5, %Bcrd_2, %Bcrd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    // %Tcrd_6, %Tpos_7 = "it.IndexToTensorDim"(%T19, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    // %Tcrd_8, %Tpos_9 = "it.IndexToTensorDim"(%T19, %14, %Tpos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    // %T17 = "it.OperandOp"(%T19, %Tpos_7, %Tpos_9, %Tcrd_6, %Tcrd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %t17 = "it.OperandOp"(%t19) : (f64) -> !it.operand
    %A18 = "it.ComputeOp"(%14, %A15, %B16, %t17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  // //   it.yield %19 : tensor<?x?xf64>
  // // }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  // // "ta.set_op"(%10, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    it.yield %t19, %A18 : f64, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (f64, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> (f64, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>)
  "ta.set_op"(%10#1, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()

  /////////////////
  // %11 = "it.itree"(%8) ({
  // ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
  //   %12 = "it.RootOp"() : () -> !it.index_tree
  //   %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index  /// %13 = i
  //   %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index  /// %14 = j
  //   %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)  /// %arg0 = A
  //   %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
  //   %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
  //   %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
  //   %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
  //   %16 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
  //   %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
  //   %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
  //   %17 = "it.OperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
  //   %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  //   it.yield %18 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  // }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  // "ta.set_op"(%11, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  // "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}
}