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
/// void partial_fusion_index_tree()
/// {
///     for (h = 0 to NH) {
///         for (i = 0 to NI) {
///             for (k = 0 to NK) {
///                 T[i, h] += B[i, k] * C[k, h];
///             }
///             for (j = 0 to NJ) {
///                 A[i, j] += T[i, h] * D[h, j];
///             }
///         }
///     }
/// }

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
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %11:2 = "it.itree"(%10, %9) ({
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index  /// %13 = h
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index  /// %14 = i
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index  /// %15 = k
    %crd, %pos = "it.IndexToTensorDim"(%10, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %14 = i
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %13 = h
    %16 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %10 = T
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)  /// %14 = i
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %15, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)  /// %15 = k
    %17 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand  /// %4 = B
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %15 = k
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %13 = h
    %18 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %7 = C
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>  /// T = B * C
    %20 = "it.IndexOp"(%14) : (!it.index) -> !it.index  /// %20 = j
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%9, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %14 = i
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%9, %20, %pos_11) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %20 = j
    %21 = "it.LHSOperandOp"(%9, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %9 = A
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%19, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %14 = i
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%19, %13, %pos_15) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %13 = h
    %22 = "it.OperandOp"(%19, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %19 = T
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)  /// %13 = h
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%8, %20, %pos_19) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)  /// %20 = j
    %23 = "it.OperandOp"(%8, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand  /// %8 = D
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>  /// A = T * D
    it.yield %19, %24 : tensor<?x4xf64>, tensor<?x4xf64>
  }) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%11#0, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.set_op"(%11#1, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
}