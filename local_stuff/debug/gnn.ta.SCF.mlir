/// GNN kernel A = B * C * D
/// B is sparse
/// T[i, h] = B[i, k] * C[k, h];
/// A[i, j] = T[i, h] * D[h, j];
/// 
void no_fution_index_tree()
{
    for (i = 0 to NI) {
        for (k = 0 to NK) {
            for (h = 0 to NH) {
                T[i, h] += B[i, k] * C[k, h];
            }
        }
    }
    for (i = 0 to NI) {
        for (h = 0 to NH) {
            for (j = 0 to NJ) {
                A[i, j] += T[i, h] * D[h, j];
            }
        }
    }
}
void partial_fusion_index_tree()
{
    for (i = 0 to NI) {
        for (k = 0 to NK) {
            for (h = 0 to NH) {
                T[h] += B[i, k] * C[k, h];
            }
        }
        for (h = 0 to NH) {
            for (j = 0 to NJ) {
                A[i, j] += T[h] * D[h, j];
            }
        }
        for (h = 0 to NH) {
            T[h] = 0;
        }
    }
}


// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
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
    %11 = "ta.mul"(%4, %7, %0, %1, %1, %3, %0, %3) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x4xf64>
    "ta.set_op"(%11, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    %12 = "ta.mul"(%10, %8, %0, %3, %3, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<4x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x4xf64>
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
  %11 = "ta.mul"(%4, %7, %0, %1, %1, %3, %0, %3) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x4xf64>
  "ta.set_op"(%11, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  %12 = "ta.mul"(%10, %8, %0, %3, %3, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<4x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x4xf64>
  "ta.set_op"(%12, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
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
  %11 = "it.itree"(%10) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.IndexOp"(%13) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %15 = "it.IndexOp"(%14) <{IsParallel = false}> : (!it.index) -> !it.index
    %16 = "it.IndexOp"(%15) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %15, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %20 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%11, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  %12 = "it.itree"(%9) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.IndexOp"(%13) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %15 = "it.IndexOp"(%14) <{IsParallel = false}> : (!it.index) -> !it.index
    %16 = "it.IndexOp"(%15) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %15, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %15) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %20 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%12, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
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
  %11:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<?x4xf64>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) <{IsParallel = false}> : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg1, %15, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %16 = "it.LHSOperandOp"(%arg1, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %15, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %20 = "it.IndexOp"(%13) <{IsParallel = false}> : (!it.index) -> !it.index
    %21 = "it.IndexOp"(%20) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg0, %21, %pos_11) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %22 = "it.LHSOperandOp"(%arg0, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%19, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%19, %20, %pos_15) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%19, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%8, %20) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%8, %21, %pos_19) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %24 = "it.OperandOp"(%8, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %25 = "it.ComputeOp"(%21, %22, %23, %24) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %25, %19 : tensor<?x4xf64>, tensor<?x4xf64>
  }) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%11#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %5 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %7:2 = "it.itree"(%5, %6) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<?x4xf64>):
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %12 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %13 = "it.DomainIntersectionOp"(%12, %11) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %14 = "it.IndexOp"(%10, %13) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %15 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %16 = "it.IndexOp"(%14, %15) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %10) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg1, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.LHSOperandOp"(%arg1, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %21 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %22 = "it.DomainOp"(%20) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %23 = "it.DomainIntersectionOp"(%22, %21) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %24 = "it.IndexOp"(%10, %23) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %25 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %26 = "it.IndexOp"(%24, %25) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg0, %10) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg0, %26, %pos_11) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %27 = "it.LHSOperandOp"(%arg0, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%20, %10) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%20, %24, %pos_15) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %28 = "it.OperandOp"(%20, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%4, %24) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%4, %26, %pos_19) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %29 = "it.OperandOp"(%4, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %30 = "it.ComputeOp"(%26, %27, %28, %29) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %30, %20 : tensor<?x4xf64>, tensor<?x4xf64>
  }) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%7#0, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%5) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.SpTensorGetDimSize"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %2 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %3 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %2, %c0 : tensor<?xi64>
  %dim_0 = tensor.dim %3, %c0 : tensor<?xi64>
  %4 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %5 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %11:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<?x4xf64>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.DenseDomainOp"(%1, %0) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %14 = "it.IndexOp"(%12, %13) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %15 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %16 = "it.IndexOp"(%14, %15) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %17 = "it.DenseDomainOp"(%idx4, %7) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %18 = "it.IndexOp"(%16, %17) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg1, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%arg1, %18, %pos_2) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.LHSOperandOp"(%arg1, %pos_2, %pos_4, %crd_1, %crd_3) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%0, %16, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%0, %pos, %pos_6, %crd, %crd_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%7, %18, %pos_8) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%7, %pos_8, %pos_10, %crd_7, %crd_9) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %22 = "it.ComputeOp"(%18, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %23 = "it.DenseDomainOp"(%idx4, %22, %8) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x4xf64>) -> !it.domain
    %24 = "it.IndexOp"(%14, %23) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %25 = "it.DenseDomainOp"(%idx4, %8) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %26 = "it.IndexOp"(%24, %25) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%arg0, %26, %pos_12) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %27 = "it.LHSOperandOp"(%arg0, %pos_12, %pos_14, %crd_11, %crd_13) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_15, %pos_16 = "it.IndexToTensorDim"(%22, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_17, %pos_18 = "it.IndexToTensorDim"(%22, %24, %pos_16) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %28 = "it.OperandOp"(%22, %pos_16, %pos_18, %crd_15, %crd_17) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_19, %pos_20 = "it.IndexToTensorDim"(%8, %24) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_21, %pos_22 = "it.IndexToTensorDim"(%8, %26, %pos_20) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %29 = "it.OperandOp"(%8, %pos_20, %pos_22, %crd_19, %crd_21) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %30 = "it.ComputeOp"(%26, %27, %28, %29) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %30, %22 : tensor<?x4xf64>, tensor<?x4xf64>
  }) : (tensor<?x4xf64>, tensor<?x4xf64>) -> (tensor<?x4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%11#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDimensionReduction (indextree-dimension-reduction) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.SpTensorGetDimSize"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %2 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %3 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %2, %c0 : tensor<?xi64>
  %dim_0 = tensor.dim %3, %c0 : tensor<?xi64>
  %4 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %5 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %10 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4xf64>
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  %11 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %12:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.DenseDomainOp"(%1, %0) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.IndexOp"(%13, %14) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %16 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %17 = "it.IndexOp"(%15, %16) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %18 = "it.DenseDomainOp"(%idx4, %7) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %19 = "it.IndexOp"(%17, %18) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg1, %19) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg1, %pos_2, %crd_1) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%0, %17, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%0, %pos, %pos_4, %crd, %crd_3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%7, %17) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%7, %19, %pos_6) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%7, %pos_6, %pos_8, %crd_5, %crd_7) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %24 = "it.DenseDomainOp"(%idx4, %23, %8) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %25 = "it.IndexOp"(%15, %24) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %26 = "it.DenseDomainOp"(%idx4, %8) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %27 = "it.IndexOp"(%25, %26) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%arg0, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %27, %pos_10) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %28 = "it.LHSOperandOp"(%arg0, %pos_10, %pos_12, %crd_9, %crd_11) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%23, %25) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %29 = "it.OperandOp"(%23, %pos_14, %crd_13) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_15, %pos_16 = "it.IndexToTensorDim"(%8, %25) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_17, %pos_18 = "it.IndexToTensorDim"(%8, %27, %pos_16) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %30 = "it.OperandOp"(%8, %pos_16, %pos_18, %crd_15, %crd_17) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %31 = "it.ComputeOp"(%27, %28, %29, %30) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %32 = "it.IndexOp"(%15, %18) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_19, %pos_20 = "it.IndexToTensorDim"(%23, %32) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %33 = "it.LHSOperandOp"(%23, %pos_20, %crd_19) : (tensor<4xf64>, index, index) -> !it.operand
    %cst = arith.constant 0.000000e+00 : f64
    %34 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %35 = "it.ComputeOp"(%32, %33, %34) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %31, %35 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.set_op"(%12#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %29 = "ta.dense_tensor_decl"(%28) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %30 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %31 = "ta.dense_tensor_decl"(%27) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %32 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  %33 = "ta.dense_tensor_decl"(%27) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%31) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %34:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos_33, %crd_32) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %41, %pos_37) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %46 = "it.DenseDomainOp"(%idx4, %45, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %48 = "it.DenseDomainOp"(%idx4, %30) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %49, %pos_41) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%45, %pos_45, %crd_44) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%30, %47) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%30, %49, %pos_47) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%30, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %54 = "it.IndexOp"(%37, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %54) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %55 = "it.LHSOperandOp"(%45, %pos_51, %crd_50) : (tensor<4xf64>, index, index) -> !it.operand
    %cst_52 = arith.constant 0.000000e+00 : f64
    %56 = "it.OperandOp"(%cst_52) : (f64) -> !it.operand
    %57 = "it.ComputeOp"(%54, %55, %56) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %53, %57 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.set_op"(%34#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%31) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x4xf64>
  %alloc_34 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %31 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %32 = bufferization.to_tensor %alloc_35 restrict writable : memref<4xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %33 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x4xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%31) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %34:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos_38, %crd_37) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_40, %crd, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %41, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %46 = "it.DenseDomainOp"(%idx4, %45, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %48 = "it.DenseDomainOp"(%idx4, %30) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%arg0, %49, %pos_46) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%arg0, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%45, %pos_50, %crd_49) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%30, %47) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%30, %49, %pos_52) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%30, %pos_52, %pos_54, %crd_51, %crd_53) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %54 = "it.IndexOp"(%37, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%45, %54) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %55 = "it.LHSOperandOp"(%45, %pos_56, %crd_55) : (tensor<4xf64>, index, index) -> !it.operand
    %cst_57 = arith.constant 0.000000e+00 : f64
    %56 = "it.OperandOp"(%cst_57) : (f64) -> !it.operand
    %57 = "it.ComputeOp"(%54, %55, %56) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %53, %57 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.set_op"(%34#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%31) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x4xf64>
  %alloc_34 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %31 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %32 = bufferization.to_tensor %alloc_35 restrict writable : memref<4xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %33 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x4xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%31) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %34:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos_38, %crd_37) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_40, %crd, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %41, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %46 = "it.DenseDomainOp"(%idx4, %45, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %48 = "it.DenseDomainOp"(%idx4, %30) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%arg0, %49, %pos_46) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%arg0, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%45, %pos_50, %crd_49) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%30, %47) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%30, %49, %pos_52) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%30, %pos_52, %pos_54, %crd_51, %crd_53) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %54 = "it.IndexOp"(%37, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%45, %54) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %55 = "it.LHSOperandOp"(%45, %pos_56, %crd_55) : (tensor<4xf64>, index, index) -> !it.operand
    %cst_57 = arith.constant 0.000000e+00 : f64
    %56 = "it.OperandOp"(%cst_57) : (f64) -> !it.operand
    %57 = "it.ComputeOp"(%54, %55, %56) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %53, %57 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.set_op"(%34#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%31) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x4xf64>
  %alloc_34 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %31 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %32 = bufferization.to_tensor %alloc_35 restrict writable : memref<4xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %33 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x4xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%31) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %34:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos_38, %crd_37) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_40, %crd, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %41, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %46 = "it.DenseDomainOp"(%idx4, %45, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %48 = "it.DenseDomainOp"(%idx4, %30) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%arg0, %49, %pos_46) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%arg0, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%45, %pos_50, %crd_49) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%30, %47) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%30, %49, %pos_52) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%30, %pos_52, %pos_54, %crd_51, %crd_53) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %54 = "it.IndexOp"(%37, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%45, %54) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %55 = "it.LHSOperandOp"(%45, %pos_56, %crd_55) : (tensor<4xf64>, index, index) -> !it.operand
    %cst_57 = arith.constant 0.000000e+00 : f64
    %56 = "it.OperandOp"(%cst_57) : (f64) -> !it.operand
    %57 = "it.ComputeOp"(%54, %55, %56) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %53, %57 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.set_op"(%34#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%31) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<4x4xf64>)
  %30 = bufferization.to_tensor %alloc_34 restrict writable : memref<4x4xf64>
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x4xf64>)
  %31 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x4xf64>
  %alloc_38 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<4xf64>)
  %32 = bufferization.to_tensor %alloc_38 restrict writable : memref<4xf64>
  %alloc_40 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_41 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_41 : f64) outs(%alloc_40 : memref<?x4xf64>)
  %33 = bufferization.to_tensor %alloc_40 restrict writable : memref<?x4xf64>
  %34:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos_43, %crd_42) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%29, %41, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %46 = "it.DenseDomainOp"(%idx4, %45, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %48 = "it.DenseDomainOp"(%idx4, %30) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%arg0, %49, %pos_51) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%arg0, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%45, %pos_55, %crd_54) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%30, %47) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%30, %49, %pos_57) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%30, %pos_57, %pos_59, %crd_56, %crd_58) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %54 = "it.IndexOp"(%37, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_60, %pos_61 = "it.IndexToTensorDim"(%45, %54) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %55 = "it.LHSOperandOp"(%45, %pos_61, %crd_60) : (tensor<4xf64>, index, index) -> !it.operand
    %cst_62 = arith.constant 0.000000e+00 : f64
    %56 = "it.OperandOp"(%cst_62) : (f64) -> !it.operand
    %57 = "it.ComputeOp"(%54, %55, %56) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %53, %57 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.set_op"(%34#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%31) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<4x4xf64>)
  %30 = bufferization.to_tensor %alloc_34 restrict writable : memref<4x4xf64>
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x4xf64>)
  %31 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x4xf64>
  %alloc_38 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<4xf64>)
  %32 = bufferization.to_tensor %alloc_38 restrict writable : memref<4xf64>
  %alloc_40 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_41 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_41 : f64) outs(%alloc_40 : memref<?x4xf64>)
  %33 = bufferization.to_tensor %alloc_40 restrict writable : memref<?x4xf64>
  %34:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos_43, %crd_42) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%29, %41, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %46 = "it.DenseDomainOp"(%idx4, %45, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %48 = "it.DenseDomainOp"(%idx4, %30) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%arg0, %49, %pos_51) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%arg0, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%45, %pos_55, %crd_54) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%30, %47) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%30, %49, %pos_57) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%30, %pos_57, %pos_59, %crd_56, %crd_58) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %54 = "it.IndexOp"(%37, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_60, %pos_61 = "it.IndexToTensorDim"(%45, %54) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %55 = "it.LHSOperandOp"(%45, %pos_61, %crd_60) : (tensor<4xf64>, index, index) -> !it.operand
    %cst_62 = arith.constant 0.000000e+00 : f64
    %56 = "it.OperandOp"(%cst_62) : (f64) -> !it.operand
    %57 = "it.ComputeOp"(%54, %55, %56) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %53, %57 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.set_op"(%34#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%31) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x4xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x4xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<4xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<4xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x4xf64>)
  %31:2 = "it.itree"(%29, %30) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%arg1, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg1, %pos_27, %crd_26) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%20, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%20, %pos, %pos_29, %crd, %crd_28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%27, %38, %pos_31) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%27, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DenseDomainOp"(%idx4, %42, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %44 = "it.IndexOp"(%34, %43) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %45 = "it.DenseDomainOp"(%idx4, %28) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%44, %45) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %46, %pos_35) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg0, %pos_35, %pos_37, %crd_34, %crd_36) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%42, %44) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %48 = "it.OperandOp"(%42, %pos_39, %crd_38) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%28, %44) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %46, %pos_41) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%28, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %51 = "it.IndexOp"(%34, %37) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%42, %51) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %52 = "it.LHSOperandOp"(%42, %pos_45, %crd_44) : (tensor<4xf64>, index, index) -> !it.operand
    %53 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%51, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %50, %54 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.set_op"(%31#0, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x4xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x4xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<4xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<4xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x4xf64>)
  %31:2 = "it.itree"(%29, %30) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%arg1, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg1, %pos_27, %crd_26) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%20, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%20, %pos, %pos_29, %crd, %crd_28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%27, %38, %pos_31) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%27, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DenseDomainOp"(%idx4, %42, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %44 = "it.IndexOp"(%34, %43) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %45 = "it.DenseDomainOp"(%idx4, %28) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%44, %45) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %46, %pos_35) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg0, %pos_35, %pos_37, %crd_34, %crd_36) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%42, %44) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %48 = "it.OperandOp"(%42, %pos_39, %crd_38) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%28, %44) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %46, %pos_41) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%28, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %51 = "it.IndexOp"(%34, %37) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%42, %51) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %52 = "it.LHSOperandOp"(%42, %pos_45, %crd_44) : (tensor<4xf64>, index, index) -> !it.operand
    %53 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%51, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %50, %54 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.print"(%31#0) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x4xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x4xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<4xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<4xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x4xf64>)
  %31:2 = "it.itree"(%29, %30) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%arg1, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg1, %pos_27, %crd_26) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%20, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%20, %pos, %pos_29, %crd, %crd_28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%27, %38, %pos_31) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%27, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DenseDomainOp"(%idx4, %42, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %44 = "it.IndexOp"(%34, %43) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %45 = "it.DenseDomainOp"(%idx4, %28) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%44, %45) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %46, %pos_35) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg0, %pos_35, %pos_37, %crd_34, %crd_36) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%42, %44) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %48 = "it.OperandOp"(%42, %pos_39, %crd_38) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%28, %44) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %46, %pos_41) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%28, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %51 = "it.IndexOp"(%34, %37) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%42, %51) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %52 = "it.LHSOperandOp"(%42, %pos_45, %crd_44) : (tensor<4xf64>, index, index) -> !it.operand
    %53 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%51, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %50, %54 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.print"(%31#0) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x4xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x4xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<4xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<4xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x4xf64>)
  %31:2 = "it.itree"(%29, %30) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %32:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<?x4xf64>, tensor<4xf64>) {
      %extracted_slice = tensor.extract_slice %arg3[%arg2, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %extracted_slice_26 = tensor.extract_slice %arg4[%arg2] [1] [1] : tensor<4xf64> to tensor<1xf64>
      %c1_27 = arith.constant 1 : index
      %33 = arith.addi %arg2, %c1_27 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %34 = arith.index_cast %extracted : i64 to index
      %extracted_28 = tensor.extract %22[%33] : tensor<?xi64>
      %35 = arith.index_cast %extracted_28 : i64 to index
      %c1_29 = arith.constant 1 : index
      %36:2 = scf.for %arg5 = %34 to %35 step %c1_29 iter_args(%arg6 = %extracted_slice, %arg7 = %extracted_slice_26) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %c0_34 = arith.constant 0 : index
        %c1_35 = arith.constant 1 : index
        %39:2 = scf.for %arg8 = %c0_34 to %idx4 step %c1_35 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<1x4xf64>, tensor<1xf64>) {
          %40 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %41 = arith.index_cast %40 : i64 to index
          %42 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %43 = arith.index_cast %42 : i64 to index
          %44 = "ta.TAExtractOp"(%20, %arg5, %arg2, %41) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_36 = tensor.extract %27[%43, %arg8] : tensor<?x4xf64>
          %45 = arith.mulf %44, %extracted_36 : f64
          %extracted_37 = tensor.extract %arg10[%arg8] : tensor<1xf64>
          %46 = arith.addf %extracted_37, %45 : f64
          %inserted = tensor.insert %46 into %arg10[%arg8] : tensor<1xf64>
          scf.yield %arg9, %inserted : tensor<1x4xf64>, tensor<1xf64>
        }
        scf.yield %39#0, %39#1 : tensor<1x4xf64>, tensor<1xf64>
      }
      %c0_30 = arith.constant 0 : index
      %c1_31 = arith.constant 1 : index
      %37:2 = scf.for %arg5 = %c0_30 to %idx4 step %c1_31 iter_args(%arg6 = %36#0, %arg7 = %36#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %c0_34 = arith.constant 0 : index
        %c1_35 = arith.constant 1 : index
        %39:2 = scf.for %arg8 = %c0_34 to %idx4 step %c1_35 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<1x4xf64>, tensor<1xf64>) {
          %idx0 = index.constant 0
          %extracted_36 = tensor.extract %arg10[%arg5] : tensor<1xf64>
          %extracted_37 = tensor.extract %28[%arg5, %arg8] : tensor<4x4xf64>
          %40 = arith.mulf %extracted_36, %extracted_37 : f64
          %extracted_38 = tensor.extract %arg9[%idx0, %arg8] : tensor<1x4xf64>
          %41 = arith.addf %extracted_38, %40 : f64
          %inserted = tensor.insert %41 into %arg9[%idx0, %arg8] : tensor<1x4xf64>
          scf.yield %inserted, %arg10 : tensor<1x4xf64>, tensor<1xf64>
        }
        scf.yield %39#0, %39#1 : tensor<1x4xf64>, tensor<1xf64>
      }
      %c0_32 = arith.constant 0 : index
      %c1_33 = arith.constant 1 : index
      %38:2 = scf.for %arg5 = %c0_32 to %idx4 step %c1_33 iter_args(%arg6 = %37#0, %arg7 = %37#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %extracted_34 = tensor.extract %arg7[%arg5] : tensor<1xf64>
        %inserted = tensor.insert %cst_1 into %arg7[%arg5] : tensor<1xf64>
        scf.yield %arg6, %inserted : tensor<1x4xf64>, tensor<1xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %38#0 into %arg3[%arg2, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
        tensor.parallel_insert_slice %38#1 into %arg4[%arg2] [1] [1] : tensor<1xf64> into tensor<4xf64>
      }
    }
    it.yield %32#0, %32#1 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.print"(%31#0) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %26 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
  %alloc_22 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
  %alloc_24 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %29:2 = "it.itree"(%27, %28) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %30:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<?x4xf64>, tensor<4xf64>) {
      %extracted_slice = tensor.extract_slice %arg3[%arg2, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %extracted_slice_25 = tensor.extract_slice %arg4[%arg2] [1] [1] : tensor<4xf64> to tensor<1xf64>
      %31 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %22[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_26 : i64 to index
      %34:2 = scf.for %arg5 = %32 to %33 step %c1 iter_args(%arg6 = %extracted_slice, %arg7 = %extracted_slice_25) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %37:2 = scf.for %arg8 = %c0 to %idx4 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<1x4xf64>, tensor<1xf64>) {
          %38 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %39 = arith.index_cast %38 : i64 to index
          %40 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %41 = arith.index_cast %40 : i64 to index
          %42 = "ta.TAExtractOp"(%20, %arg5, %arg2, %39) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_27 = tensor.extract %25[%41, %arg8] : tensor<?x4xf64>
          %43 = arith.mulf %42, %extracted_27 : f64
          %extracted_28 = tensor.extract %arg10[%arg8] : tensor<1xf64>
          %44 = arith.addf %extracted_28, %43 : f64
          %inserted = tensor.insert %44 into %arg10[%arg8] : tensor<1xf64>
          scf.yield %arg9, %inserted : tensor<1x4xf64>, tensor<1xf64>
        }
        scf.yield %37#0, %37#1 : tensor<1x4xf64>, tensor<1xf64>
      }
      %35:2 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %34#0, %arg7 = %34#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %37:2 = scf.for %arg8 = %c0 to %idx4 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<1x4xf64>, tensor<1xf64>) {
          %extracted_27 = tensor.extract %arg10[%arg5] : tensor<1xf64>
          %extracted_28 = tensor.extract %26[%arg5, %arg8] : tensor<4x4xf64>
          %38 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg9[%idx0, %arg8] : tensor<1x4xf64>
          %39 = arith.addf %extracted_29, %38 : f64
          %inserted = tensor.insert %39 into %arg9[%idx0, %arg8] : tensor<1x4xf64>
          scf.yield %inserted, %arg10 : tensor<1x4xf64>, tensor<1xf64>
        }
        scf.yield %37#0, %37#1 : tensor<1x4xf64>, tensor<1xf64>
      }
      %36:2 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %35#0, %arg7 = %35#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %inserted = tensor.insert %cst_1 into %arg7[%arg5] : tensor<1xf64>
        scf.yield %arg6, %inserted : tensor<1x4xf64>, tensor<1xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %36#0 into %arg3[%arg2, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
        tensor.parallel_insert_slice %36#1 into %arg4[%arg2] [1] [1] : tensor<1xf64> into tensor<4xf64>
      }
    }
    it.yield %30#0, %30#1 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.print"(%29#0) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %26 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
  %alloc_22 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
  %alloc_24 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %29:2 = "it.itree"(%27, %28) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %30:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<?x4xf64>, tensor<4xf64>) {
      %extracted_slice = tensor.extract_slice %arg3[%arg2, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %extracted_slice_25 = tensor.extract_slice %arg4[%arg2] [1] [1] : tensor<4xf64> to tensor<1xf64>
      %31 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %22[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_26 : i64 to index
      %34:2 = scf.for %arg5 = %32 to %33 step %c1 iter_args(%arg6 = %extracted_slice, %arg7 = %extracted_slice_25) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %37:2 = scf.for %arg8 = %c0 to %idx4 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<1x4xf64>, tensor<1xf64>) {
          %38 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %39 = arith.index_cast %38 : i64 to index
          %40 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %41 = arith.index_cast %40 : i64 to index
          %42 = "ta.TAExtractOp"(%20, %arg5, %arg2, %39) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_27 = tensor.extract %25[%41, %arg8] : tensor<?x4xf64>
          %43 = arith.mulf %42, %extracted_27 : f64
          %extracted_28 = tensor.extract %arg10[%arg8] : tensor<1xf64>
          %44 = arith.addf %extracted_28, %43 : f64
          %inserted = tensor.insert %44 into %arg10[%arg8] : tensor<1xf64>
          scf.yield %arg9, %inserted : tensor<1x4xf64>, tensor<1xf64>
        }
        scf.yield %37#0, %37#1 : tensor<1x4xf64>, tensor<1xf64>
      }
      %35:2 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %34#0, %arg7 = %34#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %37:2 = scf.for %arg8 = %c0 to %idx4 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<1x4xf64>, tensor<1xf64>) {
          %extracted_27 = tensor.extract %arg10[%arg5] : tensor<1xf64>
          %extracted_28 = tensor.extract %26[%arg5, %arg8] : tensor<4x4xf64>
          %38 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg9[%idx0, %arg8] : tensor<1x4xf64>
          %39 = arith.addf %extracted_29, %38 : f64
          %inserted = tensor.insert %39 into %arg9[%idx0, %arg8] : tensor<1x4xf64>
          scf.yield %inserted, %arg10 : tensor<1x4xf64>, tensor<1xf64>
        }
        scf.yield %37#0, %37#1 : tensor<1x4xf64>, tensor<1xf64>
      }
      %36:2 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %35#0, %arg7 = %35#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %inserted = tensor.insert %cst_1 into %arg7[%arg5] : tensor<1xf64>
        scf.yield %arg6, %inserted : tensor<1x4xf64>, tensor<1xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %36#0 into %arg3[%arg2, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
        tensor.parallel_insert_slice %36#1 into %arg4[%arg2] [1] [1] : tensor<1xf64> into tensor<4xf64>
      }
    }
    it.yield %30#0, %30#1 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.print"(%29#0) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_20 = index.constant 0
  %idx0_21 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_20, %11, %idx0_21, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_22 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_22] : tensor<2xindex>
  %idx0_23 = index.constant 0
  %extracted_24 = tensor.extract %from_elements[%idx0_23] : tensor<2xindex>
  %idx1 = index.constant 1
  %extracted_25 = tensor.extract %from_elements[%idx1] : tensor<2xindex>
  %alloc_26 = memref.alloc(%extracted_25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_26 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_26 restrict writable : memref<?x4xf64>
  %alloc_27 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_27 : memref<4x4xf64>)
  %22 = bufferization.to_tensor %alloc_27 restrict writable : memref<4x4xf64>
  %alloc_28 = memref.alloc(%extracted_24) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<4xf64>)
  %24 = bufferization.to_tensor %alloc_29 restrict writable : memref<4xf64>
  %alloc_30 = memref.alloc(%extracted_24) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_30 : memref<?x4xf64>)
  %25:2 = "it.itree"(%23, %24) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
    %26:2 = scf.forall (%arg2) in (%extracted) shared_outs(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<?x4xf64>, tensor<4xf64>) {
      %extracted_slice = tensor.extract_slice %arg3[%arg2, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %extracted_slice_31 = tensor.extract_slice %arg4[%arg2] [1] [1] : tensor<4xf64> to tensor<1xf64>
      %27 = arith.addi %arg2, %c1 : index
      %extracted_32 = tensor.extract %15[%arg2] : tensor<?xi64>
      %28 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %15[%27] : tensor<?xi64>
      %29 = arith.index_cast %extracted_33 : i64 to index
      %30:2 = scf.for %arg5 = %28 to %29 step %c1 iter_args(%arg6 = %extracted_slice, %arg7 = %extracted_slice_31) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %33:2 = scf.for %arg8 = %c0 to %idx4 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<1x4xf64>, tensor<1xf64>) {
          %extracted_34 = tensor.extract %16[%arg5] : tensor<?xi64>
          %34 = arith.index_cast %extracted_34 : i64 to index
          %extracted_35 = tensor.extract %16[%arg5] : tensor<?xi64>
          %35 = arith.index_cast %extracted_35 : i64 to index
          %extracted_36 = tensor.extract %19[%arg5] : tensor<?xf64>
          %extracted_37 = tensor.extract %21[%35, %arg8] : tensor<?x4xf64>
          %36 = arith.mulf %extracted_36, %extracted_37 : f64
          %extracted_38 = tensor.extract %arg10[%arg8] : tensor<1xf64>
          %37 = arith.addf %extracted_38, %36 : f64
          %inserted = tensor.insert %37 into %arg10[%arg8] : tensor<1xf64>
          scf.yield %arg9, %inserted : tensor<1x4xf64>, tensor<1xf64>
        }
        scf.yield %33#0, %33#1 : tensor<1x4xf64>, tensor<1xf64>
      }
      %31:2 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %30#0, %arg7 = %30#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %33:2 = scf.for %arg8 = %c0 to %idx4 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<1x4xf64>, tensor<1xf64>) {
          %extracted_34 = tensor.extract %arg10[%arg5] : tensor<1xf64>
          %extracted_35 = tensor.extract %22[%arg5, %arg8] : tensor<4x4xf64>
          %34 = arith.mulf %extracted_34, %extracted_35 : f64
          %extracted_36 = tensor.extract %arg9[%idx0, %arg8] : tensor<1x4xf64>
          %35 = arith.addf %extracted_36, %34 : f64
          %inserted = tensor.insert %35 into %arg9[%idx0, %arg8] : tensor<1x4xf64>
          scf.yield %inserted, %arg10 : tensor<1x4xf64>, tensor<1xf64>
        }
        scf.yield %33#0, %33#1 : tensor<1x4xf64>, tensor<1xf64>
      }
      %32:2 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %31#0, %arg7 = %31#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %inserted = tensor.insert %cst_1 into %arg7[%arg5] : tensor<1xf64>
        scf.yield %arg6, %inserted : tensor<1x4xf64>, tensor<1xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %32#0 into %arg3[%arg2, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
        tensor.parallel_insert_slice %32#1 into %arg4[%arg2] [1] [1] : tensor<1xf64> into tensor<4xf64>
      }
    }
    it.yield %26#0, %26#1 : tensor<?x4xf64>, tensor<4xf64>
  }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
  "ta.print"(%25#0) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_20 = index.constant 0
  %idx0_21 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_20, %11, %idx0_21, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_22 = index.constant 0
  %idx0_23 = index.constant 0
  %idx1 = index.constant 1
  %alloc_24 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_24 restrict writable : memref<?x4xf64>
  %alloc_25 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_25 : memref<4x4xf64>)
  %22 = bufferization.to_tensor %alloc_25 restrict writable : memref<4x4xf64>
  %alloc_26 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x4xf64>)
  %23 = bufferization.to_tensor %alloc_26 restrict writable : memref<?x4xf64>
  %alloc_27 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_27 : memref<4xf64>)
  %24 = bufferization.to_tensor %alloc_27 restrict writable : memref<4xf64>
  %alloc_28 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %25:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %23, %arg2 = %24) -> (tensor<?x4xf64>, tensor<4xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
    %extracted_slice_29 = tensor.extract_slice %arg2[%arg0] [1] [1] : tensor<4xf64> to tensor<1xf64>
    %26 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %27 = arith.index_cast %extracted : i64 to index
    %extracted_30 = tensor.extract %15[%26] : tensor<?xi64>
    %28 = arith.index_cast %extracted_30 : i64 to index
    %29:2 = scf.for %arg3 = %27 to %28 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_29) -> (tensor<1x4xf64>, tensor<1xf64>) {
      %32:2 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %extracted_31 = tensor.extract %16[%arg3] : tensor<?xi64>
        %33 = arith.index_cast %extracted_31 : i64 to index
        %extracted_32 = tensor.extract %16[%arg3] : tensor<?xi64>
        %34 = arith.index_cast %extracted_32 : i64 to index
        %extracted_33 = tensor.extract %19[%arg3] : tensor<?xf64>
        %extracted_34 = tensor.extract %21[%34, %arg6] : tensor<?x4xf64>
        %35 = arith.mulf %extracted_33, %extracted_34 : f64
        %extracted_35 = tensor.extract %arg8[%arg6] : tensor<1xf64>
        %36 = arith.addf %extracted_35, %35 : f64
        %inserted = tensor.insert %36 into %arg8[%arg6] : tensor<1xf64>
        scf.yield %arg7, %inserted : tensor<1x4xf64>, tensor<1xf64>
      }
      scf.yield %32#0, %32#1 : tensor<1x4xf64>, tensor<1xf64>
    }
    %30:2 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %29#0, %arg5 = %29#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
      %32:2 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<1x4xf64>, tensor<1xf64>) {
        %extracted_31 = tensor.extract %arg8[%arg3] : tensor<1xf64>
        %extracted_32 = tensor.extract %22[%arg3, %arg6] : tensor<4x4xf64>
        %33 = arith.mulf %extracted_31, %extracted_32 : f64
        %extracted_33 = tensor.extract %arg7[%idx0, %arg6] : tensor<1x4xf64>
        %34 = arith.addf %extracted_33, %33 : f64
        %inserted = tensor.insert %34 into %arg7[%idx0, %arg6] : tensor<1x4xf64>
        scf.yield %inserted, %arg8 : tensor<1x4xf64>, tensor<1xf64>
      }
      scf.yield %32#0, %32#1 : tensor<1x4xf64>, tensor<1xf64>
    }
    %31:2 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %30#0, %arg5 = %30#1) -> (tensor<1x4xf64>, tensor<1xf64>) {
      %inserted = tensor.insert %cst_1 into %arg5[%arg3] : tensor<1xf64>
      scf.yield %arg4, %inserted : tensor<1x4xf64>, tensor<1xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %31#0 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      tensor.parallel_insert_slice %31#1 into %arg2[%arg0] [1] [1] : tensor<1xf64> into tensor<4xf64>
    }
  }
  "ta.print"(%25#0) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %18 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %16) -> (tensor<?x4xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
    %extracted_slice_25 = tensor.extract_slice %17[%arg0] [1] [1] : tensor<4xf64> to tensor<1xf64>
    %19 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %20 = arith.index_cast %extracted : i64 to index
    %extracted_26 = tensor.extract %11[%19] : tensor<?xi64>
    %21 = arith.index_cast %extracted_26 : i64 to index
    %22 = scf.for %arg2 = %20 to %21 step %c1 iter_args(%arg3 = %extracted_slice_25) -> (tensor<1xf64>) {
      %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1xf64>) {
        %extracted_27 = tensor.extract %12[%arg2] : tensor<?xi64>
        %25 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg2] : tensor<?xf64>
        %extracted_29 = tensor.extract %14[%25, %arg4] : tensor<?x4xf64>
        %26 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg5[%arg4] : tensor<1xf64>
        %27 = arith.addf %extracted_30, %26 : f64
        %inserted = tensor.insert %27 into %arg5[%arg4] : tensor<1xf64>
        scf.yield %inserted : tensor<1xf64>
      }
      scf.yield %24 : tensor<1xf64>
    }
    %23 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
      %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
        %extracted_27 = tensor.extract %22[%arg2] : tensor<1xf64>
        %extracted_28 = tensor.extract %15[%arg2, %arg4] : tensor<4x4xf64>
        %25 = arith.mulf %extracted_27, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
        %26 = arith.addf %extracted_29, %25 : f64
        %inserted = tensor.insert %26 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
        scf.yield %inserted : tensor<1x4xf64>
      }
      scf.yield %24 : tensor<1x4xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %23 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
    }
  }
  "ta.print"(%18) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %18 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %16) -> (tensor<?x4xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
    %extracted_slice_25 = tensor.extract_slice %17[%arg0] [1] [1] : tensor<4xf64> to tensor<1xf64>
    %19 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %20 = arith.index_cast %extracted : i64 to index
    %extracted_26 = tensor.extract %11[%19] : tensor<?xi64>
    %21 = arith.index_cast %extracted_26 : i64 to index
    %22 = scf.for %arg2 = %20 to %21 step %c1 iter_args(%arg3 = %extracted_slice_25) -> (tensor<1xf64>) {
      %extracted_27 = tensor.extract %12[%arg2] : tensor<?xi64>
      %24 = arith.index_cast %extracted_27 : i64 to index
      %extracted_28 = tensor.extract %13[%arg2] : tensor<?xf64>
      %25 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1xf64>) {
        %extracted_29 = tensor.extract %14[%24, %arg4] : tensor<?x4xf64>
        %26 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg5[%arg4] : tensor<1xf64>
        %27 = arith.addf %extracted_30, %26 : f64
        %inserted = tensor.insert %27 into %arg5[%arg4] : tensor<1xf64>
        scf.yield %inserted : tensor<1xf64>
      }
      scf.yield %25 : tensor<1xf64>
    }
    %23 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
      %extracted_27 = tensor.extract %22[%arg2] : tensor<1xf64>
      %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
        %extracted_28 = tensor.extract %15[%arg2, %arg4] : tensor<4x4xf64>
        %25 = arith.mulf %extracted_27, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
        %26 = arith.addf %extracted_29, %25 : f64
        %inserted = tensor.insert %26 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
        scf.yield %inserted : tensor<1x4xf64>
      }
      scf.yield %24 : tensor<1x4xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %23 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
    }
  }
  "ta.print"(%18) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %18 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %16) -> (tensor<?x4xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
    %extracted_slice_25 = tensor.extract_slice %17[%arg0] [1] [1] : tensor<4xf64> to tensor<1xf64>
    %19 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %20 = arith.index_cast %extracted : i64 to index
    %extracted_26 = tensor.extract %11[%19] : tensor<?xi64>
    %21 = arith.index_cast %extracted_26 : i64 to index
    %22 = scf.for %arg2 = %20 to %21 step %c1 iter_args(%arg3 = %extracted_slice_25) -> (tensor<1xf64>) {
      %extracted_27 = tensor.extract %12[%arg2] : tensor<?xi64>
      %24 = arith.index_cast %extracted_27 : i64 to index
      %extracted_28 = tensor.extract %13[%arg2] : tensor<?xf64>
      %25 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1xf64>) {
        %extracted_29 = tensor.extract %14[%24, %arg4] : tensor<?x4xf64>
        %26 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg5[%arg4] : tensor<1xf64>
        %27 = arith.addf %extracted_30, %26 : f64
        %inserted = tensor.insert %27 into %arg5[%arg4] : tensor<1xf64>
        scf.yield %inserted : tensor<1xf64>
      }
      scf.yield %25 : tensor<1xf64>
    }
    %23 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
      %extracted_27 = tensor.extract %22[%arg2] : tensor<1xf64>
      %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
        %extracted_28 = tensor.extract %15[%arg2, %arg4] : tensor<4x4xf64>
        %25 = arith.mulf %extracted_27, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
        %26 = arith.addf %extracted_29, %25 : f64
        %inserted = tensor.insert %26 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
        scf.yield %inserted : tensor<1x4xf64>
      }
      scf.yield %24 : tensor<1x4xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %23 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
    }
  }
  "ta.print"(%18) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
    %18 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %16) -> (tensor<?x4xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %extracted_slice_25 = tensor.extract_slice %17[%arg0] [1] [1] : tensor<4xf64> to tensor<1xf64>
      %19 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %20 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %11[%19] : tensor<?xi64>
      %21 = arith.index_cast %extracted_26 : i64 to index
      %22 = scf.for %arg2 = %20 to %21 step %c1 iter_args(%arg3 = %extracted_slice_25) -> (tensor<1xf64>) {
        %extracted_27 = tensor.extract %12[%arg2] : tensor<?xi64>
        %24 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg2] : tensor<?xf64>
        %25 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1xf64>) {
          %extracted_29 = tensor.extract %14[%24, %arg4] : tensor<?x4xf64>
          %26 = arith.mulf %extracted_28, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg5[%arg4] : tensor<1xf64>
          %27 = arith.addf %extracted_30, %26 : f64
          %inserted = tensor.insert %27 into %arg5[%arg4] : tensor<1xf64>
          scf.yield %inserted : tensor<1xf64>
        }
        scf.yield %25 : tensor<1xf64>
      }
      %23 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
        %extracted_27 = tensor.extract %22[%arg2] : tensor<1xf64>
        %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
          %extracted_28 = tensor.extract %15[%arg2, %arg4] : tensor<4x4xf64>
          %25 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
          %26 = arith.addf %extracted_29, %25 : f64
          %inserted = tensor.insert %26 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
          scf.yield %inserted : tensor<1x4xf64>
        }
        scf.yield %24 : tensor<1x4xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %23 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      }
    }
    "ta.print"(%18) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
    %18 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %16) -> (tensor<?x4xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %extracted_slice_25 = tensor.extract_slice %17[%arg0] [1] [1] : tensor<4xf64> to tensor<1xf64>
      %19 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %20 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %11[%19] : tensor<?xi64>
      %21 = arith.index_cast %extracted_26 : i64 to index
      %22 = scf.for %arg2 = %20 to %21 step %c1 iter_args(%arg3 = %extracted_slice_25) -> (tensor<1xf64>) {
        %extracted_27 = tensor.extract %12[%arg2] : tensor<?xi64>
        %24 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg2] : tensor<?xf64>
        %25 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1xf64>) {
          %extracted_29 = tensor.extract %14[%24, %arg4] : tensor<?x4xf64>
          %26 = arith.mulf %extracted_28, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg5[%arg4] : tensor<1xf64>
          %27 = arith.addf %extracted_30, %26 : f64
          %inserted = tensor.insert %27 into %arg5[%arg4] : tensor<1xf64>
          scf.yield %inserted : tensor<1xf64>
        }
        scf.yield %25 : tensor<1xf64>
      }
      %23 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
        %extracted_27 = tensor.extract %22[%arg2] : tensor<1xf64>
        %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
          %extracted_28 = tensor.extract %15[%arg2, %arg4] : tensor<4x4xf64>
          %25 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
          %26 = arith.addf %extracted_29, %25 : f64
          %inserted = tensor.insert %26 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
          scf.yield %inserted : tensor<1x4xf64>
        }
        scf.yield %24 : tensor<1x4xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %23 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      }
    }
    "ta.print"(%18) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
    %18 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %16) -> (tensor<?x4xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<?x4xf64> to tensor<1x4xf64>
      %extracted_slice_25 = tensor.extract_slice %17[%arg0] [1] [1] : tensor<4xf64> to tensor<1xf64>
      %19 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %20 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %11[%19] : tensor<?xi64>
      %21 = arith.index_cast %extracted_26 : i64 to index
      %22 = scf.for %arg2 = %20 to %21 step %c1 iter_args(%arg3 = %extracted_slice_25) -> (tensor<1xf64>) {
        %extracted_27 = tensor.extract %12[%arg2] : tensor<?xi64>
        %24 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg2] : tensor<?xf64>
        %25 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1xf64>) {
          %extracted_29 = tensor.extract %14[%24, %arg4] : tensor<?x4xf64>
          %26 = arith.mulf %extracted_28, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg5[%arg4] : tensor<1xf64>
          %27 = arith.addf %extracted_30, %26 : f64
          %inserted = tensor.insert %27 into %arg5[%arg4] : tensor<1xf64>
          scf.yield %inserted : tensor<1xf64>
        }
        scf.yield %25 : tensor<1xf64>
      }
      %23 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4xf64>) {
        %extracted_27 = tensor.extract %22[%arg2] : tensor<1xf64>
        %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4xf64>) {
          %extracted_28 = tensor.extract %15[%arg2, %arg4] : tensor<4x4xf64>
          %25 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4xf64>
          %26 = arith.addf %extracted_29, %25 : f64
          %inserted = tensor.insert %26 into %arg5[%idx0, %arg4] : tensor<1x4xf64>
          scf.yield %inserted : tensor<1x4xf64>
        }
        scf.yield %24 : tensor<1x4xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %23 into %arg1[%arg0, 0] [1, 4] [1, 1] : tensor<1x4xf64> into tensor<?x4xf64>
      }
    }
    "ta.print"(%18) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      %subview_25 = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %12 = arith.addi %arg0, %c1 : index
      %13 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %14 = arith.index_cast %13 : i64 to index
      %15 = memref.load %alloc_10[%12] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview_25, %alloc_26 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      %17 = scf.for %arg1 = %14 to %16 step %c1 iter_args(%arg2 = %alloc_26) -> (memref<1xf64>) {
        %19 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg1] : memref<?xf64>
        %22 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %arg2) -> (memref<1xf64>) {
          %23 = memref.load %alloc_20[%20, %arg3] : memref<?x4xf64>
          %24 = arith.mulf %21, %23 : f64
          %25 = memref.load %arg4[%arg3] : memref<1xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %arg4[%arg3] : memref<1xf64>
          scf.yield %arg4 : memref<1xf64>
        }
        scf.yield %22 : memref<1xf64>
      }
      %18 = scf.for %arg1 = %c0 to %idx4 step %c1 iter_args(%arg2 = %subview) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
        %19 = memref.load %17[%arg1] : memref<1xf64>
        %20 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
          %21 = memref.load %alloc_21[%arg1, %arg3] : memref<4x4xf64>
          %22 = arith.mulf %19, %21 : f64
          %23 = memref.load %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
          %24 = arith.addf %23, %22 : f64
          memref.store %24, %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
          scf.yield %arg4 : memref<1x4xf64, strided<[4, 1], offset: ?>>
        }
        scf.yield %20 : memref<1x4xf64, strided<[4, 1], offset: ?>>
      }
      %subview_27 = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      memref.copy %18, %subview_27 : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %11 = bufferization.to_tensor %alloc_22 : memref<?x4xf64>
    "ta.print"(%11) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  scf.forall (%arg0) in (%9) {
    %subview = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    %subview_25 = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
    %12 = arith.addi %arg0, %c1 : index
    %13 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %14 = arith.index_cast %13 : i64 to index
    %15 = memref.load %alloc_10[%12] : memref<?xi64>
    %16 = arith.index_cast %15 : i64 to index
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
    memref.copy %subview_25, %alloc_26 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
    %17 = scf.for %arg1 = %14 to %16 step %c1 iter_args(%arg2 = %alloc_26) -> (memref<1xf64>) {
      %19 = memref.load %alloc_12[%arg1] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%arg1] : memref<?xf64>
      %22 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %arg2) -> (memref<1xf64>) {
        %23 = memref.load %alloc_20[%20, %arg3] : memref<?x4xf64>
        %24 = arith.mulf %21, %23 : f64
        %25 = memref.load %arg4[%arg3] : memref<1xf64>
        %26 = arith.addf %25, %24 : f64
        memref.store %26, %arg4[%arg3] : memref<1xf64>
        scf.yield %arg4 : memref<1xf64>
      }
      scf.yield %22 : memref<1xf64>
    }
    %18 = scf.for %arg1 = %c0 to %idx4 step %c1 iter_args(%arg2 = %subview) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
      %19 = memref.load %17[%arg1] : memref<1xf64>
      %20 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
        %21 = memref.load %alloc_21[%arg1, %arg3] : memref<4x4xf64>
        %22 = arith.mulf %19, %21 : f64
        %23 = memref.load %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        %24 = arith.addf %23, %22 : f64
        memref.store %24, %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        scf.yield %arg4 : memref<1x4xf64, strided<[4, 1], offset: ?>>
      }
      scf.yield %20 : memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %subview_27 = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    memref.copy %18, %subview_27 : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
  }
  %11 = bufferization.to_tensor %alloc_22 : memref<?x4xf64>
  "ta.print"(%11) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  scf.forall (%arg0) in (%9) {
    %subview = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    %subview_26 = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
    %13 = arith.addi %arg0, %c1 : index
    %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    %16 = memref.load %alloc_10[%13] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %alloc_27 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
    memref.copy %subview_26, %alloc_27 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
    %18 = scf.for %arg1 = %15 to %17 step %c1 iter_args(%arg2 = %alloc_27) -> (memref<1xf64>) {
      %20 = memref.load %alloc_12[%arg1] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_18[%arg1] : memref<?xf64>
      %23 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %arg2) -> (memref<1xf64>) {
        %24 = memref.load %alloc_20[%21, %arg3] : memref<?x4xf64>
        %25 = arith.mulf %22, %24 : f64
        %26 = memref.load %arg4[%arg3] : memref<1xf64>
        %27 = arith.addf %26, %25 : f64
        memref.store %27, %arg4[%arg3] : memref<1xf64>
        scf.yield %arg4 : memref<1xf64>
      }
      scf.yield %23 : memref<1xf64>
    }
    %19 = scf.for %arg1 = %c0 to %idx4 step %c1 iter_args(%arg2 = %subview) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
      %20 = memref.load %18[%arg1] : memref<1xf64>
      %21 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x4xf64, strided<[4, 1], offset: ?>>) {
        %22 = memref.load %alloc_21[%arg1, %arg3] : memref<4x4xf64>
        %23 = arith.mulf %20, %22 : f64
        %24 = memref.load %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        %25 = arith.addf %24, %23 : f64
        memref.store %25, %arg4[%idx0, %arg3] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        scf.yield %arg4 : memref<1x4xf64, strided<[4, 1], offset: ?>>
      }
      scf.yield %21 : memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %subview_28 = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    memref.copy %19, %subview_28 : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
  }
  %11 = bufferization.to_tensor %alloc_22 : memref<?x4xf64>
  %12 = bufferization.to_memref %11 : memref<?x4xf64>
  %cast_25 = memref.cast %12 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      %subview_26 = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_27 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview_26, %alloc_27 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_27[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_27[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_27[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %subview[%idx0, %arg2] : memref<1x4xf64, strided<[4, 1], offset: ?>>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %subview[%idx0, %arg2] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        }
      }
      %subview_28 = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      memref.copy %subview, %subview_28 : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %cast_25 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      %subview_26 = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_27 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview_26, %alloc_27 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_27[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_27[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_27[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %subview[%idx0, %arg2] : memref<1x4xf64, strided<[4, 1], offset: ?>>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %subview[%idx0, %arg2] : memref<1x4xf64, strided<[4, 1], offset: ?>>
        }
      }
      memref.copy %subview, %subview : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %cast_25 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_22[%arg0, 0] [1, 4] [1, 1] : memref<?x4xf64> to memref<1x4xf64, strided<[4, 1], offset: ?>>
      %subview_26 = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_27 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview_26, %alloc_27 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_27[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_27[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_27[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      memref.copy %subview, %subview : memref<1x4xf64, strided<[4, 1], offset: ?>> to memref<1x4xf64, strided<[4, 1], offset: ?>>
    }
    %cast_25 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview, %alloc_26 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_26[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_26[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_26[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_25 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  scf.forall (%arg0) in (%9) {
    %subview = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
    %11 = arith.addi %arg0, %c1 : index
    %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %13 = arith.index_cast %12 : i64 to index
    %14 = memref.load %alloc_10[%11] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
    memref.copy %subview, %alloc_26 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
    scf.for %arg1 = %13 to %15 step %c1 {
      %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloc_26[%arg2] : memref<1xf64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %alloc_26[%arg2] : memref<1xf64>
      }
    }
    scf.for %arg1 = %c0 to %idx4 step %c1 {
      %16 = memref.load %alloc_26[%arg1] : memref<1xf64>
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
        %18 = arith.mulf %16, %17 : f64
        %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        %20 = arith.addf %19, %18 : f64
        memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_25 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
  }
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
  }
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
  }
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
  }
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
  }
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
  }
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
  }
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0_i64, %alloc_16[%arg0] : memref<?xi64>
  }
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst_1, %alloc_18[%arg0] : memref<?xf64>
  }
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %10 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  scf.for %arg0 = %c0 to %c4 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst, %alloc_21[%arg0, %arg1] : memref<4x4xf64>
    }
  }
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %9 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc_22[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  scf.for %arg0 = %c0 to %c4 step %c1 {
    memref.store %cst_1, %alloc_23[%arg0] : memref<4xf64>
  }
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %9 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc_24[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  scf.forall (%arg0) in (%9) {
    %subview = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
    %11 = arith.addi %arg0, %c1 : index
    %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %13 = arith.index_cast %12 : i64 to index
    %14 = memref.load %alloc_10[%11] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
    memref.copy %subview, %alloc_26 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
    scf.for %arg1 = %13 to %15 step %c1 {
      %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloc_26[%arg2] : memref<1xf64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %alloc_26[%arg2] : memref<1xf64>
      }
    }
    scf.for %arg1 = %c0 to %idx4 step %c1 {
      %16 = memref.load %alloc_26[%arg1] : memref<1xf64>
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
        %18 = arith.mulf %16, %17 : f64
        %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        %20 = arith.addf %19, %18 : f64
        memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_25 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_16[%arg0] : memref<?xi64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_1, %alloc_18[%arg0] : memref<?xf64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_21[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_22[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<4xf64>
    }
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_24[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview, %alloc_26 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_26[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_26[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_26[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_25 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_16[%arg0] : memref<?xi64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_1, %alloc_18[%arg0] : memref<?xf64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_21[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_22[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<4xf64>
    }
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_24[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %c0_25 = arith.constant 0 : index
    %c1_26 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_25) to (%9) step (%c1_26) {
      %subview = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview, %alloc_28 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_28[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_28[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_28[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      scf.reduce 
    }
    %cast_27 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_16[%arg0] : memref<?xi64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_1, %alloc_18[%arg0] : memref<?xf64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_21[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_22[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<4xf64>
    }
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_24[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %c0_25 = arith.constant 0 : index
    %c1_26 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_25) to (%9) step (%c1_26) {
      %subview = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview, %alloc_28 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_28[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_28[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_28[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      scf.reduce 
    }
    %cast_27 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_16[%arg0] : memref<?xi64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_1, %alloc_18[%arg0] : memref<?xf64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_21[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_22[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<4xf64>
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %subview = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_25 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview, %alloc_25 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_25[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_25[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_25[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      scf.reduce 
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_16[%arg0] : memref<?xi64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_1, %alloc_18[%arg0] : memref<?xf64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_21[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_22[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<4xf64>
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %subview = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_25 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview, %alloc_25 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_25[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_25[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_25[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      scf.reduce 
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


module {
  func.func @main() {
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_16[%arg0] : memref<?xi64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_1, %alloc_18[%arg0] : memref<?xf64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_21[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_22[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<4xf64>
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %subview = memref.subview %alloc_23[%arg0] [1] [1] : memref<4xf64> to memref<1xf64, strided<[1], offset: ?>>
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %alloc_25 = memref.alloc() {alignment = 64 : i64} : memref<1xf64>
      memref.copy %subview, %alloc_25 : memref<1xf64, strided<[1], offset: ?>> to memref<1xf64>
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_25[%arg2] : memref<1xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_25[%arg2] : memref<1xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_25[%arg1] : memref<1xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
      }
      scf.reduce 
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
