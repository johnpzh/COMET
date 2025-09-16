// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.index_label"() : () -> !ta.index
    %5 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %6 = "ta.dim"(%5, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %7 = "ta.dim"(%5, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %c2 = arith.constant 2 : index
    %8 = "ta.dim"(%5, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %9 = "ta.dense_tensor_decl"(%8) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %10 = "ta.dense_tensor_decl"(%6, %7) <{format = "Dense"}> : (index, index) -> tensor<?x?x4xf64>
    %11 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    "ta.fill"(%9) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
    "ta.fill"(%11) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %12 = "ta.mul"(%5, %9, %0, %1, %2, %2, %3, %0, %1, %3) <{MaskType = "none", formats = ["CSF", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 8, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x?x4xf64>
    "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
    "ta.print"(%10) : (tensor<?x?x4xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %5 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %6 = "ta.dim"(%5, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %7 = "ta.dim"(%5, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %c2 = arith.constant 2 : index
  %8 = "ta.dim"(%5, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %9 = "ta.dense_tensor_decl"(%8) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %10 = "ta.dense_tensor_decl"(%6, %7) <{format = "Dense"}> : (index, index) -> tensor<?x?x4xf64>
  %11 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
  "ta.fill"(%9) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
  "ta.fill"(%11) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  %12 = "ta.mul"(%5, %9, %0, %1, %2, %2, %3, %0, %1, %3) <{MaskType = "none", formats = ["CSF", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>], operandSegmentSizes = array<i32: 1, 1, 8, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x?x4xf64>
  "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%10) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %5 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %6 = "ta.dim"(%5, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %7 = "ta.dim"(%5, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %c2 = arith.constant 2 : index
  %8 = "ta.dim"(%5, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %9 = "ta.dense_tensor_decl"(%8) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %10 = "ta.dense_tensor_decl"(%6, %7) <{format = "Dense"}> : (index, index) -> tensor<?x?x4xf64>
  %11 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
  "ta.fill"(%9) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
  "ta.fill"(%11) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  %12 = "it.itree"(%10) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.IndexOp"(%13) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %15 = "it.IndexOp"(%14) <{IsParallel = true}> : (!it.index) -> !it.index
    %16 = "it.IndexOp"(%15) <{IsParallel = false}> : (!it.index) -> !it.index
    %17 = "it.IndexOp"(%16) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %15, %pos) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %17, %pos_1) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %18 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %pos_3, %crd, %crd_0, %crd_2) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%5, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%5, %15, %pos_5) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%5, %16, %pos_7) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%5, %pos_5, %pos_7, %pos_9, %crd_4, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%9, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%9, %17, %pos_11) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%9, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %21 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%10) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %3 = "ta.dim"(%0, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %4 = "ta.dense_tensor_decl"(%3) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %5 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?x4xf64>
  %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
  "ta.fill"(%4) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
  "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  %7 = "it.itree"(%5) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %13 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %14 = "it.DomainOp"(%0) <{dim = 2 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> !it.domain
    %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %16 = "it.IndexOp"(%12, %15) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %17 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %18 = "it.IndexOp"(%16, %17) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %10) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %18, %pos_1) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %pos_3, %crd, %crd_0, %crd_2) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %12, %pos_5) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %16, %pos_7) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%0, %pos_5, %pos_7, %pos_9, %crd_4, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%4, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%4, %18, %pos_11) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%4, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %22 = "it.ComputeOp"(%18, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %22 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%5) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %1 = "ta.SpTensorGetDimPos"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %2 = "ta.SpTensorGetDimCrd"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %1, %c0 : tensor<?xi64>
  %dim_0 = tensor.dim %2, %c0 : tensor<?xi64>
  %3 = "ta.SpTensorGetDimSize"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %4 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %5 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_1 = tensor.dim %4, %c0 : tensor<?xi64>
  %dim_2 = tensor.dim %5, %c0 : tensor<?xi64>
  %6 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %7 = "ta.SpTensorGetDimPos"(%0) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %8 = "ta.SpTensorGetDimCrd"(%0) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_3 = tensor.dim %7, %c0 : tensor<?xi64>
  %dim_4 = tensor.dim %8, %c0 : tensor<?xi64>
  %9 = "ta.SpTensorGetDimSize"(%0) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %10 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %11 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %12 = "ta.dim"(%0, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %13 = "ta.dense_tensor_decl"(%12) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %14 = "ta.dense_tensor_decl"(%10, %11) <{format = "Dense"}> : (index, index) -> tensor<?x?x4xf64>
  %15 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
  "ta.fill"(%13) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%14) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
  "ta.fill"(%15) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  %16 = "it.itree"(%14) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %17 = "it.RootOp"() : () -> !it.index_tree
    %18 = "it.SparseDomainOp"(%0, %1, %2, %dim, %dim_0, %3) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %19 = "it.IndexOp"(%17, %18) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %19) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %20 = "it.SparseDomainOp"(%0, %4, %5, %dim_1, %dim_2, %6, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %21 = "it.IndexOp"(%19, %20) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%0, %21, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %22 = "it.SparseDomainOp"(%0, %7, %8, %dim_3, %dim_4, %9, %pos_6) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %23 = "it.IndexOp"(%21, %22) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %24 = "it.DenseDomainOp"(%idx4, %13) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %25 = "it.IndexOp"(%23, %24) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%arg0, %19) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%arg0, %21, %pos_8) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %25, %pos_10) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %26 = "it.LHSOperandOp"(%arg0, %pos_8, %pos_10, %pos_12, %crd_7, %crd_9, %crd_11) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%0, %23, %pos_6) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %27 = "it.OperandOp"(%0, %pos, %pos_6, %pos_14, %crd, %crd_5, %crd_13) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_15, %pos_16 = "it.IndexToTensorDim"(%13, %23) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_17, %pos_18 = "it.IndexToTensorDim"(%13, %25, %pos_16) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %28 = "it.OperandOp"(%13, %pos_16, %pos_18, %crd_15, %crd_17) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %29 = "it.ComputeOp"(%25, %26, %27, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %29 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%16, %14) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%14) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2_2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_3D_f64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_3 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_3] : memref<19xindex>
  %c1_4 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_4] : memref<19xindex>
  %c2_5 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_5] : memref<19xindex>
  %c3_6 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_6] : memref<19xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %c13 = arith.constant 13 : index
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %c14 = arith.constant 14 : index
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %c15 = arith.constant 15 : index
  %15 = memref.load %alloc[%c15] : memref<19xindex>
  %c16 = arith.constant 16 : index
  %16 = memref.load %alloc[%c16] : memref<19xindex>
  %c17 = arith.constant 17 : index
  %17 = memref.load %alloc[%c17] : memref<19xindex>
  %c18 = arith.constant 18 : index
  %18 = memref.load %alloc[%c18] : memref<19xindex>
  %alloc_7 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_10 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_10 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_13 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_13 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_22 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_22 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_25 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_25 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_28 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_28 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%8) : memref<?xi64>
  %c0_i64_31 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_31 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%9) : memref<?xi64>
  %c0_i64_34 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_34 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%10) : memref<?xi64>
  %c0_i64_37 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_37 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_38 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_39 = memref.alloc(%11) : memref<?xi64>
  %c0_i64_40 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_40 : i64) outs(%alloc_39 : memref<?xi64>)
  %cast_41 = memref.cast %alloc_39 : memref<?xi64> to memref<*xi64>
  %alloc_42 = memref.alloc(%12) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_42 : memref<?xf64>)
  %cast_43 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast_8, %cast_11, %cast_14, %cast_17, %cast_20, %cast_23, %cast_26, %cast_29, %cast_32, %cast_35, %cast_38, %cast_41, %cast_43, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %30 = bufferization.to_tensor %alloc_39 restrict writable : memref<?xi64>
  %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %32 = "ta.spTensor_construct"(%from_elements, %19, %23, %27, %20, %24, %28, %21, %25, %29, %22, %26, %30, %31) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %33 = "ta.SpTensorGetDimPos"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_44 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_45 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_46 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimPos"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %40 = "ta.SpTensorGetDimCrd"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_47 = tensor.dim %39, %c0 : tensor<?xi64>
  %dim_48 = tensor.dim %40, %c0 : tensor<?xi64>
  %41 = "ta.SpTensorGetDimSize"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %42 = "ta.dim"(%32, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%32, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%32, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %45 = "ta.dense_tensor_decl"(%44) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %46 = "ta.dense_tensor_decl"(%42, %43) <{format = "Dense"}> : (index, index) -> tensor<?x?x4xf64>
  %47 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  "ta.fill"(%45) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%46) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
  "ta.fill"(%47) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  %48 = "it.itree"(%46) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %49 = "it.RootOp"() : () -> !it.index_tree
    %50 = "it.SparseDomainOp"(%32, %33, %34, %dim, %dim_44, %35) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%32, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%32, %36, %37, %dim_45, %dim_46, %38, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%32, %53, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %54 = "it.SparseDomainOp"(%32, %39, %40, %dim_47, %dim_48, %41, %pos_50) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.IndexOp"(%53, %54) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %56 = "it.DenseDomainOp"(%idx4, %45) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%arg0, %51) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%arg0, %53, %pos_52) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%arg0, %57, %pos_54) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %58 = "it.LHSOperandOp"(%arg0, %pos_52, %pos_54, %pos_56, %crd_51, %crd_53, %crd_55) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_57, %pos_58 = "it.IndexToTensorDim"(%32, %55, %pos_50) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%32, %pos, %pos_50, %pos_58, %crd, %crd_49, %crd_57) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_59, %pos_60 = "it.IndexToTensorDim"(%45, %55) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_61, %pos_62 = "it.IndexToTensorDim"(%45, %57, %pos_60) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %60 = "it.OperandOp"(%45, %pos_60, %pos_62, %crd_59, %crd_61) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %61 = "it.ComputeOp"(%57, %58, %59, %60) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %61 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%48, %46) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%46) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2_2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_3D_f64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_3 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_3] : memref<19xindex>
  %c1_4 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_4] : memref<19xindex>
  %c2_5 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_5] : memref<19xindex>
  %c3_6 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_6] : memref<19xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %c13 = arith.constant 13 : index
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %c14 = arith.constant 14 : index
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %c15 = arith.constant 15 : index
  %15 = memref.load %alloc[%c15] : memref<19xindex>
  %c16 = arith.constant 16 : index
  %16 = memref.load %alloc[%c16] : memref<19xindex>
  %c17 = arith.constant 17 : index
  %17 = memref.load %alloc[%c17] : memref<19xindex>
  %c18 = arith.constant 18 : index
  %18 = memref.load %alloc[%c18] : memref<19xindex>
  %alloc_7 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_10 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_10 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_13 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_13 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_22 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_22 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_25 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_25 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_28 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_28 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%8) : memref<?xi64>
  %c0_i64_31 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_31 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%9) : memref<?xi64>
  %c0_i64_34 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_34 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%10) : memref<?xi64>
  %c0_i64_37 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_37 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_38 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_39 = memref.alloc(%11) : memref<?xi64>
  %c0_i64_40 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_40 : i64) outs(%alloc_39 : memref<?xi64>)
  %cast_41 = memref.cast %alloc_39 : memref<?xi64> to memref<*xi64>
  %alloc_42 = memref.alloc(%12) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_42 : memref<?xf64>)
  %cast_43 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast_8, %cast_11, %cast_14, %cast_17, %cast_20, %cast_23, %cast_26, %cast_29, %cast_32, %cast_35, %cast_38, %cast_41, %cast_43, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %30 = bufferization.to_tensor %alloc_39 restrict writable : memref<?xi64>
  %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %32 = "ta.spTensor_construct"(%from_elements, %19, %23, %27, %20, %24, %28, %21, %25, %29, %22, %26, %30, %31) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %33 = "ta.SpTensorGetDimPos"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_44 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_45 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_46 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimPos"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %40 = "ta.SpTensorGetDimCrd"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_47 = tensor.dim %39, %c0 : tensor<?xi64>
  %dim_48 = tensor.dim %40, %c0 : tensor<?xi64>
  %41 = "ta.SpTensorGetDimSize"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %42 = "ta.dim"(%32, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%32, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%32, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %alloc_49 = memref.alloc(%44) {alignment = 32 : i64} : memref<?x4xf64>
  %45 = bufferization.to_tensor %alloc_49 restrict writable : memref<?x4xf64>
  %alloc_50 = memref.alloc(%42, %43) {alignment = 32 : i64} : memref<?x?x4xf64>
  %46 = bufferization.to_tensor %alloc_50 restrict writable : memref<?x?x4xf64>
  %alloc_51 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %47 = bufferization.to_tensor %alloc_51 restrict writable : memref<4x4xf64>
  "ta.fill"(%45) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%46) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
  "ta.fill"(%47) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  %48 = "it.itree"(%46) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %49 = "it.RootOp"() : () -> !it.index_tree
    %50 = "it.SparseDomainOp"(%32, %33, %34, %dim, %dim_44, %35) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%32, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%32, %36, %37, %dim_45, %dim_46, %38, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%32, %53, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %54 = "it.SparseDomainOp"(%32, %39, %40, %dim_47, %dim_48, %41, %pos_53) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.IndexOp"(%53, %54) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %56 = "it.DenseDomainOp"(%idx4, %45) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%arg0, %51) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%arg0, %53, %pos_55) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%arg0, %57, %pos_57) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %58 = "it.LHSOperandOp"(%arg0, %pos_55, %pos_57, %pos_59, %crd_54, %crd_56, %crd_58) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_60, %pos_61 = "it.IndexToTensorDim"(%32, %55, %pos_53) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%32, %pos, %pos_53, %pos_61, %crd, %crd_52, %crd_60) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_62, %pos_63 = "it.IndexToTensorDim"(%45, %55) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_64, %pos_65 = "it.IndexToTensorDim"(%45, %57, %pos_63) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %60 = "it.OperandOp"(%45, %pos_63, %pos_65, %crd_62, %crd_64) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %61 = "it.ComputeOp"(%57, %58, %59, %60) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %61 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%48, %46) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%46) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2_2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_3D_f64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_3 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_3] : memref<19xindex>
  %c1_4 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_4] : memref<19xindex>
  %c2_5 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_5] : memref<19xindex>
  %c3_6 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_6] : memref<19xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %c13 = arith.constant 13 : index
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %c14 = arith.constant 14 : index
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %c15 = arith.constant 15 : index
  %15 = memref.load %alloc[%c15] : memref<19xindex>
  %c16 = arith.constant 16 : index
  %16 = memref.load %alloc[%c16] : memref<19xindex>
  %c17 = arith.constant 17 : index
  %17 = memref.load %alloc[%c17] : memref<19xindex>
  %c18 = arith.constant 18 : index
  %18 = memref.load %alloc[%c18] : memref<19xindex>
  %alloc_7 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_10 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_10 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_13 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_13 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_22 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_22 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_25 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_25 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_28 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_28 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%8) : memref<?xi64>
  %c0_i64_31 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_31 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%9) : memref<?xi64>
  %c0_i64_34 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_34 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%10) : memref<?xi64>
  %c0_i64_37 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_37 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_38 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_39 = memref.alloc(%11) : memref<?xi64>
  %c0_i64_40 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_40 : i64) outs(%alloc_39 : memref<?xi64>)
  %cast_41 = memref.cast %alloc_39 : memref<?xi64> to memref<*xi64>
  %alloc_42 = memref.alloc(%12) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_42 : memref<?xf64>)
  %cast_43 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast_8, %cast_11, %cast_14, %cast_17, %cast_20, %cast_23, %cast_26, %cast_29, %cast_32, %cast_35, %cast_38, %cast_41, %cast_43, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %30 = bufferization.to_tensor %alloc_39 restrict writable : memref<?xi64>
  %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %32 = "ta.spTensor_construct"(%from_elements, %19, %23, %27, %20, %24, %28, %21, %25, %29, %22, %26, %30, %31) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %33 = "ta.SpTensorGetDimPos"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_44 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_45 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_46 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimPos"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %40 = "ta.SpTensorGetDimCrd"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_47 = tensor.dim %39, %c0 : tensor<?xi64>
  %dim_48 = tensor.dim %40, %c0 : tensor<?xi64>
  %41 = "ta.SpTensorGetDimSize"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %42 = "ta.dim"(%32, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%32, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%32, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %alloc_49 = memref.alloc(%44) {alignment = 32 : i64} : memref<?x4xf64>
  %45 = bufferization.to_tensor %alloc_49 restrict writable : memref<?x4xf64>
  %alloc_50 = memref.alloc(%42, %43) {alignment = 32 : i64} : memref<?x?x4xf64>
  %46 = bufferization.to_tensor %alloc_50 restrict writable : memref<?x?x4xf64>
  %alloc_51 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %47 = bufferization.to_tensor %alloc_51 restrict writable : memref<4x4xf64>
  "ta.fill"(%45) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%46) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
  "ta.fill"(%47) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  %48 = "it.itree"(%46) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %49 = "it.RootOp"() : () -> !it.index_tree
    %50 = "it.SparseDomainOp"(%32, %33, %34, %dim, %dim_44, %35) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%32, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%32, %36, %37, %dim_45, %dim_46, %38, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%32, %53, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %54 = "it.SparseDomainOp"(%32, %39, %40, %dim_47, %dim_48, %41, %pos_53) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.IndexOp"(%53, %54) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %56 = "it.DenseDomainOp"(%idx4, %45) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%arg0, %51) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%arg0, %53, %pos_55) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%arg0, %57, %pos_57) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %58 = "it.LHSOperandOp"(%arg0, %pos_55, %pos_57, %pos_59, %crd_54, %crd_56, %crd_58) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_60, %pos_61 = "it.IndexToTensorDim"(%32, %55, %pos_53) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%32, %pos, %pos_53, %pos_61, %crd, %crd_52, %crd_60) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_62, %pos_63 = "it.IndexToTensorDim"(%45, %55) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_64, %pos_65 = "it.IndexToTensorDim"(%45, %57, %pos_63) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %60 = "it.OperandOp"(%45, %pos_63, %pos_65, %crd_62, %crd_64) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %61 = "it.ComputeOp"(%57, %58, %59, %60) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %61 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%48, %46) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%46) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2_2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_3D_f64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_3 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_3] : memref<19xindex>
  %c1_4 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_4] : memref<19xindex>
  %c2_5 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_5] : memref<19xindex>
  %c3_6 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_6] : memref<19xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %c13 = arith.constant 13 : index
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %c14 = arith.constant 14 : index
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %c15 = arith.constant 15 : index
  %15 = memref.load %alloc[%c15] : memref<19xindex>
  %c16 = arith.constant 16 : index
  %16 = memref.load %alloc[%c16] : memref<19xindex>
  %c17 = arith.constant 17 : index
  %17 = memref.load %alloc[%c17] : memref<19xindex>
  %c18 = arith.constant 18 : index
  %18 = memref.load %alloc[%c18] : memref<19xindex>
  %alloc_7 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_10 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_10 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_13 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_13 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_22 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_22 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_25 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_25 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_28 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_28 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%8) : memref<?xi64>
  %c0_i64_31 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_31 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%9) : memref<?xi64>
  %c0_i64_34 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_34 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%10) : memref<?xi64>
  %c0_i64_37 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_37 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_38 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_39 = memref.alloc(%11) : memref<?xi64>
  %c0_i64_40 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_40 : i64) outs(%alloc_39 : memref<?xi64>)
  %cast_41 = memref.cast %alloc_39 : memref<?xi64> to memref<*xi64>
  %alloc_42 = memref.alloc(%12) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_42 : memref<?xf64>)
  %cast_43 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast_8, %cast_11, %cast_14, %cast_17, %cast_20, %cast_23, %cast_26, %cast_29, %cast_32, %cast_35, %cast_38, %cast_41, %cast_43, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %30 = bufferization.to_tensor %alloc_39 restrict writable : memref<?xi64>
  %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %32 = "ta.spTensor_construct"(%from_elements, %19, %23, %27, %20, %24, %28, %21, %25, %29, %22, %26, %30, %31) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %33 = "ta.SpTensorGetDimPos"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_44 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_45 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_46 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimPos"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %40 = "ta.SpTensorGetDimCrd"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_47 = tensor.dim %39, %c0 : tensor<?xi64>
  %dim_48 = tensor.dim %40, %c0 : tensor<?xi64>
  %41 = "ta.SpTensorGetDimSize"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %42 = "ta.dim"(%32, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%32, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%32, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %alloc_49 = memref.alloc(%44) {alignment = 32 : i64} : memref<?x4xf64>
  %45 = bufferization.to_tensor %alloc_49 restrict writable : memref<?x4xf64>
  %alloc_50 = memref.alloc(%42, %43) {alignment = 32 : i64} : memref<?x?x4xf64>
  %46 = bufferization.to_tensor %alloc_50 restrict writable : memref<?x?x4xf64>
  %alloc_51 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %47 = bufferization.to_tensor %alloc_51 restrict writable : memref<4x4xf64>
  "ta.fill"(%45) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%46) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
  "ta.fill"(%47) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  %48 = "it.itree"(%46) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %49 = "it.RootOp"() : () -> !it.index_tree
    %50 = "it.SparseDomainOp"(%32, %33, %34, %dim, %dim_44, %35) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%32, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%32, %36, %37, %dim_45, %dim_46, %38, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%32, %53, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %54 = "it.SparseDomainOp"(%32, %39, %40, %dim_47, %dim_48, %41, %pos_53) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.IndexOp"(%53, %54) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %56 = "it.DenseDomainOp"(%idx4, %45) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%arg0, %51) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%arg0, %53, %pos_55) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%arg0, %57, %pos_57) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %58 = "it.LHSOperandOp"(%arg0, %pos_55, %pos_57, %pos_59, %crd_54, %crd_56, %crd_58) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_60, %pos_61 = "it.IndexToTensorDim"(%32, %55, %pos_53) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%32, %pos, %pos_53, %pos_61, %crd, %crd_52, %crd_60) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_62, %pos_63 = "it.IndexToTensorDim"(%45, %55) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_64, %pos_65 = "it.IndexToTensorDim"(%45, %57, %pos_63) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %60 = "it.OperandOp"(%45, %pos_63, %pos_65, %crd_62, %crd_64) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %61 = "it.ComputeOp"(%57, %58, %59, %60) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %61 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%48, %46) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%46) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2_2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_3D_f64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_3 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_3] : memref<19xindex>
  %c1_4 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_4] : memref<19xindex>
  %c2_5 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_5] : memref<19xindex>
  %c3_6 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_6] : memref<19xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %c13 = arith.constant 13 : index
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %c14 = arith.constant 14 : index
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %c15 = arith.constant 15 : index
  %15 = memref.load %alloc[%c15] : memref<19xindex>
  %c16 = arith.constant 16 : index
  %16 = memref.load %alloc[%c16] : memref<19xindex>
  %c17 = arith.constant 17 : index
  %17 = memref.load %alloc[%c17] : memref<19xindex>
  %c18 = arith.constant 18 : index
  %18 = memref.load %alloc[%c18] : memref<19xindex>
  %alloc_7 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_10 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_10 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_13 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_13 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_22 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_22 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_25 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_25 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_28 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_28 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%8) : memref<?xi64>
  %c0_i64_31 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_31 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%9) : memref<?xi64>
  %c0_i64_34 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_34 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%10) : memref<?xi64>
  %c0_i64_37 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_37 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_38 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_39 = memref.alloc(%11) : memref<?xi64>
  %c0_i64_40 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_40 : i64) outs(%alloc_39 : memref<?xi64>)
  %cast_41 = memref.cast %alloc_39 : memref<?xi64> to memref<*xi64>
  %alloc_42 = memref.alloc(%12) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_42 : memref<?xf64>)
  %cast_43 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast_8, %cast_11, %cast_14, %cast_17, %cast_20, %cast_23, %cast_26, %cast_29, %cast_32, %cast_35, %cast_38, %cast_41, %cast_43, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %30 = bufferization.to_tensor %alloc_39 restrict writable : memref<?xi64>
  %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %32 = "ta.spTensor_construct"(%from_elements, %19, %23, %27, %20, %24, %28, %21, %25, %29, %22, %26, %30, %31) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %33 = "ta.SpTensorGetDimPos"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_44 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_45 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_46 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimPos"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %40 = "ta.SpTensorGetDimCrd"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_47 = tensor.dim %39, %c0 : tensor<?xi64>
  %dim_48 = tensor.dim %40, %c0 : tensor<?xi64>
  %41 = "ta.SpTensorGetDimSize"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %42 = "ta.dim"(%32, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%32, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%32, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
  %alloc_49 = memref.alloc(%44) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_50 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_50 : f64) outs(%alloc_49 : memref<?x4xf64>)
  %45 = bufferization.to_tensor %alloc_49 restrict writable : memref<?x4xf64>
  %alloc_51 = memref.alloc(%42, %43) {alignment = 32 : i64} : memref<?x?x4xf64>
  %cst_52 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_51 : memref<?x?x4xf64>)
  %46 = bufferization.to_tensor %alloc_51 restrict writable : memref<?x?x4xf64>
  %alloc_53 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %cst_54 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_54 : f64) outs(%alloc_53 : memref<4x4xf64>)
  %47 = bufferization.to_tensor %alloc_53 restrict writable : memref<4x4xf64>
  %48 = "it.itree"(%46) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %49 = "it.RootOp"() : () -> !it.index_tree
    %50 = "it.SparseDomainOp"(%32, %33, %34, %dim, %dim_44, %35) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%32, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%32, %36, %37, %dim_45, %dim_46, %38, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%32, %53, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %54 = "it.SparseDomainOp"(%32, %39, %40, %dim_47, %dim_48, %41, %pos_56) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.IndexOp"(%53, %54) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %56 = "it.DenseDomainOp"(%idx4, %45) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_57, %pos_58 = "it.IndexToTensorDim"(%arg0, %51) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_59, %pos_60 = "it.IndexToTensorDim"(%arg0, %53, %pos_58) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_61, %pos_62 = "it.IndexToTensorDim"(%arg0, %57, %pos_60) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %58 = "it.LHSOperandOp"(%arg0, %pos_58, %pos_60, %pos_62, %crd_57, %crd_59, %crd_61) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_63, %pos_64 = "it.IndexToTensorDim"(%32, %55, %pos_56) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%32, %pos, %pos_56, %pos_64, %crd, %crd_55, %crd_63) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_65, %pos_66 = "it.IndexToTensorDim"(%45, %55) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_67, %pos_68 = "it.IndexToTensorDim"(%45, %57, %pos_66) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %60 = "it.OperandOp"(%45, %pos_66, %pos_68, %crd_65, %crd_67) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %61 = "it.ComputeOp"(%57, %58, %59, %60) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %61 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%48, %46) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%46) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2_2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_3D_f64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_3 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_3] : memref<19xindex>
  %c1_4 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_4] : memref<19xindex>
  %c2_5 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_5] : memref<19xindex>
  %c3_6 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_6] : memref<19xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %c13 = arith.constant 13 : index
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %c14 = arith.constant 14 : index
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %c15 = arith.constant 15 : index
  %15 = memref.load %alloc[%c15] : memref<19xindex>
  %c16 = arith.constant 16 : index
  %16 = memref.load %alloc[%c16] : memref<19xindex>
  %c17 = arith.constant 17 : index
  %17 = memref.load %alloc[%c17] : memref<19xindex>
  %c18 = arith.constant 18 : index
  %18 = memref.load %alloc[%c18] : memref<19xindex>
  %alloc_7 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_10 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_10 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_13 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_13 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_22 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_22 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_25 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_25 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_28 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_28 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%8) : memref<?xi64>
  %c0_i64_31 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_31 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%9) : memref<?xi64>
  %c0_i64_34 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_34 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%10) : memref<?xi64>
  %c0_i64_37 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_37 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_38 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_39 = memref.alloc(%11) : memref<?xi64>
  %c0_i64_40 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_40 : i64) outs(%alloc_39 : memref<?xi64>)
  %cast_41 = memref.cast %alloc_39 : memref<?xi64> to memref<*xi64>
  %alloc_42 = memref.alloc(%12) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_42 : memref<?xf64>)
  %cast_43 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1_1, %c-1, %c1_1, %c-1, %c1_1, %c-1, %cast_8, %cast_11, %cast_14, %cast_17, %cast_20, %cast_23, %cast_26, %cast_29, %cast_32, %cast_35, %cast_38, %cast_41, %cast_43, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %30 = bufferization.to_tensor %alloc_39 restrict writable : memref<?xi64>
  %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %32 = "ta.spTensor_construct"(%from_elements, %19, %23, %27, %20, %24, %28, %21, %25, %29, %22, %26, %30, %31) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %33 = "ta.SpTensorGetDimPos"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_44 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_45 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_46 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimPos"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %40 = "ta.SpTensorGetDimCrd"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_47 = tensor.dim %39, %c0 : tensor<?xi64>
  %dim_48 = tensor.dim %40, %c0 : tensor<?xi64>
  %41 = "ta.SpTensorGetDimSize"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %42 = "ta.SpTensorGetDimSize"(%32) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %43 = "ta.SpTensorGetDimSize"(%32) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %44 = "ta.SpTensorGetDimSize"(%32) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %alloc_49 = memref.alloc(%44) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_50 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_50 : f64) outs(%alloc_49 : memref<?x4xf64>)
  %45 = bufferization.to_tensor %alloc_49 restrict writable : memref<?x4xf64>
  %alloc_51 = memref.alloc(%42, %43) {alignment = 32 : i64} : memref<?x?x4xf64>
  %cst_52 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_51 : memref<?x?x4xf64>)
  %46 = bufferization.to_tensor %alloc_51 restrict writable : memref<?x?x4xf64>
  %alloc_53 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %cst_54 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_54 : f64) outs(%alloc_53 : memref<4x4xf64>)
  %47 = bufferization.to_tensor %alloc_53 restrict writable : memref<4x4xf64>
  %48 = "it.itree"(%46) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %49 = "it.RootOp"() : () -> !it.index_tree
    %50 = "it.SparseDomainOp"(%32, %33, %34, %dim, %dim_44, %35) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%32, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%32, %36, %37, %dim_45, %dim_46, %38, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%32, %53, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %54 = "it.SparseDomainOp"(%32, %39, %40, %dim_47, %dim_48, %41, %pos_56) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.IndexOp"(%53, %54) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %56 = "it.DenseDomainOp"(%idx4, %45) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_57, %pos_58 = "it.IndexToTensorDim"(%arg0, %51) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_59, %pos_60 = "it.IndexToTensorDim"(%arg0, %53, %pos_58) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_61, %pos_62 = "it.IndexToTensorDim"(%arg0, %57, %pos_60) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %58 = "it.LHSOperandOp"(%arg0, %pos_58, %pos_60, %pos_62, %crd_57, %crd_59, %crd_61) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_63, %pos_64 = "it.IndexToTensorDim"(%32, %55, %pos_56) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%32, %pos, %pos_56, %pos_64, %crd, %crd_55, %crd_63) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_65, %pos_66 = "it.IndexToTensorDim"(%45, %55) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_67, %pos_68 = "it.IndexToTensorDim"(%45, %57, %pos_66) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %60 = "it.OperandOp"(%45, %pos_66, %pos_68, %crd_65, %crd_67) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %61 = "it.ComputeOp"(%57, %58, %59, %60) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %61 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%48, %46) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%46) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %29 = "ta.spTensor_construct"(%from_elements, %16, %20, %24, %17, %21, %25, %18, %22, %26, %19, %23, %27, %28) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %30 = "ta.SpTensorGetDimPos"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_28 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %33 = "ta.SpTensorGetDimPos"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_29 = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_30 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_31 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_32 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %40 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %41 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %alloc_33 = memref.alloc(%41) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc(%39, %40) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_34 : memref<?x?x4xf64>)
  %43 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_35 : memref<4x4xf64>)
  %44 = "it.itree"(%43) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %45 = "it.RootOp"() : () -> !it.index_tree
    %46 = "it.SparseDomainOp"(%29, %30, %31, %dim, %dim_28, %32) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %47 = "it.IndexOp"(%45, %46) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%29, %47) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %48 = "it.SparseDomainOp"(%29, %33, %34, %dim_29, %dim_30, %35, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %49, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %50 = "it.SparseDomainOp"(%29, %36, %37, %dim_31, %dim_32, %38, %pos_37) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %52 = "it.DenseDomainOp"(%idx4, %42) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%arg0, %47) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %49, %pos_39) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %53, %pos_41) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %54 = "it.LHSOperandOp"(%arg0, %pos_39, %pos_41, %pos_43, %crd_38, %crd_40, %crd_42) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%29, %51, %pos_37) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%29, %pos, %pos_37, %pos_45, %crd, %crd_36, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%42, %51) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%42, %53, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%42, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %57 = "it.ComputeOp"(%53, %54, %55, %56) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %57 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.set_op"(%44, %43) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
  "ta.print"(%43) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %29 = "ta.spTensor_construct"(%from_elements, %16, %20, %24, %17, %21, %25, %18, %22, %26, %19, %23, %27, %28) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %30 = "ta.SpTensorGetDimPos"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_28 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %33 = "ta.SpTensorGetDimPos"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_29 = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_30 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_31 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_32 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %40 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %41 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %alloc_33 = memref.alloc(%41) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc(%39, %40) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_34 : memref<?x?x4xf64>)
  %43 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_35 : memref<4x4xf64>)
  %44 = "it.itree"(%43) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %45 = "it.RootOp"() : () -> !it.index_tree
    %46 = "it.SparseDomainOp"(%29, %30, %31, %dim, %dim_28, %32) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %47 = "it.IndexOp"(%45, %46) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%29, %47) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %48 = "it.SparseDomainOp"(%29, %33, %34, %dim_29, %dim_30, %35, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %49, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %50 = "it.SparseDomainOp"(%29, %36, %37, %dim_31, %dim_32, %38, %pos_37) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %52 = "it.DenseDomainOp"(%idx4, %42) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%arg0, %47) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %49, %pos_39) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %53, %pos_41) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %54 = "it.LHSOperandOp"(%arg0, %pos_39, %pos_41, %pos_43, %crd_38, %crd_40, %crd_42) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%29, %51, %pos_37) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%29, %pos, %pos_37, %pos_45, %crd, %crd_36, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%42, %51) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%42, %53, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%42, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %57 = "it.ComputeOp"(%53, %54, %55, %56) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %57 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.print"(%44) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %29 = "ta.spTensor_construct"(%from_elements, %16, %20, %24, %17, %21, %25, %18, %22, %26, %19, %23, %27, %28) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %30 = "ta.SpTensorGetDimPos"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_28 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %33 = "ta.SpTensorGetDimPos"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_29 = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_30 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_31 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_32 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %40 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %41 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %alloc_33 = memref.alloc(%41) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc(%39, %40) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_34 : memref<?x?x4xf64>)
  %43 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_35 : memref<4x4xf64>)
  %44 = "it.itree"(%43) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %45 = "it.RootOp"() : () -> !it.index_tree
    %46 = "it.SparseDomainOp"(%29, %30, %31, %dim, %dim_28, %32) <{dim = 0 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
    %47 = "it.IndexOp"(%45, %46) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%29, %47) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index) -> (index, index)
    %48 = "it.SparseDomainOp"(%29, %33, %34, %dim_29, %dim_30, %35, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %49, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %50 = "it.SparseDomainOp"(%29, %36, %37, %dim_31, %dim_32, %38, %pos_37) <{dim = 2 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %52 = "it.DenseDomainOp"(%idx4, %42) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%arg0, %47) <{dim = 0 : ui32}> : (tensor<?x?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %49, %pos_39) <{dim = 1 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %53, %pos_41) <{dim = 2 : ui32}> : (tensor<?x?x4xf64>, !it.index, index) -> (index, index)
    %54 = "it.LHSOperandOp"(%arg0, %pos_39, %pos_41, %pos_43, %crd_38, %crd_40, %crd_42) : (tensor<?x?x4xf64>, index, index, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%29, %51, %pos_37) <{dim = 2 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%29, %pos, %pos_37, %pos_45, %crd, %crd_36, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%42, %51) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%42, %53, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%42, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %57 = "it.ComputeOp"(%53, %54, %55, %56) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?x4xf64>
    it.yield %57 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.print"(%44) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %29 = "ta.spTensor_construct"(%from_elements, %16, %20, %24, %17, %21, %25, %18, %22, %26, %19, %23, %27, %28) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %30 = "ta.SpTensorGetDimPos"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_28 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %33 = "ta.SpTensorGetDimPos"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %34 = "ta.SpTensorGetDimCrd"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_29 = tensor.dim %33, %c0 : tensor<?xi64>
  %dim_30 = tensor.dim %34, %c0 : tensor<?xi64>
  %35 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %dim_31 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_32 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %39 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %40 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %41 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %alloc_33 = memref.alloc(%41) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc(%39, %40) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_34 : memref<?x?x4xf64>)
  %43 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_35 : memref<4x4xf64>)
  %44 = "it.itree"(%43) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %c0_36 = arith.constant 0 : index
    %c1_37 = arith.constant 1 : index
    %45 = arith.addi %c0_36, %c1_37 : index
    %extracted = tensor.extract %30[%c0_36] : tensor<?xi64>
    %46 = arith.index_cast %extracted : i64 to index
    %extracted_38 = tensor.extract %30[%45] : tensor<?xi64>
    %47 = arith.index_cast %extracted_38 : i64 to index
    %c1_39 = arith.constant 1 : index
    %48 = scf.for %arg1 = %46 to %47 step %c1_39 iter_args(%arg2 = %arg0) -> (tensor<?x?x4xf64>) {
      %49 = "ta.SpTensorGetCrd"(%29, %arg1) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
      %50 = arith.index_cast %49 : i64 to index
      %c1_40 = arith.constant 1 : index
      %51 = arith.addi %arg1, %c1_40 : index
      %extracted_41 = tensor.extract %33[%arg1] : tensor<?xi64>
      %52 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %33[%51] : tensor<?xi64>
      %53 = arith.index_cast %extracted_42 : i64 to index
      %c1_43 = arith.constant 1 : index
      %54 = scf.for %arg3 = %52 to %53 step %c1_43 iter_args(%arg4 = %arg2) -> (tensor<?x?x4xf64>) {
        %55 = "ta.SpTensorGetCrd"(%29, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
        %56 = arith.index_cast %55 : i64 to index
        %c1_44 = arith.constant 1 : index
        %57 = arith.addi %arg3, %c1_44 : index
        %extracted_45 = tensor.extract %36[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %36[%57] : tensor<?xi64>
        %59 = arith.index_cast %extracted_46 : i64 to index
        %c1_47 = arith.constant 1 : index
        %60 = scf.for %arg5 = %58 to %59 step %c1_47 iter_args(%arg6 = %arg4) -> (tensor<?x?x4xf64>) {
          %c0_48 = arith.constant 0 : index
          %c1_49 = arith.constant 1 : index
          %61 = scf.for %arg7 = %c0_48 to %idx4 step %c1_49 iter_args(%arg8 = %arg6) -> (tensor<?x?x4xf64>) {
            %62 = "ta.SpTensorGetCrd"(%29, %arg1) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %63 = arith.index_cast %62 : i64 to index
            %64 = "ta.SpTensorGetCrd"(%29, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %65 = arith.index_cast %64 : i64 to index
            %66 = "ta.SpTensorGetCrd"(%29, %arg5) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %67 = arith.index_cast %66 : i64 to index
            %68 = "ta.SpTensorGetCrd"(%29, %arg5) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %69 = arith.index_cast %68 : i64 to index
            %70 = "ta.TAExtractOp"(%29, %arg5, %50, %56, %67) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index) -> f64
            %extracted_50 = tensor.extract %42[%69, %arg7] : tensor<?x4xf64>
            %71 = arith.mulf %70, %extracted_50 : f64
            %extracted_51 = tensor.extract %arg8[%63, %65, %arg7] : tensor<?x?x4xf64>
            %72 = arith.addf %extracted_51, %71 : f64
            %inserted = tensor.insert %72 into %arg8[%63, %65, %arg7] : tensor<?x?x4xf64>
            scf.yield %inserted : tensor<?x?x4xf64>
          }
          scf.yield %61 : tensor<?x?x4xf64>
        }
        scf.yield %60 : tensor<?x?x4xf64>
      }
      scf.yield %54 : tensor<?x?x4xf64>
    }
    it.yield %48 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.print"(%44) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %29 = "ta.spTensor_construct"(%from_elements, %16, %20, %24, %17, %21, %25, %18, %22, %26, %19, %23, %27, %28) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %30 = "ta.SpTensorGetDimPos"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimPos"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %32 = "ta.SpTensorGetDimPos"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %33 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %34 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %35 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %alloc_28 = memref.alloc(%35) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %36 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%33, %34) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
  %37 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x?x4xf64>
  %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
  %38 = "it.itree"(%37) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %extracted = tensor.extract %30[%c0] : tensor<?xi64>
    %39 = arith.index_cast %extracted : i64 to index
    %extracted_31 = tensor.extract %30[%c1] : tensor<?xi64>
    %40 = arith.index_cast %extracted_31 : i64 to index
    %41 = scf.for %arg1 = %39 to %40 step %c1 iter_args(%arg2 = %arg0) -> (tensor<?x?x4xf64>) {
      %42 = "ta.SpTensorGetCrd"(%29, %arg1) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
      %43 = arith.index_cast %42 : i64 to index
      %44 = arith.addi %arg1, %c1 : index
      %extracted_32 = tensor.extract %31[%arg1] : tensor<?xi64>
      %45 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %31[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_33 : i64 to index
      %47 = scf.for %arg3 = %45 to %46 step %c1 iter_args(%arg4 = %arg2) -> (tensor<?x?x4xf64>) {
        %48 = "ta.SpTensorGetCrd"(%29, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
        %49 = arith.index_cast %48 : i64 to index
        %50 = arith.addi %arg3, %c1 : index
        %extracted_34 = tensor.extract %32[%arg3] : tensor<?xi64>
        %51 = arith.index_cast %extracted_34 : i64 to index
        %extracted_35 = tensor.extract %32[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_35 : i64 to index
        %53 = scf.for %arg5 = %51 to %52 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?x?x4xf64>) {
          %54 = scf.for %arg7 = %c0 to %idx4 step %c1 iter_args(%arg8 = %arg6) -> (tensor<?x?x4xf64>) {
            %55 = "ta.SpTensorGetCrd"(%29, %arg1) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %56 = arith.index_cast %55 : i64 to index
            %57 = "ta.SpTensorGetCrd"(%29, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %58 = arith.index_cast %57 : i64 to index
            %59 = "ta.SpTensorGetCrd"(%29, %arg5) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %60 = arith.index_cast %59 : i64 to index
            %61 = "ta.SpTensorGetCrd"(%29, %arg5) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %62 = arith.index_cast %61 : i64 to index
            %63 = "ta.TAExtractOp"(%29, %arg5, %43, %49, %60) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index) -> f64
            %extracted_36 = tensor.extract %36[%62, %arg7] : tensor<?x4xf64>
            %64 = arith.mulf %63, %extracted_36 : f64
            %extracted_37 = tensor.extract %arg8[%56, %58, %arg7] : tensor<?x?x4xf64>
            %65 = arith.addf %extracted_37, %64 : f64
            %inserted = tensor.insert %65 into %arg8[%56, %58, %arg7] : tensor<?x?x4xf64>
            scf.yield %inserted : tensor<?x?x4xf64>
          }
          scf.yield %54 : tensor<?x?x4xf64>
        }
        scf.yield %53 : tensor<?x?x4xf64>
      }
      scf.yield %47 : tensor<?x?x4xf64>
    }
    it.yield %41 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.print"(%38) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %29 = "ta.spTensor_construct"(%from_elements, %16, %20, %24, %17, %21, %25, %18, %22, %26, %19, %23, %27, %28) <{dimension_formats = [2 : i32, 0 : i32, 2 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 3 : i32}> : (tensor<3xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %30 = "ta.SpTensorGetDimPos"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimPos"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %32 = "ta.SpTensorGetDimPos"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> tensor<?xi64>
  %33 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %34 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %35 = "ta.SpTensorGetDimSize"(%29) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> index
  %alloc_28 = memref.alloc(%35) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %36 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%33, %34) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
  %37 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x?x4xf64>
  %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
  %38 = "it.itree"(%37) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %extracted = tensor.extract %30[%c0] : tensor<?xi64>
    %39 = arith.index_cast %extracted : i64 to index
    %extracted_31 = tensor.extract %30[%c1] : tensor<?xi64>
    %40 = arith.index_cast %extracted_31 : i64 to index
    %41 = scf.for %arg1 = %39 to %40 step %c1 iter_args(%arg2 = %arg0) -> (tensor<?x?x4xf64>) {
      %42 = "ta.SpTensorGetCrd"(%29, %arg1) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
      %43 = arith.index_cast %42 : i64 to index
      %44 = arith.addi %arg1, %c1 : index
      %extracted_32 = tensor.extract %31[%arg1] : tensor<?xi64>
      %45 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %31[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_33 : i64 to index
      %47 = scf.for %arg3 = %45 to %46 step %c1 iter_args(%arg4 = %arg2) -> (tensor<?x?x4xf64>) {
        %48 = "ta.SpTensorGetCrd"(%29, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
        %49 = arith.index_cast %48 : i64 to index
        %50 = arith.addi %arg3, %c1 : index
        %extracted_34 = tensor.extract %32[%arg3] : tensor<?xi64>
        %51 = arith.index_cast %extracted_34 : i64 to index
        %extracted_35 = tensor.extract %32[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_35 : i64 to index
        %53 = scf.for %arg5 = %51 to %52 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?x?x4xf64>) {
          %54 = scf.for %arg7 = %c0 to %idx4 step %c1 iter_args(%arg8 = %arg6) -> (tensor<?x?x4xf64>) {
            %55 = "ta.SpTensorGetCrd"(%29, %arg1) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %56 = arith.index_cast %55 : i64 to index
            %57 = "ta.SpTensorGetCrd"(%29, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %58 = arith.index_cast %57 : i64 to index
            %59 = "ta.SpTensorGetCrd"(%29, %arg5) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %60 = arith.index_cast %59 : i64 to index
            %61 = "ta.SpTensorGetCrd"(%29, %arg5) <{dim = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> i64
            %62 = arith.index_cast %61 : i64 to index
            %63 = "ta.TAExtractOp"(%29, %arg5, %43, %49, %60) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index, index, index, index) -> f64
            %extracted_36 = tensor.extract %36[%62, %arg7] : tensor<?x4xf64>
            %64 = arith.mulf %63, %extracted_36 : f64
            %extracted_37 = tensor.extract %arg8[%56, %58, %arg7] : tensor<?x?x4xf64>
            %65 = arith.addf %extracted_37, %64 : f64
            %inserted = tensor.insert %65 into %arg8[%56, %58, %arg7] : tensor<?x?x4xf64>
            scf.yield %inserted : tensor<?x?x4xf64>
          }
          scf.yield %54 : tensor<?x?x4xf64>
        }
        scf.yield %53 : tensor<?x?x4xf64>
      }
      scf.yield %47 : tensor<?x?x4xf64>
    }
    it.yield %41 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.print"(%38) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %idx0 = index.constant 0
  %idx0_28 = index.constant 0
  %idx0_29 = index.constant 0
  %29 = builtin.unrealized_conversion_cast %from_elements, %idx0, %16, %17, %idx0_28, %20, %21, %idx0_29, %24, %25, %28 : tensor<3xindex>, index, tensor<?xi64>, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %idx0_30 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_30] : tensor<3xindex>
  %idx1 = index.constant 1
  %extracted_31 = tensor.extract %from_elements[%idx1] : tensor<3xindex>
  %idx2 = index.constant 2
  %extracted_32 = tensor.extract %from_elements[%idx2] : tensor<3xindex>
  %alloc_33 = memref.alloc(%extracted_32) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc(%extracted, %extracted_31) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_34 : memref<?x?x4xf64>)
  %31 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_35 : memref<4x4xf64>)
  %32 = "it.itree"(%31) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x?x4xf64>):
    %extracted_36 = tensor.extract %16[%c0] : tensor<?xi64>
    %33 = arith.index_cast %extracted_36 : i64 to index
    %extracted_37 = tensor.extract %16[%c1] : tensor<?xi64>
    %34 = arith.index_cast %extracted_37 : i64 to index
    %35 = scf.for %arg1 = %33 to %34 step %c1 iter_args(%arg2 = %arg0) -> (tensor<?x?x4xf64>) {
      %extracted_38 = tensor.extract %17[%arg1] : tensor<?xi64>
      %36 = arith.index_cast %extracted_38 : i64 to index
      %37 = arith.addi %arg1, %c1 : index
      %extracted_39 = tensor.extract %20[%arg1] : tensor<?xi64>
      %38 = arith.index_cast %extracted_39 : i64 to index
      %extracted_40 = tensor.extract %20[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_40 : i64 to index
      %40 = scf.for %arg3 = %38 to %39 step %c1 iter_args(%arg4 = %arg2) -> (tensor<?x?x4xf64>) {
        %extracted_41 = tensor.extract %21[%arg3] : tensor<?xi64>
        %41 = arith.index_cast %extracted_41 : i64 to index
        %42 = arith.addi %arg3, %c1 : index
        %extracted_42 = tensor.extract %24[%arg3] : tensor<?xi64>
        %43 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %24[%42] : tensor<?xi64>
        %44 = arith.index_cast %extracted_43 : i64 to index
        %45 = scf.for %arg5 = %43 to %44 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?x?x4xf64>) {
          %46 = scf.for %arg7 = %c0 to %idx4 step %c1 iter_args(%arg8 = %arg6) -> (tensor<?x?x4xf64>) {
            %extracted_44 = tensor.extract %17[%arg1] : tensor<?xi64>
            %47 = arith.index_cast %extracted_44 : i64 to index
            %extracted_45 = tensor.extract %21[%arg3] : tensor<?xi64>
            %48 = arith.index_cast %extracted_45 : i64 to index
            %extracted_46 = tensor.extract %25[%arg5] : tensor<?xi64>
            %49 = arith.index_cast %extracted_46 : i64 to index
            %extracted_47 = tensor.extract %25[%arg5] : tensor<?xi64>
            %50 = arith.index_cast %extracted_47 : i64 to index
            %extracted_48 = tensor.extract %28[%arg5] : tensor<?xf64>
            %extracted_49 = tensor.extract %30[%50, %arg7] : tensor<?x4xf64>
            %51 = arith.mulf %extracted_48, %extracted_49 : f64
            %extracted_50 = tensor.extract %arg8[%47, %48, %arg7] : tensor<?x?x4xf64>
            %52 = arith.addf %extracted_50, %51 : f64
            %inserted = tensor.insert %52 into %arg8[%47, %48, %arg7] : tensor<?x?x4xf64>
            scf.yield %inserted : tensor<?x?x4xf64>
          }
          scf.yield %46 : tensor<?x?x4xf64>
        }
        scf.yield %45 : tensor<?x?x4xf64>
      }
      scf.yield %40 : tensor<?x?x4xf64>
    }
    it.yield %35 : tensor<?x?x4xf64>
  }) : (tensor<?x?x4xf64>) -> tensor<?x?x4xf64>
  "ta.print"(%32) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %26 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %28 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %13, %14, %15 : tensor<3xindex>
  %idx0 = index.constant 0
  %idx0_28 = index.constant 0
  %idx0_29 = index.constant 0
  %29 = builtin.unrealized_conversion_cast %from_elements, %idx0, %16, %17, %idx0_28, %20, %21, %idx0_29, %24, %25, %28 : tensor<3xindex>, index, tensor<?xi64>, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
  %idx0_30 = index.constant 0
  %idx1 = index.constant 1
  %idx2 = index.constant 2
  %alloc_31 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %30 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_32 : memref<?x?x4xf64>)
  %31 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x?x4xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_33 : memref<4x4xf64>)
  %extracted = tensor.extract %16[%c0] : tensor<?xi64>
  %32 = arith.index_cast %extracted : i64 to index
  %extracted_34 = tensor.extract %16[%c1] : tensor<?xi64>
  %33 = arith.index_cast %extracted_34 : i64 to index
  %34 = scf.for %arg0 = %32 to %33 step %c1 iter_args(%arg1 = %31) -> (tensor<?x?x4xf64>) {
    %extracted_35 = tensor.extract %17[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted_35 : i64 to index
    %36 = arith.addi %arg0, %c1 : index
    %extracted_36 = tensor.extract %20[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted_36 : i64 to index
    %extracted_37 = tensor.extract %20[%36] : tensor<?xi64>
    %38 = arith.index_cast %extracted_37 : i64 to index
    %39 = scf.for %arg2 = %37 to %38 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?x4xf64>) {
      %extracted_38 = tensor.extract %21[%arg2] : tensor<?xi64>
      %40 = arith.index_cast %extracted_38 : i64 to index
      %41 = arith.addi %arg2, %c1 : index
      %extracted_39 = tensor.extract %24[%arg2] : tensor<?xi64>
      %42 = arith.index_cast %extracted_39 : i64 to index
      %extracted_40 = tensor.extract %24[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_40 : i64 to index
      %44 = scf.for %arg4 = %42 to %43 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?x4xf64>) {
        %45 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x?x4xf64>) {
          %extracted_41 = tensor.extract %17[%arg0] : tensor<?xi64>
          %46 = arith.index_cast %extracted_41 : i64 to index
          %extracted_42 = tensor.extract %21[%arg2] : tensor<?xi64>
          %47 = arith.index_cast %extracted_42 : i64 to index
          %extracted_43 = tensor.extract %25[%arg4] : tensor<?xi64>
          %48 = arith.index_cast %extracted_43 : i64 to index
          %extracted_44 = tensor.extract %25[%arg4] : tensor<?xi64>
          %49 = arith.index_cast %extracted_44 : i64 to index
          %extracted_45 = tensor.extract %28[%arg4] : tensor<?xf64>
          %extracted_46 = tensor.extract %30[%49, %arg6] : tensor<?x4xf64>
          %50 = arith.mulf %extracted_45, %extracted_46 : f64
          %extracted_47 = tensor.extract %arg7[%46, %47, %arg6] : tensor<?x?x4xf64>
          %51 = arith.addf %extracted_47, %50 : f64
          %inserted = tensor.insert %51 into %arg7[%46, %47, %arg6] : tensor<?x?x4xf64>
          scf.yield %inserted : tensor<?x?x4xf64>
        }
        scf.yield %45 : tensor<?x?x4xf64>
      }
      scf.yield %44 : tensor<?x?x4xf64>
    }
    scf.yield %39 : tensor<?x?x4xf64>
  }
  "ta.print"(%34) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
  %24 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x?x4xf64>
  %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
  %extracted = tensor.extract %16[%c0] : tensor<?xi64>
  %25 = arith.index_cast %extracted : i64 to index
  %extracted_31 = tensor.extract %16[%c1] : tensor<?xi64>
  %26 = arith.index_cast %extracted_31 : i64 to index
  %27 = scf.for %arg0 = %25 to %26 step %c1 iter_args(%arg1 = %24) -> (tensor<?x?x4xf64>) {
    %28 = arith.addi %arg0, %c1 : index
    %extracted_32 = tensor.extract %18[%arg0] : tensor<?xi64>
    %29 = arith.index_cast %extracted_32 : i64 to index
    %extracted_33 = tensor.extract %18[%28] : tensor<?xi64>
    %30 = arith.index_cast %extracted_33 : i64 to index
    %31 = scf.for %arg2 = %29 to %30 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?x4xf64>) {
      %32 = arith.addi %arg2, %c1 : index
      %extracted_34 = tensor.extract %20[%arg2] : tensor<?xi64>
      %33 = arith.index_cast %extracted_34 : i64 to index
      %extracted_35 = tensor.extract %20[%32] : tensor<?xi64>
      %34 = arith.index_cast %extracted_35 : i64 to index
      %35 = scf.for %arg4 = %33 to %34 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?x4xf64>) {
        %36 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x?x4xf64>) {
          %extracted_36 = tensor.extract %17[%arg0] : tensor<?xi64>
          %37 = arith.index_cast %extracted_36 : i64 to index
          %extracted_37 = tensor.extract %19[%arg2] : tensor<?xi64>
          %38 = arith.index_cast %extracted_37 : i64 to index
          %extracted_38 = tensor.extract %21[%arg4] : tensor<?xi64>
          %39 = arith.index_cast %extracted_38 : i64 to index
          %extracted_39 = tensor.extract %22[%arg4] : tensor<?xf64>
          %extracted_40 = tensor.extract %23[%39, %arg6] : tensor<?x4xf64>
          %40 = arith.mulf %extracted_39, %extracted_40 : f64
          %extracted_41 = tensor.extract %arg7[%37, %38, %arg6] : tensor<?x?x4xf64>
          %41 = arith.addf %extracted_41, %40 : f64
          %inserted = tensor.insert %41 into %arg7[%37, %38, %arg6] : tensor<?x?x4xf64>
          scf.yield %inserted : tensor<?x?x4xf64>
        }
        scf.yield %36 : tensor<?x?x4xf64>
      }
      scf.yield %35 : tensor<?x?x4xf64>
    }
    scf.yield %31 : tensor<?x?x4xf64>
  }
  "ta.print"(%27) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
  %24 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x?x4xf64>
  %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
  %extracted = tensor.extract %16[%c0] : tensor<?xi64>
  %25 = arith.index_cast %extracted : i64 to index
  %extracted_31 = tensor.extract %16[%c1] : tensor<?xi64>
  %26 = arith.index_cast %extracted_31 : i64 to index
  %27 = scf.for %arg0 = %25 to %26 step %c1 iter_args(%arg1 = %24) -> (tensor<?x?x4xf64>) {
    %28 = arith.addi %arg0, %c1 : index
    %extracted_32 = tensor.extract %18[%arg0] : tensor<?xi64>
    %29 = arith.index_cast %extracted_32 : i64 to index
    %extracted_33 = tensor.extract %18[%28] : tensor<?xi64>
    %30 = arith.index_cast %extracted_33 : i64 to index
    %extracted_34 = tensor.extract %17[%arg0] : tensor<?xi64>
    %31 = arith.index_cast %extracted_34 : i64 to index
    %32 = scf.for %arg2 = %29 to %30 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?x4xf64>) {
      %33 = arith.addi %arg2, %c1 : index
      %extracted_35 = tensor.extract %20[%arg2] : tensor<?xi64>
      %34 = arith.index_cast %extracted_35 : i64 to index
      %extracted_36 = tensor.extract %20[%33] : tensor<?xi64>
      %35 = arith.index_cast %extracted_36 : i64 to index
      %extracted_37 = tensor.extract %19[%arg2] : tensor<?xi64>
      %36 = arith.index_cast %extracted_37 : i64 to index
      %37 = scf.for %arg4 = %34 to %35 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?x4xf64>) {
        %extracted_38 = tensor.extract %21[%arg4] : tensor<?xi64>
        %38 = arith.index_cast %extracted_38 : i64 to index
        %extracted_39 = tensor.extract %22[%arg4] : tensor<?xf64>
        %39 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x?x4xf64>) {
          %extracted_40 = tensor.extract %23[%38, %arg6] : tensor<?x4xf64>
          %40 = arith.mulf %extracted_39, %extracted_40 : f64
          %extracted_41 = tensor.extract %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
          %41 = arith.addf %extracted_41, %40 : f64
          %inserted = tensor.insert %41 into %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
          scf.yield %inserted : tensor<?x?x4xf64>
        }
        scf.yield %39 : tensor<?x?x4xf64>
      }
      scf.yield %37 : tensor<?x?x4xf64>
    }
    scf.yield %32 : tensor<?x?x4xf64>
  }
  "ta.print"(%27) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
  %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
  %24 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x?x4xf64>
  %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
  %extracted = tensor.extract %16[%c0] : tensor<?xi64>
  %25 = arith.index_cast %extracted : i64 to index
  %extracted_31 = tensor.extract %16[%c1] : tensor<?xi64>
  %26 = arith.index_cast %extracted_31 : i64 to index
  %27 = scf.for %arg0 = %25 to %26 step %c1 iter_args(%arg1 = %24) -> (tensor<?x?x4xf64>) {
    %28 = arith.addi %arg0, %c1 : index
    %extracted_32 = tensor.extract %18[%arg0] : tensor<?xi64>
    %29 = arith.index_cast %extracted_32 : i64 to index
    %extracted_33 = tensor.extract %18[%28] : tensor<?xi64>
    %30 = arith.index_cast %extracted_33 : i64 to index
    %extracted_34 = tensor.extract %17[%arg0] : tensor<?xi64>
    %31 = arith.index_cast %extracted_34 : i64 to index
    %32 = scf.for %arg2 = %29 to %30 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?x4xf64>) {
      %33 = arith.addi %arg2, %c1 : index
      %extracted_35 = tensor.extract %20[%arg2] : tensor<?xi64>
      %34 = arith.index_cast %extracted_35 : i64 to index
      %extracted_36 = tensor.extract %20[%33] : tensor<?xi64>
      %35 = arith.index_cast %extracted_36 : i64 to index
      %extracted_37 = tensor.extract %19[%arg2] : tensor<?xi64>
      %36 = arith.index_cast %extracted_37 : i64 to index
      %37 = scf.for %arg4 = %34 to %35 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?x4xf64>) {
        %extracted_38 = tensor.extract %21[%arg4] : tensor<?xi64>
        %38 = arith.index_cast %extracted_38 : i64 to index
        %extracted_39 = tensor.extract %22[%arg4] : tensor<?xf64>
        %39 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x?x4xf64>) {
          %extracted_40 = tensor.extract %23[%38, %arg6] : tensor<?x4xf64>
          %40 = arith.mulf %extracted_39, %extracted_40 : f64
          %extracted_41 = tensor.extract %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
          %41 = arith.addf %extracted_41, %40 : f64
          %inserted = tensor.insert %41 into %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
          scf.yield %inserted : tensor<?x?x4xf64>
        }
        scf.yield %39 : tensor<?x?x4xf64>
      }
      scf.yield %37 : tensor<?x?x4xf64>
    }
    scf.yield %32 : tensor<?x?x4xf64>
  }
  "ta.print"(%27) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
    %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
    %18 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %19 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %20 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
    %21 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
    %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
    %24 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x?x4xf64>
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
    %extracted = tensor.extract %16[%c0] : tensor<?xi64>
    %25 = arith.index_cast %extracted : i64 to index
    %extracted_31 = tensor.extract %16[%c1] : tensor<?xi64>
    %26 = arith.index_cast %extracted_31 : i64 to index
    %27 = scf.for %arg0 = %25 to %26 step %c1 iter_args(%arg1 = %24) -> (tensor<?x?x4xf64>) {
      %28 = arith.addi %arg0, %c1 : index
      %extracted_32 = tensor.extract %18[%arg0] : tensor<?xi64>
      %29 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %18[%28] : tensor<?xi64>
      %30 = arith.index_cast %extracted_33 : i64 to index
      %extracted_34 = tensor.extract %17[%arg0] : tensor<?xi64>
      %31 = arith.index_cast %extracted_34 : i64 to index
      %32 = scf.for %arg2 = %29 to %30 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?x4xf64>) {
        %33 = arith.addi %arg2, %c1 : index
        %extracted_35 = tensor.extract %20[%arg2] : tensor<?xi64>
        %34 = arith.index_cast %extracted_35 : i64 to index
        %extracted_36 = tensor.extract %20[%33] : tensor<?xi64>
        %35 = arith.index_cast %extracted_36 : i64 to index
        %extracted_37 = tensor.extract %19[%arg2] : tensor<?xi64>
        %36 = arith.index_cast %extracted_37 : i64 to index
        %37 = scf.for %arg4 = %34 to %35 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?x4xf64>) {
          %extracted_38 = tensor.extract %21[%arg4] : tensor<?xi64>
          %38 = arith.index_cast %extracted_38 : i64 to index
          %extracted_39 = tensor.extract %22[%arg4] : tensor<?xf64>
          %39 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x?x4xf64>) {
            %extracted_40 = tensor.extract %23[%38, %arg6] : tensor<?x4xf64>
            %40 = arith.mulf %extracted_39, %extracted_40 : f64
            %extracted_41 = tensor.extract %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
            %41 = arith.addf %extracted_41, %40 : f64
            %inserted = tensor.insert %41 into %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
            scf.yield %inserted : tensor<?x?x4xf64>
          }
          scf.yield %39 : tensor<?x?x4xf64>
        }
        scf.yield %37 : tensor<?x?x4xf64>
      }
      scf.yield %32 : tensor<?x?x4xf64>
    }
    "ta.print"(%27) : (tensor<?x?x4xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
    %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
    %18 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %19 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %20 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
    %21 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
    %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
    %24 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x?x4xf64>
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
    %extracted = tensor.extract %16[%c0] : tensor<?xi64>
    %25 = arith.index_cast %extracted : i64 to index
    %extracted_31 = tensor.extract %16[%c1] : tensor<?xi64>
    %26 = arith.index_cast %extracted_31 : i64 to index
    %27 = scf.for %arg0 = %25 to %26 step %c1 iter_args(%arg1 = %24) -> (tensor<?x?x4xf64>) {
      %28 = arith.addi %arg0, %c1 : index
      %extracted_32 = tensor.extract %18[%arg0] : tensor<?xi64>
      %29 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %18[%28] : tensor<?xi64>
      %30 = arith.index_cast %extracted_33 : i64 to index
      %extracted_34 = tensor.extract %17[%arg0] : tensor<?xi64>
      %31 = arith.index_cast %extracted_34 : i64 to index
      %32 = scf.for %arg2 = %29 to %30 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?x4xf64>) {
        %33 = arith.addi %arg2, %c1 : index
        %extracted_35 = tensor.extract %20[%arg2] : tensor<?xi64>
        %34 = arith.index_cast %extracted_35 : i64 to index
        %extracted_36 = tensor.extract %20[%33] : tensor<?xi64>
        %35 = arith.index_cast %extracted_36 : i64 to index
        %extracted_37 = tensor.extract %19[%arg2] : tensor<?xi64>
        %36 = arith.index_cast %extracted_37 : i64 to index
        %37 = scf.for %arg4 = %34 to %35 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?x4xf64>) {
          %extracted_38 = tensor.extract %21[%arg4] : tensor<?xi64>
          %38 = arith.index_cast %extracted_38 : i64 to index
          %extracted_39 = tensor.extract %22[%arg4] : tensor<?xf64>
          %39 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x?x4xf64>) {
            %extracted_40 = tensor.extract %23[%38, %arg6] : tensor<?x4xf64>
            %40 = arith.mulf %extracted_39, %extracted_40 : f64
            %extracted_41 = tensor.extract %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
            %41 = arith.addf %extracted_41, %40 : f64
            %inserted = tensor.insert %41 into %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
            scf.yield %inserted : tensor<?x?x4xf64>
          }
          scf.yield %39 : tensor<?x?x4xf64>
        }
        scf.yield %37 : tensor<?x?x4xf64>
      }
      scf.yield %32 : tensor<?x?x4xf64>
    }
    "ta.print"(%27) : (tensor<?x?x4xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %16 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
    %17 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
    %18 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %19 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %20 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
    %21 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
    %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xf64>
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
    %24 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x?x4xf64>
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
    %extracted = tensor.extract %16[%c0] : tensor<?xi64>
    %25 = arith.index_cast %extracted : i64 to index
    %extracted_31 = tensor.extract %16[%c1] : tensor<?xi64>
    %26 = arith.index_cast %extracted_31 : i64 to index
    %27 = scf.for %arg0 = %25 to %26 step %c1 iter_args(%arg1 = %24) -> (tensor<?x?x4xf64>) {
      %28 = arith.addi %arg0, %c1 : index
      %extracted_32 = tensor.extract %18[%arg0] : tensor<?xi64>
      %29 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %18[%28] : tensor<?xi64>
      %30 = arith.index_cast %extracted_33 : i64 to index
      %extracted_34 = tensor.extract %17[%arg0] : tensor<?xi64>
      %31 = arith.index_cast %extracted_34 : i64 to index
      %32 = scf.for %arg2 = %29 to %30 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?x4xf64>) {
        %33 = arith.addi %arg2, %c1 : index
        %extracted_35 = tensor.extract %20[%arg2] : tensor<?xi64>
        %34 = arith.index_cast %extracted_35 : i64 to index
        %extracted_36 = tensor.extract %20[%33] : tensor<?xi64>
        %35 = arith.index_cast %extracted_36 : i64 to index
        %extracted_37 = tensor.extract %19[%arg2] : tensor<?xi64>
        %36 = arith.index_cast %extracted_37 : i64 to index
        %37 = scf.for %arg4 = %34 to %35 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?x4xf64>) {
          %extracted_38 = tensor.extract %21[%arg4] : tensor<?xi64>
          %38 = arith.index_cast %extracted_38 : i64 to index
          %extracted_39 = tensor.extract %22[%arg4] : tensor<?xf64>
          %39 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x?x4xf64>) {
            %extracted_40 = tensor.extract %23[%38, %arg6] : tensor<?x4xf64>
            %40 = arith.mulf %extracted_39, %extracted_40 : f64
            %extracted_41 = tensor.extract %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
            %41 = arith.addf %extracted_41, %40 : f64
            %inserted = tensor.insert %41 into %arg7[%31, %36, %arg6] : tensor<?x?x4xf64>
            scf.yield %inserted : tensor<?x?x4xf64>
          }
          scf.yield %39 : tensor<?x?x4xf64>
        }
        scf.yield %37 : tensor<?x?x4xf64>
      }
      scf.yield %32 : tensor<?x?x4xf64>
    }
    "ta.print"(%27) : (tensor<?x?x4xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
    %16 = memref.load %alloc_2[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_2[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = scf.for %arg0 = %17 to %19 step %c1 iter_args(%arg1 = %alloc_29) -> (memref<?x?x4xf64>) {
      %22 = arith.addi %arg0, %c1 : index
      %23 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_10[%22] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_4[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = scf.for %arg2 = %24 to %26 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?x4xf64>) {
        %30 = arith.addi %arg2, %c1 : index
        %31 = memref.load %alloc_18[%arg2] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_18[%30] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = scf.for %arg4 = %32 to %34 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x?x4xf64>) {
          %38 = memref.load %alloc_20[%arg4] : memref<?xi64>
          %39 = arith.index_cast %38 : i64 to index
          %40 = memref.load %alloc_26[%arg4] : memref<?xf64>
          %41 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (memref<?x?x4xf64>) {
            %42 = memref.load %alloc_28[%39, %arg6] : memref<?x4xf64>
            %43 = arith.mulf %40, %42 : f64
            %44 = memref.load %arg7[%28, %36, %arg6] : memref<?x?x4xf64>
            %45 = arith.addf %44, %43 : f64
            memref.store %45, %arg7[%28, %36, %arg6] : memref<?x?x4xf64>
            scf.yield %arg7 : memref<?x?x4xf64>
          }
          scf.yield %41 : memref<?x?x4xf64>
        }
        scf.yield %37 : memref<?x?x4xf64>
      }
      scf.yield %29 : memref<?x?x4xf64>
    }
    %21 = bufferization.to_tensor %20 : memref<?x?x4xf64>
    "ta.print"(%21) : (tensor<?x?x4xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
  %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
  %16 = memref.load %alloc_2[%c0] : memref<?xi64>
  %17 = arith.index_cast %16 : i64 to index
  %18 = memref.load %alloc_2[%c1] : memref<?xi64>
  %19 = arith.index_cast %18 : i64 to index
  %20 = scf.for %arg0 = %17 to %19 step %c1 iter_args(%arg1 = %alloc_29) -> (memref<?x?x4xf64>) {
    %22 = arith.addi %arg0, %c1 : index
    %23 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = memref.load %alloc_10[%22] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %27 = memref.load %alloc_4[%arg0] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = scf.for %arg2 = %24 to %26 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?x4xf64>) {
      %30 = arith.addi %arg2, %c1 : index
      %31 = memref.load %alloc_18[%arg2] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_18[%30] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_12[%arg2] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = scf.for %arg4 = %32 to %34 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x?x4xf64>) {
        %38 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_26[%arg4] : memref<?xf64>
        %41 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (memref<?x?x4xf64>) {
          %42 = memref.load %alloc_28[%39, %arg6] : memref<?x4xf64>
          %43 = arith.mulf %40, %42 : f64
          %44 = memref.load %arg7[%28, %36, %arg6] : memref<?x?x4xf64>
          %45 = arith.addf %44, %43 : f64
          memref.store %45, %arg7[%28, %36, %arg6] : memref<?x?x4xf64>
          scf.yield %arg7 : memref<?x?x4xf64>
        }
        scf.yield %41 : memref<?x?x4xf64>
      }
      scf.yield %37 : memref<?x?x4xf64>
    }
    scf.yield %29 : memref<?x?x4xf64>
  }
  %21 = bufferization.to_tensor %20 : memref<?x?x4xf64>
  "ta.print"(%21) : (tensor<?x?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
  %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
  %16 = memref.load %alloc_2[%c0] : memref<?xi64>
  %17 = arith.index_cast %16 : i64 to index
  %18 = memref.load %alloc_2[%c1] : memref<?xi64>
  %19 = arith.index_cast %18 : i64 to index
  %20 = scf.for %arg0 = %17 to %19 step %c1 iter_args(%arg1 = %alloc_29) -> (memref<?x?x4xf64>) {
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_10[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_4[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = scf.for %arg2 = %25 to %27 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?x4xf64>) {
      %31 = arith.addi %arg2, %c1 : index
      %32 = memref.load %alloc_18[%arg2] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_18[%31] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_12[%arg2] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = scf.for %arg4 = %33 to %35 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x?x4xf64>) {
        %39 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_26[%arg4] : memref<?xf64>
        %42 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (memref<?x?x4xf64>) {
          %43 = memref.load %alloc_28[%40, %arg6] : memref<?x4xf64>
          %44 = arith.mulf %41, %43 : f64
          %45 = memref.load %arg7[%29, %37, %arg6] : memref<?x?x4xf64>
          %46 = arith.addf %45, %44 : f64
          memref.store %46, %arg7[%29, %37, %arg6] : memref<?x?x4xf64>
          scf.yield %arg7 : memref<?x?x4xf64>
        }
        scf.yield %42 : memref<?x?x4xf64>
      }
      scf.yield %38 : memref<?x?x4xf64>
    }
    scf.yield %30 : memref<?x?x4xf64>
  }
  %21 = bufferization.to_tensor %20 : memref<?x?x4xf64>
  %22 = bufferization.to_memref %21 : memref<?x?x4xf64>
  %cast_31 = memref.cast %22 : memref<?x?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
    %16 = memref.load %alloc_2[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_2[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_10[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_4[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_18[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_18[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_20[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_26[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_28[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_31 = memref.cast %alloc_29 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
    %16 = memref.load %alloc_2[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_2[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_10[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_4[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_18[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_18[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_20[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_26[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_28[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_31 = memref.cast %alloc_29 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
    %16 = memref.load %alloc_2[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_2[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_10[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_4[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_18[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_18[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_20[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_26[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_28[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_31 = memref.cast %alloc_29 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
    %16 = memref.load %alloc_2[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_2[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_10[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_4[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_18[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_18[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_20[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_26[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_28[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_31 = memref.cast %alloc_29 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?xf64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x?x4xf64>)
  %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x4xf64>)
  %16 = memref.load %alloc_2[%c0] : memref<?xi64>
  %17 = arith.index_cast %16 : i64 to index
  %18 = memref.load %alloc_2[%c1] : memref<?xi64>
  %19 = arith.index_cast %18 : i64 to index
  scf.for %arg0 = %17 to %19 step %c1 {
    %20 = arith.addi %arg0, %c1 : index
    %21 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = memref.load %alloc_10[%20] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = memref.load %alloc_4[%arg0] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    scf.for %arg1 = %22 to %24 step %c1 {
      %27 = arith.addi %arg1, %c1 : index
      %28 = memref.load %alloc_18[%arg1] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_18[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_12[%arg1] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      scf.for %arg2 = %29 to %31 step %c1 {
        %34 = memref.load %alloc_20[%arg2] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_26[%arg2] : memref<?xf64>
        scf.for %arg3 = %c0 to %idx4 step %c1 {
          %37 = memref.load %alloc_28[%35, %arg3] : memref<?x4xf64>
          %38 = arith.mulf %36, %37 : f64
          %39 = memref.load %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
          %40 = arith.addf %39, %38 : f64
          memref.store %40, %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
        }
      }
    }
  }
  %cast_31 = memref.cast %alloc_29 : memref<?x?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c15 = arith.constant 15 : index
  %c14 = arith.constant 14 : index
  %c13 = arith.constant 13 : index
  %c12 = arith.constant 12 : index
  %c11 = arith.constant 11 : index
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
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<19xindex>
  %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
  call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<19xindex>
  %1 = memref.load %alloc[%c1] : memref<19xindex>
  %2 = memref.load %alloc[%c2] : memref<19xindex>
  %3 = memref.load %alloc[%c3] : memref<19xindex>
  %4 = memref.load %alloc[%c4] : memref<19xindex>
  %5 = memref.load %alloc[%c5] : memref<19xindex>
  %6 = memref.load %alloc[%c6] : memref<19xindex>
  %7 = memref.load %alloc[%c7] : memref<19xindex>
  %8 = memref.load %alloc[%c8] : memref<19xindex>
  %9 = memref.load %alloc[%c9] : memref<19xindex>
  %10 = memref.load %alloc[%c10] : memref<19xindex>
  %11 = memref.load %alloc[%c11] : memref<19xindex>
  %12 = memref.load %alloc[%c12] : memref<19xindex>
  %13 = memref.load %alloc[%c13] : memref<19xindex>
  %14 = memref.load %alloc[%c14] : memref<19xindex>
  %15 = memref.load %alloc[%c15] : memref<19xindex>
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
  %alloc_18 = memref.alloc(%8) : memref<?xi64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %c0_i64, %alloc_18[%arg0] : memref<?xi64>
  }
  %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%9) : memref<?xi64>
  scf.for %arg0 = %c0 to %9 step %c1 {
    memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
  }
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%10) : memref<?xi64>
  scf.for %arg0 = %c0 to %10 step %c1 {
    memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
  }
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%11) : memref<?xi64>
  scf.for %arg0 = %c0 to %11 step %c1 {
    memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
  }
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%12) : memref<?xf64>
  scf.for %arg0 = %c0 to %12 step %c1 {
    memref.store %cst_1, %alloc_26[%arg0] : memref<?xf64>
  }
  %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
  call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %15 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_0, %alloc_28[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
  scf.for %arg0 = %c0 to %13 step %c1 {
    scf.for %arg1 = %c0 to %14 step %c1 {
      scf.for %arg2 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc_29[%arg0, %arg1, %arg2] : memref<?x?x4xf64>
      }
    }
  }
  %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  scf.for %arg0 = %c0 to %c4 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst, %alloc_30[%arg0, %arg1] : memref<4x4xf64>
    }
  }
  %16 = memref.load %alloc_2[%c0] : memref<?xi64>
  %17 = arith.index_cast %16 : i64 to index
  %18 = memref.load %alloc_2[%c1] : memref<?xi64>
  %19 = arith.index_cast %18 : i64 to index
  scf.for %arg0 = %17 to %19 step %c1 {
    %20 = arith.addi %arg0, %c1 : index
    %21 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = memref.load %alloc_10[%20] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = memref.load %alloc_4[%arg0] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    scf.for %arg1 = %22 to %24 step %c1 {
      %27 = arith.addi %arg1, %c1 : index
      %28 = memref.load %alloc_18[%arg1] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_18[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_12[%arg1] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      scf.for %arg2 = %29 to %31 step %c1 {
        %34 = memref.load %alloc_20[%arg2] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_26[%arg2] : memref<?xf64>
        scf.for %arg3 = %c0 to %idx4 step %c1 {
          %37 = memref.load %alloc_28[%35, %arg3] : memref<?x4xf64>
          %38 = arith.mulf %36, %37 : f64
          %39 = memref.load %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
          %40 = arith.addf %39, %38 : f64
          memref.store %40, %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
        }
      }
    }
  }
  %cast_31 = memref.cast %alloc_29 : memref<?x?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %c0_i64, %alloc_18[%arg0] : memref<?xi64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %cst_1, %alloc_26[%arg0] : memref<?xf64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_28[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      scf.for %arg1 = %c0 to %14 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          memref.store %cst_1, %alloc_29[%arg0, %arg1, %arg2] : memref<?x?x4xf64>
        }
      }
    }
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_30[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    %16 = memref.load %alloc_2[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_2[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_10[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_4[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_18[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_18[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_20[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_26[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_28[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_31 = memref.cast %alloc_29 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %c0_i64, %alloc_18[%arg0] : memref<?xi64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %cst_1, %alloc_26[%arg0] : memref<?xf64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_28[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      scf.for %arg1 = %c0 to %14 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          memref.store %cst_1, %alloc_29[%arg0, %arg1, %arg2] : memref<?x?x4xf64>
        }
      }
    }
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_30[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    %16 = memref.load %alloc_2[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_2[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_10[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_4[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_18[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_18[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_20[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_26[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_28[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_31 = memref.cast %alloc_29 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
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
    %alloc_18 = memref.alloc(%8) : memref<?xi64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %c0_i64, %alloc_18[%arg0] : memref<?xi64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
    %alloc_20 = memref.alloc(%9) : memref<?xi64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%12) : memref<?xf64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %cst_1, %alloc_26[%arg0] : memref<?xf64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %cast_21, %cast_23, %cast_25, %cast_27, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_28 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_28[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_29 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      scf.for %arg1 = %c0 to %14 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          memref.store %cst_1, %alloc_29[%arg0, %arg1, %arg2] : memref<?x?x4xf64>
        }
      }
    }
    %alloc_30 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_30[%arg0, %arg1] : memref<4x4xf64>
      }
    }
    %16 = memref.load %alloc_2[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_2[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_10[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_4[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_18[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_18[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_20[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_26[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_28[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_29[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_31 = memref.cast %alloc_29 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.200000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xi64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %c0_i64, %alloc_17[%arg0] : memref<?xi64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
    %alloc_19 = memref.alloc(%9) : memref<?xi64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      memref.store %c0_i64, %alloc_19[%arg0] : memref<?xi64>
    }
    %cast_20 = memref.cast %alloc_19 : memref<?xi64> to memref<*xi64>
    %alloc_21 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_21[%arg0] : memref<?xi64>
    }
    %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
    %alloc_23 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_23[%arg0] : memref<?xi64>
    }
    %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
    %alloc_25 = memref.alloc(%12) : memref<?xf64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %cst_0, %alloc_25[%arg0] : memref<?xf64>
    }
    %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %cast_20, %cast_22, %cast_24, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_27 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_27[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_28 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      scf.for %arg1 = %c0 to %14 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          memref.store %cst_0, %alloc_28[%arg0, %arg1, %arg2] : memref<?x?x4xf64>
        }
      }
    }
    %16 = memref.load %alloc_1[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_1[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_9[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_3[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_17[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_17[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_19[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_25[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_27[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_28[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_28[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_29 = memref.cast %alloc_28 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_29) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.200000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xi64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %c0_i64, %alloc_17[%arg0] : memref<?xi64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
    %alloc_19 = memref.alloc(%9) : memref<?xi64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      memref.store %c0_i64, %alloc_19[%arg0] : memref<?xi64>
    }
    %cast_20 = memref.cast %alloc_19 : memref<?xi64> to memref<*xi64>
    %alloc_21 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_21[%arg0] : memref<?xi64>
    }
    %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
    %alloc_23 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_23[%arg0] : memref<?xi64>
    }
    %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
    %alloc_25 = memref.alloc(%12) : memref<?xf64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %cst_0, %alloc_25[%arg0] : memref<?xf64>
    }
    %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %cast_20, %cast_22, %cast_24, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_27 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_27[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_28 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      scf.for %arg1 = %c0 to %14 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          memref.store %cst_0, %alloc_28[%arg0, %arg1, %arg2] : memref<?x?x4xf64>
        }
      }
    }
    %16 = memref.load %alloc_1[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_1[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_9[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_3[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_17[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_17[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_19[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_25[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_27[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_28[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_28[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_29 = memref.cast %alloc_28 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_29) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


module {
  func.func @main() {
    %cst = arith.constant 1.200000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
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
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<19xindex>
    %cast = memref.cast %alloc : memref<19xindex> to memref<*xindex>
    call @read_input_sizes_3D_f64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<19xindex>
    %1 = memref.load %alloc[%c1] : memref<19xindex>
    %2 = memref.load %alloc[%c2] : memref<19xindex>
    %3 = memref.load %alloc[%c3] : memref<19xindex>
    %4 = memref.load %alloc[%c4] : memref<19xindex>
    %5 = memref.load %alloc[%c5] : memref<19xindex>
    %6 = memref.load %alloc[%c6] : memref<19xindex>
    %7 = memref.load %alloc[%c7] : memref<19xindex>
    %8 = memref.load %alloc[%c8] : memref<19xindex>
    %9 = memref.load %alloc[%c9] : memref<19xindex>
    %10 = memref.load %alloc[%c10] : memref<19xindex>
    %11 = memref.load %alloc[%c11] : memref<19xindex>
    %12 = memref.load %alloc[%c12] : memref<19xindex>
    %13 = memref.load %alloc[%c13] : memref<19xindex>
    %14 = memref.load %alloc[%c14] : memref<19xindex>
    %15 = memref.load %alloc[%c15] : memref<19xindex>
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xi64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %c0_i64, %alloc_17[%arg0] : memref<?xi64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
    %alloc_19 = memref.alloc(%9) : memref<?xi64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      memref.store %c0_i64, %alloc_19[%arg0] : memref<?xi64>
    }
    %cast_20 = memref.cast %alloc_19 : memref<?xi64> to memref<*xi64>
    %alloc_21 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_21[%arg0] : memref<?xi64>
    }
    %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
    %alloc_23 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_23[%arg0] : memref<?xi64>
    }
    %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
    %alloc_25 = memref.alloc(%12) : memref<?xf64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %cst_0, %alloc_25[%arg0] : memref<?xf64>
    }
    %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
    call @read_input_3D_f64_i64(%c0_i32, %c1, %c-1, %c1, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %cast_20, %cast_22, %cast_24, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_27 = memref.alloc(%15) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_27[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_28 = memref.alloc(%13, %14) {alignment = 32 : i64} : memref<?x?x4xf64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      scf.for %arg1 = %c0 to %14 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          memref.store %cst_0, %alloc_28[%arg0, %arg1, %arg2] : memref<?x?x4xf64>
        }
      }
    }
    %16 = memref.load %alloc_1[%c0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_1[%c1] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    scf.for %arg0 = %17 to %19 step %c1 {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_9[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_3[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      scf.for %arg1 = %22 to %24 step %c1 {
        %27 = arith.addi %arg1, %c1 : index
        %28 = memref.load %alloc_17[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_17[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        scf.for %arg2 = %29 to %31 step %c1 {
          %34 = memref.load %alloc_19[%arg2] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_25[%arg2] : memref<?xf64>
          scf.for %arg3 = %c0 to %idx4 step %c1 {
            %37 = memref.load %alloc_27[%35, %arg3] : memref<?x4xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloc_28[%26, %33, %arg3] : memref<?x?x4xf64>
            %40 = arith.addf %39, %38 : f64
            memref.store %40, %alloc_28[%26, %33, %arg3] : memref<?x?x4xf64>
          }
        }
      }
    }
    %cast_29 = memref.cast %alloc_28 : memref<?x?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_29) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_3D_f64_i64(i32, index, index, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_3D_f64(i32, index, index, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
