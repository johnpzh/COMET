/// GNN kernel A = B * C * D
/// B is sparse
/// T[i, h] = B[i, k] * C[k, h];
/// A[i, j] = T[i, h] * D[h, j];
/// 
/// void no_fution_index_tree_v2()
/// {
///     for (i = 0 to NI) {
///         for (k = 0 to NK) {
///             for (h = 0 to NH) {
///                 T[i, h] += B[i, k] * C[k, h];
///             }
///         }
///     }
///     for (i = 0 to NI) {
///         for (h = 0 to NH) {
///             for (j = 0 to NJ) {
///                 A[i, j] += T[i, h] * D[h, j];
///             }
///         }
///     }
/// }
/// void no_fution_index_tree_v2()
/// {
///     for (i = 0 to NI) {
///         for (k = 0 to NK) {
///             for (h = 0 to NH) {
///                 T[h] += B[i, k] * C[k, h];
///             }
///         }
///         for (h = 0 to NH) {
///             for (j = 0 to NJ) {
///                 A[i, j] += T[h] * D[h, j];
///             }
///             T[h] = 0;
///         }
///     }
/// }



module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>  /// %4 = B
    %c0 = arith.constant 0 : index
    %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %7 = C
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>  /// %8 = D
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %9 = A
    %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %10 = T

    %T = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4xf64>  /// %10 = T

    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()

    "ta.fill"(%T) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()

    // %11 = "it.itree"(%10) ({
    // ^bb0(%arg0: tensor<?x4xf64>):
    %11:2 = "it.itree"(%T, %9) ({
    ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index  /// %14 = i
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index  /// %15 = k
      %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index  /// %16 = h
      // %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %16) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %17 = "it.LHSOperandOp"(%arg0, %pos_1, %crd_0) : (tensor<4xf64>, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %15, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      // %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      %T20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>

      %h15 = "it.IndexOp"(%14) : (!it.index) -> !it.index  /// %15 = h
      %j16 = "it.IndexOp"(%h15) : (!it.index) -> !it.index  /// %16 = j
      %Acrd, %Apos = "it.IndexToTensorDim"(%arg1, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %Acrd_0, %Apos_1 = "it.IndexToTensorDim"(%arg1, %j16, %Apos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %A17 = "it.LHSOperandOp"(%arg1, %Apos, %Apos_1, %Acrd, %Acrd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      // %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %Tcrd_4, %Tpos_5 = "it.IndexToTensorDim"(%T20, %h15) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %T18 = "it.OperandOp"(%T20, %Tpos_5, %Tcrd_4) : (tensor<4xf64>, index, index) -> !it.operand
      %Dcrd_6, %Dpos_7 = "it.IndexToTensorDim"(%8, %h15) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %Dcrd_8, %Dpos_9 = "it.IndexToTensorDim"(%8, %j16, %Dpos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %D19 = "it.OperandOp"(%8, %Dpos_7, %Dpos_9, %Dcrd_6, %Dcrd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %A20 = "it.ComputeOp"(%j16, %A17, %T18, %D19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>

      %Tcrd_0, %Tpos_1 = "it.IndexToTensorDim"(%T20, %h15) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %T_lhs = "it.LHSOperandOp"(%T20, %Tpos_1, %Tcrd_0) : (tensor<4xf64>, index, index) -> !it.operand
      %cst_0 = arith.constant 0.000000e+00 : f64
      %T_rhs = "it.OperandOp"(%cst_0) : (f64) -> !it.operand
      %T_reset = "it.ComputeOp"(%h15, %T_lhs, %T_rhs) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>


      // it.yield %20 : tensor<?x4xf64>
      it.yield %T_reset, %A20 : tensor<4xf64>, tensor<?x4xf64>
    }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
    // "ta.set_op"(%11, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    // %12 = "it.itree"(%9) ({
    // ^bb0(%arg0: tensor<?x4xf64>):
    //   %13 = "it.RootOp"() : () -> !it.index_tree
    //   %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index  /// %14 = i
    //   %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index  /// %15 = h
    //   %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index  /// %16 = j
    //   %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    //   %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    //   %17 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    //   %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    //   %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %15, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    //   %18 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    //   %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %15) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    //   %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    //   %19 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    //   %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    //   it.yield %20 : tensor<?x4xf64>
    // }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    // "ta.set_op"(%12, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.set_op"(%11#1, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%9) : (tensor<?x4xf64>) -> ()
    return
  }
}