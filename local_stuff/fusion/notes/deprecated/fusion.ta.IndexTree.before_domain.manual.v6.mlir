/// GNN kernel A = B * C * D
/// B is sparse
/// T[i, h] = B[i, k] * C[k, h];
/// A[i, j] = T[i, h] * D[h, j];
/// 
/// void no_fution_index_tree()
/// {
///     for (h = 0 to NH) {
///         for (i = 0 to NI) {
///             for (k = 0 to NK) {
///                 T[i, h] += B[i, k] * C[k, h];
///             }
///         }
///     }
///     for (h = 0 to NH) {
///         for (i = 0 to NI) {
///             for (j = 0 to NJ) {
///                 A[i, j] += T[i, h] * D[h, j];
///             }
///         }
///     }
/// }
/// void partial_fusion_index_tree_v1()
/// {
///     for (h = 0 to NH) {
///         for (i = 0 to NI) {
///             for (k = 0 to NK) {
///                 T[i] += B[i, k] * C[k, h];
///             }
///         }
///         for (i = 0 to NI) {
///             for (j = 0 to NJ) {
///                 A[i, j] += T[i] * D[h, j];
///             }
///             T[i] = 0;
///         }
///     }
/// }
/// void partial_fusion_index_tree_v2()
/// {
///     for (h = 0 to NH) {
///         for (i = 0 to NI) {
///             t;
///             for (k = 0 to NK) {
///                 t += B[i, k] * C[k, h];
///             }
///             for (j = 0 to NJ) {
///                 A[i, j] += t * D[h, j];
///             }
///             t = 0;  /// Don't need this anymore
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
    // %t = arith.constant 0.000000e+00 : f64
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %11 = "it.itree"(%10) ({
    // %11 = "it.itree"(%t) ({
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index  /// %14 = h
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index  /// %15 = i
      %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index  /// %16 = k
      %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %T = T, %15 = i
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %14 = h
      %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      // %17 = "it.LHSOperandOp"(%t) : (f64) -> !it.operand
      // %17 = "it.LHSOperandOp"(%T, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)  /// %4 = B
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)  /// %16 = k
      %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %7 = C
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>  /// T = B * C

      // it.yield %20, %d24 : tensor<?x4xf64>, tensor<?xf64>
      it.yield %20 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    // }) : (f64) -> (f64)
    // "ta.set_op"(%11, %t) {__beta__ = 0.000000e+00 : f64} : (f64, f64) -> ()
    "ta.print"(%11) : (tensor<?x4xf64>) -> ()
    return
  }
}