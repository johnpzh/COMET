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
    %8 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
    %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
    "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    %10 = "ta.mul"(%6, %7, %0, %2, %2, %1, %0, %1) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<4x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x?xf64>
    "ta.set_op"(%10, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    %11 = "ta.elews_mul"(%3, %9, %0, %1, %0, %1, %0, %1) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [#map3, #map3, #map3], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x?xf64>
    "ta.set_op"(%11, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    "ta.print"(%8) : (tensor<?x?xf64>) -> ()
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
  %8 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %10 = "ta.mul"(%6, %7, %0, %2, %2, %1, %0, %1) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<4x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x?xf64>
  "ta.set_op"(%10, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %11 = "ta.elews_mul"(%3, %9, %0, %1, %0, %1, %0, %1) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x?xf64>
  "ta.set_op"(%11, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%8) : (tensor<?x?xf64>) -> ()
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
  %8 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %10 = "it.itree"(%9) ({
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
  %11 = "it.itree"(%8) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %18 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%11, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%8) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %4 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %5 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  %6 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %7 = "it.itree"(%6) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %9 = "it.RootOp"() : () -> !it.index_tree
    %10 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) : (!it.index_tree, !it.domain) -> !it.index
    %12 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) : (!it.index, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %15 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %11) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %18 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %11) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %17, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %17) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %21 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %8 = "it.itree"(%5) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %9 = "it.RootOp"() : () -> !it.index_tree
    %10 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %11 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %12 = "it.DomainIntersectionOp"(%11, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %13 = "it.IndexOp"(%9, %12) : (!it.index_tree, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %15 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %17, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %18 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %17, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%6, %17, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%6, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %21 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%8, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%5) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
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
  %27 = "ta.dense_tensor_decl"(%23, %24) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  %28 = "ta.dense_tensor_decl"(%23, %24) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_32, %crd, %crd_31) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%25, %39, %pos_34) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_34, %pos_36, %crd_33, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%26, %35, %pos_38) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%29, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%28) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%28) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_32, %crd, %crd_31) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%22, %39, %pos_34) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_34, %pos_36, %crd_33, %crd_35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%28, %39, %pos_38) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%30, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%27) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
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
  %alloc_33 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %27 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x?xf64>
  %alloc_34 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %28 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_36, %crd, %crd_35) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %39, %pos_38) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%26, %35, %pos_42) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%29, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%28) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%28) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_36, %crd, %crd_35) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %39, %pos_38) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_38, %pos_40, %crd_37, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%28, %39, %pos_42) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%30, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%27) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
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
  %alloc_33 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %27 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x?xf64>
  %alloc_34 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %28 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_36, %crd, %crd_35) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %39, %pos_38) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%26, %35, %pos_42) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%29, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%28) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%28) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_36, %crd, %crd_35) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %39, %pos_38) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_38, %pos_40, %crd_37, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%28, %39, %pos_42) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%30, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%27) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
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
  %alloc_33 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %27 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x?xf64>
  %alloc_34 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %28 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_36, %crd, %crd_35) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %39, %pos_38) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%26, %35, %pos_42) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%29, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%28) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%28) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_36, %crd, %crd_35) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %39, %pos_38) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_38, %pos_40, %crd_37, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%28, %39, %pos_42) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%30, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%27) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
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
  %alloc_35 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_36 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_36 : f64) outs(%alloc_35 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x?xf64>
  %alloc_37 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_38 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_38 : f64) outs(%alloc_37 : memref<?x?xf64>)
  %28 = bufferization.to_tensor %alloc_37 restrict writable : memref<?x?xf64>
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_40, %crd, %crd_39) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%25, %39, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%26, %35, %pos_46) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%29, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%28) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%28) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_40, %crd, %crd_39) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%22, %39, %pos_42) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_42, %pos_44, %crd_41, %crd_43) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%28, %39, %pos_46) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%30, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%27) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
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
  %alloc_35 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_36 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_36 : f64) outs(%alloc_35 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x?xf64>
  %alloc_37 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_38 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_38 : f64) outs(%alloc_37 : memref<?x?xf64>)
  %28 = bufferization.to_tensor %alloc_37 restrict writable : memref<?x?xf64>
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_40, %crd, %crd_39) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%25, %39, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%26, %35, %pos_46) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%29, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%28) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%28) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_40, %crd, %crd_39) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%22, %39, %pos_42) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_42, %pos_44, %crd_41, %crd_43) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%28, %39, %pos_46) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%30, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%27) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
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
  %alloc_35 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_36 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_36 : f64) outs(%alloc_35 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x?xf64>
  %alloc_37 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_38 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_38 : f64) outs(%alloc_37 : memref<?x?xf64>)
  %28 = bufferization.to_tensor %alloc_37 restrict writable : memref<?x?xf64>
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_40, %crd, %crd_39) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%25, %39, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%26, %35, %pos_46) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%29) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%29) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_40, %crd, %crd_39) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%22, %39, %pos_42) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_42, %pos_44, %crd_41, %crd_43) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%29, %39, %pos_46) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%29, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.print"(%30) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %dim_22 = tensor.dim %27, %idx0 : tensor<?x4xf64>
  %alloc_23 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_23 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4x?xf64>
  %dim_24 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x?xf64>
  %alloc_26 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
  %30 = bufferization.to_tensor %alloc_26 restrict writable : memref<?x?xf64>
  %31 = "it.itree"(%30) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%dim_22, %27) <{dims = [0 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DenseDomainOp"(%dim_24, %28) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx4, %27, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%arg0, %37, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_28, %crd, %crd_27) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%27, %39, %pos_30) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%27, %pos_30, %pos_32, %crd_29, %crd_31) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%28, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%28, %37, %pos_34) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_34, %pos_36, %crd_33, %crd_35) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %32 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%21, %20, %31) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%arg0, %37, %pos_28) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %38 = "it.LHSOperandOp"(%arg0, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%20, %pos, %pos_32, %crd, %crd_31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%31, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%31, %37, %pos_34) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%31, %pos_34, %pos_36, %crd_33, %crd_35) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %41 = "it.ComputeOp"(%37, %38, %39, %40) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %41 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.print"(%32) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %dim_22 = tensor.dim %27, %idx0 : tensor<?x4xf64>
  %alloc_23 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_23 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4x?xf64>
  %dim_24 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x?xf64>
  %alloc_26 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
  %30 = bufferization.to_tensor %alloc_26 restrict writable : memref<?x?xf64>
  %31 = "it.itree"(%30) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%dim_22, %27) <{dims = [0 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DenseDomainOp"(%dim_24, %28) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx4, %27, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%arg0, %37, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_28, %crd, %crd_27) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%27, %39, %pos_30) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%27, %pos_30, %pos_32, %crd_29, %crd_31) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%28, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%28, %37, %pos_34) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_34, %pos_36, %crd_33, %crd_35) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %32 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%21, %20, %31) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%arg0, %37, %pos_28) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %38 = "it.LHSOperandOp"(%arg0, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%20, %pos, %pos_32, %crd, %crd_31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%31, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%31, %37, %pos_34) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%31, %pos_34, %pos_36, %crd_33, %crd_35) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %41 = "it.ComputeOp"(%37, %38, %39, %40) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %41 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.print"(%32) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %dim_22 = tensor.dim %27, %idx0 : tensor<?x4xf64>
  %alloc_23 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_23 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4x?xf64>
  %dim_24 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x?xf64>
  %alloc_26 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
  %30 = bufferization.to_tensor %alloc_26 restrict writable : memref<?x?xf64>
  %31 = "it.itree"(%30) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %33 = scf.for %arg1 = %c0_27 to %dim_22 step %c1_28 iter_args(%arg2 = %arg0) -> (tensor<?x?xf64>) {
      %c0_29 = arith.constant 0 : index
      %c1_30 = arith.constant 1 : index
      %34 = scf.for %arg3 = %c0_29 to %dim_24 step %c1_30 iter_args(%arg4 = %arg2) -> (tensor<?x?xf64>) {
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %35 = scf.for %arg5 = %c0_31 to %idx4 step %c1_32 iter_args(%arg6 = %arg4) -> (tensor<?x?xf64>) {
          %extracted = tensor.extract %27[%arg1, %arg5] : tensor<?x4xf64>
          %extracted_33 = tensor.extract %28[%arg5, %arg3] : tensor<4x?xf64>
          %36 = arith.mulf %extracted, %extracted_33 : f64
          %extracted_34 = tensor.extract %arg6[%arg1, %arg3] : tensor<?x?xf64>
          %37 = arith.addf %extracted_34, %36 : f64
          %inserted = tensor.insert %37 into %arg6[%arg1, %arg3] : tensor<?x?xf64>
          scf.yield %inserted : tensor<?x?xf64>
        }
        scf.yield %35 : tensor<?x?xf64>
      }
      scf.yield %34 : tensor<?x?xf64>
    }
    it.yield %33 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %32 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %33 = scf.for %arg1 = %c0_27 to %21 step %c1_28 iter_args(%arg2 = %arg0) -> (tensor<?x?xf64>) {
      %c1_29 = arith.constant 1 : index
      %34 = arith.addi %arg1, %c1_29 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_30 = tensor.extract %22[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_30 : i64 to index
      %c1_31 = arith.constant 1 : index
      %37 = scf.for %arg3 = %35 to %36 step %c1_31 iter_args(%arg4 = %arg2) -> (tensor<?x?xf64>) {
        %38 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %39 = arith.index_cast %38 : i64 to index
        %40 = "ta.TAExtractOp"(%20, %arg3, %arg1, %39) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_32 = tensor.extract %31[%arg1, %39] : tensor<?x?xf64>
        %41 = arith.mulf %40, %extracted_32 : f64
        %extracted_33 = tensor.extract %arg4[%arg1, %39] : tensor<?x?xf64>
        %inserted = tensor.insert %41 into %arg4[%arg1, %39] : tensor<?x?xf64>
        scf.yield %inserted : tensor<?x?xf64>
      }
      scf.yield %37 : tensor<?x?xf64>
    }
    it.yield %33 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.print"(%32) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %dim_22 = tensor.dim %27, %idx0 : tensor<?x4xf64>
  %alloc_23 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_23 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4x?xf64>
  %dim_24 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x?xf64>
  %alloc_26 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
  %30 = bufferization.to_tensor %alloc_26 restrict writable : memref<?x?xf64>
  %31 = "it.itree"(%30) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %33 = scf.for %arg1 = %c0_27 to %dim_22 step %c1_28 iter_args(%arg2 = %arg0) -> (tensor<?x?xf64>) {
      %c0_29 = arith.constant 0 : index
      %c1_30 = arith.constant 1 : index
      %34 = scf.for %arg3 = %c0_29 to %dim_24 step %c1_30 iter_args(%arg4 = %arg2) -> (tensor<?x?xf64>) {
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %35 = scf.for %arg5 = %c0_31 to %idx4 step %c1_32 iter_args(%arg6 = %arg4) -> (tensor<?x?xf64>) {
          %extracted = tensor.extract %27[%arg1, %arg5] : tensor<?x4xf64>
          %extracted_33 = tensor.extract %28[%arg5, %arg3] : tensor<4x?xf64>
          %36 = arith.mulf %extracted, %extracted_33 : f64
          %extracted_34 = tensor.extract %arg6[%arg1, %arg3] : tensor<?x?xf64>
          %37 = arith.addf %extracted_34, %36 : f64
          %inserted = tensor.insert %37 into %arg6[%arg1, %arg3] : tensor<?x?xf64>
          scf.yield %inserted : tensor<?x?xf64>
        }
        scf.yield %35 : tensor<?x?xf64>
      }
      scf.yield %34 : tensor<?x?xf64>
    }
    it.yield %33 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %32 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %33 = scf.for %arg1 = %c0_27 to %21 step %c1_28 iter_args(%arg2 = %arg0) -> (tensor<?x?xf64>) {
      %c1_29 = arith.constant 1 : index
      %34 = arith.addi %arg1, %c1_29 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_30 = tensor.extract %22[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_30 : i64 to index
      %c1_31 = arith.constant 1 : index
      %37 = scf.for %arg3 = %35 to %36 step %c1_31 iter_args(%arg4 = %arg2) -> (tensor<?x?xf64>) {
        %38 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %39 = arith.index_cast %38 : i64 to index
        %40 = "ta.TAExtractOp"(%20, %arg3, %arg1, %39) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_32 = tensor.extract %31[%arg1, %39] : tensor<?x?xf64>
        %41 = arith.mulf %40, %extracted_32 : f64
        %extracted_33 = tensor.extract %arg4[%arg1, %39] : tensor<?x?xf64>
        %inserted = tensor.insert %41 into %arg4[%arg1, %39] : tensor<?x?xf64>
        scf.yield %inserted : tensor<?x?xf64>
      }
      scf.yield %37 : tensor<?x?xf64>
    }
    it.yield %33 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.print"(%32) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_23 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1_24 = index.constant 1
  %extracted_25 = tensor.extract %from_elements[%idx1_24] : tensor<2xindex>
  %idx0_26 = index.constant 0
  %extracted_27 = tensor.extract %from_elements[%idx0_26] : tensor<2xindex>
  %idx1_28 = index.constant 1
  %extracted_29 = tensor.extract %from_elements[%idx1_28] : tensor<2xindex>
  %alloc_30 = memref.alloc(%extracted_27) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_30 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_30 restrict writable : memref<?x4xf64>
  %dim_31 = tensor.dim %21, %idx0 : tensor<?x4xf64>
  %alloc_32 = memref.alloc(%extracted_29) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_32 : memref<4x?xf64>)
  %22 = bufferization.to_tensor %alloc_32 restrict writable : memref<4x?xf64>
  %dim_33 = tensor.dim %22, %idx1 : tensor<4x?xf64>
  %alloc_34 = memref.alloc(%extracted_27, %extracted_29) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_34 : memref<?x?xf64>)
  %23 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?xf64>
  %alloc_35 = memref.alloc(%extracted_27, %extracted_29) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_35 : memref<?x?xf64>)
  %24 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x?xf64>
  %25 = "it.itree"(%24) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %c0_36 = arith.constant 0 : index
    %c1_37 = arith.constant 1 : index
    %27 = scf.for %arg1 = %c0_36 to %dim_31 step %c1_37 iter_args(%arg2 = %arg0) -> (tensor<?x?xf64>) {
      %c0_38 = arith.constant 0 : index
      %c1_39 = arith.constant 1 : index
      %28 = scf.for %arg3 = %c0_38 to %dim_33 step %c1_39 iter_args(%arg4 = %arg2) -> (tensor<?x?xf64>) {
        %c0_40 = arith.constant 0 : index
        %c1_41 = arith.constant 1 : index
        %29 = scf.for %arg5 = %c0_40 to %idx4 step %c1_41 iter_args(%arg6 = %arg4) -> (tensor<?x?xf64>) {
          %extracted_42 = tensor.extract %21[%arg1, %arg5] : tensor<?x4xf64>
          %extracted_43 = tensor.extract %22[%arg5, %arg3] : tensor<4x?xf64>
          %30 = arith.mulf %extracted_42, %extracted_43 : f64
          %extracted_44 = tensor.extract %arg6[%arg1, %arg3] : tensor<?x?xf64>
          %31 = arith.addf %extracted_44, %30 : f64
          %inserted = tensor.insert %31 into %arg6[%arg1, %arg3] : tensor<?x?xf64>
          scf.yield %inserted : tensor<?x?xf64>
        }
        scf.yield %29 : tensor<?x?xf64>
      }
      scf.yield %28 : tensor<?x?xf64>
    }
    it.yield %27 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %26 = "it.itree"(%23) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %c0_36 = arith.constant 0 : index
    %c1_37 = arith.constant 1 : index
    %27 = scf.for %arg1 = %c0_36 to %extracted step %c1_37 iter_args(%arg2 = %arg0) -> (tensor<?x?xf64>) {
      %c1_38 = arith.constant 1 : index
      %28 = arith.addi %arg1, %c1_38 : index
      %extracted_39 = tensor.extract %15[%arg1] : tensor<?xi64>
      %29 = arith.index_cast %extracted_39 : i64 to index
      %extracted_40 = tensor.extract %15[%28] : tensor<?xi64>
      %30 = arith.index_cast %extracted_40 : i64 to index
      %c1_41 = arith.constant 1 : index
      %31 = scf.for %arg3 = %29 to %30 step %c1_41 iter_args(%arg4 = %arg2) -> (tensor<?x?xf64>) {
        %extracted_42 = tensor.extract %16[%arg3] : tensor<?xi64>
        %32 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %19[%arg3] : tensor<?xf64>
        %extracted_44 = tensor.extract %25[%arg1, %32] : tensor<?x?xf64>
        %33 = arith.mulf %extracted_43, %extracted_44 : f64
        %extracted_45 = tensor.extract %arg4[%arg1, %32] : tensor<?x?xf64>
        %inserted = tensor.insert %33 into %arg4[%arg1, %32] : tensor<?x?xf64>
        scf.yield %inserted : tensor<?x?xf64>
      }
      scf.yield %31 : tensor<?x?xf64>
    }
    it.yield %27 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.print"(%26) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_23 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1_24 = index.constant 1
  %idx0_25 = index.constant 0
  %idx1_26 = index.constant 1
  %alloc_27 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_27 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_27 restrict writable : memref<?x4xf64>
  %dim_28 = tensor.dim %21, %idx0 : tensor<?x4xf64>
  %alloc_29 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<4x?xf64>)
  %22 = bufferization.to_tensor %alloc_29 restrict writable : memref<4x?xf64>
  %dim_30 = tensor.dim %22, %idx1 : tensor<4x?xf64>
  %alloc_31 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_31 : memref<?x?xf64>)
  %23 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x?xf64>
  %alloc_32 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_32 : memref<?x?xf64>)
  %24 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x?xf64>
  %c0_33 = arith.constant 0 : index
  %c1_34 = arith.constant 1 : index
  %25 = scf.for %arg0 = %c0_33 to %dim_28 step %c1_34 iter_args(%arg1 = %24) -> (tensor<?x?xf64>) {
    %c0_37 = arith.constant 0 : index
    %c1_38 = arith.constant 1 : index
    %27 = scf.for %arg2 = %c0_37 to %dim_30 step %c1_38 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
      %c0_39 = arith.constant 0 : index
      %c1_40 = arith.constant 1 : index
      %28 = scf.for %arg4 = %c0_39 to %idx4 step %c1_40 iter_args(%arg5 = %arg3) -> (tensor<?x?xf64>) {
        %extracted = tensor.extract %21[%arg0, %arg4] : tensor<?x4xf64>
        %extracted_41 = tensor.extract %22[%arg4, %arg2] : tensor<4x?xf64>
        %29 = arith.mulf %extracted, %extracted_41 : f64
        %extracted_42 = tensor.extract %arg5[%arg0, %arg2] : tensor<?x?xf64>
        %30 = arith.addf %extracted_42, %29 : f64
        %inserted = tensor.insert %30 into %arg5[%arg0, %arg2] : tensor<?x?xf64>
        scf.yield %inserted : tensor<?x?xf64>
      }
      scf.yield %28 : tensor<?x?xf64>
    }
    scf.yield %27 : tensor<?x?xf64>
  }
  %c0_35 = arith.constant 0 : index
  %c1_36 = arith.constant 1 : index
  %26 = scf.for %arg0 = %c0_35 to %9 step %c1_36 iter_args(%arg1 = %23) -> (tensor<?x?xf64>) {
    %c1_37 = arith.constant 1 : index
    %27 = arith.addi %arg0, %c1_37 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %28 = arith.index_cast %extracted : i64 to index
    %extracted_38 = tensor.extract %15[%27] : tensor<?xi64>
    %29 = arith.index_cast %extracted_38 : i64 to index
    %c1_39 = arith.constant 1 : index
    %30 = scf.for %arg2 = %28 to %29 step %c1_39 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
      %extracted_40 = tensor.extract %16[%arg2] : tensor<?xi64>
      %31 = arith.index_cast %extracted_40 : i64 to index
      %extracted_41 = tensor.extract %19[%arg2] : tensor<?xf64>
      %extracted_42 = tensor.extract %25[%arg0, %31] : tensor<?x?xf64>
      %32 = arith.mulf %extracted_41, %extracted_42 : f64
      %extracted_43 = tensor.extract %arg3[%arg0, %31] : tensor<?x?xf64>
      %inserted = tensor.insert %32 into %arg3[%arg0, %31] : tensor<?x?xf64>
      scf.yield %inserted : tensor<?x?xf64>
    }
    scf.yield %30 : tensor<?x?xf64>
  }
  "ta.print"(%26) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
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
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
  %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
  %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x?xf64>
  %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
  %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x?xf64>
  %18 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %17) -> (tensor<?x?xf64>) {
    %20 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
      %21 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?xf64>) {
        %extracted = tensor.extract %14[%arg0, %arg4] : tensor<?x4xf64>
        %extracted_24 = tensor.extract %15[%arg4, %arg2] : tensor<4x?xf64>
        %22 = arith.mulf %extracted, %extracted_24 : f64
        %extracted_25 = tensor.extract %arg5[%arg0, %arg2] : tensor<?x?xf64>
        %23 = arith.addf %extracted_25, %22 : f64
        %inserted = tensor.insert %23 into %arg5[%arg0, %arg2] : tensor<?x?xf64>
        scf.yield %inserted : tensor<?x?xf64>
      }
      scf.yield %21 : tensor<?x?xf64>
    }
    scf.yield %20 : tensor<?x?xf64>
  }
  %19 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16) -> (tensor<?x?xf64>) {
    %20 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %21 = arith.index_cast %extracted : i64 to index
    %extracted_24 = tensor.extract %11[%20] : tensor<?xi64>
    %22 = arith.index_cast %extracted_24 : i64 to index
    %23 = scf.for %arg2 = %21 to %22 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
      %extracted_25 = tensor.extract %12[%arg2] : tensor<?xi64>
      %24 = arith.index_cast %extracted_25 : i64 to index
      %extracted_26 = tensor.extract %13[%arg2] : tensor<?xf64>
      %extracted_27 = tensor.extract %18[%arg0, %24] : tensor<?x?xf64>
      %25 = arith.mulf %extracted_26, %extracted_27 : f64
      %inserted = tensor.insert %25 into %arg3[%arg0, %24] : tensor<?x?xf64>
      scf.yield %inserted : tensor<?x?xf64>
    }
    scf.yield %23 : tensor<?x?xf64>
  }
  "ta.print"(%19) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
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
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x?xf64>
    %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
    %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x?xf64>
    %18 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %17) -> (tensor<?x?xf64>) {
      %20 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
        %21 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?xf64>) {
          %extracted = tensor.extract %14[%arg0, %arg4] : tensor<?x4xf64>
          %extracted_24 = tensor.extract %15[%arg4, %arg2] : tensor<4x?xf64>
          %22 = arith.mulf %extracted, %extracted_24 : f64
          %extracted_25 = tensor.extract %arg5[%arg0, %arg2] : tensor<?x?xf64>
          %23 = arith.addf %extracted_25, %22 : f64
          %inserted = tensor.insert %23 into %arg5[%arg0, %arg2] : tensor<?x?xf64>
          scf.yield %inserted : tensor<?x?xf64>
        }
        scf.yield %21 : tensor<?x?xf64>
      }
      scf.yield %20 : tensor<?x?xf64>
    }
    %19 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16) -> (tensor<?x?xf64>) {
      %20 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %21 = arith.index_cast %extracted : i64 to index
      %extracted_24 = tensor.extract %11[%20] : tensor<?xi64>
      %22 = arith.index_cast %extracted_24 : i64 to index
      %23 = scf.for %arg2 = %21 to %22 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
        %extracted_25 = tensor.extract %12[%arg2] : tensor<?xi64>
        %24 = arith.index_cast %extracted_25 : i64 to index
        %extracted_26 = tensor.extract %13[%arg2] : tensor<?xf64>
        %extracted_27 = tensor.extract %18[%arg0, %24] : tensor<?x?xf64>
        %25 = arith.mulf %extracted_26, %extracted_27 : f64
        %inserted = tensor.insert %25 into %arg3[%arg0, %24] : tensor<?x?xf64>
        scf.yield %inserted : tensor<?x?xf64>
      }
      scf.yield %23 : tensor<?x?xf64>
    }
    "ta.print"(%19) : (tensor<?x?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
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
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x?xf64>
    %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
    %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x?xf64>
    %18 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %17) -> (tensor<?x?xf64>) {
      %20 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
        %21 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?xf64>) {
          %extracted = tensor.extract %14[%arg0, %arg4] : tensor<?x4xf64>
          %extracted_24 = tensor.extract %15[%arg4, %arg2] : tensor<4x?xf64>
          %22 = arith.mulf %extracted, %extracted_24 : f64
          %extracted_25 = tensor.extract %arg5[%arg0, %arg2] : tensor<?x?xf64>
          %23 = arith.addf %extracted_25, %22 : f64
          %inserted = tensor.insert %23 into %arg5[%arg0, %arg2] : tensor<?x?xf64>
          scf.yield %inserted : tensor<?x?xf64>
        }
        scf.yield %21 : tensor<?x?xf64>
      }
      scf.yield %20 : tensor<?x?xf64>
    }
    %19 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16) -> (tensor<?x?xf64>) {
      %20 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %21 = arith.index_cast %extracted : i64 to index
      %extracted_24 = tensor.extract %11[%20] : tensor<?xi64>
      %22 = arith.index_cast %extracted_24 : i64 to index
      %23 = scf.for %arg2 = %21 to %22 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
        %extracted_25 = tensor.extract %12[%arg2] : tensor<?xi64>
        %24 = arith.index_cast %extracted_25 : i64 to index
        %extracted_26 = tensor.extract %13[%arg2] : tensor<?xf64>
        %extracted_27 = tensor.extract %18[%arg0, %24] : tensor<?x?xf64>
        %25 = arith.mulf %extracted_26, %extracted_27 : f64
        %inserted = tensor.insert %25 into %arg3[%arg0, %24] : tensor<?x?xf64>
        scf.yield %inserted : tensor<?x?xf64>
      }
      scf.yield %23 : tensor<?x?xf64>
    }
    "ta.print"(%19) : (tensor<?x?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
    %11 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_23) -> (memref<?x?xf64>) {
      %14 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?xf64>) {
        %15 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x?xf64>) {
          %16 = memref.load %alloc_20[%arg0, %arg4] : memref<?x4xf64>
          %17 = memref.load %alloc_21[%arg4, %arg2] : memref<4x?xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %arg5[%arg0, %arg2] : memref<?x?xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %arg5[%arg0, %arg2] : memref<?x?xf64>
          scf.yield %arg5 : memref<?x?xf64>
        }
        scf.yield %15 : memref<?x?xf64>
      }
      scf.yield %14 : memref<?x?xf64>
    }
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_22) -> (memref<?x?xf64>) {
      %14 = arith.addi %arg0, %c1 : index
      %15 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = memref.load %alloc_10[%14] : memref<?xi64>
      %18 = arith.index_cast %17 : i64 to index
      %19 = scf.for %arg2 = %16 to %18 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?xf64>) {
        %20 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %21 = arith.index_cast %20 : i64 to index
        %22 = memref.load %alloc_18[%arg2] : memref<?xf64>
        %23 = memref.load %11[%arg0, %21] : memref<?x?xf64>
        %24 = arith.mulf %22, %23 : f64
        memref.store %24, %arg3[%arg0, %21] : memref<?x?xf64>
        scf.yield %arg3 : memref<?x?xf64>
      }
      scf.yield %19 : memref<?x?xf64>
    }
    %13 = bufferization.to_tensor %12 : memref<?x?xf64>
    "ta.print"(%13) : (tensor<?x?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
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
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
  %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
  %11 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_23) -> (memref<?x?xf64>) {
    %14 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?xf64>) {
      %15 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x?xf64>) {
        %16 = memref.load %alloc_20[%arg0, %arg4] : memref<?x4xf64>
        %17 = memref.load %alloc_21[%arg4, %arg2] : memref<4x?xf64>
        %18 = arith.mulf %16, %17 : f64
        %19 = memref.load %arg5[%arg0, %arg2] : memref<?x?xf64>
        %20 = arith.addf %19, %18 : f64
        memref.store %20, %arg5[%arg0, %arg2] : memref<?x?xf64>
        scf.yield %arg5 : memref<?x?xf64>
      }
      scf.yield %15 : memref<?x?xf64>
    }
    scf.yield %14 : memref<?x?xf64>
  }
  %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_22) -> (memref<?x?xf64>) {
    %14 = arith.addi %arg0, %c1 : index
    %15 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %16 = arith.index_cast %15 : i64 to index
    %17 = memref.load %alloc_10[%14] : memref<?xi64>
    %18 = arith.index_cast %17 : i64 to index
    %19 = scf.for %arg2 = %16 to %18 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?xf64>) {
      %20 = memref.load %alloc_12[%arg2] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_18[%arg2] : memref<?xf64>
      %23 = memref.load %11[%arg0, %21] : memref<?x?xf64>
      %24 = arith.mulf %22, %23 : f64
      memref.store %24, %arg3[%arg0, %21] : memref<?x?xf64>
      scf.yield %arg3 : memref<?x?xf64>
    }
    scf.yield %19 : memref<?x?xf64>
  }
  %13 = bufferization.to_tensor %12 : memref<?x?xf64>
  "ta.print"(%13) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
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
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
  %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
  %11 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_23) -> (memref<?x?xf64>) {
    %15 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?xf64>) {
      %16 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x?xf64>) {
        %17 = memref.load %alloc_20[%arg0, %arg4] : memref<?x4xf64>
        %18 = memref.load %alloc_21[%arg4, %arg2] : memref<4x?xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = memref.load %arg5[%arg0, %arg2] : memref<?x?xf64>
        %21 = arith.addf %20, %19 : f64
        memref.store %21, %arg5[%arg0, %arg2] : memref<?x?xf64>
        scf.yield %arg5 : memref<?x?xf64>
      }
      scf.yield %16 : memref<?x?xf64>
    }
    scf.yield %15 : memref<?x?xf64>
  }
  %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_22) -> (memref<?x?xf64>) {
    %15 = arith.addi %arg0, %c1 : index
    %16 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_10[%15] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = scf.for %arg2 = %17 to %19 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?xf64>) {
      %21 = memref.load %alloc_12[%arg2] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_18[%arg2] : memref<?xf64>
      %24 = memref.load %11[%arg0, %22] : memref<?x?xf64>
      %25 = arith.mulf %23, %24 : f64
      memref.store %25, %arg3[%arg0, %22] : memref<?x?xf64>
      scf.yield %arg3 : memref<?x?xf64>
    }
    scf.yield %20 : memref<?x?xf64>
  }
  %13 = bufferization.to_tensor %12 : memref<?x?xf64>
  %14 = bufferization.to_memref %13 : memref<?x?xf64>
  %cast_24 = memref.cast %14 : memref<?x?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %11 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %12 = memref.load %alloc_21[%arg2, %arg1] : memref<4x?xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = memref.load %alloc_23[%arg0, %arg1] : memref<?x?xf64>
          %15 = arith.addf %14, %13 : f64
          memref.store %15, %alloc_23[%arg0, %arg1] : memref<?x?xf64>
        }
      }
    }
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        %19 = memref.load %alloc_23[%arg0, %17] : memref<?x?xf64>
        %20 = arith.mulf %18, %19 : f64
        memref.store %20, %alloc_22[%arg0, %17] : memref<?x?xf64>
      }
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %11 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %12 = memref.load %alloc_21[%arg2, %arg1] : memref<4x?xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = memref.load %alloc_23[%arg0, %arg1] : memref<?x?xf64>
          %15 = arith.addf %14, %13 : f64
          memref.store %15, %alloc_23[%arg0, %arg1] : memref<?x?xf64>
        }
      }
    }
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        %19 = memref.load %alloc_23[%arg0, %17] : memref<?x?xf64>
        %20 = arith.mulf %18, %19 : f64
        memref.store %20, %alloc_22[%arg0, %17] : memref<?x?xf64>
      }
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x?xf64> to memref<*xf64>
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
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %11 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %12 = memref.load %alloc_21[%arg2, %arg1] : memref<4x?xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = memref.load %alloc_23[%arg0, %arg1] : memref<?x?xf64>
          %15 = arith.addf %14, %13 : f64
          memref.store %15, %alloc_23[%arg0, %arg1] : memref<?x?xf64>
        }
      }
    }
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        %19 = memref.load %alloc_23[%arg0, %17] : memref<?x?xf64>
        %20 = arith.mulf %18, %19 : f64
        memref.store %20, %alloc_22[%arg0, %17] : memref<?x?xf64>
      }
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


module {
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %alloc_23 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x?xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %11 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %12 = memref.load %alloc_21[%arg2, %arg1] : memref<4x?xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = memref.load %alloc_23[%arg0, %arg1] : memref<?x?xf64>
          %15 = arith.addf %14, %13 : f64
          memref.store %15, %alloc_23[%arg0, %arg1] : memref<?x?xf64>
        }
      }
    }
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
        %19 = memref.load %alloc_23[%arg0, %17] : memref<?x?xf64>
        %20 = arith.mulf %18, %19 : f64
        memref.store %20, %alloc_22[%arg0, %17] : memref<?x?xf64>
      }
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
