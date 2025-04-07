// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %6 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
    %8 = "ta.spTensor_decl"(%4, %5) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    %10 = "ta.mul"(%6, %7, %0, %2, %2, %1, %0, %1) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<4x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x?xf64>
    "ta.set_op"(%10, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    %11 = "ta.elews_mul"(%3, %9, %0, %1, %0, %1, %0, %1) <{MaskType = "none", formats = ["CSR", "Dense", "CSR"], indexing_maps = [#map3, #map3, #map3], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.set_op"(%11, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %8 = "ta.spTensor_decl"(%4, %5) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %10 = "ta.mul"(%6, %7, %0, %2, %2, %1, %0, %1) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<4x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x?xf64>
  "ta.set_op"(%10, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %11 = "ta.elews_mul"(%3, %9, %0, %1, %0, %1, %0, %1) <{MaskType = "none", formats = ["CSR", "Dense", "CSR"], indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%11, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %8 = "ta.spTensor_decl"(%4, %5) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %10 = "it.itree"(%9) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %16 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %15, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %19 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%10, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %11 = "it.itree"(%8) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %18 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%11, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeKernelFusion (indextree-kernel-fusion) //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %8 = "ta.spTensor_decl"(%4, %5) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %10:2 = "it.itree"(%8, %9) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?x?xf64>):
    %11 = "it.RootOp"() : () -> !it.index_tree
    %12 = "it.IndexOp"(%11) : (!it.index_tree) -> !it.index
    %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %12) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg1, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg1, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg0, %13, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %19 = "it.LHSOperandOp"(%arg0, %pos_11, %pos_13, %crd_10, %crd_12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%3, %13, %pos_15) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%3, %pos_15, %pos_17, %crd_14, %crd_16) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%18, %12) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%18, %13, %pos_19) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%18, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %22 = "it.ComputeOp"(%13, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %22, %18 : tensor<?x?xf64>, tensor<?x?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>)
  "ta.set_op"(%10#0, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c-1_i32 = arith.constant -1 : i32
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %4 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %5 = "ta.spTensor_decl"(%1, %2) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %6 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %7:2 = "it.itree"(%5, %6) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?x?xf64>):
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %10 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %11 = "it.DomainIntersectionOp"(%9, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %12 = "it.IndexOp"(%8, %11) : (!it.index_tree, !it.domain) -> !it.index
    %13 = "it.DenseDomainOp"(%c-1_i32) <{dims = []}> : (i32) -> !it.domain
    %14 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %16 = "it.IndexOp"(%12, %15) : (!it.index, !it.domain) -> !it.index
    %17 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %18 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %19 = "it.DomainIntersectionOp"(%18, %17) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %20 = "it.IndexOp"(%16, %19) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %12) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg1, %16, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%arg1, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %20, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %20) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %16, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg0, %16, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %25 = "it.LHSOperandOp"(%arg0, %pos_11, %pos_13, %crd_10, %crd_12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%0, %16, %pos_15) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %26 = "it.OperandOp"(%0, %pos_15, %pos_17, %crd_14, %crd_16) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%24, %12) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%24, %16, %pos_19) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %27 = "it.OperandOp"(%24, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %28 = "it.ComputeOp"(%16, %25, %26, %27) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %28, %24 : tensor<?x?xf64>, tensor<?x?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>)
  "ta.set_op"(%7#0, %5) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDimensionReduction (indextree-dimension-reduction) //----- //
func.func @main() {
  %c-1_i32 = arith.constant -1 : i32
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %4 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %5 = "ta.spTensor_decl"(%1, %2) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %cst = arith.constant 0.000000e+00 : f64
  %6 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %7:2 = "it.itree"(%5, %cst) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %10 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %11 = "it.DomainIntersectionOp"(%9, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %12 = "it.IndexOp"(%8, %11) : (!it.index_tree, !it.domain) -> !it.index
    %13 = "it.DenseDomainOp"(%c-1_i32) <{dims = []}> : (i32) -> !it.domain
    %14 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %16 = "it.IndexOp"(%12, %15) : (!it.index, !it.domain) -> !it.index
    %17 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %18 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %19 = "it.DomainIntersectionOp"(%18, %17) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %20 = "it.IndexOp"(%16, %19) : (!it.index, !it.domain) -> !it.index
    %21 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%3, %20, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%3, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %20) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg0, %16, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %25 = "it.LHSOperandOp"(%arg0, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%0, %16, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %26 = "it.OperandOp"(%0, %pos_11, %pos_13, %crd_10, %crd_12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %27 = "it.OperandOp"(%24) : (f64) -> !it.operand
    %28 = "it.ComputeOp"(%16, %25, %26, %27) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %29 = "it.LHSOperandOp"(%24) : (f64) -> !it.operand
    %cst_14 = arith.constant 0.000000e+00 : f64
    %30 = "it.OperandOp"(%cst_14) : (f64) -> !it.operand
    %31 = "it.ComputeOp"(%16, %29, %30) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %28, %31 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.set_op"(%7#0, %5) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %c-1_i32 = arith.constant -1 : i32
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %25 = "ta.dense_tensor_decl"(%23) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %26 = "ta.dense_tensor_decl"(%24) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %27 = "ta.sparse_output_tensor_decl"(%23, %24) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %cst_31 = arith.constant 0.000000e+00 : f64
  %28 = "ta.dense_tensor_decl"(%23, %24) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29:2 = "it.itree"(%27, %cst_31) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DenseDomainOp"(%c-1_i32) <{dims = []}> : (i32) -> !it.domain
    %36 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.DomainIntersectionOp"(%36, %35) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %38 = "it.IndexOp"(%34, %37) : (!it.index, !it.domain) -> !it.index
    %39 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %40 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %41 = "it.DomainIntersectionOp"(%40, %39) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %42 = "it.IndexOp"(%38, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%25, %42, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%25, %pos, %pos_33, %crd, %crd_32) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%26, %42) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%26, %38, %pos_35) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%26, %pos_35, %pos_37, %crd_34, %crd_36) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %46 = "it.ComputeOp"(%42, %43, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %38, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg0, %pos_39, %pos_41, %crd_38, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %38, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.OperandOp"(%22, %pos_43, %pos_45, %crd_42, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %49 = "it.OperandOp"(%46) : (f64) -> !it.operand
    %50 = "it.ComputeOp"(%38, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %51 = "it.LHSOperandOp"(%46) : (f64) -> !it.operand
    %cst_46 = arith.constant 0.000000e+00 : f64
    %52 = "it.OperandOp"(%cst_46) : (f64) -> !it.operand
    %53 = "it.ComputeOp"(%38, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %50, %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.set_op"(%29#0, %27) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%27) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %c-1_i32 = arith.constant -1 : i32
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<4x?xf64>
  %27 = "ta.sparse_output_tensor_decl"(%23, %24) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %cst_33 = arith.constant 0.000000e+00 : f64
  %alloc_34 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %28 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29:2 = "it.itree"(%27, %cst_33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DenseDomainOp"(%c-1_i32) <{dims = []}> : (i32) -> !it.domain
    %36 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.DomainIntersectionOp"(%36, %35) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %38 = "it.IndexOp"(%34, %37) : (!it.index, !it.domain) -> !it.index
    %39 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %40 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %41 = "it.DomainIntersectionOp"(%40, %39) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %42 = "it.IndexOp"(%38, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%25, %42, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%25, %pos, %pos_36, %crd, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%26, %42) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%26, %38, %pos_38) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%26, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %46 = "it.ComputeOp"(%42, %43, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%arg0, %38, %pos_42) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg0, %pos_42, %pos_44, %crd_41, %crd_43) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%22, %38, %pos_46) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.OperandOp"(%22, %pos_46, %pos_48, %crd_45, %crd_47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %49 = "it.OperandOp"(%46) : (f64) -> !it.operand
    %50 = "it.ComputeOp"(%38, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %51 = "it.LHSOperandOp"(%46) : (f64) -> !it.operand
    %cst_49 = arith.constant 0.000000e+00 : f64
    %52 = "it.OperandOp"(%cst_49) : (f64) -> !it.operand
    %53 = "it.ComputeOp"(%38, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %50, %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.set_op"(%29#0, %27) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%27) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %c-1_i32 = arith.constant -1 : i32
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<4x?xf64>
  %27 = "ta.sparse_output_tensor_decl"(%23, %24) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %cst_33 = arith.constant 0.000000e+00 : f64
  %alloc_34 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %28 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29:2 = "it.itree"(%27, %cst_33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DenseDomainOp"(%c-1_i32) <{dims = []}> : (i32) -> !it.domain
    %36 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.DomainIntersectionOp"(%36, %35) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %38 = "it.IndexOp"(%34, %37) : (!it.index, !it.domain) -> !it.index
    %39 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %40 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %41 = "it.DomainIntersectionOp"(%40, %39) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %42 = "it.IndexOp"(%38, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%25, %42, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%25, %pos, %pos_36, %crd, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%26, %42) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%26, %38, %pos_38) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%26, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %46 = "it.ComputeOp"(%42, %43, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%arg0, %38, %pos_42) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg0, %pos_42, %pos_44, %crd_41, %crd_43) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%22, %38, %pos_46) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.OperandOp"(%22, %pos_46, %pos_48, %crd_45, %crd_47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %49 = "it.OperandOp"(%46) : (f64) -> !it.operand
    %50 = "it.ComputeOp"(%38, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %51 = "it.LHSOperandOp"(%46) : (f64) -> !it.operand
    %cst_49 = arith.constant 0.000000e+00 : f64
    %52 = "it.OperandOp"(%cst_49) : (f64) -> !it.operand
    %53 = "it.ComputeOp"(%38, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %50, %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.set_op"(%29#0, %27) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%27) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %c-1_i32 = arith.constant -1 : i32
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<4x?xf64>
  %27 = "it.EmptyDomain"() : () -> !it.domain
  %28 = "it.IndexTreeSparseTensorOp"(%27, %27) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %cst_33 = arith.constant 0.000000e+00 : f64
  %alloc_34 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %29 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%29) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %30:2 = "it.itree"(%28, %cst_33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%32, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DenseDomainOp"(%c-1_i32) <{dims = []}> : (i32) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %41 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %42 = "it.DomainIntersectionOp"(%41, %40) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %43 = "it.IndexOp"(%39, %42) : (!it.index, !it.domain) -> !it.index
    %44 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%25, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%25, %43, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%25, %pos, %pos_36, %crd, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%26, %43) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%26, %39, %pos_38) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%26, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%43, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%arg0, %39, %pos_42) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.LHSOperandOp"(%arg0, %pos_42, %pos_44, %crd_41, %crd_43) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%22, %39, %pos_46) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%22, %pos_46, %pos_48, %crd_45, %crd_47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %50 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %51 = "it.ComputeOp"(%39, %48, %49, %50) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %52 = "it.LHSOperandOp"(%47) : (f64) -> !it.operand
    %cst_49 = arith.constant 0.000000e+00 : f64
    %53 = "it.OperandOp"(%cst_49) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%39, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %51, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.set_op"(%30#0, %28) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %c-1_i32 = arith.constant -1 : i32
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_32 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %cst_34 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<4x?xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x?xf64>
  %27 = "it.EmptyDomain"() : () -> !it.domain
  %28 = "it.IndexTreeSparseTensorOp"(%27, %27) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %cst_35 = arith.constant 0.000000e+00 : f64
  %alloc_36 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x?xf64>
  %30:2 = "it.itree"(%28, %cst_35) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%32, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DenseDomainOp"(%c-1_i32) <{dims = []}> : (i32) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %41 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %42 = "it.DomainIntersectionOp"(%41, %40) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %43 = "it.IndexOp"(%39, %42) : (!it.index, !it.domain) -> !it.index
    %44 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%25, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %43, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%25, %pos, %pos_39, %crd, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%26, %43) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%26, %39, %pos_41) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%26, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%43, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg0, %39, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.LHSOperandOp"(%arg0, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%22, %39, %pos_49) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%22, %pos_49, %pos_51, %crd_48, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %50 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %51 = "it.ComputeOp"(%39, %48, %49, %50) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %52 = "it.LHSOperandOp"(%47) : (f64) -> !it.operand
    %cst_52 = arith.constant 0.000000e+00 : f64
    %53 = "it.OperandOp"(%cst_52) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%39, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %51, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.set_op"(%30#0, %28) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %c-1_i32 = arith.constant -1 : i32
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
  %24 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_32 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %cst_34 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<4x?xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x?xf64>
  %27 = "it.EmptyDomain"() : () -> !it.domain
  %28 = "it.IndexTreeSparseTensorOp"(%27, %27) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %cst_35 = arith.constant 0.000000e+00 : f64
  %alloc_36 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x?xf64>
  %30:2 = "it.itree"(%28, %cst_35) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%32, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DenseDomainOp"(%c-1_i32) <{dims = []}> : (i32) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %41 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %42 = "it.DomainIntersectionOp"(%41, %40) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %43 = "it.IndexOp"(%39, %42) : (!it.index, !it.domain) -> !it.index
    %44 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%25, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %43, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%25, %pos, %pos_39, %crd, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%26, %43) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%26, %39, %pos_41) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%26, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%43, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg0, %39, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.LHSOperandOp"(%arg0, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%22, %39, %pos_49) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%22, %pos_49, %pos_51, %crd_48, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %50 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %51 = "it.ComputeOp"(%39, %48, %49, %50) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %52 = "it.LHSOperandOp"(%47) : (f64) -> !it.operand
    %cst_52 = arith.constant 0.000000e+00 : f64
    %53 = "it.OperandOp"(%cst_52) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%39, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %51, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.set_op"(%30#0, %28) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %c-1_i32 = arith.constant -1 : i32
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
  %24 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_32 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %cst_34 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<4x?xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x?xf64>
  %27 = "it.EmptyDomain"() : () -> !it.domain
  %28 = "it.IndexTreeSparseTensorOp"(%27, %27) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %cst_35 = arith.constant 0.000000e+00 : f64
  %alloc_36 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x?xf64>
  %30:2 = "it.itree"(%28, %cst_35) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%32, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DenseDomainOp"(%c-1_i32) <{dims = []}> : (i32) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %41 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %42 = "it.DomainIntersectionOp"(%41, %40) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %43 = "it.IndexOp"(%39, %42) : (!it.index, !it.domain) -> !it.index
    %44 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%25, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %43, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%25, %pos, %pos_39, %crd, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%26, %43) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%26, %39, %pos_41) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%26, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%43, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg0, %39, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.LHSOperandOp"(%arg0, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%22, %39, %pos_49) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%22, %pos_49, %pos_51, %crd_48, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %50 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %51 = "it.ComputeOp"(%39, %48, %49, %50) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %52 = "it.LHSOperandOp"(%47) : (f64) -> !it.operand
    %cst_52 = arith.constant 0.000000e+00 : f64
    %53 = "it.OperandOp"(%cst_52) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%39, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %51, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.print"(%30#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x?xf64>
  %29 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
  %30 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%29, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_23 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
  %32:2 = "it.itree"(%31, %cst_1) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx4, %27, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd_24, %pos_25 = "it.IndexToTensorDim"(%27, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%27, %39, %pos_25) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%27, %pos_25, %pos_27, %crd_24, %crd_26) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%28, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%28, %37, %pos_29) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_29, %pos_31, %crd_28, %crd_30) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %37, %pos_33) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %44 = "it.LHSOperandOp"(%arg0, %pos_33, %pos_35, %crd_32, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%20, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %46 = "it.OperandOp"(%43) : (f64) -> !it.operand
    %47 = "it.ComputeOp"(%37, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %48 = "it.LHSOperandOp"(%43) : (f64) -> !it.operand
    %49 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %50 = "it.ComputeOp"(%37, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %47, %50 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.print"(%32#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x?xf64>
  %29 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
  %30 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%29, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_23 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
  %32:2 = "it.itree"(%31, %cst_1) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx4, %27, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
    %crd_24, %pos_25 = "it.IndexToTensorDim"(%27, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%27, %39, %pos_25) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%27, %pos_25, %pos_27, %crd_24, %crd_26) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%28, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%28, %37, %pos_29) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_29, %pos_31, %crd_28, %crd_30) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %37, %pos_33) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %44 = "it.LHSOperandOp"(%arg0, %pos_33, %pos_35, %crd_32, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%20, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %46 = "it.OperandOp"(%43) : (f64) -> !it.operand
    %47 = "it.ComputeOp"(%37, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %48 = "it.LHSOperandOp"(%43) : (f64) -> !it.operand
    %49 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %50 = "it.ComputeOp"(%37, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %47, %50 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.print"(%32#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x?xf64>
  %29 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
  %30 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%29, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_23 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
  %32:2 = "it.itree"(%31, %cst_1) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %c0_24 = arith.constant 0 : index
    %c1_25 = arith.constant 1 : index
    %33:2 = scf.for %arg2 = %c0_24 to %21 step %c1_25 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) {
      %c1_26 = arith.constant 1 : index
      %34 = arith.addi %arg2, %c1_26 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_27 = tensor.extract %22[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_27 : i64 to index
      %c1_28 = arith.constant 1 : index
      %37:2 = scf.for %arg5 = %35 to %36 step %c1_28 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) {
        %c0_29 = arith.constant 0 : index
        %c1_30 = arith.constant 1 : index
        %38:2 = scf.for %arg8 = %c0_29 to %idx4 step %c1_30 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) {
          %50 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %51 = arith.index_cast %50 : i64 to index
          %extracted_31 = tensor.extract %27[%arg2, %arg8] : tensor<?x4xf64>
          %extracted_32 = tensor.extract %28[%arg8, %51] : tensor<4x?xf64>
          %52 = arith.mulf %extracted_31, %extracted_32 : f64
          %53 = arith.addf %arg10, %52 : f64
          scf.yield %arg9, %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
        }
        %39 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %40 = arith.index_cast %39 : i64 to index
        %41 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %42 = arith.index_cast %41 : i64 to index
        %43 = "ta.TensorFindPos"(%38#0, %42) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %44 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %45 = arith.index_cast %44 : i64 to index
        %46 = "ta.TAExtractOp"(%20, %arg5, %arg2, %45) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %47 = arith.mulf %46, %38#1 : f64
        %48 = "ta.TAExtractOp"(%38#0, %43, %arg2, %40) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %49 = "ta.TAInsertOp"(%38#0, %arg2, %43, %arg2, %40, %47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %49, %cst_1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
      }
      scf.yield %37#0, %37#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
    }
    it.yield %33#0, %33#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.print"(%32#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x?xf64>
  %idx0 = index.constant 0
  %idx1 = index.constant 1
  %29 = arith.index_cast %21 : index to i64
  %idx1_23 = index.constant 1
  %alloc_24 = memref.alloc(%idx1_23) : memref<?xi64>
  memref.store %29, %alloc_24[%idx0] : memref<?xi64>
  %alloc_25 = memref.alloc() : memref<0xi64>
  %alloc_26 = memref.alloc() : memref<0xi64>
  %alloc_27 = memref.alloc() : memref<0xi64>
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %31 = bufferization.to_tensor %alloc_25 restrict writable : memref<0xi64>
  %32 = bufferization.to_tensor %alloc_26 restrict writable : memref<0xi64>
  %33 = bufferization.to_tensor %alloc_27 restrict writable : memref<0xi64>
  %34 = index.mul %idx1, %21
  %alloc_28 = memref.alloc() : memref<0xi64>
  %alloc_29 = memref.alloc() : memref<0xi64>
  %35 = bufferization.to_tensor %alloc_28 restrict writable : memref<0xi64>
  %36 = bufferization.to_tensor %alloc_29 restrict writable : memref<0xi64>
  %alloc_30 = memref.alloc(%dim_20) : memref<?xf64>
  %cst_31 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0 to %dim_20 step %idx1 {
    memref.store %cst_31, %alloc_30[%arg0] : memref<?xf64>
  }
  %37 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xf64>
  %from_elements_32 = tensor.from_elements %21, %24 : tensor<2xindex>
  %38 = "ta.spTensor_construct"(%from_elements_32, %30, %22, %31, %23, %32, %35, %33, %36, %37) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_33 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_33 : memref<?x?xf64>)
  %39:2 = "it.itree"(%38, %cst_1) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
    %c0_34 = arith.constant 0 : index
    %c1_35 = arith.constant 1 : index
    %40:2 = scf.for %arg2 = %c0_34 to %21 step %c1_35 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) {
      %c1_36 = arith.constant 1 : index
      %41 = arith.addi %arg2, %c1_36 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %42 = arith.index_cast %extracted : i64 to index
      %extracted_37 = tensor.extract %22[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_37 : i64 to index
      %c1_38 = arith.constant 1 : index
      %44:2 = scf.for %arg5 = %42 to %43 step %c1_38 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) {
        %c0_39 = arith.constant 0 : index
        %c1_40 = arith.constant 1 : index
        %45:2 = scf.for %arg8 = %c0_39 to %idx4 step %c1_40 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) {
          %57 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %58 = arith.index_cast %57 : i64 to index
          %extracted_41 = tensor.extract %27[%arg2, %arg8] : tensor<?x4xf64>
          %extracted_42 = tensor.extract %28[%arg8, %58] : tensor<4x?xf64>
          %59 = arith.mulf %extracted_41, %extracted_42 : f64
          %60 = arith.addf %arg10, %59 : f64
          scf.yield %arg9, %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
        }
        %46 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %47 = arith.index_cast %46 : i64 to index
        %48 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %49 = arith.index_cast %48 : i64 to index
        %50 = "ta.TensorFindPos"(%45#0, %49) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %51 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %52 = arith.index_cast %51 : i64 to index
        %53 = "ta.TAExtractOp"(%20, %arg5, %arg2, %52) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %54 = arith.mulf %53, %45#1 : f64
        %55 = "ta.TAExtractOp"(%45#0, %50, %arg2, %47) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %56 = "ta.TAInsertOp"(%45#0, %arg2, %50, %arg2, %47, %54) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %56, %cst_1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
      }
      scf.yield %44#0, %44#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
    }
    it.yield %40#0, %40#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
  "ta.print"(%39#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %idx0 = index.constant 0
  %idx0_20 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_20, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_21 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_21] : tensor<2xindex>
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_22 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1 = index.constant 1
  %extracted_23 = tensor.extract %from_elements[%idx1] : tensor<2xindex>
  %idx0_24 = index.constant 0
  %extracted_25 = tensor.extract %from_elements[%idx0_24] : tensor<2xindex>
  %idx1_26 = index.constant 1
  %extracted_27 = tensor.extract %from_elements[%idx1_26] : tensor<2xindex>
  %alloc_28 = memref.alloc(%extracted_25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%extracted_27) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<4x?xf64>)
  %22 = bufferization.to_tensor %alloc_29 restrict writable : memref<4x?xf64>
  %idx0_30 = index.constant 0
  %idx1_31 = index.constant 1
  %23 = arith.index_cast %extracted : index to i64
  %idx1_32 = index.constant 1
  %alloc_33 = memref.alloc(%idx1_32) : memref<?xi64>
  memref.store %23, %alloc_33[%idx0_30] : memref<?xi64>
  %alloc_34 = memref.alloc() : memref<0xi64>
  %alloc_35 = memref.alloc() : memref<0xi64>
  %alloc_36 = memref.alloc() : memref<0xi64>
  %24 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_34 restrict writable : memref<0xi64>
  %26 = bufferization.to_tensor %alloc_35 restrict writable : memref<0xi64>
  %27 = bufferization.to_tensor %alloc_36 restrict writable : memref<0xi64>
  %28 = index.mul %idx1_31, %extracted
  %alloc_37 = memref.alloc() : memref<0xi64>
  %alloc_38 = memref.alloc() : memref<0xi64>
  %29 = bufferization.to_tensor %alloc_37 restrict writable : memref<0xi64>
  %30 = bufferization.to_tensor %alloc_38 restrict writable : memref<0xi64>
  %alloc_39 = memref.alloc(%dim_22) : memref<?xf64>
  %cst_40 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_30 to %dim_22 step %idx1_31 {
    memref.store %cst_40, %alloc_39[%arg0] : memref<?xf64>
  }
  %31 = bufferization.to_tensor %alloc_39 restrict writable : memref<?xf64>
  %from_elements_41 = tensor.from_elements %extracted, %extracted_23 : tensor<2xindex>
  %idx0_42 = index.constant 0
  %idx0_43 = index.constant 0
  %32 = builtin.unrealized_conversion_cast %from_elements_41, %idx0_42, %24, %idx0_43, %15, %16, %31 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_44 = memref.alloc(%extracted_25, %extracted_27) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_44 : memref<?x?xf64>)
  %33:8 = "it.itree"(%from_elements_41, %idx0_42, %24, %idx0_43, %15, %16, %31, %cst_1) <{operandSegmentSizes = array<i32: 7, 1>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: f64):
    %c0_46 = arith.constant 0 : index
    %c1_47 = arith.constant 1 : index
    %36:8 = scf.for %arg8 = %c0_46 to %extracted step %c1_47 iter_args(%arg9 = %arg0, %arg10 = %arg1, %arg11 = %arg2, %arg12 = %arg3, %arg13 = %arg4, %arg14 = %arg5, %arg15 = %arg6, %arg16 = %arg7) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64) {
      %c1_48 = arith.constant 1 : index
      %38 = arith.addi %arg8, %c1_48 : index
      %extracted_49 = tensor.extract %15[%arg8] : tensor<?xi64>
      %39 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %15[%38] : tensor<?xi64>
      %40 = arith.index_cast %extracted_50 : i64 to index
      %c1_51 = arith.constant 1 : index
      %41:8 = scf.for %arg17 = %39 to %40 step %c1_51 iter_args(%arg18 = %arg9, %arg19 = %arg10, %arg20 = %arg11, %arg21 = %arg12, %arg22 = %arg13, %arg23 = %arg14, %arg24 = %arg15, %arg25 = %arg16) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64) {
        %c0_52 = arith.constant 0 : index
        %c1_53 = arith.constant 1 : index
        %43:8 = scf.for %arg26 = %c0_52 to %idx4 step %c1_53 iter_args(%arg27 = %arg18, %arg28 = %arg19, %arg29 = %arg20, %arg30 = %arg21, %arg31 = %arg22, %arg32 = %arg23, %arg33 = %arg24, %arg34 = %arg25) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64) {
          %extracted_62 = tensor.extract %16[%arg17] : tensor<?xi64>
          %52 = arith.index_cast %extracted_62 : i64 to index
          %extracted_63 = tensor.extract %21[%arg8, %arg26] : tensor<?x4xf64>
          %extracted_64 = tensor.extract %22[%arg26, %52] : tensor<4x?xf64>
          %53 = arith.mulf %extracted_63, %extracted_64 : f64
          %54 = arith.addf %arg34, %53 : f64
          scf.yield %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %54 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64
        }
        %44 = builtin.unrealized_conversion_cast %43#0, %43#1, %43#2, %43#3, %43#4, %43#5, %43#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %extracted_54 = tensor.extract %16[%arg17] : tensor<?xi64>
        %45 = arith.index_cast %extracted_54 : i64 to index
        %extracted_55 = tensor.extract %16[%arg17] : tensor<?xi64>
        %46 = arith.index_cast %extracted_55 : i64 to index
        %extracted_56 = tensor.extract %16[%arg17] : tensor<?xi64>
        %47 = arith.index_cast %extracted_56 : i64 to index
        %extracted_57 = tensor.extract %19[%arg17] : tensor<?xf64>
        %48 = arith.mulf %extracted_57, %43#7 : f64
        %extracted_58 = tensor.extract %43#6[%43#3] : tensor<?xf64>
        %49 = arith.index_cast %45 : index to i64
        %inserted_59 = tensor.insert %49 into %43#5[%43#3] : tensor<?xi64>
        %idx1_60 = index.constant 1
        %50 = index.add %43#3, %idx1_60
        %inserted_61 = tensor.insert %48 into %43#6[%43#3] : tensor<?xf64>
        %51 = builtin.unrealized_conversion_cast %43#0, %43#1, %43#2, %50, %43#4, %inserted_59, %inserted_61 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %43#0, %43#1, %43#2, %50, %43#4, %inserted_59, %inserted_61, %cst_1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64
      }
      %42 = builtin.unrealized_conversion_cast %41#0, %41#1, %41#2, %41#3, %41#4, %41#5, %41#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %41#0, %41#1, %41#2, %41#3, %41#4, %41#5, %41#6, %41#7 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64
    }
    %37 = builtin.unrealized_conversion_cast %36#0, %36#1, %36#2, %36#3, %36#4, %36#5, %36#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %36#0, %36#1, %36#2, %36#3, %36#4, %36#5, %36#6, %36#7 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64)
  %34 = builtin.unrealized_conversion_cast %33#0, %33#1, %33#2, %33#3, %33#4, %33#5, %33#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %35 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_45 = index.constant 0
  %inserted = tensor.insert %idx-1 into %35[%idx0_45] : tensor<1xindex>
  "ta.print"(%33#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%33#4) : (tensor<?xi64>) -> ()
  "ta.print"(%33#5) : (tensor<?xi64>) -> ()
  "ta.print"(%33#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %idx0 = index.constant 0
  %idx0_20 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_20, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_21 = index.constant 0
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_22 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1 = index.constant 1
  %idx0_23 = index.constant 0
  %idx1_24 = index.constant 1
  %alloc_25 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_25 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x4xf64>
  %alloc_26 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_26 : memref<4x?xf64>)
  %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<4x?xf64>
  %idx0_27 = index.constant 0
  %idx1_28 = index.constant 1
  %23 = arith.index_cast %9 : index to i64
  %idx1_29 = index.constant 1
  %alloc_30 = memref.alloc(%idx1_29) : memref<?xi64>
  memref.store %23, %alloc_30[%idx0_27] : memref<?xi64>
  %alloc_31 = memref.alloc() : memref<0xi64>
  %alloc_32 = memref.alloc() : memref<0xi64>
  %alloc_33 = memref.alloc() : memref<0xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<0xi64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<0xi64>
  %27 = bufferization.to_tensor %alloc_33 restrict writable : memref<0xi64>
  %28 = index.mul %idx1_28, %9
  %alloc_34 = memref.alloc() : memref<0xi64>
  %alloc_35 = memref.alloc() : memref<0xi64>
  %29 = bufferization.to_tensor %alloc_34 restrict writable : memref<0xi64>
  %30 = bufferization.to_tensor %alloc_35 restrict writable : memref<0xi64>
  %alloc_36 = memref.alloc(%dim_22) : memref<?xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_27 to %dim_22 step %idx1_28 {
    memref.store %cst_37, %alloc_36[%arg0] : memref<?xf64>
  }
  %31 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %from_elements_38 = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_39 = index.constant 0
  %idx0_40 = index.constant 0
  %32 = builtin.unrealized_conversion_cast %from_elements_38, %idx0_39, %24, %idx0_40, %15, %16, %31 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_41 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_41 : memref<?x?xf64>)
  %c0_42 = arith.constant 0 : index
  %c1_43 = arith.constant 1 : index
  %33:8 = scf.for %arg0 = %c0_42 to %9 step %c1_43 iter_args(%arg1 = %from_elements_38, %arg2 = %idx0_39, %arg3 = %24, %arg4 = %idx0_40, %arg5 = %15, %arg6 = %16, %arg7 = %31, %arg8 = %cst_1) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64) {
    %c1_45 = arith.constant 1 : index
    %37 = arith.addi %arg0, %c1_45 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_46 = tensor.extract %15[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_46 : i64 to index
    %c1_47 = arith.constant 1 : index
    %40:8 = scf.for %arg9 = %38 to %39 step %c1_47 iter_args(%arg10 = %arg1, %arg11 = %arg2, %arg12 = %arg3, %arg13 = %arg4, %arg14 = %arg5, %arg15 = %arg6, %arg16 = %arg7, %arg17 = %arg8) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64) {
      %c0_48 = arith.constant 0 : index
      %c1_49 = arith.constant 1 : index
      %42:8 = scf.for %arg18 = %c0_48 to %idx4 step %c1_49 iter_args(%arg19 = %arg10, %arg20 = %arg11, %arg21 = %arg12, %arg22 = %arg13, %arg23 = %arg14, %arg24 = %arg15, %arg25 = %arg16, %arg26 = %arg17) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64) {
        %extracted_58 = tensor.extract %16[%arg9] : tensor<?xi64>
        %51 = arith.index_cast %extracted_58 : i64 to index
        %extracted_59 = tensor.extract %21[%arg0, %arg18] : tensor<?x4xf64>
        %extracted_60 = tensor.extract %22[%arg18, %51] : tensor<4x?xf64>
        %52 = arith.mulf %extracted_59, %extracted_60 : f64
        %53 = arith.addf %arg26, %52 : f64
        scf.yield %arg19, %arg20, %arg21, %arg22, %arg23, %arg24, %arg25, %53 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64
      }
      %43 = builtin.unrealized_conversion_cast %42#0, %42#1, %42#2, %42#3, %42#4, %42#5, %42#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %extracted_50 = tensor.extract %16[%arg9] : tensor<?xi64>
      %44 = arith.index_cast %extracted_50 : i64 to index
      %extracted_51 = tensor.extract %16[%arg9] : tensor<?xi64>
      %45 = arith.index_cast %extracted_51 : i64 to index
      %extracted_52 = tensor.extract %16[%arg9] : tensor<?xi64>
      %46 = arith.index_cast %extracted_52 : i64 to index
      %extracted_53 = tensor.extract %19[%arg9] : tensor<?xf64>
      %47 = arith.mulf %extracted_53, %42#7 : f64
      %extracted_54 = tensor.extract %42#6[%42#3] : tensor<?xf64>
      %48 = arith.index_cast %44 : index to i64
      %inserted_55 = tensor.insert %48 into %42#5[%42#3] : tensor<?xi64>
      %idx1_56 = index.constant 1
      %49 = index.add %42#3, %idx1_56
      %inserted_57 = tensor.insert %47 into %42#6[%42#3] : tensor<?xf64>
      %50 = builtin.unrealized_conversion_cast %42#0, %42#1, %42#2, %49, %42#4, %inserted_55, %inserted_57 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %42#0, %42#1, %42#2, %49, %42#4, %inserted_55, %inserted_57, %cst_1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64
    }
    %41 = builtin.unrealized_conversion_cast %40#0, %40#1, %40#2, %40#3, %40#4, %40#5, %40#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    scf.yield %40#0, %40#1, %40#2, %40#3, %40#4, %40#5, %40#6, %40#7 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, f64
  }
  %34 = builtin.unrealized_conversion_cast %33#0, %33#1, %33#2, %33#3, %33#4, %33#5, %33#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %35 = builtin.unrealized_conversion_cast %33#0, %33#1, %33#2, %33#3, %33#4, %33#5, %33#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_44 = index.constant 0
  %inserted = tensor.insert %idx-1 into %36[%idx0_44] : tensor<1xindex>
  "ta.print"(%33#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%33#4) : (tensor<?xi64>) -> ()
  "ta.print"(%33#5) : (tensor<?xi64>) -> ()
  "ta.print"(%33#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %idx4 = index.constant 4
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
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
  %16 = arith.index_cast %9 : index to i64
  %alloc_22 = memref.alloc() : memref<1xi64>
  %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
  memref.store %16, %alloc_22[%idx0] : memref<1xi64>
  %17 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
  %alloc_24 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
  }
  %18 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
  %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %19:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %18, %arg4 = %cst_1) -> (index, tensor<?xi64>, tensor<?xf64>, f64) {
    %21 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %22 = arith.index_cast %extracted : i64 to index
    %extracted_26 = tensor.extract %11[%21] : tensor<?xi64>
    %23 = arith.index_cast %extracted_26 : i64 to index
    %24:4 = scf.for %arg5 = %22 to %23 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4) -> (index, tensor<?xi64>, tensor<?xf64>, f64) {
      %25 = scf.for %arg10 = %c0 to %idx4 step %c1 iter_args(%arg11 = %arg9) -> (f64) {
        %extracted_31 = tensor.extract %12[%arg5] : tensor<?xi64>
        %28 = arith.index_cast %extracted_31 : i64 to index
        %extracted_32 = tensor.extract %14[%arg0, %arg10] : tensor<?x4xf64>
        %extracted_33 = tensor.extract %15[%arg10, %28] : tensor<4x?xf64>
        %29 = arith.mulf %extracted_32, %extracted_33 : f64
        %30 = arith.addf %arg11, %29 : f64
        scf.yield %30 : f64
      }
      %extracted_27 = tensor.extract %12[%arg5] : tensor<?xi64>
      %extracted_28 = tensor.extract %13[%arg5] : tensor<?xf64>
      %26 = arith.mulf %extracted_28, %25 : f64
      %inserted_29 = tensor.insert %extracted_27 into %arg7[%arg6] : tensor<?xi64>
      %27 = index.add %arg6, %idx1
      %inserted_30 = tensor.insert %26 into %arg8[%arg6] : tensor<?xf64>
      scf.yield %27, %inserted_29, %inserted_30, %cst_1 : index, tensor<?xi64>, tensor<?xf64>, f64
    }
    scf.yield %24#0, %24#1, %24#2, %24#3 : index, tensor<?xi64>, tensor<?xf64>, f64
  }
  %20 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted = tensor.insert %idx-1 into %20[%idx0] : tensor<1xindex>
  "ta.print"(%17) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%19#1) : (tensor<?xi64>) -> ()
  "ta.print"(%19#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %idx4 = index.constant 4
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
    %16 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
    memref.store %16, %alloc_22[%idx0] : memref<1xi64>
    %17 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %18 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
    %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
    %19:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %18, %arg4 = %cst_1) -> (index, tensor<?xi64>, tensor<?xf64>, f64) {
      %21 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %22 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %11[%21] : tensor<?xi64>
      %23 = arith.index_cast %extracted_26 : i64 to index
      %24:4 = scf.for %arg5 = %22 to %23 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4) -> (index, tensor<?xi64>, tensor<?xf64>, f64) {
        %25 = scf.for %arg10 = %c0 to %idx4 step %c1 iter_args(%arg11 = %arg9) -> (f64) {
          %extracted_31 = tensor.extract %12[%arg5] : tensor<?xi64>
          %28 = arith.index_cast %extracted_31 : i64 to index
          %extracted_32 = tensor.extract %14[%arg0, %arg10] : tensor<?x4xf64>
          %extracted_33 = tensor.extract %15[%arg10, %28] : tensor<4x?xf64>
          %29 = arith.mulf %extracted_32, %extracted_33 : f64
          %30 = arith.addf %arg11, %29 : f64
          scf.yield %30 : f64
        }
        %extracted_27 = tensor.extract %12[%arg5] : tensor<?xi64>
        %extracted_28 = tensor.extract %13[%arg5] : tensor<?xf64>
        %26 = arith.mulf %extracted_28, %25 : f64
        %inserted_29 = tensor.insert %extracted_27 into %arg7[%arg6] : tensor<?xi64>
        %27 = index.add %arg6, %idx1
        %inserted_30 = tensor.insert %26 into %arg8[%arg6] : tensor<?xf64>
        scf.yield %27, %inserted_29, %inserted_30, %cst_1 : index, tensor<?xi64>, tensor<?xf64>, f64
      }
      scf.yield %24#0, %24#1, %24#2, %24#3 : index, tensor<?xi64>, tensor<?xf64>, f64
    }
    %20 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %20[%idx0] : tensor<1xindex>
    "ta.print"(%17) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%19#1) : (tensor<?xi64>) -> ()
    "ta.print"(%19#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %idx4 = index.constant 4
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
    %16 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
    memref.store %16, %alloc_22[%idx0] : memref<1xi64>
    %17 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %18 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
    %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
    %19:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %18, %arg4 = %cst_1) -> (index, tensor<?xi64>, tensor<?xf64>, f64) {
      %21 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %22 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %11[%21] : tensor<?xi64>
      %23 = arith.index_cast %extracted_26 : i64 to index
      %24:4 = scf.for %arg5 = %22 to %23 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4) -> (index, tensor<?xi64>, tensor<?xf64>, f64) {
        %25 = scf.for %arg10 = %c0 to %idx4 step %c1 iter_args(%arg11 = %arg9) -> (f64) {
          %extracted_31 = tensor.extract %12[%arg5] : tensor<?xi64>
          %28 = arith.index_cast %extracted_31 : i64 to index
          %extracted_32 = tensor.extract %14[%arg0, %arg10] : tensor<?x4xf64>
          %extracted_33 = tensor.extract %15[%arg10, %28] : tensor<4x?xf64>
          %29 = arith.mulf %extracted_32, %extracted_33 : f64
          %30 = arith.addf %arg11, %29 : f64
          scf.yield %30 : f64
        }
        %extracted_27 = tensor.extract %12[%arg5] : tensor<?xi64>
        %extracted_28 = tensor.extract %13[%arg5] : tensor<?xf64>
        %26 = arith.mulf %extracted_28, %25 : f64
        %inserted_29 = tensor.insert %extracted_27 into %arg7[%arg6] : tensor<?xi64>
        %27 = index.add %arg6, %idx1
        %inserted_30 = tensor.insert %26 into %arg8[%arg6] : tensor<?xf64>
        scf.yield %27, %inserted_29, %inserted_30, %cst_1 : index, tensor<?xi64>, tensor<?xf64>, f64
      }
      scf.yield %24#0, %24#1, %24#2, %24#3 : index, tensor<?xi64>, tensor<?xf64>, f64
    }
    %20 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %20[%idx0] : tensor<1xindex>
    "ta.print"(%17) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%19#1) : (tensor<?xi64>) -> ()
    "ta.print"(%19#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %idx4 = index.constant 4
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %12 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
    memref.store %12, %alloc_22[%idx0] : memref<1xi64>
    %13 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
    %c0_26 = arith.constant 0 : index
    %dim = memref.dim %alloc_12, %c0_26 : memref<?xi64>
    %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_27 : memref<?xi64> to memref<?xi64>
    %14:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_27, %arg3 = %alloc_24, %arg4 = %cst_1) -> (index, memref<?xi64>, memref<?xf64>, f64) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_10[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23:4 = scf.for %arg5 = %20 to %22 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4) -> (index, memref<?xi64>, memref<?xf64>, f64) {
        %24 = scf.for %arg10 = %c0 to %idx4 step %c1 iter_args(%arg11 = %arg9) -> (f64) {
          %29 = memref.load %alloc_12[%arg5] : memref<?xi64>
          %30 = arith.index_cast %29 : i64 to index
          %31 = memref.load %alloc_20[%arg0, %arg10] : memref<?x4xf64>
          %32 = memref.load %alloc_21[%arg10, %30] : memref<4x?xf64>
          %33 = arith.mulf %31, %32 : f64
          %34 = arith.addf %arg11, %33 : f64
          scf.yield %34 : f64
        }
        %25 = memref.load %alloc_12[%arg5] : memref<?xi64>
        %26 = memref.load %alloc_18[%arg5] : memref<?xf64>
        %27 = arith.mulf %26, %24 : f64
        memref.store %25, %arg7[%arg6] : memref<?xi64>
        %28 = index.add %arg6, %idx1
        memref.store %27, %arg8[%arg6] : memref<?xf64>
        scf.yield %28, %arg7, %arg8, %cst_1 : index, memref<?xi64>, memref<?xf64>, f64
      }
      scf.yield %23#0, %23#1, %23#2, %23#3 : index, memref<?xi64>, memref<?xf64>, f64
    }
    %15 = bufferization.to_tensor %14#2 : memref<?xf64>
    %16 = bufferization.to_tensor %14#1 : memref<?xi64>
    %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_28[%idx0] : memref<1xindex>
    %17 = bufferization.to_tensor %alloc_28 : memref<1xindex>
    "ta.print"(%13) : (tensor<?xi64>) -> ()
    "ta.print"(%17) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%16) : (tensor<?xi64>) -> ()
    "ta.print"(%15) : (tensor<?xf64>) -> ()
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
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %idx4 = index.constant 4
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
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %12 = arith.index_cast %9 : index to i64
  %alloc_22 = memref.alloc() : memref<1xi64>
  %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
  memref.store %12, %alloc_22[%idx0] : memref<1xi64>
  %13 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
  %alloc_24 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
  }
  %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %c0_26 = arith.constant 0 : index
  %dim = memref.dim %alloc_12, %c0_26 : memref<?xi64>
  %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_12, %alloc_27 : memref<?xi64> to memref<?xi64>
  %14:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_27, %arg3 = %alloc_24, %arg4 = %cst_1) -> (index, memref<?xi64>, memref<?xf64>, f64) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_10[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23:4 = scf.for %arg5 = %20 to %22 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4) -> (index, memref<?xi64>, memref<?xf64>, f64) {
      %24 = scf.for %arg10 = %c0 to %idx4 step %c1 iter_args(%arg11 = %arg9) -> (f64) {
        %29 = memref.load %alloc_12[%arg5] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_20[%arg0, %arg10] : memref<?x4xf64>
        %32 = memref.load %alloc_21[%arg10, %30] : memref<4x?xf64>
        %33 = arith.mulf %31, %32 : f64
        %34 = arith.addf %arg11, %33 : f64
        scf.yield %34 : f64
      }
      %25 = memref.load %alloc_12[%arg5] : memref<?xi64>
      %26 = memref.load %alloc_18[%arg5] : memref<?xf64>
      %27 = arith.mulf %26, %24 : f64
      memref.store %25, %arg7[%arg6] : memref<?xi64>
      %28 = index.add %arg6, %idx1
      memref.store %27, %arg8[%arg6] : memref<?xf64>
      scf.yield %28, %arg7, %arg8, %cst_1 : index, memref<?xi64>, memref<?xf64>, f64
    }
    scf.yield %23#0, %23#1, %23#2, %23#3 : index, memref<?xi64>, memref<?xf64>, f64
  }
  %15 = bufferization.to_tensor %14#2 : memref<?xf64>
  %16 = bufferization.to_tensor %14#1 : memref<?xi64>
  %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_28[%idx0] : memref<1xindex>
  %17 = bufferization.to_tensor %alloc_28 : memref<1xindex>
  "ta.print"(%13) : (tensor<?xi64>) -> ()
  "ta.print"(%17) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%16) : (tensor<?xi64>) -> ()
  "ta.print"(%15) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %idx4 = index.constant 4
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
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %12 = arith.index_cast %9 : index to i64
  %alloc_22 = memref.alloc() : memref<1xi64>
  %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
  memref.store %12, %alloc_22[%idx0] : memref<1xi64>
  %13 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
  %alloc_24 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
  }
  %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %c0_26 = arith.constant 0 : index
  %dim = memref.dim %alloc_12, %c0_26 : memref<?xi64>
  %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_12, %alloc_27 : memref<?xi64> to memref<?xi64>
  %14:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_27, %arg3 = %alloc_24, %arg4 = %cst_1) -> (index, memref<?xi64>, memref<?xf64>, f64) {
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_10[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28:4 = scf.for %arg5 = %25 to %27 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4) -> (index, memref<?xi64>, memref<?xf64>, f64) {
      %29 = scf.for %arg10 = %c0 to %idx4 step %c1 iter_args(%arg11 = %arg9) -> (f64) {
        %34 = memref.load %alloc_12[%arg5] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_20[%arg0, %arg10] : memref<?x4xf64>
        %37 = memref.load %alloc_21[%arg10, %35] : memref<4x?xf64>
        %38 = arith.mulf %36, %37 : f64
        %39 = arith.addf %arg11, %38 : f64
        scf.yield %39 : f64
      }
      %30 = memref.load %alloc_12[%arg5] : memref<?xi64>
      %31 = memref.load %alloc_18[%arg5] : memref<?xf64>
      %32 = arith.mulf %31, %29 : f64
      memref.store %30, %arg7[%arg6] : memref<?xi64>
      %33 = index.add %arg6, %idx1
      memref.store %32, %arg8[%arg6] : memref<?xf64>
      scf.yield %33, %arg7, %arg8, %cst_1 : index, memref<?xi64>, memref<?xf64>, f64
    }
    scf.yield %28#0, %28#1, %28#2, %28#3 : index, memref<?xi64>, memref<?xf64>, f64
  }
  %15 = bufferization.to_tensor %14#2 : memref<?xf64>
  %16 = bufferization.to_tensor %14#1 : memref<?xi64>
  %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_28[%idx0] : memref<1xindex>
  %17 = bufferization.to_tensor %alloc_28 : memref<1xindex>
  %18 = bufferization.to_memref %13 : memref<?xi64>
  %cast_29 = memref.cast %18 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
  %19 = bufferization.to_memref %17 : memref<1xindex>
  %cast_30 = memref.cast %19 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_30) : (memref<*xindex>) -> ()
  %20 = bufferization.to_memref %11 : memref<?xi64>
  %cast_31 = memref.cast %20 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_31) : (memref<*xi64>) -> ()
  %21 = bufferization.to_memref %16 : memref<?xi64>
  %cast_32 = memref.cast %21 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_32) : (memref<*xi64>) -> ()
  %22 = bufferization.to_memref %15 : memref<?xf64>
  %cast_33 = memref.cast %22 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_33) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %idx4 = index.constant 4
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_22[%idx0] : memref<1xi64>
    %alloc_23 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<?xf64>
    }
    %alloc_24 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x?xf64>)
    %alloc_25 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_25 : memref<?xi64> to memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %cst_1) -> (index, f64) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18:2 = scf.for %arg3 = %15 to %17 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (index, f64) {
        %19 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (f64) {
          %24 = memref.load %alloc_12[%arg3] : memref<?xi64>
          %25 = arith.index_cast %24 : i64 to index
          %26 = memref.load %alloc_20[%arg0, %arg6] : memref<?x4xf64>
          %27 = memref.load %alloc_21[%arg6, %25] : memref<4x?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %arg7, %28 : f64
          scf.yield %29 : f64
        }
        %20 = memref.load %alloc_12[%arg3] : memref<?xi64>
        %21 = memref.load %alloc_18[%arg3] : memref<?xf64>
        %22 = arith.mulf %21, %19 : f64
        memref.store %20, %alloc_25[%arg4] : memref<?xi64>
        %23 = index.add %arg4, %idx1
        memref.store %22, %alloc_23[%arg4] : memref<?xf64>
        scf.yield %23, %cst_1 : index, f64
      }
      scf.yield %18#0, %18#1 : index, f64
    }
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_26[%idx0] : memref<1xindex>
    %cast_27 = memref.cast %alloc_22 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_27) : (memref<*xi64>) -> ()
    %cast_28 = memref.cast %alloc_26 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_28) : (memref<*xindex>) -> ()
    %cast_29 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_30) : (memref<*xi64>) -> ()
    %cast_31 = memref.cast %alloc_23 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %idx4 = index.constant 4
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_22[%idx0] : memref<1xi64>
    %alloc_23 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<?xf64>
    }
    %alloc_24 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x?xf64>)
    %alloc_25 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_25 : memref<?xi64> to memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %cst_1) -> (index, f64) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18:2 = scf.for %arg3 = %15 to %17 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (index, f64) {
        %19 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (f64) {
          %24 = memref.load %alloc_12[%arg3] : memref<?xi64>
          %25 = arith.index_cast %24 : i64 to index
          %26 = memref.load %alloc_20[%arg0, %arg6] : memref<?x4xf64>
          %27 = memref.load %alloc_21[%arg6, %25] : memref<4x?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %arg7, %28 : f64
          scf.yield %29 : f64
        }
        %20 = memref.load %alloc_12[%arg3] : memref<?xi64>
        %21 = memref.load %alloc_18[%arg3] : memref<?xf64>
        %22 = arith.mulf %21, %19 : f64
        memref.store %20, %alloc_25[%arg4] : memref<?xi64>
        %23 = index.add %arg4, %idx1
        memref.store %22, %alloc_23[%arg4] : memref<?xf64>
        scf.yield %23, %cst_1 : index, f64
      }
      scf.yield %18#0, %18#1 : index, f64
    }
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_26[%idx0] : memref<1xindex>
    %cast_27 = memref.cast %alloc_22 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_27) : (memref<*xi64>) -> ()
    %cast_28 = memref.cast %alloc_26 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_28) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_11) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_23 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_30) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %idx4 = index.constant 4
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_22[%idx0] : memref<1xi64>
    %alloc_23 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<?xf64>
    }
    %alloc_24 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x?xf64>)
    %alloc_25 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_25 : memref<?xi64> to memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %cst_1) -> (index, f64) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18:2 = scf.for %arg3 = %15 to %17 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (index, f64) {
        %19 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (f64) {
          %24 = memref.load %alloc_12[%arg3] : memref<?xi64>
          %25 = arith.index_cast %24 : i64 to index
          %26 = memref.load %alloc_20[%arg0, %arg6] : memref<?x4xf64>
          %27 = memref.load %alloc_21[%arg6, %25] : memref<4x?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %arg7, %28 : f64
          scf.yield %29 : f64
        }
        %20 = memref.load %alloc_12[%arg3] : memref<?xi64>
        %21 = memref.load %alloc_18[%arg3] : memref<?xf64>
        %22 = arith.mulf %21, %19 : f64
        memref.store %20, %alloc_25[%arg4] : memref<?xi64>
        %23 = index.add %arg4, %idx1
        memref.store %22, %alloc_23[%arg4] : memref<?xf64>
        scf.yield %23, %cst_1 : index, f64
      }
      scf.yield %18#0, %18#1 : index, f64
    }
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_26[%idx0] : memref<1xindex>
    %cast_27 = memref.cast %alloc_22 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_27) : (memref<*xi64>) -> ()
    %cast_28 = memref.cast %alloc_26 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_28) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_11) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_23 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_30) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %idx4 = index.constant 4
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_22[%idx0] : memref<1xi64>
    %alloc_23 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<?xf64>
    }
    %alloc_24 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x?xf64>)
    %alloc_25 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_25 : memref<?xi64> to memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %cst_1) -> (index, f64) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18:2 = scf.for %arg3 = %15 to %17 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (index, f64) {
        %19 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (f64) {
          %24 = memref.load %alloc_12[%arg3] : memref<?xi64>
          %25 = arith.index_cast %24 : i64 to index
          %26 = memref.load %alloc_20[%arg0, %arg6] : memref<?x4xf64>
          %27 = memref.load %alloc_21[%arg6, %25] : memref<4x?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %arg7, %28 : f64
          scf.yield %29 : f64
        }
        %20 = memref.load %alloc_12[%arg3] : memref<?xi64>
        %21 = memref.load %alloc_18[%arg3] : memref<?xf64>
        %22 = arith.mulf %21, %19 : f64
        memref.store %20, %alloc_25[%arg4] : memref<?xi64>
        %23 = index.add %arg4, %idx1
        memref.store %22, %alloc_23[%arg4] : memref<?xf64>
        scf.yield %23, %cst_1 : index, f64
      }
      scf.yield %18#0, %18#1 : index, f64
    }
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_26[%idx0] : memref<1xindex>
    %cast_27 = memref.cast %alloc_22 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_27) : (memref<*xi64>) -> ()
    %cast_28 = memref.cast %alloc_26 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_28) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_11) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_23 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_30) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
