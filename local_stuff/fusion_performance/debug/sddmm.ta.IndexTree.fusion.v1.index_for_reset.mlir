/// SDDMM
/// A[i,j] = B[i,j] .* (C[i,k] * D[k,j]); 
/// A and B are sparse
/// T[i, j] = C[i, k] * D[k, j]
/// A[i, j] = B[i, j] .* T[i, j]
///

/// canonical order of labels
/// void sddmm_no_fusion()
/// {
///   for (i = 0 to NI) {
///     for (k = 0 to NK) {
///       for (j = 0 to NJ) {  /// j here is dense
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
/// void sddmm_fusion()
/// {
///   for (i = 0 to NI) {
///     for (k = 0 to NK) {
///       for (j = 0 to NJ) {  /// j here is dense
///         T[j] += C[i][k] * D[k][j];
///       }
///     }
///     for (j = 0 to NJ) {  /// j here is sparse
///       A[i][j] += B[i][j] * T[j];
///       T[j] = 0;
///     }
///   }
/// }

/// alphabetical order of labels
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
    %idx4 = index.constant 4
    %idx1 = index.constant 1
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>  /// %0 = B[i,j]
    %1 = "ta.SpTensorGetDimSize"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %2 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %3 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %dim = tensor.dim %2, %c0 : tensor<?xi64>
    %dim_0 = tensor.dim %3, %c0 : tensor<?xi64>
    %4 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %5 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %6 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %7 = C[i,k]
    %8 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<4x?xf64>  /// %8 = D[k,j]
    %dim_1 = tensor.dim %8, %idx1 : tensor<4x?xf64>
    %9 = "ta.spTensor_decl"(%5, %6) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>  /// %9 = A[i,j]
    %10 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?xf64>  /// %10 = T[j]

    %dim_jT = tensor.dim %10, %c0 : tensor<?xf64>

    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
    %11 = "ta.dense_tensor_decl"(%5, %6) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
    "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    %12:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):  /// %arg0 = A[i,j], %arg1 = T[j]
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.DenseDomainOp"(%1, %0, %7) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
      %15 = "it.IndexOp"(%13, %14) : (!it.index_tree, !it.domain) -> !it.index  /// %15 = i
      %16 = "it.DenseDomainOp"(%idx4, %7, %8) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
      %17 = "it.IndexOp"(%15, %16) : (!it.index, !it.domain) -> !it.index  /// %17 = k
      %18 = "it.DenseDomainOp"(%dim_1, %8) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
      %19 = "it.IndexOp"(%17, %18) : (!it.index, !it.domain) -> !it.index  /// %19 = j
      %crd, %pos = "it.IndexToTensorDim"(%arg1, %19) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
      %20 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %17, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %21 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %17) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
      %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %24 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos_11) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
      %25 = "it.IndexOp"(%15, %24) : (!it.index, !it.domain) -> !it.index  /// %25 = j
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_14, %pos_15 = "it.IndexToTensorDim"(%arg0, %25, %pos_13) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %26 = "it.LHSOperandOp"(%arg0, %pos_13, %pos_15, %crd_12, %crd_14) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_16, %pos_17 = "it.IndexToTensorDim"(%0, %25, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %27 = "it.OperandOp"(%0, %pos_11, %pos_17, %crd_10, %crd_16) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_18, %pos_19 = "it.IndexToTensorDim"(%23, %25) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
      %28 = "it.OperandOp"(%23, %pos_19, %crd_18) : (tensor<?xf64>, index, index) -> !it.operand
      %29 = "it.ComputeOp"(%25, %26, %27, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      
      // %domain_jT = "it.DenseDomainOp"(%dim_jT, %10) <{dims = [0 : i32]}> : (index, tensor<?xf64>) -> !it.domain
      // %jT = "it.IndexOp"(%15, %domain_jT) : (!it.index, !it.domain) -> !it.index  /// %jT = j
      %jT = "it.IndexOp"(%15, %18) : (!it.index, !it.domain) -> !it.index  /// %jT = j
      
      %crd_20, %pos_21 = "it.IndexToTensorDim"(%23, %jT) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
      %30 = "it.LHSOperandOp"(%23, %pos_21, %crd_20) : (tensor<?xf64>, index, index) -> !it.operand
      %cst = arith.constant 0.000000e+00 : f64
      %31 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      // %32 = "it.ComputeOp"(%25, %30, %31) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
      %32 = "it.ComputeOp"(%jT, %30, %31) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
      it.yield %29, %32 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
    }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
    "ta.set_op"(%12#0, %9) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
}
