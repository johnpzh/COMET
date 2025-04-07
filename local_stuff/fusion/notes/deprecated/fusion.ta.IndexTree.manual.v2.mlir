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
///                 T[i] += B[i, k] * C[k, h];
///             }
///         }
///         for (i = 0 to NI) {
///             for (j = 0 to NJ) {
///                 A[i, j] += T[i] * D[h, j];
///             }
///             T[i] = 0;   /// Need reset here; Option 1
///         }
///         T = 0; /// Option 2
///     }
/// }



module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>  /// %0 = B, sparse
    %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %3 = C
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>  /// %4 = D
    %5 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %5 = A
    // %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>  /// %6 = T
    %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?xf64>  /// %6 = T
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
    %7 = "it.itree"(%5) ({
      %9 = "it.RootOp"() : () -> !it.index_tree
      %10 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain  /// %3 = C, %10 = h
      %11 = "it.IndexOp"(%9, %10) : (!it.index_tree, !it.domain) -> !it.index  /// %10 = h
      %12 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain  /// %0 = B, %12 = i
      %13 = "it.IndexOp"(%11, %12) : (!it.index, !it.domain) -> !it.index  /// %13 = i
      %14 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain  /// %3 = C, %14 = k
      %15 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain  /// %0 = B, %15 = k
      %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain  /// %16 = k
      %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index /// %16 = k
      %crd, %pos = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)  /// %6 = T, %13 = i
      // %crd_0, %pos_1 = "it.IndexToTensorDim"(%6, %11, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %6 = T, %11 = h
      // %18 = "it.LHSOperandOp"(%6, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %6 = T
      %18 = "it.LHSOperandOp"(%6, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand  /// %6 = T
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)   /// %0 = B, %13 = i
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %17, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)  /// %0 = B, %17 = k
      %19 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand  /// %0 = B
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %17) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %3 = C, %17 = k
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %11, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %3 = C, %11 = h
      %20 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %3 = C
      // %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>

      // "ta.print"(%6) : (tensor<?x4xf64>) -> ()
      // "ta.print"(%21) : (tensor<?x4xf64>) -> ()
      // "ta.set_op"(%21, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()

      %d14 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?xf64>) -> !it.domain  /// %6 = T, %14 = i
      // %d14 = "it.DomainOp"(%21) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain  /// %6 = T, %14 = i
      %d15 = "it.IndexOp"(%11, %d14) : (!it.index, !it.domain) -> !it.index  /// %15 = i
      %d16 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain  /// %4 = D, %d = j
      %d17 = "it.IndexOp"(%d15, %d16) : (!it.index, !it.domain) -> !it.index  /// %17 = j
      %dcrd, %dpos = "it.IndexToTensorDim"(%5, %d15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %5 = A, %15 = i
      %dcrd_0, %dpos_1 = "it.IndexToTensorDim"(%5, %d17, %dpos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %5 = A, %17 = j
      %d18 = "it.LHSOperandOp"(%5, %dpos, %dpos_1, %dcrd, %dcrd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand  /// %18 = A
      %dcrd_2, %dpos_3 = "it.IndexToTensorDim"(%6, %d15) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)  /// %6 = T, %15 = i
      // %dcrd_4, %dpos_5 = "it.IndexToTensorDim"(%6, %11, %dpos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %6 = T, %13 = h
      // %dcrd_2, %dpos_3 = "it.IndexToTensorDim"(%21, %d15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)  /// %6 = T, %15 = i
      // %dcrd_4, %dpos_5 = "it.IndexToTensorDim"(%21, %11, %dpos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)  /// %6 = T, %13 = h
      %d19 = "it.OperandOp"(%21, %dpos_3, %dcrd_2) : (tensor<?xf64>, index, index) -> !it.operand  /// %19 = T
      %dcrd_6, %dpos_7 = "it.IndexToTensorDim"(%4, %11) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)  /// %4 = D, %13 = h
      %dcrd_8, %dpos_9 = "it.IndexToTensorDim"(%4, %d17, %dpos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)  /// %4 = D, %17 = j
      %d20 = "it.OperandOp"(%4, %dpos_7, %dpos_9, %dcrd_6, %dcrd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand  /// %20 = D
      %d21 = "it.ComputeOp"(%d17, %d18, %d19, %d20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>

      ///
      /// Reset T. Need to add a new ComputeOp
      ///
      %dcrd_10, %dpos_11 = "it.IndexToTensorDim"(%21, %d15) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)  /// %6 = T, %15 = i
      // %dcrd_10, %dpos_11 = "it.IndexToTensorDim"(%21, %d17) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)  /// %6 = T, %15 = i
      %d22 = "it.LHSOperandOp"(%21, %dpos_11, %dcrd_10) : (tensor<?xf64>, index, index) -> !it.operand  /// %6 = T
      %cst = arith.constant 0.000000e+00 : f64
      %d23 = "it.OperandOp"(%cst) : (f64) -> !it.operand  /// 0.0, or Use a 1D tensor
      %d24 = "it.ComputeOp"(%d15, %d22, %d23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
      // %d24 = "it.ComputeOp"(%d17, %d22, %d23) <{compute_missing = false, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
      ///
      /// End Reset T
      ///
      // SetOp, ResetOp


      it.yield %d21 : tensor<?x4xf64>  /// %18 = T, %19 = B, %20 = C
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%5) : (tensor<?x4xf64>) -> ()

    //   it.yield %21 : tensor<?xf64>  /// %18 = T, %19 = B, %20 = C
    // }) : () -> tensor<?xf64>
    // "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    // "ta.print"(%5) : (tensor<?x4xf64>) -> ()
    return
  }
}
