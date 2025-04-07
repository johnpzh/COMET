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
/// void partial_fusion_index_tree_1()
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
/// void partial_fusion_index_tree_2()
/// {
///     for (h = 0 to NH) {
///         for (i = 0 to NI) {
///             for (k = 0 to NK) {
///                 t += B[i, k] * C[k, h];
///             }
///             for (j = 0 to NJ) {
///                 A[i, j] += t * D[h, j];
///             }
///             t = 0;
///         }
///     }
/// }


// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %11 = "it.itree"(%10) ({
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %20 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.set_op"(%11, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    %12 = "it.itree"(%9) ({
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%9, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%9, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.LHSOperandOp"(%9, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %14) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %20 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.set_op"(%12, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%9) : (tensor<?x4xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %11 = "it.itree"(%10) ({
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %20 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%11, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  %12 = "it.itree"(%9) ({
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%9, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%9, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.LHSOperandOp"(%9, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %14) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %20 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%12, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
}

/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:655 IndexTreeKernelFusion::runOnOperation()
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:657 module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %11 = "it.itree"(%10) ({
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %20 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.set_op"(%11, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    %12 = "it.itree"(%9) ({
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%9, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%9, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.LHSOperandOp"(%9, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %14) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %20 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.set_op"(%12, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%9) : (tensor<?x4xf64>) -> ()
    return
  }
}
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:662 %11 = "it.itree"(%10) ({
  %13 = "it.RootOp"() : () -> !it.index_tree
  %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
  %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
  %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
  %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
  %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
  %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
  %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
  it.yield %20 : tensor<?x4xf64>
}) : (tensor<?x4xf64>) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:662 %12 = "it.itree"(%9) ({
  %13 = "it.RootOp"() : () -> !it.index_tree
  %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
  %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
  %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
  %crd, %pos = "it.IndexToTensorDim"(%9, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %crd_0, %pos_1 = "it.IndexToTensorDim"(%9, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %17 = "it.LHSOperandOp"(%9, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %18 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %14) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
  %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
  %19 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
  %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
  it.yield %20 : tensor<?x4xf64>
}) : (tensor<?x4xf64>) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:66 %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:66 %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:66 %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:66 %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %14) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:66 %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd, %pos = "it.IndexToTensorDim"(%9, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:66 %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:71 %crd_0, %pos_1 = "it.IndexToTensorDim"(%9, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:126 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:126 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:133 3
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:133 3
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:690 %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:690 %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:186 %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:187 %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:188 %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:189 dim: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:190 idx: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:191 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:186 %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:187 %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:188 %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:189 dim: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:190 idx: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:191 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:228 %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:229 %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:230 %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:231 dim: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:232 idx: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:233 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:228 %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:229 %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:230 %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:231 dim: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:232 idx: 2
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:233 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:228 %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:229 %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:230 %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:231 dim: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:232 idx: 2
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:233 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:228 %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:229 %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:230 %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:231 dim: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:232 idx: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:233 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:186 %17 = "it.LHSOperandOp"(%9, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:187 %crd, %pos = "it.IndexToTensorDim"(%9, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:188 %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:189 dim: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:190 idx: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:191 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:186 %17 = "it.LHSOperandOp"(%9, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:187 %crd_0, %pos_1 = "it.IndexToTensorDim"(%9, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:188 %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:189 dim: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:190 idx: 2
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:191 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:228 %18 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:229 %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:230 %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:231 dim: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:232 idx: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:233 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:228 %18 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:229 %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:230 %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:231 dim: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:232 idx: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:233 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:228 %19 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:229 %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %14) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:230 %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:231 dim: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:232 idx: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:233 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:228 %19 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:229 %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:230 %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:231 dim: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:232 idx: 2
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:233 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:299 plusxy_times
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:300 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:299 plusxy_times
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:300 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:523 %13:2 = "it.itree"(%12, %11) ({
  %16 = "it.RootOp"() : () -> !it.index_tree
  %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
  %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
  %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  %20:2 = "it.IndexToTensorDim"(%12, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %21:2 = "it.IndexToTensorDim"(%12, %17, %20#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %22 = "it.LHSOperandOp"(%12, %20#1, %21#1, %20#0, %21#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %23:2 = "it.IndexToTensorDim"(%4, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
  %24:2 = "it.IndexToTensorDim"(%4, %19, %23#1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
  %25 = "it.OperandOp"(%4, %23#1, %24#1, %23#0, %24#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
  %26:2 = "it.IndexToTensorDim"(%9, %19) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %27:2 = "it.IndexToTensorDim"(%9, %17, %26#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %28 = "it.OperandOp"(%9, %26#1, %27#1, %26#0, %27#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %29 = "it.ComputeOp"(%19, %22, %25, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
  %30 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  "it.yield"(%29) : (tensor<?x4xf64>) -> ()
}) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:534 %13:2 = "it.itree"(%12, %11) ({
  %16 = "it.RootOp"() : () -> !it.index_tree
  %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
  %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
  %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  %20:2 = "it.IndexToTensorDim"(%12, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %21:2 = "it.IndexToTensorDim"(%12, %17, %20#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %22 = "it.LHSOperandOp"(%12, %20#1, %21#1, %20#0, %21#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %23:2 = "it.IndexToTensorDim"(%4, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
  %24:2 = "it.IndexToTensorDim"(%4, %19, %23#1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
  %25 = "it.OperandOp"(%4, %23#1, %24#1, %23#0, %24#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
  %26:2 = "it.IndexToTensorDim"(%9, %19) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %27:2 = "it.IndexToTensorDim"(%9, %17, %26#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %28 = "it.OperandOp"(%9, %26#1, %27#1, %26#0, %27#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %29 = "it.ComputeOp"(%19, %22, %25, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
  %30 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  %31:2 = "it.IndexToTensorDim"(%11, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %32:2 = "it.IndexToTensorDim"(%11, %30, %31#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %33 = "it.LHSOperandOp"(%11, %31#1, %32#1, %31#0, %32#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  "it.yield"(%29) : (tensor<?x4xf64>) -> ()
}) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:550 %13:2 = "it.itree"(%12, %11) ({
  %16 = "it.RootOp"() : () -> !it.index_tree
  %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
  %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
  %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  %20:2 = "it.IndexToTensorDim"(%12, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %21:2 = "it.IndexToTensorDim"(%12, %17, %20#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %22 = "it.LHSOperandOp"(%12, %20#1, %21#1, %20#0, %21#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %23:2 = "it.IndexToTensorDim"(%4, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
  %24:2 = "it.IndexToTensorDim"(%4, %19, %23#1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
  %25 = "it.OperandOp"(%4, %23#1, %24#1, %23#0, %24#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
  %26:2 = "it.IndexToTensorDim"(%9, %19) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %27:2 = "it.IndexToTensorDim"(%9, %17, %26#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %28 = "it.OperandOp"(%9, %26#1, %27#1, %26#0, %27#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %29 = "it.ComputeOp"(%19, %22, %25, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
  %30 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  %31:2 = "it.IndexToTensorDim"(%11, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %32:2 = "it.IndexToTensorDim"(%11, %30, %31#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %33 = "it.LHSOperandOp"(%11, %31#1, %32#1, %31#0, %32#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %34:2 = "it.IndexToTensorDim"(%29, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %35:2 = "it.IndexToTensorDim"(%29, %17, %34#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %36 = "it.OperandOp"(%29, %34#1, %35#1, %34#0, %35#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %37:2 = "it.IndexToTensorDim"(%10, %17) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
  %38:2 = "it.IndexToTensorDim"(%10, %30, %37#1) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
  %39 = "it.OperandOp"(%10, %37#1, %38#1, %37#0, %38#0) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
  "it.yield"(%29) : (tensor<?x4xf64>) -> ()
}) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:564 %13:2 = "it.itree"(%12, %11) ({
  %16 = "it.RootOp"() : () -> !it.index_tree
  %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
  %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
  %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  %20:2 = "it.IndexToTensorDim"(%12, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %21:2 = "it.IndexToTensorDim"(%12, %17, %20#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %22 = "it.LHSOperandOp"(%12, %20#1, %21#1, %20#0, %21#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %23:2 = "it.IndexToTensorDim"(%4, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
  %24:2 = "it.IndexToTensorDim"(%4, %19, %23#1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
  %25 = "it.OperandOp"(%4, %23#1, %24#1, %23#0, %24#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
  %26:2 = "it.IndexToTensorDim"(%9, %19) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %27:2 = "it.IndexToTensorDim"(%9, %17, %26#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %28 = "it.OperandOp"(%9, %26#1, %27#1, %26#0, %27#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %29 = "it.ComputeOp"(%19, %22, %25, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
  %30 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  %31:2 = "it.IndexToTensorDim"(%11, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %32:2 = "it.IndexToTensorDim"(%11, %30, %31#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %33 = "it.LHSOperandOp"(%11, %31#1, %32#1, %31#0, %32#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %34:2 = "it.IndexToTensorDim"(%29, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %35:2 = "it.IndexToTensorDim"(%29, %17, %34#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %36 = "it.OperandOp"(%29, %34#1, %35#1, %34#0, %35#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %37:2 = "it.IndexToTensorDim"(%10, %17) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
  %38:2 = "it.IndexToTensorDim"(%10, %30, %37#1) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
  %39 = "it.OperandOp"(%10, %37#1, %38#1, %37#0, %38#0) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
  %40 = "it.ComputeOp"(%30, %33, %36, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
  "it.yield"(%29) : (tensor<?x4xf64>) -> ()
}) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:565 
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:571 %13:2 = "it.itree"(%12, %11) ({
  %16 = "it.RootOp"() : () -> !it.index_tree
  %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
  %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
  %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  %20:2 = "it.IndexToTensorDim"(%12, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %21:2 = "it.IndexToTensorDim"(%12, %17, %20#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %22 = "it.LHSOperandOp"(%12, %20#1, %21#1, %20#0, %21#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %23:2 = "it.IndexToTensorDim"(%4, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
  %24:2 = "it.IndexToTensorDim"(%4, %19, %23#1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
  %25 = "it.OperandOp"(%4, %23#1, %24#1, %23#0, %24#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
  %26:2 = "it.IndexToTensorDim"(%9, %19) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %27:2 = "it.IndexToTensorDim"(%9, %17, %26#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %28 = "it.OperandOp"(%9, %26#1, %27#1, %26#0, %27#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %29 = "it.ComputeOp"(%19, %22, %25, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
  %30 = "it.IndexOp"(%18) : (!it.index) -> !it.index
  %31:2 = "it.IndexToTensorDim"(%11, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %32:2 = "it.IndexToTensorDim"(%11, %30, %31#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %33 = "it.LHSOperandOp"(%11, %31#1, %32#1, %31#0, %32#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %34:2 = "it.IndexToTensorDim"(%29, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
  %35:2 = "it.IndexToTensorDim"(%29, %17, %34#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
  %36 = "it.OperandOp"(%29, %34#1, %35#1, %34#0, %35#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
  %37:2 = "it.IndexToTensorDim"(%10, %17) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
  %38:2 = "it.IndexToTensorDim"(%10, %30, %37#1) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
  %39 = "it.OperandOp"(%10, %37#1, %38#1, %37#0, %38#0) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
  %40 = "it.ComputeOp"(%30, %33, %36, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
  "it.yield"(%29, %40) : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
}) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/KernelFusion.cpp:739 module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %11:2 = "it.itree"(%10, %9) ({
      %12 = "it.RootOp"() : () -> !it.index_tree
      %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%10, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %16 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %15, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      %20 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%9, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%9, %20, %pos_11) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %21 = "it.LHSOperandOp"(%9, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_14, %pos_15 = "it.IndexToTensorDim"(%19, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_16, %pos_17 = "it.IndexToTensorDim"(%19, %13, %pos_15) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%19, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_18, %pos_19 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_20, %pos_21 = "it.IndexToTensorDim"(%8, %20, %pos_19) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %23 = "it.OperandOp"(%8, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %19, %24 : tensor<?x4xf64>, tensor<?x4xf64>
    }) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
    "ta.set_op"(%11#0, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.set_op"(%11#1, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%9) : (tensor<?x4xf64>) -> ()
    return
  }
}
// -----// IR Dump After IndexTreeKernelFusion (indextree-kernel-fusion) //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %11:2 = "it.itree"(%10, %9) ({
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%10, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %16 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %15, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %20 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%9, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%9, %20, %pos_11) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%9, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%19, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%19, %13, %pos_15) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%19, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%8, %20, %pos_19) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%8, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %19, %24 : tensor<?x4xf64>, tensor<?x4xf64>
  }) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%11#0, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.set_op"(%11#1, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
}

loc("/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/local_stuff/fusion/notes/fusion.ta.IndexTree.before_domain.manual.v0.mlir":61:13): error: operand #0 does not dominate this use
// -----// IR Dump After IndexTreeDomainInference Failed (indextree-domain-inference) //----- //
"func.func"() <{function_type = () -> (), sym_name = "main"}> ({
  %0 = "arith.constant"() <{value = 1 : index}> : () -> index
  %1 = "arith.constant"() <{value = 0 : index}> : () -> index
  %2 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %3 = "ta.dim"(%2, %1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %4 = "ta.dim"(%2, %0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %5 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %7 = "ta.dense_tensor_decl"(%3) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %8 = "ta.dense_tensor_decl"(%3) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%5) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %9:2 = "it.itree"(%8, %7) ({
    %10 = "it.RootOp"() : () -> !it.index_tree
    %11 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %12 = "it.DomainOp"(%34) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %13 = "it.DomainOp"(%5) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %14 = "it.DomainIntersectionOp"(%12, %11) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %15 = "it.DomainUnionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %16 = "it.IndexOp"(%10, %15) : (!it.index_tree, !it.domain) -> !it.index
    %17 = "it.DomainOp"(%34) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %18 = "it.DomainOp"(%2) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %19 = "it.DomainUnionOp"(%17, %18) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %20 = "it.IndexOp"(%16, %19) : (!it.index, !it.domain) -> !it.index
    %21 = "it.DomainOp"(%5) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %22 = "it.DomainOp"(%2) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %23 = "it.DomainIntersectionOp"(%22, %21) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %24 = "it.IndexOp"(%20, %23) : (!it.index, !it.domain) -> !it.index
    %25:2 = "it.IndexToTensorDim"(%8, %20) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %26:2 = "it.IndexToTensorDim"(%8, %16, %25#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %27 = "it.LHSOperandOp"(%8, %25#1, %26#1, %25#0, %26#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %28:2 = "it.IndexToTensorDim"(%2, %20) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %29:2 = "it.IndexToTensorDim"(%2, %24, %28#1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %30 = "it.OperandOp"(%2, %28#1, %29#1, %28#0, %29#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %31:2 = "it.IndexToTensorDim"(%5, %24) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %32:2 = "it.IndexToTensorDim"(%5, %16, %31#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %33 = "it.OperandOp"(%5, %31#1, %32#1, %31#0, %32#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %34 = "it.ComputeOp"(%24, %27, %30, %33) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %35 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%20, %35) : (!it.index, !it.domain) -> !it.index
    %37:2 = "it.IndexToTensorDim"(%7, %20) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %38:2 = "it.IndexToTensorDim"(%7, %36, %37#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.LHSOperandOp"(%7, %37#1, %38#1, %37#0, %38#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40:2 = "it.IndexToTensorDim"(%34, %20) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %41:2 = "it.IndexToTensorDim"(%34, %16, %40#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%34, %40#1, %41#1, %40#0, %41#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %43:2 = "it.IndexToTensorDim"(%6, %16) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %44:2 = "it.IndexToTensorDim"(%6, %36, %43#1) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%6, %43#1, %44#1, %43#0, %44#0) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %46 = "it.ComputeOp"(%36, %39, %42, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    "it.yield"(%34, %46) : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  }) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%9#0, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.set_op"(%9#1, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%7) : (tensor<?x4xf64>) -> ()
  "func.return"() : () -> ()
}) : () -> ()


Process finished with exit code 4
