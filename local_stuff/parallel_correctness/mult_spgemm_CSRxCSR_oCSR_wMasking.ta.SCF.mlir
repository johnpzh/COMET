// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %6 = "ta.spTensor_decl"(%5) <{temporal_tensor = false}> : (index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c1_0 = arith.constant 1 : index
    %7 = "ta.dim"(%6, %c1_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %8 = "ta.spTensor_decl"(%4, %7) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill_from_file"(%6) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2, %6) <{MaskType = "push", indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 1>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.spTensor_decl"(%5) <{temporal_tensor = false}> : (index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c1_0 = arith.constant 1 : index
  %7 = "ta.dim"(%6, %c1_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %8 = "ta.spTensor_decl"(%4, %7) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%6) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2, %6) <{MaskType = "push", indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 1>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.spTensor_decl"(%5) <{temporal_tensor = false}> : (index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c1_0 = arith.constant 1 : index
  %7 = "ta.dim"(%6, %c1_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %8 = "ta.spTensor_decl"(%4, %7) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%6) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %9 = "ta.SpTensorAlias"(%6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %10 = "it.itree"(%8) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %11 = "it.RootOp"() : () -> !it.index_tree
    %12 = "it.IndexOp"(%11) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %13 = "it.IndexOp"(%12) <{IsParallel = false}> : (!it.index) -> !it.index
    %14 = "it.IndexOp"(%13) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%9, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%9, %14, %pos_2) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_4, %crd, %crd_3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %16 = "it.OperandOp"(%9, %pos_2, %pos_6, %crd_1, %crd_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%3, %13, %pos_8) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%3, %pos_8, %pos_10, %crd_7, %crd_9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%6, %14, %pos_12) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%6, %pos_12, %pos_14, %crd_11, %crd_13) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%14, %15, %17, %18, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %19 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%10, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.spTensor_decl"(%2) <{temporal_tensor = false}> : (index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %4 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %5 = "ta.spTensor_decl"(%1, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %6 = "ta.SpTensorAlias"(%3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %7 = "it.itree"(%5) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %10 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %11 = "it.MaskedDomainOp"(%10, %9) : (!it.domain, !it.domain) -> !it.domain
    %12 = "it.IndexOp"(%8, %11) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %13 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %14 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %16 = "it.IndexOp"(%12, %15) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %17 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %18 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %19 = "it.MaskedDomainOp"(%18, %17) : (!it.domain, !it.domain) -> !it.domain
    %20 = "it.IndexOp"(%16, %19) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%6, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %20, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %20, %pos_1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %22 = "it.OperandOp"(%6, %pos_1, %pos_5, %crd_0, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %16, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%3, %16) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%3, %20, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %24 = "it.OperandOp"(%3, %pos_11, %pos_13, %crd_10, %crd_12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %25 = "it.ComputeOp"(%20, %21, %23, %24, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %25 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %false = arith.constant false
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.SpTensorGetDimSize"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %2 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %3 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %2, %c0 : tensor<?xi64>
  %dim_0 = tensor.dim %3, %c0 : tensor<?xi64>
  %4 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %5 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.spTensor_decl"(%6) <{temporal_tensor = false}> : (index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %8 = "ta.SpTensorGetDimPos"(%7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %9 = "ta.SpTensorGetDimCrd"(%7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_1 = tensor.dim %8, %c0 : tensor<?xi64>
  %dim_2 = tensor.dim %9, %c0 : tensor<?xi64>
  %10 = "ta.SpTensorGetDimSize"(%7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %11 = "ta.dim"(%7, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %12 = "ta.spTensor_decl"(%5, %11) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%7) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %13 = "ta.SpTensorAlias"(%7) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %14 = "ta.SpTensorGetDimPos"(%13) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %15 = "ta.SpTensorGetDimCrd"(%13) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_3 = tensor.dim %14, %c0 : tensor<?xi64>
  %dim_4 = tensor.dim %15, %c0 : tensor<?xi64>
  %16 = "ta.SpTensorGetDimSize"(%13) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %splat = tensor.splat %false[%16] : tensor<?xi1>
  %17 = "it.itree"(%12) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %18 = "it.RootOp"() : () -> !it.index_tree
    %19 = "it.DenseDomainOp"(%1, %0, %13) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %20 = "it.IndexOp"(%18, %19) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %20) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %21 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%13, %20) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %22 = "it.SparseDomainOp"(%13, %14, %15, %dim_3, %dim_4, %16, %pos_6) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %23 = "it.FillMaskOp"(%20, %22, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %24 = "it.IndexOp"(%20, %21) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%7, %24) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %25 = "it.SparseDomainOp"(%7, %8, %9, %dim_1, %dim_2, %10, %pos_8) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %26 = "it.MaskedDomainOp"(%23, %25, %10) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %27 = "it.IndexOp"(%24, %26) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%arg0, %20) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %27, %pos_10) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%13, %27, %pos_6) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %28 = "it.LHSOperandOp"(%arg0, %pos_10, %pos_12, %crd_9, %crd_11) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %29 = "it.OperandOp"(%13, %pos_6, %pos_14, %crd_5, %crd_13) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_15, %pos_16 = "it.IndexToTensorDim"(%0, %24, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %30 = "it.OperandOp"(%0, %pos, %pos_16, %crd, %crd_15) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_17, %pos_18 = "it.IndexToTensorDim"(%7, %27, %pos_8) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %31 = "it.OperandOp"(%7, %pos_8, %pos_18, %crd_7, %crd_17) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %32 = "it.ComputeOp"(%27, %28, %30, %31, %29) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %32 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%17, %12) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %false = arith.constant false
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
  %alloc_32 = memref.alloc() : memref<13xindex>
  %cast_33 = memref.cast %alloc_32 : memref<13xindex> to memref<*xindex>
  %c-1_34 = arith.constant -1 : index
  %c0_35 = arith.constant 0 : index
  %c1_36 = arith.constant 1 : index
  %c2_37 = arith.constant 2 : index
  %c3_38 = arith.constant 3 : index
  %c1_i32_39 = arith.constant 1 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_41 = arith.constant 0 : index
  %29 = memref.load %alloc_32[%c0_41] : memref<13xindex>
  %c1_42 = arith.constant 1 : index
  %30 = memref.load %alloc_32[%c1_42] : memref<13xindex>
  %c2_43 = arith.constant 2 : index
  %31 = memref.load %alloc_32[%c2_43] : memref<13xindex>
  %c3_44 = arith.constant 3 : index
  %32 = memref.load %alloc_32[%c3_44] : memref<13xindex>
  %c4_45 = arith.constant 4 : index
  %33 = memref.load %alloc_32[%c4_45] : memref<13xindex>
  %c5_46 = arith.constant 5 : index
  %34 = memref.load %alloc_32[%c5_46] : memref<13xindex>
  %c6_47 = arith.constant 6 : index
  %35 = memref.load %alloc_32[%c6_47] : memref<13xindex>
  %c7_48 = arith.constant 7 : index
  %36 = memref.load %alloc_32[%c7_48] : memref<13xindex>
  %c8_49 = arith.constant 8 : index
  %37 = memref.load %alloc_32[%c8_49] : memref<13xindex>
  %c9_50 = arith.constant 9 : index
  %38 = memref.load %alloc_32[%c9_50] : memref<13xindex>
  %c10_51 = arith.constant 10 : index
  %39 = memref.load %alloc_32[%c10_51] : memref<13xindex>
  %c11_52 = arith.constant 11 : index
  %40 = memref.load %alloc_32[%c11_52] : memref<13xindex>
  %c12_53 = arith.constant 12 : index
  %41 = memref.load %alloc_32[%c12_53] : memref<13xindex>
  %alloc_54 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_55 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_55 : i64) outs(%alloc_54 : memref<?xi64>)
  %cast_56 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
  %alloc_57 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_58 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_58 : i64) outs(%alloc_57 : memref<?xi64>)
  %cast_59 = memref.cast %alloc_57 : memref<?xi64> to memref<*xi64>
  %alloc_60 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_61 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_61 : i64) outs(%alloc_60 : memref<?xi64>)
  %cast_62 = memref.cast %alloc_60 : memref<?xi64> to memref<*xi64>
  %alloc_63 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_64 : i64) outs(%alloc_63 : memref<?xi64>)
  %cast_65 = memref.cast %alloc_63 : memref<?xi64> to memref<*xi64>
  %alloc_66 = memref.alloc(%33) : memref<?xi64>
  %c0_i64_67 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_67 : i64) outs(%alloc_66 : memref<?xi64>)
  %cast_68 = memref.cast %alloc_66 : memref<?xi64> to memref<*xi64>
  %alloc_69 = memref.alloc(%34) : memref<?xi64>
  %c0_i64_70 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_70 : i64) outs(%alloc_69 : memref<?xi64>)
  %cast_71 = memref.cast %alloc_69 : memref<?xi64> to memref<*xi64>
  %alloc_72 = memref.alloc(%35) : memref<?xi64>
  %c0_i64_73 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_73 : i64) outs(%alloc_72 : memref<?xi64>)
  %cast_74 = memref.cast %alloc_72 : memref<?xi64> to memref<*xi64>
  %alloc_75 = memref.alloc(%36) : memref<?xi64>
  %c0_i64_76 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_76 : i64) outs(%alloc_75 : memref<?xi64>)
  %cast_77 = memref.cast %alloc_75 : memref<?xi64> to memref<*xi64>
  %alloc_78 = memref.alloc(%37) : memref<?xf64>
  %cst_79 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_79 : f64) outs(%alloc_78 : memref<?xf64>)
  %cast_80 = memref.cast %alloc_78 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %42 = bufferization.to_tensor %alloc_54 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_57 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_60 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_63 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_66 restrict writable : memref<?xi64>
  %47 = bufferization.to_tensor %alloc_69 restrict writable : memref<?xi64>
  %48 = bufferization.to_tensor %alloc_72 restrict writable : memref<?xi64>
  %49 = bufferization.to_tensor %alloc_75 restrict writable : memref<?xi64>
  %50 = bufferization.to_tensor %alloc_78 restrict writable : memref<?xf64>
  %from_elements_81 = tensor.from_elements %38, %39 : tensor<2xindex>
  %51 = "ta.spTensor_construct"(%from_elements_81, %42, %46, %43, %47, %44, %48, %45, %49, %50) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "ta.SpTensorGetDimPos"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %53 = "ta.SpTensorGetDimCrd"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_82 = tensor.dim %52, %c0 : tensor<?xi64>
  %dim_83 = tensor.dim %53, %c0 : tensor<?xi64>
  %54 = "ta.SpTensorGetDimSize"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %55 = "ta.dim"(%51, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %56 = "ta.sparse_output_tensor_decl"(%27, %55) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %57 = "ta.SpTensorAlias"(%51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %58 = "ta.SpTensorGetDimPos"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %59 = "ta.SpTensorGetDimCrd"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_84 = tensor.dim %58, %c0 : tensor<?xi64>
  %dim_85 = tensor.dim %59, %c0 : tensor<?xi64>
  %60 = "ta.SpTensorGetDimSize"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %splat = tensor.splat %false[%60] : tensor<?xi1>
  %61 = "it.itree"(%56) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%23, %22, %57) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%57, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%57, %58, %59, %dim_84, %dim_85, %60, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %68 = "it.IndexOp"(%64, %65) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%51, %68) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %69 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_89) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %70 = "it.MaskedDomainOp"(%67, %69, %54) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %71 = "it.IndexOp"(%68, %70) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%arg0, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%arg0, %71, %pos_91) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_94, %pos_95 = "it.IndexToTensorDim"(%57, %71, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %72 = "it.LHSOperandOp"(%arg0, %pos_91, %pos_93, %crd_90, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %73 = "it.OperandOp"(%57, %pos_87, %pos_95, %crd_86, %crd_94) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_96, %pos_97 = "it.IndexToTensorDim"(%22, %68, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %74 = "it.OperandOp"(%22, %pos, %pos_97, %crd, %crd_96) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_98, %pos_99 = "it.IndexToTensorDim"(%51, %71, %pos_89) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %75 = "it.OperandOp"(%51, %pos_89, %pos_99, %crd_88, %crd_98) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %76 = "it.ComputeOp"(%71, %72, %74, %75, %73) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %76 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%61, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %false = arith.constant false
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
  %alloc_32 = memref.alloc() : memref<13xindex>
  %cast_33 = memref.cast %alloc_32 : memref<13xindex> to memref<*xindex>
  %c-1_34 = arith.constant -1 : index
  %c0_35 = arith.constant 0 : index
  %c1_36 = arith.constant 1 : index
  %c2_37 = arith.constant 2 : index
  %c3_38 = arith.constant 3 : index
  %c1_i32_39 = arith.constant 1 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_41 = arith.constant 0 : index
  %29 = memref.load %alloc_32[%c0_41] : memref<13xindex>
  %c1_42 = arith.constant 1 : index
  %30 = memref.load %alloc_32[%c1_42] : memref<13xindex>
  %c2_43 = arith.constant 2 : index
  %31 = memref.load %alloc_32[%c2_43] : memref<13xindex>
  %c3_44 = arith.constant 3 : index
  %32 = memref.load %alloc_32[%c3_44] : memref<13xindex>
  %c4_45 = arith.constant 4 : index
  %33 = memref.load %alloc_32[%c4_45] : memref<13xindex>
  %c5_46 = arith.constant 5 : index
  %34 = memref.load %alloc_32[%c5_46] : memref<13xindex>
  %c6_47 = arith.constant 6 : index
  %35 = memref.load %alloc_32[%c6_47] : memref<13xindex>
  %c7_48 = arith.constant 7 : index
  %36 = memref.load %alloc_32[%c7_48] : memref<13xindex>
  %c8_49 = arith.constant 8 : index
  %37 = memref.load %alloc_32[%c8_49] : memref<13xindex>
  %c9_50 = arith.constant 9 : index
  %38 = memref.load %alloc_32[%c9_50] : memref<13xindex>
  %c10_51 = arith.constant 10 : index
  %39 = memref.load %alloc_32[%c10_51] : memref<13xindex>
  %c11_52 = arith.constant 11 : index
  %40 = memref.load %alloc_32[%c11_52] : memref<13xindex>
  %c12_53 = arith.constant 12 : index
  %41 = memref.load %alloc_32[%c12_53] : memref<13xindex>
  %alloc_54 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_55 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_55 : i64) outs(%alloc_54 : memref<?xi64>)
  %cast_56 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
  %alloc_57 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_58 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_58 : i64) outs(%alloc_57 : memref<?xi64>)
  %cast_59 = memref.cast %alloc_57 : memref<?xi64> to memref<*xi64>
  %alloc_60 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_61 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_61 : i64) outs(%alloc_60 : memref<?xi64>)
  %cast_62 = memref.cast %alloc_60 : memref<?xi64> to memref<*xi64>
  %alloc_63 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_64 : i64) outs(%alloc_63 : memref<?xi64>)
  %cast_65 = memref.cast %alloc_63 : memref<?xi64> to memref<*xi64>
  %alloc_66 = memref.alloc(%33) : memref<?xi64>
  %c0_i64_67 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_67 : i64) outs(%alloc_66 : memref<?xi64>)
  %cast_68 = memref.cast %alloc_66 : memref<?xi64> to memref<*xi64>
  %alloc_69 = memref.alloc(%34) : memref<?xi64>
  %c0_i64_70 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_70 : i64) outs(%alloc_69 : memref<?xi64>)
  %cast_71 = memref.cast %alloc_69 : memref<?xi64> to memref<*xi64>
  %alloc_72 = memref.alloc(%35) : memref<?xi64>
  %c0_i64_73 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_73 : i64) outs(%alloc_72 : memref<?xi64>)
  %cast_74 = memref.cast %alloc_72 : memref<?xi64> to memref<*xi64>
  %alloc_75 = memref.alloc(%36) : memref<?xi64>
  %c0_i64_76 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_76 : i64) outs(%alloc_75 : memref<?xi64>)
  %cast_77 = memref.cast %alloc_75 : memref<?xi64> to memref<*xi64>
  %alloc_78 = memref.alloc(%37) : memref<?xf64>
  %cst_79 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_79 : f64) outs(%alloc_78 : memref<?xf64>)
  %cast_80 = memref.cast %alloc_78 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %42 = bufferization.to_tensor %alloc_54 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_57 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_60 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_63 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_66 restrict writable : memref<?xi64>
  %47 = bufferization.to_tensor %alloc_69 restrict writable : memref<?xi64>
  %48 = bufferization.to_tensor %alloc_72 restrict writable : memref<?xi64>
  %49 = bufferization.to_tensor %alloc_75 restrict writable : memref<?xi64>
  %50 = bufferization.to_tensor %alloc_78 restrict writable : memref<?xf64>
  %from_elements_81 = tensor.from_elements %38, %39 : tensor<2xindex>
  %51 = "ta.spTensor_construct"(%from_elements_81, %42, %46, %43, %47, %44, %48, %45, %49, %50) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "ta.SpTensorGetDimPos"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %53 = "ta.SpTensorGetDimCrd"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_82 = tensor.dim %52, %c0 : tensor<?xi64>
  %dim_83 = tensor.dim %53, %c0 : tensor<?xi64>
  %54 = "ta.SpTensorGetDimSize"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %55 = "ta.dim"(%51, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %56 = "ta.sparse_output_tensor_decl"(%27, %55) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %57 = "ta.SpTensorAlias"(%51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %58 = "ta.SpTensorGetDimPos"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %59 = "ta.SpTensorGetDimCrd"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_84 = tensor.dim %58, %c0 : tensor<?xi64>
  %dim_85 = tensor.dim %59, %c0 : tensor<?xi64>
  %60 = "ta.SpTensorGetDimSize"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %splat = tensor.splat %false[%60] : tensor<?xi1>
  %61 = "it.itree"(%56) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%23, %22, %57) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%57, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%57, %58, %59, %dim_84, %dim_85, %60, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %68 = "it.IndexOp"(%64, %65) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%51, %68) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %69 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_89) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %70 = "it.MaskedDomainOp"(%67, %69, %54) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %71 = "it.IndexOp"(%68, %70) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%arg0, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%arg0, %71, %pos_91) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_94, %pos_95 = "it.IndexToTensorDim"(%57, %71, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %72 = "it.LHSOperandOp"(%arg0, %pos_91, %pos_93, %crd_90, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %73 = "it.OperandOp"(%57, %pos_87, %pos_95, %crd_86, %crd_94) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_96, %pos_97 = "it.IndexToTensorDim"(%22, %68, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %74 = "it.OperandOp"(%22, %pos, %pos_97, %crd, %crd_96) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_98, %pos_99 = "it.IndexToTensorDim"(%51, %71, %pos_89) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %75 = "it.OperandOp"(%51, %pos_89, %pos_99, %crd_88, %crd_98) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %76 = "it.ComputeOp"(%71, %72, %74, %75, %73) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %76 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%61, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %false = arith.constant false
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
  %alloc_32 = memref.alloc() : memref<13xindex>
  %cast_33 = memref.cast %alloc_32 : memref<13xindex> to memref<*xindex>
  %c-1_34 = arith.constant -1 : index
  %c0_35 = arith.constant 0 : index
  %c1_36 = arith.constant 1 : index
  %c2_37 = arith.constant 2 : index
  %c3_38 = arith.constant 3 : index
  %c1_i32_39 = arith.constant 1 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_41 = arith.constant 0 : index
  %29 = memref.load %alloc_32[%c0_41] : memref<13xindex>
  %c1_42 = arith.constant 1 : index
  %30 = memref.load %alloc_32[%c1_42] : memref<13xindex>
  %c2_43 = arith.constant 2 : index
  %31 = memref.load %alloc_32[%c2_43] : memref<13xindex>
  %c3_44 = arith.constant 3 : index
  %32 = memref.load %alloc_32[%c3_44] : memref<13xindex>
  %c4_45 = arith.constant 4 : index
  %33 = memref.load %alloc_32[%c4_45] : memref<13xindex>
  %c5_46 = arith.constant 5 : index
  %34 = memref.load %alloc_32[%c5_46] : memref<13xindex>
  %c6_47 = arith.constant 6 : index
  %35 = memref.load %alloc_32[%c6_47] : memref<13xindex>
  %c7_48 = arith.constant 7 : index
  %36 = memref.load %alloc_32[%c7_48] : memref<13xindex>
  %c8_49 = arith.constant 8 : index
  %37 = memref.load %alloc_32[%c8_49] : memref<13xindex>
  %c9_50 = arith.constant 9 : index
  %38 = memref.load %alloc_32[%c9_50] : memref<13xindex>
  %c10_51 = arith.constant 10 : index
  %39 = memref.load %alloc_32[%c10_51] : memref<13xindex>
  %c11_52 = arith.constant 11 : index
  %40 = memref.load %alloc_32[%c11_52] : memref<13xindex>
  %c12_53 = arith.constant 12 : index
  %41 = memref.load %alloc_32[%c12_53] : memref<13xindex>
  %alloc_54 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_55 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_55 : i64) outs(%alloc_54 : memref<?xi64>)
  %cast_56 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
  %alloc_57 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_58 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_58 : i64) outs(%alloc_57 : memref<?xi64>)
  %cast_59 = memref.cast %alloc_57 : memref<?xi64> to memref<*xi64>
  %alloc_60 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_61 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_61 : i64) outs(%alloc_60 : memref<?xi64>)
  %cast_62 = memref.cast %alloc_60 : memref<?xi64> to memref<*xi64>
  %alloc_63 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_64 : i64) outs(%alloc_63 : memref<?xi64>)
  %cast_65 = memref.cast %alloc_63 : memref<?xi64> to memref<*xi64>
  %alloc_66 = memref.alloc(%33) : memref<?xi64>
  %c0_i64_67 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_67 : i64) outs(%alloc_66 : memref<?xi64>)
  %cast_68 = memref.cast %alloc_66 : memref<?xi64> to memref<*xi64>
  %alloc_69 = memref.alloc(%34) : memref<?xi64>
  %c0_i64_70 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_70 : i64) outs(%alloc_69 : memref<?xi64>)
  %cast_71 = memref.cast %alloc_69 : memref<?xi64> to memref<*xi64>
  %alloc_72 = memref.alloc(%35) : memref<?xi64>
  %c0_i64_73 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_73 : i64) outs(%alloc_72 : memref<?xi64>)
  %cast_74 = memref.cast %alloc_72 : memref<?xi64> to memref<*xi64>
  %alloc_75 = memref.alloc(%36) : memref<?xi64>
  %c0_i64_76 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_76 : i64) outs(%alloc_75 : memref<?xi64>)
  %cast_77 = memref.cast %alloc_75 : memref<?xi64> to memref<*xi64>
  %alloc_78 = memref.alloc(%37) : memref<?xf64>
  %cst_79 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_79 : f64) outs(%alloc_78 : memref<?xf64>)
  %cast_80 = memref.cast %alloc_78 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %42 = bufferization.to_tensor %alloc_54 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_57 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_60 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_63 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_66 restrict writable : memref<?xi64>
  %47 = bufferization.to_tensor %alloc_69 restrict writable : memref<?xi64>
  %48 = bufferization.to_tensor %alloc_72 restrict writable : memref<?xi64>
  %49 = bufferization.to_tensor %alloc_75 restrict writable : memref<?xi64>
  %50 = bufferization.to_tensor %alloc_78 restrict writable : memref<?xf64>
  %from_elements_81 = tensor.from_elements %38, %39 : tensor<2xindex>
  %51 = "ta.spTensor_construct"(%from_elements_81, %42, %46, %43, %47, %44, %48, %45, %49, %50) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "ta.SpTensorGetDimPos"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %53 = "ta.SpTensorGetDimCrd"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_82 = tensor.dim %52, %c0 : tensor<?xi64>
  %dim_83 = tensor.dim %53, %c0 : tensor<?xi64>
  %54 = "ta.SpTensorGetDimSize"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %55 = "ta.dim"(%51, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %56 = "ta.sparse_output_tensor_decl"(%27, %55) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %57 = "ta.SpTensorAlias"(%51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %58 = "ta.SpTensorGetDimPos"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %59 = "ta.SpTensorGetDimCrd"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_84 = tensor.dim %58, %c0 : tensor<?xi64>
  %dim_85 = tensor.dim %59, %c0 : tensor<?xi64>
  %60 = "ta.SpTensorGetDimSize"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %splat = tensor.splat %false[%60] : tensor<?xi1>
  %61 = "it.itree"(%56) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%23, %22, %57) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%57, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%57, %58, %59, %dim_84, %dim_85, %60, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %68 = "it.IndexOp"(%64, %65) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%51, %68) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %69 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_89) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %70 = "it.MaskedDomainOp"(%67, %69, %54) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %71 = "it.IndexOp"(%68, %70) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%arg0, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%arg0, %71, %pos_91) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_94, %pos_95 = "it.IndexToTensorDim"(%57, %71, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %72 = "it.LHSOperandOp"(%arg0, %pos_91, %pos_93, %crd_90, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %73 = "it.OperandOp"(%57, %pos_87, %pos_95, %crd_86, %crd_94) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_96, %pos_97 = "it.IndexToTensorDim"(%22, %68, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %74 = "it.OperandOp"(%22, %pos, %pos_97, %crd, %crd_96) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_98, %pos_99 = "it.IndexToTensorDim"(%51, %71, %pos_89) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %75 = "it.OperandOp"(%51, %pos_89, %pos_99, %crd_88, %crd_98) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %76 = "it.ComputeOp"(%71, %72, %74, %75, %73) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %76 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%61, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %false = arith.constant false
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
  %alloc_32 = memref.alloc() : memref<13xindex>
  %cast_33 = memref.cast %alloc_32 : memref<13xindex> to memref<*xindex>
  %c-1_34 = arith.constant -1 : index
  %c0_35 = arith.constant 0 : index
  %c1_36 = arith.constant 1 : index
  %c2_37 = arith.constant 2 : index
  %c3_38 = arith.constant 3 : index
  %c1_i32_39 = arith.constant 1 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_41 = arith.constant 0 : index
  %29 = memref.load %alloc_32[%c0_41] : memref<13xindex>
  %c1_42 = arith.constant 1 : index
  %30 = memref.load %alloc_32[%c1_42] : memref<13xindex>
  %c2_43 = arith.constant 2 : index
  %31 = memref.load %alloc_32[%c2_43] : memref<13xindex>
  %c3_44 = arith.constant 3 : index
  %32 = memref.load %alloc_32[%c3_44] : memref<13xindex>
  %c4_45 = arith.constant 4 : index
  %33 = memref.load %alloc_32[%c4_45] : memref<13xindex>
  %c5_46 = arith.constant 5 : index
  %34 = memref.load %alloc_32[%c5_46] : memref<13xindex>
  %c6_47 = arith.constant 6 : index
  %35 = memref.load %alloc_32[%c6_47] : memref<13xindex>
  %c7_48 = arith.constant 7 : index
  %36 = memref.load %alloc_32[%c7_48] : memref<13xindex>
  %c8_49 = arith.constant 8 : index
  %37 = memref.load %alloc_32[%c8_49] : memref<13xindex>
  %c9_50 = arith.constant 9 : index
  %38 = memref.load %alloc_32[%c9_50] : memref<13xindex>
  %c10_51 = arith.constant 10 : index
  %39 = memref.load %alloc_32[%c10_51] : memref<13xindex>
  %c11_52 = arith.constant 11 : index
  %40 = memref.load %alloc_32[%c11_52] : memref<13xindex>
  %c12_53 = arith.constant 12 : index
  %41 = memref.load %alloc_32[%c12_53] : memref<13xindex>
  %alloc_54 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_55 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_55 : i64) outs(%alloc_54 : memref<?xi64>)
  %cast_56 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
  %alloc_57 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_58 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_58 : i64) outs(%alloc_57 : memref<?xi64>)
  %cast_59 = memref.cast %alloc_57 : memref<?xi64> to memref<*xi64>
  %alloc_60 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_61 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_61 : i64) outs(%alloc_60 : memref<?xi64>)
  %cast_62 = memref.cast %alloc_60 : memref<?xi64> to memref<*xi64>
  %alloc_63 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_64 : i64) outs(%alloc_63 : memref<?xi64>)
  %cast_65 = memref.cast %alloc_63 : memref<?xi64> to memref<*xi64>
  %alloc_66 = memref.alloc(%33) : memref<?xi64>
  %c0_i64_67 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_67 : i64) outs(%alloc_66 : memref<?xi64>)
  %cast_68 = memref.cast %alloc_66 : memref<?xi64> to memref<*xi64>
  %alloc_69 = memref.alloc(%34) : memref<?xi64>
  %c0_i64_70 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_70 : i64) outs(%alloc_69 : memref<?xi64>)
  %cast_71 = memref.cast %alloc_69 : memref<?xi64> to memref<*xi64>
  %alloc_72 = memref.alloc(%35) : memref<?xi64>
  %c0_i64_73 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_73 : i64) outs(%alloc_72 : memref<?xi64>)
  %cast_74 = memref.cast %alloc_72 : memref<?xi64> to memref<*xi64>
  %alloc_75 = memref.alloc(%36) : memref<?xi64>
  %c0_i64_76 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_76 : i64) outs(%alloc_75 : memref<?xi64>)
  %cast_77 = memref.cast %alloc_75 : memref<?xi64> to memref<*xi64>
  %alloc_78 = memref.alloc(%37) : memref<?xf64>
  %cst_79 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_79 : f64) outs(%alloc_78 : memref<?xf64>)
  %cast_80 = memref.cast %alloc_78 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %42 = bufferization.to_tensor %alloc_54 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_57 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_60 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_63 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_66 restrict writable : memref<?xi64>
  %47 = bufferization.to_tensor %alloc_69 restrict writable : memref<?xi64>
  %48 = bufferization.to_tensor %alloc_72 restrict writable : memref<?xi64>
  %49 = bufferization.to_tensor %alloc_75 restrict writable : memref<?xi64>
  %50 = bufferization.to_tensor %alloc_78 restrict writable : memref<?xf64>
  %from_elements_81 = tensor.from_elements %38, %39 : tensor<2xindex>
  %51 = "ta.spTensor_construct"(%from_elements_81, %42, %46, %43, %47, %44, %48, %45, %49, %50) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "ta.SpTensorGetDimPos"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %53 = "ta.SpTensorGetDimCrd"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_82 = tensor.dim %52, %c0 : tensor<?xi64>
  %dim_83 = tensor.dim %53, %c0 : tensor<?xi64>
  %54 = "ta.SpTensorGetDimSize"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %55 = "ta.dim"(%51, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %56 = "it.EmptyDomain"() : () -> !it.domain
  %57 = "it.IndexTreeSparseTensorOp"(%56, %56) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %58 = "ta.SpTensorAlias"(%51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %59 = "ta.SpTensorGetDimPos"(%58) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %60 = "ta.SpTensorGetDimCrd"(%58) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_84 = tensor.dim %59, %c0 : tensor<?xi64>
  %dim_85 = tensor.dim %60, %c0 : tensor<?xi64>
  %61 = "ta.SpTensorGetDimSize"(%58) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %splat = tensor.splat %false[%61] : tensor<?xi1>
  %62 = "it.itree"(%57) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %63 = "it.RootOp"() : () -> !it.index_tree
    %64 = "it.DenseDomainOp"(%23, %22, %58) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%58, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %67 = "it.SparseDomainOp"(%58, %59, %60, %dim_84, %dim_85, %61, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %68 = "it.FillMaskOp"(%65, %67, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %69 = "it.IndexOp"(%65, %66) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%51, %69) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %70 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_89) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %71 = "it.MaskedDomainOp"(%68, %70, %54) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %72 = "it.IndexOp"(%69, %71) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%arg0, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%arg0, %72, %pos_91) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_94, %pos_95 = "it.IndexToTensorDim"(%58, %72, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %73 = "it.LHSOperandOp"(%arg0, %pos_91, %pos_93, %crd_90, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %74 = "it.OperandOp"(%58, %pos_87, %pos_95, %crd_86, %crd_94) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_96, %pos_97 = "it.IndexToTensorDim"(%22, %69, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %75 = "it.OperandOp"(%22, %pos, %pos_97, %crd, %crd_96) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_98, %pos_99 = "it.IndexToTensorDim"(%51, %72, %pos_89) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %76 = "it.OperandOp"(%51, %pos_89, %pos_99, %crd_88, %crd_98) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %77 = "it.ComputeOp"(%72, %73, %75, %76, %74) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %77 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%62, %57) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %false = arith.constant false
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
  %alloc_32 = memref.alloc() : memref<13xindex>
  %cast_33 = memref.cast %alloc_32 : memref<13xindex> to memref<*xindex>
  %c-1_34 = arith.constant -1 : index
  %c0_35 = arith.constant 0 : index
  %c1_36 = arith.constant 1 : index
  %c2_37 = arith.constant 2 : index
  %c3_38 = arith.constant 3 : index
  %c1_i32_39 = arith.constant 1 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_41 = arith.constant 0 : index
  %29 = memref.load %alloc_32[%c0_41] : memref<13xindex>
  %c1_42 = arith.constant 1 : index
  %30 = memref.load %alloc_32[%c1_42] : memref<13xindex>
  %c2_43 = arith.constant 2 : index
  %31 = memref.load %alloc_32[%c2_43] : memref<13xindex>
  %c3_44 = arith.constant 3 : index
  %32 = memref.load %alloc_32[%c3_44] : memref<13xindex>
  %c4_45 = arith.constant 4 : index
  %33 = memref.load %alloc_32[%c4_45] : memref<13xindex>
  %c5_46 = arith.constant 5 : index
  %34 = memref.load %alloc_32[%c5_46] : memref<13xindex>
  %c6_47 = arith.constant 6 : index
  %35 = memref.load %alloc_32[%c6_47] : memref<13xindex>
  %c7_48 = arith.constant 7 : index
  %36 = memref.load %alloc_32[%c7_48] : memref<13xindex>
  %c8_49 = arith.constant 8 : index
  %37 = memref.load %alloc_32[%c8_49] : memref<13xindex>
  %c9_50 = arith.constant 9 : index
  %38 = memref.load %alloc_32[%c9_50] : memref<13xindex>
  %c10_51 = arith.constant 10 : index
  %39 = memref.load %alloc_32[%c10_51] : memref<13xindex>
  %c11_52 = arith.constant 11 : index
  %40 = memref.load %alloc_32[%c11_52] : memref<13xindex>
  %c12_53 = arith.constant 12 : index
  %41 = memref.load %alloc_32[%c12_53] : memref<13xindex>
  %alloc_54 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_55 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_55 : i64) outs(%alloc_54 : memref<?xi64>)
  %cast_56 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
  %alloc_57 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_58 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_58 : i64) outs(%alloc_57 : memref<?xi64>)
  %cast_59 = memref.cast %alloc_57 : memref<?xi64> to memref<*xi64>
  %alloc_60 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_61 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_61 : i64) outs(%alloc_60 : memref<?xi64>)
  %cast_62 = memref.cast %alloc_60 : memref<?xi64> to memref<*xi64>
  %alloc_63 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_64 : i64) outs(%alloc_63 : memref<?xi64>)
  %cast_65 = memref.cast %alloc_63 : memref<?xi64> to memref<*xi64>
  %alloc_66 = memref.alloc(%33) : memref<?xi64>
  %c0_i64_67 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_67 : i64) outs(%alloc_66 : memref<?xi64>)
  %cast_68 = memref.cast %alloc_66 : memref<?xi64> to memref<*xi64>
  %alloc_69 = memref.alloc(%34) : memref<?xi64>
  %c0_i64_70 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_70 : i64) outs(%alloc_69 : memref<?xi64>)
  %cast_71 = memref.cast %alloc_69 : memref<?xi64> to memref<*xi64>
  %alloc_72 = memref.alloc(%35) : memref<?xi64>
  %c0_i64_73 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_73 : i64) outs(%alloc_72 : memref<?xi64>)
  %cast_74 = memref.cast %alloc_72 : memref<?xi64> to memref<*xi64>
  %alloc_75 = memref.alloc(%36) : memref<?xi64>
  %c0_i64_76 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_76 : i64) outs(%alloc_75 : memref<?xi64>)
  %cast_77 = memref.cast %alloc_75 : memref<?xi64> to memref<*xi64>
  %alloc_78 = memref.alloc(%37) : memref<?xf64>
  %cst_79 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_79 : f64) outs(%alloc_78 : memref<?xf64>)
  %cast_80 = memref.cast %alloc_78 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %42 = bufferization.to_tensor %alloc_54 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_57 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_60 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_63 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_66 restrict writable : memref<?xi64>
  %47 = bufferization.to_tensor %alloc_69 restrict writable : memref<?xi64>
  %48 = bufferization.to_tensor %alloc_72 restrict writable : memref<?xi64>
  %49 = bufferization.to_tensor %alloc_75 restrict writable : memref<?xi64>
  %50 = bufferization.to_tensor %alloc_78 restrict writable : memref<?xf64>
  %from_elements_81 = tensor.from_elements %38, %39 : tensor<2xindex>
  %51 = "ta.spTensor_construct"(%from_elements_81, %42, %46, %43, %47, %44, %48, %45, %49, %50) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "ta.SpTensorGetDimPos"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %53 = "ta.SpTensorGetDimCrd"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_82 = tensor.dim %52, %c0 : tensor<?xi64>
  %dim_83 = tensor.dim %53, %c0 : tensor<?xi64>
  %54 = "ta.SpTensorGetDimSize"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %55 = "ta.dim"(%51, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %56 = "it.EmptyDomain"() : () -> !it.domain
  %57 = "it.IndexTreeSparseTensorOp"(%56, %56) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %58 = "ta.SpTensorAlias"(%51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %59 = "ta.SpTensorGetDimPos"(%58) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %60 = "ta.SpTensorGetDimCrd"(%58) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_84 = tensor.dim %59, %c0 : tensor<?xi64>
  %dim_85 = tensor.dim %60, %c0 : tensor<?xi64>
  %61 = "ta.SpTensorGetDimSize"(%58) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %splat = tensor.splat %false[%61] : tensor<?xi1>
  %62 = "it.itree"(%57) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %63 = "it.RootOp"() : () -> !it.index_tree
    %64 = "it.DenseDomainOp"(%23, %22, %58) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%58, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %67 = "it.SparseDomainOp"(%58, %59, %60, %dim_84, %dim_85, %61, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %68 = "it.FillMaskOp"(%65, %67, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %69 = "it.IndexOp"(%65, %66) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%51, %69) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %70 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_89) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %71 = "it.MaskedDomainOp"(%68, %70, %54) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %72 = "it.IndexOp"(%69, %71) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%arg0, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%arg0, %72, %pos_91) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_94, %pos_95 = "it.IndexToTensorDim"(%58, %72, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %73 = "it.LHSOperandOp"(%arg0, %pos_91, %pos_93, %crd_90, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %74 = "it.OperandOp"(%58, %pos_87, %pos_95, %crd_86, %crd_94) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_96, %pos_97 = "it.IndexToTensorDim"(%22, %69, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %75 = "it.OperandOp"(%22, %pos, %pos_97, %crd, %crd_96) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_98, %pos_99 = "it.IndexToTensorDim"(%51, %72, %pos_89) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %76 = "it.OperandOp"(%51, %pos_89, %pos_99, %crd_88, %crd_98) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %77 = "it.ComputeOp"(%72, %73, %75, %76, %74) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %77 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%62, %57) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %false = arith.constant false
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
  %alloc_32 = memref.alloc() : memref<13xindex>
  %cast_33 = memref.cast %alloc_32 : memref<13xindex> to memref<*xindex>
  %c-1_34 = arith.constant -1 : index
  %c0_35 = arith.constant 0 : index
  %c1_36 = arith.constant 1 : index
  %c2_37 = arith.constant 2 : index
  %c3_38 = arith.constant 3 : index
  %c1_i32_39 = arith.constant 1 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_41 = arith.constant 0 : index
  %29 = memref.load %alloc_32[%c0_41] : memref<13xindex>
  %c1_42 = arith.constant 1 : index
  %30 = memref.load %alloc_32[%c1_42] : memref<13xindex>
  %c2_43 = arith.constant 2 : index
  %31 = memref.load %alloc_32[%c2_43] : memref<13xindex>
  %c3_44 = arith.constant 3 : index
  %32 = memref.load %alloc_32[%c3_44] : memref<13xindex>
  %c4_45 = arith.constant 4 : index
  %33 = memref.load %alloc_32[%c4_45] : memref<13xindex>
  %c5_46 = arith.constant 5 : index
  %34 = memref.load %alloc_32[%c5_46] : memref<13xindex>
  %c6_47 = arith.constant 6 : index
  %35 = memref.load %alloc_32[%c6_47] : memref<13xindex>
  %c7_48 = arith.constant 7 : index
  %36 = memref.load %alloc_32[%c7_48] : memref<13xindex>
  %c8_49 = arith.constant 8 : index
  %37 = memref.load %alloc_32[%c8_49] : memref<13xindex>
  %c9_50 = arith.constant 9 : index
  %38 = memref.load %alloc_32[%c9_50] : memref<13xindex>
  %c10_51 = arith.constant 10 : index
  %39 = memref.load %alloc_32[%c10_51] : memref<13xindex>
  %c11_52 = arith.constant 11 : index
  %40 = memref.load %alloc_32[%c11_52] : memref<13xindex>
  %c12_53 = arith.constant 12 : index
  %41 = memref.load %alloc_32[%c12_53] : memref<13xindex>
  %alloc_54 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_55 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_55 : i64) outs(%alloc_54 : memref<?xi64>)
  %cast_56 = memref.cast %alloc_54 : memref<?xi64> to memref<*xi64>
  %alloc_57 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_58 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_58 : i64) outs(%alloc_57 : memref<?xi64>)
  %cast_59 = memref.cast %alloc_57 : memref<?xi64> to memref<*xi64>
  %alloc_60 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_61 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_61 : i64) outs(%alloc_60 : memref<?xi64>)
  %cast_62 = memref.cast %alloc_60 : memref<?xi64> to memref<*xi64>
  %alloc_63 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_64 : i64) outs(%alloc_63 : memref<?xi64>)
  %cast_65 = memref.cast %alloc_63 : memref<?xi64> to memref<*xi64>
  %alloc_66 = memref.alloc(%33) : memref<?xi64>
  %c0_i64_67 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_67 : i64) outs(%alloc_66 : memref<?xi64>)
  %cast_68 = memref.cast %alloc_66 : memref<?xi64> to memref<*xi64>
  %alloc_69 = memref.alloc(%34) : memref<?xi64>
  %c0_i64_70 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_70 : i64) outs(%alloc_69 : memref<?xi64>)
  %cast_71 = memref.cast %alloc_69 : memref<?xi64> to memref<*xi64>
  %alloc_72 = memref.alloc(%35) : memref<?xi64>
  %c0_i64_73 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_73 : i64) outs(%alloc_72 : memref<?xi64>)
  %cast_74 = memref.cast %alloc_72 : memref<?xi64> to memref<*xi64>
  %alloc_75 = memref.alloc(%36) : memref<?xi64>
  %c0_i64_76 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_76 : i64) outs(%alloc_75 : memref<?xi64>)
  %cast_77 = memref.cast %alloc_75 : memref<?xi64> to memref<*xi64>
  %alloc_78 = memref.alloc(%37) : memref<?xf64>
  %cst_79 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_79 : f64) outs(%alloc_78 : memref<?xf64>)
  %cast_80 = memref.cast %alloc_78 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %42 = bufferization.to_tensor %alloc_54 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_57 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_60 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_63 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_66 restrict writable : memref<?xi64>
  %47 = bufferization.to_tensor %alloc_69 restrict writable : memref<?xi64>
  %48 = bufferization.to_tensor %alloc_72 restrict writable : memref<?xi64>
  %49 = bufferization.to_tensor %alloc_75 restrict writable : memref<?xi64>
  %50 = bufferization.to_tensor %alloc_78 restrict writable : memref<?xf64>
  %from_elements_81 = tensor.from_elements %38, %39 : tensor<2xindex>
  %51 = "ta.spTensor_construct"(%from_elements_81, %42, %46, %43, %47, %44, %48, %45, %49, %50) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "ta.SpTensorGetDimPos"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %53 = "ta.SpTensorGetDimCrd"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_82 = tensor.dim %52, %c0 : tensor<?xi64>
  %dim_83 = tensor.dim %53, %c0 : tensor<?xi64>
  %54 = "ta.SpTensorGetDimSize"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %55 = "ta.SpTensorGetDimSize"(%51) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %56 = "it.EmptyDomain"() : () -> !it.domain
  %57 = "it.IndexTreeSparseTensorOp"(%56, %56) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %58 = "ta.SpTensorAlias"(%51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %59 = "ta.SpTensorGetDimPos"(%58) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %60 = "ta.SpTensorGetDimCrd"(%58) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_84 = tensor.dim %59, %c0 : tensor<?xi64>
  %dim_85 = tensor.dim %60, %c0 : tensor<?xi64>
  %61 = "ta.SpTensorGetDimSize"(%58) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %splat = tensor.splat %false[%61] : tensor<?xi1>
  %62 = "it.itree"(%57) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %63 = "it.RootOp"() : () -> !it.index_tree
    %64 = "it.DenseDomainOp"(%23, %22, %58) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%58, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %67 = "it.SparseDomainOp"(%58, %59, %60, %dim_84, %dim_85, %61, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %68 = "it.FillMaskOp"(%65, %67, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %69 = "it.IndexOp"(%65, %66) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%51, %69) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %70 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_89) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %71 = "it.MaskedDomainOp"(%68, %70, %54) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %72 = "it.IndexOp"(%69, %71) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%arg0, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%arg0, %72, %pos_91) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_94, %pos_95 = "it.IndexToTensorDim"(%58, %72, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %73 = "it.LHSOperandOp"(%arg0, %pos_91, %pos_93, %crd_90, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %74 = "it.OperandOp"(%58, %pos_87, %pos_95, %crd_86, %crd_94) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_96, %pos_97 = "it.IndexToTensorDim"(%22, %69, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %75 = "it.OperandOp"(%22, %pos, %pos_97, %crd, %crd_96) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_98, %pos_99 = "it.IndexToTensorDim"(%51, %72, %pos_89) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %76 = "it.OperandOp"(%51, %pos_89, %pos_99, %crd_88, %crd_98) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %77 = "it.ComputeOp"(%72, %73, %75, %76, %74) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %77 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%62, %57) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %51 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %52 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %51, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %52, %c0 : tensor<?xi64>
  %53 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %54 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %55 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %56 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %57 = "it.NestedDomainOp"(%55, %56, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %58 = "it.MaskedDomainOp"(%54, %57, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %59 = "it.IndexTreeSparseTensorOp"(%50, %58) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat = tensor.splat %false[%53] : tensor<?xi1>
  %60 = "it.itree"(%59) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %61 = "it.RootOp"() : () -> !it.index_tree
    %62 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.IndexOp"(%61, %62) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %64 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%49, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %66 = "it.FillMaskOp"(%63, %65, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %67 = "it.IndexOp"(%63, %64) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%45, %67) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %68 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_47) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %69 = "it.MaskedDomainOp"(%66, %68, %48) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %70 = "it.IndexOp"(%67, %69) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%arg0, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg0, %70, %pos_49) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%49, %70, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %71 = "it.LHSOperandOp"(%arg0, %pos_49, %pos_51, %crd_48, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %72 = "it.OperandOp"(%49, %pos_45, %pos_53, %crd_44, %crd_52) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%20, %67, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %73 = "it.OperandOp"(%20, %pos, %pos_55, %crd, %crd_54) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%45, %70, %pos_47) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %74 = "it.OperandOp"(%45, %pos_47, %pos_57, %crd_46, %crd_56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %75 = "it.ComputeOp"(%70, %71, %73, %74, %72) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %75 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%60, %59) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%59) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %51 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %52 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %51, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %52, %c0 : tensor<?xi64>
  %53 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %54 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %55 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %56 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %57 = "it.NestedDomainOp"(%55, %56, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %58 = "it.MaskedDomainOp"(%54, %57, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %59 = "it.IndexTreeSparseTensorOp"(%50, %58) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat = tensor.splat %false[%53] : tensor<?xi1>
  %60 = "ta.AllocWorkspace"(%59) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %61:2 = "it.itree"(%59, %60) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%49, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %68 = "it.WorkspaceStartRowOp"(%64, %arg1) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %69 = "it.IndexOp"(%64, %65) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%45, %69) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %70 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_47) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %71 = "it.MaskedDomainOp"(%67, %70, %48) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %72 = "it.IndexOp"(%69, %71) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %69, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %73 = "it.OperandOp"(%20, %pos, %pos_49, %crd, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %72, %pos_47) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %74 = "it.OperandOp"(%45, %pos_47, %pos_51, %crd_46, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%68, %72) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %75 = "it.LHSOperandOp"(%68, %pos_53, %crd_52) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %76 = "it.ComputeOp"(%72, %75, %73, %74) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, ?>
    %77 = "ta.SpTensorGetDimSize"(%76) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>) -> index
    %78 = "it.WorkspaceDomainOp"(%76, %77) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, index) -> !it.domain
    %79 = "it.IndexOp"(%64, %78) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%arg0, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%arg0, %79, %pos_55) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %80 = "it.LHSOperandOp"(%arg0, %pos_55, %pos_57, %crd_54, %crd_56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%76, %79) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %81 = "it.OperandOp"(%76, %pos_59, %crd_58) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %82 = "it.ComputeOp"(%79, %80, %81) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %82, %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.set_op"(%61#0, %59) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%59) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %51 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %52 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %51, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %52, %c0 : tensor<?xi64>
  %53 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %54 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %55 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %56 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %57 = "it.NestedDomainOp"(%55, %56, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %58 = "it.MaskedDomainOp"(%54, %57, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %59 = "it.IndexTreeSparseTensorOp"(%50, %58) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat = tensor.splat %false[%53] : tensor<?xi1>
  %60 = "ta.AllocWorkspace"(%59) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %61:2 = "it.itree"(%59, %60) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%49, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %68 = "it.WorkspaceStartRowOp"(%64, %arg1) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %69 = "it.IndexOp"(%64, %65) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%45, %69) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %70 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_47) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %71 = "it.MaskedDomainOp"(%67, %70, %48) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %72 = "it.IndexOp"(%69, %71) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %69, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %73 = "it.OperandOp"(%20, %pos, %pos_49, %crd, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %72, %pos_47) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %74 = "it.OperandOp"(%45, %pos_47, %pos_51, %crd_46, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%68, %72) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %75 = "it.LHSOperandOp"(%68, %pos_53, %crd_52) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %76 = "it.ComputeOp"(%72, %75, %73, %74) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, ?>
    %77 = "ta.SpTensorGetDimSize"(%76) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>) -> index
    %78 = "it.WorkspaceDomainOp"(%76, %77) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, index) -> !it.domain
    %79 = "it.IndexOp"(%64, %78) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%arg0, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%arg0, %79, %pos_55) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %80 = "it.LHSOperandOp"(%arg0, %pos_55, %pos_57, %crd_54, %crd_56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%76, %79) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %81 = "it.OperandOp"(%76, %pos_59, %crd_58) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %82 = "it.ComputeOp"(%79, %80, %81) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %82, %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%61#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %51 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %52 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %51, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %52, %c0 : tensor<?xi64>
  %53 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %54 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %splat = tensor.splat %false[%53] : tensor<?xi1>
  %55 = "it.itree"(%54) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %59 = "it.RootOp"() : () -> !it.index_tree
    %60 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%49, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%20, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %63 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_46) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %64 = "it.FillMaskOp"(%61, %62, %splat) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %65 = "it.IndexOp"(%61, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%45, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.MaskedDomainOp"(%64, %66, %48) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %68 = "it.IndexOp"(%65, %67) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %69 = "it.ComputeSymbolicDomainOp"(%68, %arg0) <{is_unique = false}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %70 = "it.ComputeSymbolicDomainRowOp"(%61, %69) <{needs_mark = true}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    it.yield %70 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %56 = "it.IndexTreeSparseTensorOp"(%50, %55) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat_44 = tensor.splat %false[%53] : tensor<?xi1>
  %57 = "ta.AllocWorkspace"(%56) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %58:2 = "it.itree"(%56, %57) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %59 = "it.RootOp"() : () -> !it.index_tree
    %60 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%49, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %63 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_46) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %64 = "it.FillMaskOp"(%61, %63, %splat_44) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %65 = "it.WorkspaceStartRowOp"(%61, %arg1) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %66 = "it.IndexOp"(%61, %62) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%45, %66) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %67 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %68 = "it.MaskedDomainOp"(%64, %67, %48) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %69 = "it.IndexOp"(%66, %68) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%20, %66, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %70 = "it.OperandOp"(%20, %pos, %pos_50, %crd, %crd_49) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%45, %69, %pos_48) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %71 = "it.OperandOp"(%45, %pos_48, %pos_52, %crd_47, %crd_51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%65, %69) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %72 = "it.LHSOperandOp"(%65, %pos_54, %crd_53) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %73 = "it.ComputeOp"(%69, %72, %70, %71) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, ?>
    %74 = "ta.SpTensorGetDimSize"(%73) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>) -> index
    %75 = "it.WorkspaceDomainOp"(%73, %74) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, index) -> !it.domain
    %76 = "it.IndexOp"(%61, %75) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%arg0, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_57, %pos_58 = "it.IndexToTensorDim"(%arg0, %76, %pos_56) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %77 = "it.LHSOperandOp"(%arg0, %pos_56, %pos_58, %crd_55, %crd_57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_59, %pos_60 = "it.IndexToTensorDim"(%73, %76) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %78 = "it.OperandOp"(%73, %pos_60, %crd_59) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %79 = "it.ComputeOp"(%76, %77, %78) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %79, %57 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%58#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %51 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %52 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %51, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %52, %c0 : tensor<?xi64>
  %53 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %54 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %splat = tensor.splat %false[%53] : tensor<?xi1>
  %55 = "it.itree"(%54) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %59:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %60 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %59#4) -> (tensor<?xi64>) {
      %c0_47 = arith.constant 0 : index
      %65 = builtin.unrealized_conversion_cast %arg1, %59#1, %c0_47, %59#3, %arg2, %59#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %c1_48 = arith.constant 1 : index
      %66 = arith.addi %arg1, %c1_48 : index
      %extracted = tensor.extract %51[%arg1] : tensor<?xi64>
      %67 = arith.index_cast %extracted : i64 to index
      %extracted_49 = tensor.extract %51[%66] : tensor<?xi64>
      %68 = arith.index_cast %extracted_49 : i64 to index
      %c1_50 = arith.constant 1 : index
      %69 = scf.for %arg3 = %67 to %68 step %c1_50 iter_args(%arg4 = %splat) -> (tensor<?xi1>) {
        %76 = "ta.SpTensorGetCrd"(%49, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %77 = arith.index_cast %76 : i64 to index
        %true = arith.constant true
        %inserted = tensor.insert %true into %arg4[%77] : tensor<?xi1>
        scf.yield %inserted : tensor<?xi1>
      }
      %c1_51 = arith.constant 1 : index
      %70 = arith.addi %arg1, %c1_51 : index
      %extracted_52 = tensor.extract %22[%arg1] : tensor<?xi64>
      %71 = arith.index_cast %extracted_52 : i64 to index
      %extracted_53 = tensor.extract %22[%70] : tensor<?xi64>
      %72 = arith.index_cast %extracted_53 : i64 to index
      %c1_54 = arith.constant 1 : index
      %73 = scf.for %arg3 = %71 to %72 step %c1_54 iter_args(%arg4 = %65) -> (!it.symbolic_domain<64>) {
        %76 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %77 = arith.index_cast %76 : i64 to index
        %c1_55 = arith.constant 1 : index
        %78 = arith.addi %77, %c1_55 : index
        %extracted_56 = tensor.extract %46[%77] : tensor<?xi64>
        %79 = arith.index_cast %extracted_56 : i64 to index
        %extracted_57 = tensor.extract %46[%78] : tensor<?xi64>
        %80 = arith.index_cast %extracted_57 : i64 to index
        %c1_58 = arith.constant 1 : index
        %81 = scf.for %arg5 = %79 to %80 step %c1_58 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %82 = "ta.SpTensorGetCrd"(%45, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %83 = arith.index_cast %82 : i64 to index
          %extracted_59 = tensor.extract %69[%83] : tensor<?xi1>
          %84 = scf.if %extracted_59 -> (!it.symbolic_domain<64>) {
            %85 = "ta.SpTensorGetCrd"(%45, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %86 = arith.index_cast %85 : i64 to index
            %87 = "it.SymbolicDomainInsertOp"(%arg6, %86) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
            scf.yield %87 : !it.symbolic_domain<64>
          } else {
            scf.yield %arg6 : !it.symbolic_domain<64>
          }
          scf.yield %84 : !it.symbolic_domain<64>
        }
        scf.yield %81 : !it.symbolic_domain<64>
      }
      %74 = "it.SymbolicDomainEndRowOp"(%73) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %75:6 = builtin.unrealized_conversion_cast %74 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %75#4[%75#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%75#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %c0_i64_45 = arith.constant 0 : i64
    %c1_46 = arith.constant 1 : index
    %61 = arith.addi %21, %c1_46 : index
    %62:2 = scf.for %arg1 = %c1_46 to %61 step %c1_46 iter_args(%arg2 = %c0_i64_45, %arg3 = %60) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %65 = arith.addi %extracted, %arg2 : i64
      %inserted = tensor.insert %65 into %arg3[%arg1] : tensor<?xi64>
      scf.yield %65, %inserted : i64, tensor<?xi64>
    }
    %63 = arith.index_cast %62#0 : i64 to index
    %64 = builtin.unrealized_conversion_cast %21, %59#1, %63, %59#3, %62#1, %59#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %64 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %56 = "it.IndexTreeSparseTensorOp"(%50, %55) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat_44 = tensor.splat %false[%53] : tensor<?xi1>
  %57 = "ta.AllocWorkspace"(%56) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %58:2 = "it.itree"(%56, %57) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %59:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %60:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %59#5, %arg4 = %59#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %59#4[%arg2] : tensor<?xi64>
      %62 = arith.index_cast %extracted : i64 to index
      %c1_45 = arith.constant 1 : index
      %63 = arith.addi %arg2, %c1_45 : index
      %extracted_46 = tensor.extract %59#4[%63] : tensor<?xi64>
      %64 = arith.index_cast %extracted_46 : i64 to index
      %65 = arith.subi %64, %62 : index
      %extracted_slice = tensor.extract_slice %arg3[%62] [%65] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_47 = tensor.extract_slice %arg4[%62] [%65] [1] : tensor<?xf64> to tensor<?xf64>
      %c0_48 = arith.constant 0 : index
      %66 = builtin.unrealized_conversion_cast %59#0, %59#1, %59#2, %c0_48, %59#4, %extracted_slice, %extracted_slice_47 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %c1_49 = arith.constant 1 : index
      %67 = arith.addi %arg2, %c1_49 : index
      %extracted_50 = tensor.extract %51[%arg2] : tensor<?xi64>
      %68 = arith.index_cast %extracted_50 : i64 to index
      %extracted_51 = tensor.extract %51[%67] : tensor<?xi64>
      %69 = arith.index_cast %extracted_51 : i64 to index
      %c1_52 = arith.constant 1 : index
      %70 = scf.for %arg5 = %68 to %69 step %c1_52 iter_args(%arg6 = %splat_44) -> (tensor<?xi1>) {
        %81 = "ta.SpTensorGetCrd"(%49, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %82 = arith.index_cast %81 : i64 to index
        %true = arith.constant true
        %inserted = tensor.insert %true into %arg6[%82] : tensor<?xi1>
        scf.yield %inserted : tensor<?xi1>
      }
      %71 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c1_53 = arith.constant 1 : index
      %72 = arith.addi %arg2, %c1_53 : index
      %extracted_54 = tensor.extract %22[%arg2] : tensor<?xi64>
      %73 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %22[%72] : tensor<?xi64>
      %74 = arith.index_cast %extracted_55 : i64 to index
      %c1_56 = arith.constant 1 : index
      %75:2 = scf.for %arg5 = %73 to %74 step %c1_56 iter_args(%arg6 = %66, %arg7 = %71) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %81 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %82 = arith.index_cast %81 : i64 to index
        %c1_60 = arith.constant 1 : index
        %83 = arith.addi %82, %c1_60 : index
        %extracted_61 = tensor.extract %46[%82] : tensor<?xi64>
        %84 = arith.index_cast %extracted_61 : i64 to index
        %extracted_62 = tensor.extract %46[%83] : tensor<?xi64>
        %85 = arith.index_cast %extracted_62 : i64 to index
        %c1_63 = arith.constant 1 : index
        %86:2 = scf.for %arg8 = %84 to %85 step %c1_63 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %87 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %88 = arith.index_cast %87 : i64 to index
          %extracted_64 = tensor.extract %70[%88] : tensor<?xi1>
          %89:2 = scf.if %extracted_64 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
            %90 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %91 = arith.index_cast %90 : i64 to index
            %92 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %93 = arith.index_cast %92 : i64 to index
            %94 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %95 = arith.index_cast %94 : i64 to index
            %96 = "ta.TAExtractOp"(%20, %arg5, %arg2, %91) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %97 = "ta.TAExtractOp"(%45, %arg8, %82, %93) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %98 = arith.mulf %96, %97 : f64
            %99 = "ta.TAExtractOp"(%arg10, %95, %95) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
            %100 = arith.addf %99, %98 : f64
            %101 = "ta.TAInsertOp"(%arg10, %95, %95, %100) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
            scf.yield %arg9, %101 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
          } else {
            scf.yield %arg9, %arg10 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
          }
          scf.yield %89#0, %89#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %86#0, %86#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %76 = "ta.SortCrdOp"(%75#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c0_57 = arith.constant 0 : index
      %77 = "ta.SpTensorGetNNZ"(%76) : (!ta.workspace<f64, i64, ?>) -> index
      %c1_58 = arith.constant 1 : index
      %78:7 = builtin.unrealized_conversion_cast %75#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %c1_59 = arith.constant 1 : index
      %79:3 = scf.for %arg5 = %c0_57 to %77 step %c1_59 iter_args(%arg6 = %78#5, %arg7 = %78#6, %arg8 = %76) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) {
        %81 = "ta.SpTensorGetCrd"(%arg8, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %82 = arith.index_cast %81 : i64 to index
        %83 = "ta.TAExtractOp"(%arg8, %arg5, %82) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %inserted = tensor.insert %81 into %arg6[%arg5] : tensor<?xi64>
        %inserted_60 = tensor.insert %83 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %inserted, %inserted_60, %arg8 : tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>
      }
      %80 = builtin.unrealized_conversion_cast %78#0, %78#1, %78#2, %78#3, %78#4, %79#0, %79#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %79#0 into %arg3[%62] [%65] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %79#1 into %arg4[%62] [%65] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %61 = builtin.unrealized_conversion_cast %59#0, %59#1, %59#2, %59#3, %59#4, %60#0, %60#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %61, %arg1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%58#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %23 = memref.load %alloc_18[%c0] : memref<13xindex>
  %24 = memref.load %alloc_18[%c1] : memref<13xindex>
  %25 = memref.load %alloc_18[%c2] : memref<13xindex>
  %26 = memref.load %alloc_18[%c3] : memref<13xindex>
  %27 = memref.load %alloc_18[%c4] : memref<13xindex>
  %28 = memref.load %alloc_18[%c5] : memref<13xindex>
  %29 = memref.load %alloc_18[%c6] : memref<13xindex>
  %30 = memref.load %alloc_18[%c7] : memref<13xindex>
  %31 = memref.load %alloc_18[%c8] : memref<13xindex>
  %32 = memref.load %alloc_18[%c9] : memref<13xindex>
  %33 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%31) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %34 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %from_elements_38 = tensor.from_elements %32, %33 : tensor<2xindex>
  %43 = "ta.spTensor_construct"(%from_elements_38, %34, %38, %35, %39, %36, %40, %37, %41, %42) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %44 = "ta.SpTensorGetDimPos"(%43) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %45 = "ta.SpTensorGetDimSize"(%43) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %46 = "ta.SpTensorAlias"(%43) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %47 = "it.DenseDomainOp"(%21, %20, %46) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %48 = "ta.SpTensorGetDimPos"(%46) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %49 = "ta.SpTensorGetDimSize"(%46) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %50 = "it.DeclDomainOp"(%45, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %splat = tensor.splat %false[%49] : tensor<?xi1>
  %51 = "it.itree"(%50) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %55:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %56 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %55#4) -> (tensor<?xi64>) {
      %61 = builtin.unrealized_conversion_cast %arg1, %55#1, %c0, %55#3, %arg2, %55#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %62 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %48[%arg1] : tensor<?xi64>
      %63 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %48[%62] : tensor<?xi64>
      %64 = arith.index_cast %extracted_40 : i64 to index
      %65 = scf.for %arg3 = %63 to %64 step %c1 iter_args(%arg4 = %splat) -> (tensor<?xi1>) {
        %72 = "ta.SpTensorGetCrd"(%46, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %73 = arith.index_cast %72 : i64 to index
        %inserted = tensor.insert %true into %arg4[%73] : tensor<?xi1>
        scf.yield %inserted : tensor<?xi1>
      }
      %66 = arith.addi %arg1, %c1 : index
      %extracted_41 = tensor.extract %22[%arg1] : tensor<?xi64>
      %67 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%66] : tensor<?xi64>
      %68 = arith.index_cast %extracted_42 : i64 to index
      %69 = scf.for %arg3 = %67 to %68 step %c1 iter_args(%arg4 = %61) -> (!it.symbolic_domain<64>) {
        %72 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %73 = arith.index_cast %72 : i64 to index
        %74 = arith.addi %73, %c1 : index
        %extracted_43 = tensor.extract %44[%73] : tensor<?xi64>
        %75 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %44[%74] : tensor<?xi64>
        %76 = arith.index_cast %extracted_44 : i64 to index
        %77 = scf.for %arg5 = %75 to %76 step %c1 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %78 = "ta.SpTensorGetCrd"(%43, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %79 = arith.index_cast %78 : i64 to index
          %extracted_45 = tensor.extract %65[%79] : tensor<?xi1>
          %80 = scf.if %extracted_45 -> (!it.symbolic_domain<64>) {
            %81 = "ta.SpTensorGetCrd"(%43, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %82 = arith.index_cast %81 : i64 to index
            %83 = "it.SymbolicDomainInsertOp"(%arg6, %82) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
            scf.yield %83 : !it.symbolic_domain<64>
          } else {
            scf.yield %arg6 : !it.symbolic_domain<64>
          }
          scf.yield %80 : !it.symbolic_domain<64>
        }
        scf.yield %77 : !it.symbolic_domain<64>
      }
      %70 = "it.SymbolicDomainEndRowOp"(%69) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %71:6 = builtin.unrealized_conversion_cast %70 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %71#4[%71#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%71#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %57 = arith.addi %21, %c1 : index
    %58:2 = scf.for %arg1 = %c1 to %57 step %c1 iter_args(%arg2 = %c0_i64, %arg3 = %56) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %61 = arith.addi %extracted, %arg2 : i64
      %inserted = tensor.insert %61 into %arg3[%arg1] : tensor<?xi64>
      scf.yield %61, %inserted : i64, tensor<?xi64>
    }
    %59 = arith.index_cast %58#0 : i64 to index
    %60 = builtin.unrealized_conversion_cast %21, %55#1, %59, %55#3, %58#1, %55#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %60 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%47, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat_39 = tensor.splat %false[%49] : tensor<?xi1>
  %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %54:2 = "it.itree"(%52, %53) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %55:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %56:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %55#5, %arg4 = %55#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %55#4[%arg2] : tensor<?xi64>
      %58 = arith.index_cast %extracted : i64 to index
      %59 = arith.addi %arg2, %c1 : index
      %extracted_40 = tensor.extract %55#4[%59] : tensor<?xi64>
      %60 = arith.index_cast %extracted_40 : i64 to index
      %61 = arith.subi %60, %58 : index
      %extracted_slice = tensor.extract_slice %arg3[%58] [%61] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_41 = tensor.extract_slice %arg4[%58] [%61] [1] : tensor<?xf64> to tensor<?xf64>
      %62 = builtin.unrealized_conversion_cast %55#0, %55#1, %55#2, %c0, %55#4, %extracted_slice, %extracted_slice_41 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %63 = arith.addi %arg2, %c1 : index
      %extracted_42 = tensor.extract %48[%arg2] : tensor<?xi64>
      %64 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %48[%63] : tensor<?xi64>
      %65 = arith.index_cast %extracted_43 : i64 to index
      %66 = scf.for %arg5 = %64 to %65 step %c1 iter_args(%arg6 = %splat_39) -> (tensor<?xi1>) {
        %76 = "ta.SpTensorGetCrd"(%46, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %77 = arith.index_cast %76 : i64 to index
        %inserted = tensor.insert %true into %arg6[%77] : tensor<?xi1>
        scf.yield %inserted : tensor<?xi1>
      }
      %67 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %68 = arith.addi %arg2, %c1 : index
      %extracted_44 = tensor.extract %22[%arg2] : tensor<?xi64>
      %69 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %22[%68] : tensor<?xi64>
      %70 = arith.index_cast %extracted_45 : i64 to index
      %71:2 = scf.for %arg5 = %69 to %70 step %c1 iter_args(%arg6 = %62, %arg7 = %67) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %76 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %77 = arith.index_cast %76 : i64 to index
        %78 = arith.addi %77, %c1 : index
        %extracted_46 = tensor.extract %44[%77] : tensor<?xi64>
        %79 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %44[%78] : tensor<?xi64>
        %80 = arith.index_cast %extracted_47 : i64 to index
        %81:2 = scf.for %arg8 = %79 to %80 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %82 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %83 = arith.index_cast %82 : i64 to index
          %extracted_48 = tensor.extract %66[%83] : tensor<?xi1>
          %84:2 = scf.if %extracted_48 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
            %85 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %86 = arith.index_cast %85 : i64 to index
            %87 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %88 = arith.index_cast %87 : i64 to index
            %89 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %90 = arith.index_cast %89 : i64 to index
            %91 = "ta.TAExtractOp"(%20, %arg5, %arg2, %86) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %92 = "ta.TAExtractOp"(%43, %arg8, %77, %88) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %93 = arith.mulf %91, %92 : f64
            %94 = "ta.WorkspaceAccumulateOp"(%arg10, %90, %90, %93) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
            scf.yield %arg9, %94 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
          } else {
            scf.yield %arg9, %arg10 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
          }
          scf.yield %84#0, %84#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %81#0, %81#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %72 = "ta.SortCrdOp"(%71#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %73 = "ta.SpTensorGetNNZ"(%72) : (!ta.workspace<f64, i64, ?>) -> index
      %74:7 = builtin.unrealized_conversion_cast %71#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %75:3 = scf.for %arg5 = %c0 to %73 step %c1 iter_args(%arg6 = %74#5, %arg7 = %74#6, %arg8 = %72) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) {
        %76 = "ta.SpTensorGetCrd"(%arg8, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %77 = arith.index_cast %76 : i64 to index
        %78 = "ta.WorkspaceReadOp"(%arg8, %arg5, %77) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %inserted = tensor.insert %76 into %arg6[%arg5] : tensor<?xi64>
        %inserted_46 = tensor.insert %78 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %inserted, %inserted_46, %arg8 : tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %75#0 into %arg3[%58] [%61] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %75#1 into %arg4[%58] [%61] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %57 = builtin.unrealized_conversion_cast %55#0, %55#1, %55#2, %55#3, %55#4, %56#0, %56#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %57, %arg1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %23 = memref.load %alloc_18[%c0] : memref<13xindex>
  %24 = memref.load %alloc_18[%c1] : memref<13xindex>
  %25 = memref.load %alloc_18[%c2] : memref<13xindex>
  %26 = memref.load %alloc_18[%c3] : memref<13xindex>
  %27 = memref.load %alloc_18[%c4] : memref<13xindex>
  %28 = memref.load %alloc_18[%c5] : memref<13xindex>
  %29 = memref.load %alloc_18[%c6] : memref<13xindex>
  %30 = memref.load %alloc_18[%c7] : memref<13xindex>
  %31 = memref.load %alloc_18[%c8] : memref<13xindex>
  %32 = memref.load %alloc_18[%c9] : memref<13xindex>
  %33 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%31) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %34 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %from_elements_38 = tensor.from_elements %32, %33 : tensor<2xindex>
  %43 = "ta.spTensor_construct"(%from_elements_38, %34, %38, %35, %39, %36, %40, %37, %41, %42) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %44 = "ta.SpTensorGetDimPos"(%43) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %45 = "ta.SpTensorGetDimSize"(%43) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %46 = "ta.SpTensorAlias"(%43) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %47 = "it.DenseDomainOp"(%21, %20, %46) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %48 = "ta.SpTensorGetDimPos"(%46) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %49 = "ta.SpTensorGetDimSize"(%46) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %idx0 = index.constant 0
  %idx1 = index.constant 1
  %50 = index.add %21, %idx1
  %51 = tensor.empty(%50) : tensor<?xi64>
  %c0_i64_39 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_39 into %51[%idx0] : tensor<?xi64>
  %52 = tensor.empty(%45) : tensor<?xi64>
  %53 = builtin.unrealized_conversion_cast %idx0, %50, %idx0, %45, %51, %52 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %splat = tensor.splat %false[%49] : tensor<?xi1>
  %54:6 = "it.itree"(%idx0, %50, %idx0, %45, %51, %52) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %69 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %70:6 = builtin.unrealized_conversion_cast %69 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %71 = scf.forall (%arg6) in (%21) shared_outs(%arg7 = %70#4) -> (tensor<?xi64>) {
      %76 = builtin.unrealized_conversion_cast %arg6, %70#1, %c0, %70#3, %arg7, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %77 = arith.addi %arg6, %c1 : index
      %extracted = tensor.extract %48[%arg6] : tensor<?xi64>
      %78 = arith.index_cast %extracted : i64 to index
      %extracted_47 = tensor.extract %48[%77] : tensor<?xi64>
      %79 = arith.index_cast %extracted_47 : i64 to index
      %80 = scf.for %arg8 = %78 to %79 step %c1 iter_args(%arg9 = %splat) -> (tensor<?xi1>) {
        %90 = "ta.SpTensorGetCrd"(%46, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %91 = arith.index_cast %90 : i64 to index
        %inserted_52 = tensor.insert %true into %arg9[%91] : tensor<?xi1>
        scf.yield %inserted_52 : tensor<?xi1>
      }
      %81 = arith.addi %arg6, %c1 : index
      %extracted_48 = tensor.extract %22[%arg6] : tensor<?xi64>
      %82 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %22[%81] : tensor<?xi64>
      %83 = arith.index_cast %extracted_49 : i64 to index
      %84:6 = scf.for %arg8 = %82 to %83 step %c1 iter_args(%arg9 = %arg6, %arg10 = %70#1, %arg11 = %c0, %arg12 = %70#3, %arg13 = %arg7, %arg14 = %70#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %90 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %91 = arith.index_cast %90 : i64 to index
        %92 = arith.addi %91, %c1 : index
        %extracted_52 = tensor.extract %44[%91] : tensor<?xi64>
        %93 = arith.index_cast %extracted_52 : i64 to index
        %extracted_53 = tensor.extract %44[%92] : tensor<?xi64>
        %94 = arith.index_cast %extracted_53 : i64 to index
        %95:6 = scf.for %arg15 = %93 to %94 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %97 = "ta.SpTensorGetCrd"(%43, %arg15) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %98 = arith.index_cast %97 : i64 to index
          %extracted_54 = tensor.extract %80[%98] : tensor<?xi1>
          %99:6 = scf.if %extracted_54 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
            %101 = "ta.SpTensorGetCrd"(%43, %arg15) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %102 = arith.index_cast %101 : i64 to index
            %idx1_55 = index.constant 1
            %103 = index.add %arg16, %idx1_55
            %104 = arith.index_cast %103 : index to i64
            %extracted_56 = tensor.extract %arg21[%102] : tensor<?xi64>
            %105 = arith.cmpi eq, %104, %extracted_56 : i64
            %106:2 = scf.if %105 -> (index, tensor<?xi64>) {
              scf.yield %arg18, %arg21 : index, tensor<?xi64>
            } else {
              %inserted_57 = tensor.insert %104 into %arg21[%102] : tensor<?xi64>
              %108 = index.add %arg18, %idx1_55
              scf.yield %108, %inserted_57 : index, tensor<?xi64>
            }
            %107 = builtin.unrealized_conversion_cast %arg16, %arg17, %106#0, %arg19, %arg20, %106#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
            scf.yield %arg16, %arg17, %106#0, %arg19, %arg20, %106#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
          } else {
            scf.yield %arg16, %arg17, %arg18, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
          }
          %100 = builtin.unrealized_conversion_cast %99#0, %99#1, %99#2, %99#3, %99#4, %99#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %99#0, %99#1, %99#2, %99#3, %99#4, %99#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %96 = builtin.unrealized_conversion_cast %95#0, %95#1, %95#2, %95#3, %95#4, %95#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %95#0, %95#1, %95#2, %95#3, %95#4, %95#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %85 = builtin.unrealized_conversion_cast %84#0, %84#1, %84#2, %84#3, %84#4, %84#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_50 = index.constant 1
      %86 = index.add %84#0, %idx1_50
      %87 = arith.index_cast %84#2 : index to i64
      %inserted_51 = tensor.insert %87 into %84#4[%86] : tensor<?xi64>
      %88 = builtin.unrealized_conversion_cast %86, %84#1, %84#2, %84#3, %inserted_51, %84#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %89:6 = builtin.unrealized_conversion_cast %88 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %89#4[%89#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%89#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %72 = arith.addi %21, %c1 : index
    %73:2 = scf.for %arg6 = %c1 to %72 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %71) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %76 = arith.addi %extracted, %arg7 : i64
      %inserted_47 = tensor.insert %76 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %76, %inserted_47 : i64, tensor<?xi64>
    }
    %74 = arith.index_cast %73#0 : i64 to index
    %75 = builtin.unrealized_conversion_cast %21, %70#1, %74, %70#3, %73#1, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %21, %70#1, %74, %70#3, %73#1, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %55 = builtin.unrealized_conversion_cast %54#0, %54#1, %54#2, %54#3, %54#4, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_40 = index.constant 0
  %idx1_41 = index.constant 1
  %56 = arith.index_cast %21 : index to i64
  %idx1_42 = index.constant 1
  %57 = tensor.empty(%idx1_42) : tensor<?xi64>
  %inserted_43 = tensor.insert %56 into %57[%idx0_40] : tensor<?xi64>
  %58 = tensor.empty() : tensor<0xi64>
  %59 = tensor.empty() : tensor<0xi64>
  %60 = tensor.empty() : tensor<0xi64>
  %61 = index.mul %idx1_41, %21
  %62 = tensor.empty(%54#2) : tensor<?xi64>
  %63 = tensor.empty() : tensor<0xi64>
  %64 = tensor.empty() : tensor<0xi64>
  %65 = tensor.empty(%54#2) : tensor<?xf64>
  %cst_44 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_40 to %54#2 step %idx1_41 {
    %inserted_47 = tensor.insert %cst_44 into %65[%arg0] : tensor<?xf64>
  }
  %from_elements_45 = tensor.from_elements %21, %54#3 : tensor<2xindex>
  %66 = "ta.spTensor_construct"(%from_elements_45, %inserted_43, %54#4, %58, %62, %59, %63, %60, %64, %65) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat_46 = tensor.splat %false[%49] : tensor<?xi1>
  %67 = "ta.AllocWorkspace"(%66) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %68:2 = "it.itree"(%66, %67) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %69:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %70:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %69#5, %arg4 = %69#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %69#4[%arg2] : tensor<?xi64>
      %72 = arith.index_cast %extracted : i64 to index
      %73 = arith.addi %arg2, %c1 : index
      %extracted_47 = tensor.extract %69#4[%73] : tensor<?xi64>
      %74 = arith.index_cast %extracted_47 : i64 to index
      %75 = arith.subi %74, %72 : index
      %extracted_slice = tensor.extract_slice %arg3[%72] [%75] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_48 = tensor.extract_slice %arg4[%72] [%75] [1] : tensor<?xf64> to tensor<?xf64>
      %76 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %c0, %69#4, %extracted_slice, %extracted_slice_48 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %77 = arith.addi %arg2, %c1 : index
      %extracted_49 = tensor.extract %48[%arg2] : tensor<?xi64>
      %78 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %48[%77] : tensor<?xi64>
      %79 = arith.index_cast %extracted_50 : i64 to index
      %80 = scf.for %arg5 = %78 to %79 step %c1 iter_args(%arg6 = %splat_46) -> (tensor<?xi1>) {
        %90 = "ta.SpTensorGetCrd"(%46, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %91 = arith.index_cast %90 : i64 to index
        %inserted_53 = tensor.insert %true into %arg6[%91] : tensor<?xi1>
        scf.yield %inserted_53 : tensor<?xi1>
      }
      %81 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %82 = arith.addi %arg2, %c1 : index
      %extracted_51 = tensor.extract %22[%arg2] : tensor<?xi64>
      %83 = arith.index_cast %extracted_51 : i64 to index
      %extracted_52 = tensor.extract %22[%82] : tensor<?xi64>
      %84 = arith.index_cast %extracted_52 : i64 to index
      %85:2 = scf.for %arg5 = %83 to %84 step %c1 iter_args(%arg6 = %76, %arg7 = %81) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %90 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %91 = arith.index_cast %90 : i64 to index
        %92 = arith.addi %91, %c1 : index
        %extracted_53 = tensor.extract %44[%91] : tensor<?xi64>
        %93 = arith.index_cast %extracted_53 : i64 to index
        %extracted_54 = tensor.extract %44[%92] : tensor<?xi64>
        %94 = arith.index_cast %extracted_54 : i64 to index
        %95:2 = scf.for %arg8 = %93 to %94 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %96 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %97 = arith.index_cast %96 : i64 to index
          %extracted_55 = tensor.extract %80[%97] : tensor<?xi1>
          %98:2 = scf.if %extracted_55 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
            %99 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %100 = arith.index_cast %99 : i64 to index
            %101 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %102 = arith.index_cast %101 : i64 to index
            %103 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %104 = arith.index_cast %103 : i64 to index
            %105 = "ta.TAExtractOp"(%20, %arg5, %arg2, %100) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %106 = "ta.TAExtractOp"(%43, %arg8, %91, %102) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %107 = arith.mulf %105, %106 : f64
            %108 = "ta.WorkspaceAccumulateOp"(%arg10, %104, %104, %107) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
            scf.yield %arg9, %108 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
          } else {
            scf.yield %arg9, %arg10 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
          }
          scf.yield %98#0, %98#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %95#0, %95#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %86 = "ta.SortCrdOp"(%85#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %87 = "ta.SpTensorGetNNZ"(%86) : (!ta.workspace<f64, i64, ?>) -> index
      %88:7 = builtin.unrealized_conversion_cast %85#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %89:3 = scf.for %arg5 = %c0 to %87 step %c1 iter_args(%arg6 = %88#5, %arg7 = %88#6, %arg8 = %86) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) {
        %90 = "ta.SpTensorGetCrd"(%arg8, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %91 = arith.index_cast %90 : i64 to index
        %92 = "ta.WorkspaceReadOp"(%arg8, %arg5, %91) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %inserted_53 = tensor.insert %90 into %arg6[%arg5] : tensor<?xi64>
        %inserted_54 = tensor.insert %92 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %inserted_53, %inserted_54, %arg8 : tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %89#0 into %arg3[%72] [%75] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %89#1 into %arg4[%72] [%75] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %71 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %69#3, %69#4, %70#0, %70#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %71, %arg1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%68#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_18 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_18, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_19 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_19] : tensor<2xindex>
  %alloc_20 = memref.alloc() : memref<13xindex>
  %cast_21 = memref.cast %alloc_20 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %21 = memref.load %alloc_20[%c0] : memref<13xindex>
  %22 = memref.load %alloc_20[%c1] : memref<13xindex>
  %23 = memref.load %alloc_20[%c2] : memref<13xindex>
  %24 = memref.load %alloc_20[%c3] : memref<13xindex>
  %25 = memref.load %alloc_20[%c4] : memref<13xindex>
  %26 = memref.load %alloc_20[%c5] : memref<13xindex>
  %27 = memref.load %alloc_20[%c6] : memref<13xindex>
  %28 = memref.load %alloc_20[%c7] : memref<13xindex>
  %29 = memref.load %alloc_20[%c8] : memref<13xindex>
  %30 = memref.load %alloc_20[%c9] : memref<13xindex>
  %31 = memref.load %alloc_20[%c10] : memref<13xindex>
  %alloc_22 = memref.alloc(%21) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%22) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_38 = memref.alloc(%29) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_38 : memref<?xf64>)
  %cast_39 = memref.cast %alloc_38 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %cast_39, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %32 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %33 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %34 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xf64>
  %from_elements_40 = tensor.from_elements %30, %31 : tensor<2xindex>
  %idx0_41 = index.constant 0
  %idx0_42 = index.constant 0
  %41 = builtin.unrealized_conversion_cast %from_elements_40, %idx0_41, %32, %idx0_42, %36, %37, %40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1 = index.constant 1
  %extracted_43 = tensor.extract %from_elements_40[%idx1] : tensor<2xindex>
  %42 = "it.DenseDomainOp"(%extracted, %20, %41) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx1_44 = index.constant 1
  %extracted_45 = tensor.extract %from_elements_40[%idx1_44] : tensor<2xindex>
  %idx0_46 = index.constant 0
  %idx1_47 = index.constant 1
  %43 = index.add %extracted, %idx1_47
  %44 = tensor.empty(%43) : tensor<?xi64>
  %c0_i64_48 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_48 into %44[%idx0_46] : tensor<?xi64>
  %45 = tensor.empty(%extracted_43) : tensor<?xi64>
  %46 = builtin.unrealized_conversion_cast %idx0_46, %43, %idx0_46, %extracted_43, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %splat = tensor.splat %false[%extracted_45] : tensor<?xi1>
  %47:6 = "it.itree"(%idx0_46, %43, %idx0_46, %extracted_43, %44, %45) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %68 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %69:6 = builtin.unrealized_conversion_cast %68 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %70 = scf.forall (%arg6) in (%extracted) shared_outs(%arg7 = %69#4) -> (tensor<?xi64>) {
      %75 = builtin.unrealized_conversion_cast %arg6, %69#1, %c0, %69#3, %arg7, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %76 = arith.addi %arg6, %c1 : index
      %extracted_64 = tensor.extract %36[%arg6] : tensor<?xi64>
      %77 = arith.index_cast %extracted_64 : i64 to index
      %extracted_65 = tensor.extract %36[%76] : tensor<?xi64>
      %78 = arith.index_cast %extracted_65 : i64 to index
      %79 = scf.for %arg8 = %77 to %78 step %c1 iter_args(%arg9 = %splat) -> (tensor<?xi1>) {
        %extracted_70 = tensor.extract %37[%arg8] : tensor<?xi64>
        %89 = arith.index_cast %extracted_70 : i64 to index
        %inserted_71 = tensor.insert %true into %arg9[%89] : tensor<?xi1>
        scf.yield %inserted_71 : tensor<?xi1>
      }
      %80 = arith.addi %arg6, %c1 : index
      %extracted_66 = tensor.extract %15[%arg6] : tensor<?xi64>
      %81 = arith.index_cast %extracted_66 : i64 to index
      %extracted_67 = tensor.extract %15[%80] : tensor<?xi64>
      %82 = arith.index_cast %extracted_67 : i64 to index
      %83:6 = scf.for %arg8 = %81 to %82 step %c1 iter_args(%arg9 = %arg6, %arg10 = %69#1, %arg11 = %c0, %arg12 = %69#3, %arg13 = %arg7, %arg14 = %69#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_70 = tensor.extract %16[%arg8] : tensor<?xi64>
        %89 = arith.index_cast %extracted_70 : i64 to index
        %90 = arith.addi %89, %c1 : index
        %extracted_71 = tensor.extract %36[%89] : tensor<?xi64>
        %91 = arith.index_cast %extracted_71 : i64 to index
        %extracted_72 = tensor.extract %36[%90] : tensor<?xi64>
        %92 = arith.index_cast %extracted_72 : i64 to index
        %93:6 = scf.for %arg15 = %91 to %92 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %extracted_73 = tensor.extract %37[%arg15] : tensor<?xi64>
          %95 = arith.index_cast %extracted_73 : i64 to index
          %extracted_74 = tensor.extract %79[%95] : tensor<?xi1>
          %96:6 = scf.if %extracted_74 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
            %extracted_75 = tensor.extract %37[%arg15] : tensor<?xi64>
            %98 = arith.index_cast %extracted_75 : i64 to index
            %idx1_76 = index.constant 1
            %99 = index.add %arg16, %idx1_76
            %100 = arith.index_cast %99 : index to i64
            %extracted_77 = tensor.extract %arg21[%98] : tensor<?xi64>
            %101 = arith.cmpi eq, %100, %extracted_77 : i64
            %102:2 = scf.if %101 -> (index, tensor<?xi64>) {
              scf.yield %arg18, %arg21 : index, tensor<?xi64>
            } else {
              %inserted_78 = tensor.insert %100 into %arg21[%98] : tensor<?xi64>
              %104 = index.add %arg18, %idx1_76
              scf.yield %104, %inserted_78 : index, tensor<?xi64>
            }
            %103 = builtin.unrealized_conversion_cast %arg16, %arg17, %102#0, %arg19, %arg20, %102#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
            scf.yield %arg16, %arg17, %102#0, %arg19, %arg20, %102#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
          } else {
            scf.yield %arg16, %arg17, %arg18, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
          }
          %97 = builtin.unrealized_conversion_cast %96#0, %96#1, %96#2, %96#3, %96#4, %96#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %96#0, %96#1, %96#2, %96#3, %96#4, %96#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %94 = builtin.unrealized_conversion_cast %93#0, %93#1, %93#2, %93#3, %93#4, %93#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %93#0, %93#1, %93#2, %93#3, %93#4, %93#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %84 = builtin.unrealized_conversion_cast %83#0, %83#1, %83#2, %83#3, %83#4, %83#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_68 = index.constant 1
      %85 = index.add %83#0, %idx1_68
      %86 = arith.index_cast %83#2 : index to i64
      %inserted_69 = tensor.insert %86 into %83#4[%85] : tensor<?xi64>
      %87 = builtin.unrealized_conversion_cast %85, %83#1, %83#2, %83#3, %inserted_69, %83#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %88:6 = builtin.unrealized_conversion_cast %87 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %88#4[%88#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%88#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %71 = arith.addi %extracted, %c1 : index
    %72:2 = scf.for %arg6 = %c1 to %71 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %70) -> (i64, tensor<?xi64>) {
      %extracted_64 = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %75 = arith.addi %extracted_64, %arg7 : i64
      %inserted_65 = tensor.insert %75 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %75, %inserted_65 : i64, tensor<?xi64>
    }
    %73 = arith.index_cast %72#0 : i64 to index
    %74 = builtin.unrealized_conversion_cast %extracted, %69#1, %73, %69#3, %72#1, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %extracted, %69#1, %73, %69#3, %72#1, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %48 = builtin.unrealized_conversion_cast %47#0, %47#1, %47#2, %47#3, %47#4, %47#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_49 = index.constant 0
  %idx1_50 = index.constant 1
  %49 = arith.index_cast %extracted : index to i64
  %idx1_51 = index.constant 1
  %50 = tensor.empty(%idx1_51) : tensor<?xi64>
  %inserted_52 = tensor.insert %49 into %50[%idx0_49] : tensor<?xi64>
  %51 = tensor.empty() : tensor<0xi64>
  %52 = tensor.empty() : tensor<0xi64>
  %53 = tensor.empty() : tensor<0xi64>
  %54 = index.mul %idx1_50, %extracted
  %55 = tensor.empty(%47#2) : tensor<?xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = tensor.empty(%47#2) : tensor<?xf64>
  %cst_53 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_49 to %47#2 step %idx1_50 {
    %inserted_64 = tensor.insert %cst_53 into %58[%arg0] : tensor<?xf64>
  }
  %from_elements_54 = tensor.from_elements %extracted, %47#3 : tensor<2xindex>
  %idx0_55 = index.constant 0
  %idx0_56 = index.constant 0
  %59 = builtin.unrealized_conversion_cast %from_elements_54, %idx0_55, %inserted_52, %idx0_56, %47#4, %55, %58 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat_57 = tensor.splat %false[%extracted_45] : tensor<?xi1>
  %idx1_58 = index.constant 1
  %extracted_59 = tensor.extract %from_elements_54[%idx1_58] : tensor<2xindex>
  %60 = bufferization.alloc_tensor(%extracted_59) : tensor<?xf64>
  %c1_i32_60 = arith.constant 1 : i32
  %61 = bufferization.alloc_tensor(%extracted_59) : tensor<?xi32>
  %idx0_61 = index.constant 0
  %62 = bufferization.alloc_tensor(%extracted_59) : tensor<?xi64>
  %63 = builtin.unrealized_conversion_cast %60, %c1_i32_60, %61, %idx0_61, %62 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %64:12 = "it.itree"(%from_elements_54, %idx0_55, %inserted_52, %idx0_56, %47#4, %55, %58, %60, %c1_i32_60, %61, %idx0_61, %62) <{operandSegmentSizes = array<i32: 7, 5>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: tensor<?xf64>, %arg8: i32, %arg9: tensor<?xi32>, %arg10: index, %arg11: tensor<?xi64>):
    %68 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %69:7 = builtin.unrealized_conversion_cast %68 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %70:2 = scf.forall (%arg12) in (%extracted) shared_outs(%arg13 = %69#5, %arg14 = %69#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_64 = tensor.extract %69#4[%arg12] : tensor<?xi64>
      %72 = arith.index_cast %extracted_64 : i64 to index
      %73 = arith.addi %arg12, %c1 : index
      %extracted_65 = tensor.extract %69#4[%73] : tensor<?xi64>
      %74 = arith.index_cast %extracted_65 : i64 to index
      %75 = arith.subi %74, %72 : index
      %extracted_slice = tensor.extract_slice %arg13[%72] [%75] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_66 = tensor.extract_slice %arg14[%72] [%75] [1] : tensor<?xf64> to tensor<?xf64>
      %76 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %c0, %69#4, %extracted_slice, %extracted_slice_66 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %77 = arith.addi %arg12, %c1 : index
      %extracted_67 = tensor.extract %36[%arg12] : tensor<?xi64>
      %78 = arith.index_cast %extracted_67 : i64 to index
      %extracted_68 = tensor.extract %36[%77] : tensor<?xi64>
      %79 = arith.index_cast %extracted_68 : i64 to index
      %80 = scf.for %arg15 = %78 to %79 step %c1 iter_args(%arg16 = %splat_57) -> (tensor<?xi1>) {
        %extracted_74 = tensor.extract %37[%arg15] : tensor<?xi64>
        %95 = arith.index_cast %extracted_74 : i64 to index
        %inserted_75 = tensor.insert %true into %arg16[%95] : tensor<?xi1>
        scf.yield %inserted_75 : tensor<?xi1>
      }
      %c1_i32_69 = arith.constant 1 : i32
      %81 = arith.index_cast %arg12 : index to i32
      %82 = arith.addi %81, %c1_i32_69 : i32
      %idx0_70 = index.constant 0
      %83 = builtin.unrealized_conversion_cast %arg7, %82, %arg9, %idx0_70, %arg11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %84 = arith.addi %arg12, %c1 : index
      %extracted_71 = tensor.extract %15[%arg12] : tensor<?xi64>
      %85 = arith.index_cast %extracted_71 : i64 to index
      %extracted_72 = tensor.extract %15[%84] : tensor<?xi64>
      %86 = arith.index_cast %extracted_72 : i64 to index
      %87:12 = scf.for %arg15 = %85 to %86 step %c1 iter_args(%arg16 = %69#0, %arg17 = %69#1, %arg18 = %69#2, %arg19 = %c0, %arg20 = %69#4, %arg21 = %extracted_slice, %arg22 = %extracted_slice_66, %arg23 = %arg7, %arg24 = %82, %arg25 = %arg9, %arg26 = %idx0_70, %arg27 = %arg11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_74 = tensor.extract %16[%arg15] : tensor<?xi64>
        %95 = arith.index_cast %extracted_74 : i64 to index
        %96 = arith.addi %95, %c1 : index
        %extracted_75 = tensor.extract %36[%95] : tensor<?xi64>
        %97 = arith.index_cast %extracted_75 : i64 to index
        %extracted_76 = tensor.extract %36[%96] : tensor<?xi64>
        %98 = arith.index_cast %extracted_76 : i64 to index
        %99:12 = scf.for %arg28 = %97 to %98 step %c1 iter_args(%arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %arg21, %arg35 = %arg22, %arg36 = %arg23, %arg37 = %arg24, %arg38 = %arg25, %arg39 = %arg26, %arg40 = %arg27) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_77 = tensor.extract %37[%arg28] : tensor<?xi64>
          %102 = arith.index_cast %extracted_77 : i64 to index
          %extracted_78 = tensor.extract %80[%102] : tensor<?xi1>
          %103:12 = scf.if %extracted_78 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
            %extracted_79 = tensor.extract %16[%arg15] : tensor<?xi64>
            %106 = arith.index_cast %extracted_79 : i64 to index
            %extracted_80 = tensor.extract %37[%arg28] : tensor<?xi64>
            %107 = arith.index_cast %extracted_80 : i64 to index
            %extracted_81 = tensor.extract %37[%arg28] : tensor<?xi64>
            %108 = arith.index_cast %extracted_81 : i64 to index
            %extracted_82 = tensor.extract %19[%arg15] : tensor<?xf64>
            %extracted_83 = tensor.extract %40[%arg28] : tensor<?xf64>
            %109 = arith.mulf %extracted_82, %extracted_83 : f64
            %extracted_84 = tensor.extract %arg38[%108] : tensor<?xi32>
            %110 = arith.cmpi eq, %extracted_84, %arg37 : i32
            %111:4 = scf.if %110 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
              %extracted_85 = tensor.extract %arg36[%108] : tensor<?xf64>
              %113 = arith.addf %extracted_85, %109 : f64
              %inserted_86 = tensor.insert %113 into %arg36[%108] : tensor<?xf64>
              scf.yield %arg38, %arg39, %arg40, %inserted_86 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
            } else {
              %inserted_85 = tensor.insert %arg37 into %arg38[%108] : tensor<?xi32>
              %113 = arith.index_cast %108 : index to i64
              %inserted_86 = tensor.insert %113 into %arg40[%arg39] : tensor<?xi64>
              %idx1_87 = index.constant 1
              %114 = index.add %arg39, %idx1_87
              %inserted_88 = tensor.insert %109 into %arg36[%108] : tensor<?xf64>
              scf.yield %inserted_85, %114, %inserted_86, %inserted_88 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
            }
            %112 = builtin.unrealized_conversion_cast %111#3, %arg37, %111#0, %111#1, %111#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
            scf.yield %arg29, %arg30, %arg31, %arg32, %arg33, %arg34, %arg35, %111#3, %arg37, %111#0, %111#1, %111#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg29, %arg30, %arg31, %arg32, %arg33, %arg34, %arg35, %arg36, %arg37, %arg38, %arg39, %arg40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
          }
          %104 = builtin.unrealized_conversion_cast %103#0, %103#1, %103#2, %103#3, %103#4, %103#5, %103#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %105 = builtin.unrealized_conversion_cast %103#7, %103#8, %103#9, %103#10, %103#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
          scf.yield %103#0, %103#1, %103#2, %103#3, %103#4, %103#5, %103#6, %103#7, %103#8, %103#9, %103#10, %103#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        }
        %100 = builtin.unrealized_conversion_cast %99#0, %99#1, %99#2, %99#3, %99#4, %99#5, %99#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %101 = builtin.unrealized_conversion_cast %99#7, %99#8, %99#9, %99#10, %99#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %99#0, %99#1, %99#2, %99#3, %99#4, %99#5, %99#6, %99#7, %99#8, %99#9, %99#10, %99#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %88 = builtin.unrealized_conversion_cast %87#0, %87#1, %87#2, %87#3, %87#4, %87#5, %87#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %89 = builtin.unrealized_conversion_cast %87#7, %87#8, %87#9, %87#10, %87#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %idx0_73 = index.constant 0
      %90 = "ta.TensorSortOp"(%87#11, %idx0_73, %87#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %91 = builtin.unrealized_conversion_cast %87#7, %87#8, %87#9, %87#10, %90 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %92:7 = builtin.unrealized_conversion_cast %88 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %93:7 = scf.for %arg15 = %c0 to %87#10 step %c1 iter_args(%arg16 = %92#5, %arg17 = %92#6, %arg18 = %87#7, %arg19 = %87#8, %arg20 = %87#9, %arg21 = %87#10, %arg22 = %90) -> (tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_74 = tensor.extract %arg22[%arg15] : tensor<?xi64>
        %95 = arith.index_cast %extracted_74 : i64 to index
        %extracted_75 = tensor.extract %arg18[%95] : tensor<?xf64>
        %inserted_76 = tensor.insert %extracted_74 into %arg16[%arg15] : tensor<?xi64>
        %inserted_77 = tensor.insert %extracted_75 into %arg17[%arg15] : tensor<?xf64>
        scf.yield %inserted_76, %inserted_77, %arg18, %arg19, %arg20, %arg21, %arg22 : tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %94 = builtin.unrealized_conversion_cast %93#2, %93#3, %93#4, %93#5, %93#6 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %93#0 into %arg13[%72] [%75] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %93#1 into %arg14[%72] [%75] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %71 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %69#3, %69#4, %70#0, %70#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %69#0, %69#1, %69#2, %69#3, %69#4, %70#0, %70#1, %arg7, %arg8, %arg9, %arg10, %arg11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>)
  %65 = builtin.unrealized_conversion_cast %64#0, %64#1, %64#2, %64#3, %64#4, %64#5, %64#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %66 = builtin.unrealized_conversion_cast %64#7, %64#8, %64#9, %64#10, %64#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %67 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_62 = index.constant 0
  %inserted_63 = tensor.insert %idx-1 into %67[%idx0_62] : tensor<1xindex>
  "ta.print"(%64#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_63) : (tensor<1xindex>) -> ()
  "ta.print"(%64#4) : (tensor<?xi64>) -> ()
  "ta.print"(%64#5) : (tensor<?xi64>) -> ()
  "ta.print"(%64#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_18 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_18, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_19 = index.constant 0
  %alloc_20 = memref.alloc() : memref<13xindex>
  %cast_21 = memref.cast %alloc_20 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %21 = memref.load %alloc_20[%c0] : memref<13xindex>
  %22 = memref.load %alloc_20[%c1] : memref<13xindex>
  %23 = memref.load %alloc_20[%c2] : memref<13xindex>
  %24 = memref.load %alloc_20[%c3] : memref<13xindex>
  %25 = memref.load %alloc_20[%c4] : memref<13xindex>
  %26 = memref.load %alloc_20[%c5] : memref<13xindex>
  %27 = memref.load %alloc_20[%c6] : memref<13xindex>
  %28 = memref.load %alloc_20[%c7] : memref<13xindex>
  %29 = memref.load %alloc_20[%c8] : memref<13xindex>
  %30 = memref.load %alloc_20[%c9] : memref<13xindex>
  %31 = memref.load %alloc_20[%c10] : memref<13xindex>
  %alloc_22 = memref.alloc(%21) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%22) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_38 = memref.alloc(%29) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_38 : memref<?xf64>)
  %cast_39 = memref.cast %alloc_38 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %cast_39, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %32 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %33 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %34 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xf64>
  %from_elements_40 = tensor.from_elements %30, %31 : tensor<2xindex>
  %idx0_41 = index.constant 0
  %idx0_42 = index.constant 0
  %41 = builtin.unrealized_conversion_cast %from_elements_40, %idx0_41, %32, %idx0_42, %36, %37, %40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1 = index.constant 1
  %42 = "it.DenseDomainOp"(%9, %20, %41) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx1_43 = index.constant 1
  %idx0_44 = index.constant 0
  %idx1_45 = index.constant 1
  %43 = index.add %9, %idx1_45
  %44 = tensor.empty(%43) : tensor<?xi64>
  %c0_i64_46 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_46 into %44[%idx0_44] : tensor<?xi64>
  %45 = tensor.empty(%31) : tensor<?xi64>
  %46 = builtin.unrealized_conversion_cast %idx0_44, %43, %idx0_44, %31, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %splat = tensor.splat %false[%31] : tensor<?xi1>
  %47 = builtin.unrealized_conversion_cast %idx0_44, %43, %idx0_44, %31, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %48 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %44) -> (tensor<?xi64>) {
    %75 = builtin.unrealized_conversion_cast %arg0, %43, %c0, %31, %arg1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %76 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %36[%arg0] : tensor<?xi64>
    %77 = arith.index_cast %extracted : i64 to index
    %extracted_61 = tensor.extract %36[%76] : tensor<?xi64>
    %78 = arith.index_cast %extracted_61 : i64 to index
    %79 = scf.for %arg2 = %77 to %78 step %c1 iter_args(%arg3 = %splat) -> (tensor<?xi1>) {
      %extracted_66 = tensor.extract %37[%arg2] : tensor<?xi64>
      %88 = arith.index_cast %extracted_66 : i64 to index
      %inserted_67 = tensor.insert %true into %arg3[%88] : tensor<?xi1>
      scf.yield %inserted_67 : tensor<?xi1>
    }
    %80 = arith.addi %arg0, %c1 : index
    %extracted_62 = tensor.extract %15[%arg0] : tensor<?xi64>
    %81 = arith.index_cast %extracted_62 : i64 to index
    %extracted_63 = tensor.extract %15[%80] : tensor<?xi64>
    %82 = arith.index_cast %extracted_63 : i64 to index
    %83:6 = scf.for %arg2 = %81 to %82 step %c1 iter_args(%arg3 = %arg0, %arg4 = %43, %arg5 = %c0, %arg6 = %31, %arg7 = %arg1, %arg8 = %45) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %extracted_66 = tensor.extract %16[%arg2] : tensor<?xi64>
      %88 = arith.index_cast %extracted_66 : i64 to index
      %89 = arith.addi %88, %c1 : index
      %extracted_67 = tensor.extract %36[%88] : tensor<?xi64>
      %90 = arith.index_cast %extracted_67 : i64 to index
      %extracted_68 = tensor.extract %36[%89] : tensor<?xi64>
      %91 = arith.index_cast %extracted_68 : i64 to index
      %92:6 = scf.for %arg9 = %90 to %91 step %c1 iter_args(%arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6, %arg14 = %arg7, %arg15 = %arg8) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_69 = tensor.extract %37[%arg9] : tensor<?xi64>
        %94 = arith.index_cast %extracted_69 : i64 to index
        %extracted_70 = tensor.extract %79[%94] : tensor<?xi1>
        %95:6 = scf.if %extracted_70 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %extracted_71 = tensor.extract %37[%arg9] : tensor<?xi64>
          %97 = arith.index_cast %extracted_71 : i64 to index
          %idx1_72 = index.constant 1
          %98 = index.add %arg10, %idx1_72
          %99 = arith.index_cast %98 : index to i64
          %extracted_73 = tensor.extract %arg15[%97] : tensor<?xi64>
          %100 = arith.cmpi eq, %99, %extracted_73 : i64
          %101:2 = scf.if %100 -> (index, tensor<?xi64>) {
            scf.yield %arg12, %arg15 : index, tensor<?xi64>
          } else {
            %inserted_74 = tensor.insert %99 into %arg15[%97] : tensor<?xi64>
            %103 = index.add %arg12, %idx1_72
            scf.yield %103, %inserted_74 : index, tensor<?xi64>
          }
          %102 = builtin.unrealized_conversion_cast %arg10, %arg11, %101#0, %arg13, %arg14, %101#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg10, %arg11, %101#0, %arg13, %arg14, %101#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        } else {
          scf.yield %arg10, %arg11, %arg12, %arg13, %arg14, %arg15 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %96 = builtin.unrealized_conversion_cast %95#0, %95#1, %95#2, %95#3, %95#4, %95#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %95#0, %95#1, %95#2, %95#3, %95#4, %95#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %93 = builtin.unrealized_conversion_cast %92#0, %92#1, %92#2, %92#3, %92#4, %92#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %92#0, %92#1, %92#2, %92#3, %92#4, %92#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %84 = builtin.unrealized_conversion_cast %83#0, %83#1, %83#2, %83#3, %83#4, %83#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx1_64 = index.constant 1
    %85 = index.add %83#0, %idx1_64
    %86 = arith.index_cast %83#2 : index to i64
    %inserted_65 = tensor.insert %86 into %83#4[%85] : tensor<?xi64>
    %87 = builtin.unrealized_conversion_cast %85, %83#1, %83#2, %83#3, %inserted_65, %83#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %extracted_slice = tensor.extract_slice %inserted_65[%85] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%85] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %49 = arith.addi %9, %c1 : index
  %50:2 = scf.for %arg0 = %c1 to %49 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %48) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %75 = arith.addi %extracted, %arg1 : i64
    %inserted_61 = tensor.insert %75 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %75, %inserted_61 : i64, tensor<?xi64>
  }
  %51 = arith.index_cast %50#0 : i64 to index
  %52 = builtin.unrealized_conversion_cast %9, %43, %51, %31, %50#1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %53 = builtin.unrealized_conversion_cast %9, %43, %51, %31, %50#1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_47 = index.constant 0
  %idx1_48 = index.constant 1
  %54 = arith.index_cast %9 : index to i64
  %idx1_49 = index.constant 1
  %55 = tensor.empty(%idx1_49) : tensor<?xi64>
  %inserted_50 = tensor.insert %54 into %55[%idx0_47] : tensor<?xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = tensor.empty() : tensor<0xi64>
  %59 = index.mul %idx1_48, %9
  %60 = tensor.empty(%51) : tensor<?xi64>
  %61 = tensor.empty() : tensor<0xi64>
  %62 = tensor.empty() : tensor<0xi64>
  %63 = tensor.empty(%51) : tensor<?xf64>
  %cst_51 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_47 to %51 step %idx1_48 {
    %inserted_61 = tensor.insert %cst_51 into %63[%arg0] : tensor<?xf64>
  }
  %from_elements_52 = tensor.from_elements %9, %31 : tensor<2xindex>
  %idx0_53 = index.constant 0
  %idx0_54 = index.constant 0
  %64 = builtin.unrealized_conversion_cast %from_elements_52, %idx0_53, %inserted_50, %idx0_54, %50#1, %60, %63 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat_55 = tensor.splat %false[%31] : tensor<?xi1>
  %idx1_56 = index.constant 1
  %65 = bufferization.alloc_tensor(%31) : tensor<?xf64>
  %c1_i32_57 = arith.constant 1 : i32
  %66 = bufferization.alloc_tensor(%31) : tensor<?xi32>
  %idx0_58 = index.constant 0
  %67 = bufferization.alloc_tensor(%31) : tensor<?xi64>
  %68 = builtin.unrealized_conversion_cast %65, %c1_i32_57, %66, %idx0_58, %67 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %69 = builtin.unrealized_conversion_cast %from_elements_52, %idx0_53, %inserted_50, %idx0_54, %50#1, %60, %63 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %70:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %60, %arg2 = %63) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %50#1[%arg0] : tensor<?xi64>
    %75 = arith.index_cast %extracted : i64 to index
    %76 = arith.addi %arg0, %c1 : index
    %extracted_61 = tensor.extract %50#1[%76] : tensor<?xi64>
    %77 = arith.index_cast %extracted_61 : i64 to index
    %78 = arith.subi %77, %75 : index
    %extracted_slice = tensor.extract_slice %arg1[%75] [%78] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_62 = tensor.extract_slice %arg2[%75] [%78] [1] : tensor<?xf64> to tensor<?xf64>
    %79 = builtin.unrealized_conversion_cast %from_elements_52, %idx0_53, %inserted_50, %c0, %50#1, %extracted_slice, %extracted_slice_62 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %80 = arith.addi %arg0, %c1 : index
    %extracted_63 = tensor.extract %36[%arg0] : tensor<?xi64>
    %81 = arith.index_cast %extracted_63 : i64 to index
    %extracted_64 = tensor.extract %36[%80] : tensor<?xi64>
    %82 = arith.index_cast %extracted_64 : i64 to index
    %83 = scf.for %arg3 = %81 to %82 step %c1 iter_args(%arg4 = %splat_55) -> (tensor<?xi1>) {
      %extracted_70 = tensor.extract %37[%arg3] : tensor<?xi64>
      %97 = arith.index_cast %extracted_70 : i64 to index
      %inserted_71 = tensor.insert %true into %arg4[%97] : tensor<?xi1>
      scf.yield %inserted_71 : tensor<?xi1>
    }
    %c1_i32_65 = arith.constant 1 : i32
    %84 = arith.index_cast %arg0 : index to i32
    %85 = arith.addi %84, %c1_i32_65 : i32
    %idx0_66 = index.constant 0
    %86 = builtin.unrealized_conversion_cast %65, %85, %66, %idx0_66, %67 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %87 = arith.addi %arg0, %c1 : index
    %extracted_67 = tensor.extract %15[%arg0] : tensor<?xi64>
    %88 = arith.index_cast %extracted_67 : i64 to index
    %extracted_68 = tensor.extract %15[%87] : tensor<?xi64>
    %89 = arith.index_cast %extracted_68 : i64 to index
    %90:12 = scf.for %arg3 = %88 to %89 step %c1 iter_args(%arg4 = %from_elements_52, %arg5 = %idx0_53, %arg6 = %inserted_50, %arg7 = %c0, %arg8 = %50#1, %arg9 = %extracted_slice, %arg10 = %extracted_slice_62, %arg11 = %65, %arg12 = %85, %arg13 = %66, %arg14 = %idx0_66, %arg15 = %67) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_70 = tensor.extract %16[%arg3] : tensor<?xi64>
      %97 = arith.index_cast %extracted_70 : i64 to index
      %98 = arith.addi %97, %c1 : index
      %extracted_71 = tensor.extract %36[%97] : tensor<?xi64>
      %99 = arith.index_cast %extracted_71 : i64 to index
      %extracted_72 = tensor.extract %36[%98] : tensor<?xi64>
      %100 = arith.index_cast %extracted_72 : i64 to index
      %101:12 = scf.for %arg16 = %99 to %100 step %c1 iter_args(%arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %arg9, %arg23 = %arg10, %arg24 = %arg11, %arg25 = %arg12, %arg26 = %arg13, %arg27 = %arg14, %arg28 = %arg15) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_73 = tensor.extract %37[%arg16] : tensor<?xi64>
        %104 = arith.index_cast %extracted_73 : i64 to index
        %extracted_74 = tensor.extract %83[%104] : tensor<?xi1>
        %105:12 = scf.if %extracted_74 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_75 = tensor.extract %16[%arg3] : tensor<?xi64>
          %108 = arith.index_cast %extracted_75 : i64 to index
          %extracted_76 = tensor.extract %37[%arg16] : tensor<?xi64>
          %109 = arith.index_cast %extracted_76 : i64 to index
          %extracted_77 = tensor.extract %37[%arg16] : tensor<?xi64>
          %110 = arith.index_cast %extracted_77 : i64 to index
          %extracted_78 = tensor.extract %19[%arg3] : tensor<?xf64>
          %extracted_79 = tensor.extract %40[%arg16] : tensor<?xf64>
          %111 = arith.mulf %extracted_78, %extracted_79 : f64
          %extracted_80 = tensor.extract %arg26[%110] : tensor<?xi32>
          %112 = arith.cmpi eq, %extracted_80, %arg25 : i32
          %113:4 = scf.if %112 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_81 = tensor.extract %arg24[%110] : tensor<?xf64>
            %115 = arith.addf %extracted_81, %111 : f64
            %inserted_82 = tensor.insert %115 into %arg24[%110] : tensor<?xf64>
            scf.yield %arg26, %arg27, %arg28, %inserted_82 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_81 = tensor.insert %arg25 into %arg26[%110] : tensor<?xi32>
            %115 = arith.index_cast %110 : index to i64
            %inserted_82 = tensor.insert %115 into %arg28[%arg27] : tensor<?xi64>
            %idx1_83 = index.constant 1
            %116 = index.add %arg27, %idx1_83
            %inserted_84 = tensor.insert %111 into %arg24[%110] : tensor<?xf64>
            scf.yield %inserted_81, %116, %inserted_82, %inserted_84 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          %114 = builtin.unrealized_conversion_cast %113#3, %arg25, %113#0, %113#1, %113#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
          scf.yield %arg17, %arg18, %arg19, %arg20, %arg21, %arg22, %arg23, %113#3, %arg25, %113#0, %113#1, %113#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        } else {
          scf.yield %arg17, %arg18, %arg19, %arg20, %arg21, %arg22, %arg23, %arg24, %arg25, %arg26, %arg27, %arg28 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        }
        %106 = builtin.unrealized_conversion_cast %105#0, %105#1, %105#2, %105#3, %105#4, %105#5, %105#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %107 = builtin.unrealized_conversion_cast %105#7, %105#8, %105#9, %105#10, %105#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %105#0, %105#1, %105#2, %105#3, %105#4, %105#5, %105#6, %105#7, %105#8, %105#9, %105#10, %105#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %102 = builtin.unrealized_conversion_cast %101#0, %101#1, %101#2, %101#3, %101#4, %101#5, %101#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %103 = builtin.unrealized_conversion_cast %101#7, %101#8, %101#9, %101#10, %101#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.yield %101#0, %101#1, %101#2, %101#3, %101#4, %101#5, %101#6, %101#7, %101#8, %101#9, %101#10, %101#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %91 = builtin.unrealized_conversion_cast %90#0, %90#1, %90#2, %90#3, %90#4, %90#5, %90#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %92 = builtin.unrealized_conversion_cast %90#7, %90#8, %90#9, %90#10, %90#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %idx0_69 = index.constant 0
    %93 = "ta.TensorSortOp"(%90#11, %idx0_69, %90#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %94 = builtin.unrealized_conversion_cast %90#7, %90#8, %90#9, %90#10, %93 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %95:7 = scf.for %arg3 = %c0 to %90#10 step %c1 iter_args(%arg4 = %90#5, %arg5 = %90#6, %arg6 = %90#7, %arg7 = %90#8, %arg8 = %90#9, %arg9 = %90#10, %arg10 = %93) -> (tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_70 = tensor.extract %arg10[%arg3] : tensor<?xi64>
      %97 = arith.index_cast %extracted_70 : i64 to index
      %extracted_71 = tensor.extract %arg6[%97] : tensor<?xf64>
      %inserted_72 = tensor.insert %extracted_70 into %arg4[%arg3] : tensor<?xi64>
      %inserted_73 = tensor.insert %extracted_71 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_72, %inserted_73, %arg6, %arg7, %arg8, %arg9, %arg10 : tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %96 = builtin.unrealized_conversion_cast %95#2, %95#3, %95#4, %95#5, %95#6 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %95#0 into %arg1[%75] [%78] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %95#1 into %arg2[%75] [%78] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %71 = builtin.unrealized_conversion_cast %from_elements_52, %idx0_53, %inserted_50, %idx0_54, %50#1, %70#0, %70#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %72 = builtin.unrealized_conversion_cast %from_elements_52, %idx0_53, %inserted_50, %idx0_54, %50#1, %70#0, %70#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %73 = builtin.unrealized_conversion_cast %65, %c1_i32_57, %66, %idx0_58, %67 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %74 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_59 = index.constant 0
  %inserted_60 = tensor.insert %idx-1 into %74[%idx0_59] : tensor<1xindex>
  "ta.print"(%inserted_50) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_60) : (tensor<1xindex>) -> ()
  "ta.print"(%50#1) : (tensor<?xi64>) -> ()
  "ta.print"(%70#0) : (tensor<?xi64>) -> ()
  "ta.print"(%70#1) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %27 = tensor.empty(%26) : tensor<?xi64>
  %28 = tensor.empty(%22) : tensor<?xi64>
  %splat = tensor.splat %false[%22] : tensor<?xi1>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %42 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %23[%arg0] : tensor<?xi64>
    %43 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %23[%42] : tensor<?xi64>
    %44 = arith.index_cast %extracted_41 : i64 to index
    %45 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %splat) -> (tensor<?xi1>) {
      %extracted_45 = tensor.extract %24[%arg2] : tensor<?xi64>
      %52 = arith.index_cast %extracted_45 : i64 to index
      %inserted_46 = tensor.insert %true into %arg3[%52] : tensor<?xi1>
      scf.yield %inserted_46 : tensor<?xi1>
    }
    %46 = arith.addi %arg0, %c1 : index
    %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
    %47 = arith.index_cast %extracted_42 : i64 to index
    %extracted_43 = tensor.extract %10[%46] : tensor<?xi64>
    %48 = arith.index_cast %extracted_43 : i64 to index
    %49:2 = scf.for %arg2 = %47 to %48 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
      %extracted_45 = tensor.extract %11[%arg2] : tensor<?xi64>
      %52 = arith.index_cast %extracted_45 : i64 to index
      %53 = arith.addi %52, %c1 : index
      %extracted_46 = tensor.extract %23[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %23[%53] : tensor<?xi64>
      %55 = arith.index_cast %extracted_47 : i64 to index
      %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_48 = tensor.extract %24[%arg5] : tensor<?xi64>
        %57 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %45[%57] : tensor<?xi1>
        %58:2 = scf.if %extracted_49 -> (index, tensor<?xi64>) {
          %extracted_50 = tensor.extract %24[%arg5] : tensor<?xi64>
          %59 = arith.index_cast %extracted_50 : i64 to index
          %60 = index.add %arg0, %idx1
          %61 = arith.index_cast %60 : index to i64
          %extracted_51 = tensor.extract %arg7[%59] : tensor<?xi64>
          %62 = arith.cmpi eq, %61, %extracted_51 : i64
          %63:2 = scf.if %62 -> (index, tensor<?xi64>) {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          } else {
            %inserted_52 = tensor.insert %61 into %arg7[%59] : tensor<?xi64>
            %64 = index.add %arg6, %idx1
            scf.yield %64, %inserted_52 : index, tensor<?xi64>
          }
          scf.yield %63#0, %63#1 : index, tensor<?xi64>
        } else {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        }
        scf.yield %58#0, %58#1 : index, tensor<?xi64>
      }
      scf.yield %56#0, %56#1 : index, tensor<?xi64>
    }
    %50 = index.add %arg0, %idx1
    %51 = arith.index_cast %49#0 : index to i64
    %inserted_44 = tensor.insert %51 into %arg1[%50] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted_44[%50] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%50] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %42 = arith.addi %extracted, %arg1 : i64
    %inserted_41 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %42, %inserted_41 : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = arith.index_cast %9 : index to i64
  %34 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xi64>
  %36 = tensor.empty(%32) : tensor<?xf64>
  %splat_39 = tensor.splat %false[%22] : tensor<?xi1>
  %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted : i64 to index
    %43 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %31#1[%43] : tensor<?xi64>
    %44 = arith.index_cast %extracted_41 : i64 to index
    %45 = arith.subi %44, %42 : index
    %extracted_slice = tensor.extract_slice %arg1[%42] [%45] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_42 = tensor.extract_slice %arg2[%42] [%45] [1] : tensor<?xf64> to tensor<?xf64>
    %46 = arith.addi %arg0, %c1 : index
    %extracted_43 = tensor.extract %23[%arg0] : tensor<?xi64>
    %47 = arith.index_cast %extracted_43 : i64 to index
    %extracted_44 = tensor.extract %23[%46] : tensor<?xi64>
    %48 = arith.index_cast %extracted_44 : i64 to index
    %49 = scf.for %arg3 = %47 to %48 step %c1 iter_args(%arg4 = %splat_39) -> (tensor<?xi1>) {
      %extracted_47 = tensor.extract %24[%arg3] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %inserted_48 = tensor.insert %true into %arg4[%58] : tensor<?xi1>
      scf.yield %inserted_48 : tensor<?xi1>
    }
    %50 = arith.index_cast %arg0 : index to i32
    %51 = arith.addi %50, %c1_i32 : i32
    %52 = arith.addi %arg0, %c1 : index
    %extracted_45 = tensor.extract %10[%arg0] : tensor<?xi64>
    %53 = arith.index_cast %extracted_45 : i64 to index
    %extracted_46 = tensor.extract %10[%52] : tensor<?xi64>
    %54 = arith.index_cast %extracted_46 : i64 to index
    %55:4 = scf.for %arg3 = %53 to %54 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_47 = tensor.extract %11[%arg3] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %59 = arith.addi %58, %c1 : index
      %extracted_48 = tensor.extract %23[%58] : tensor<?xi64>
      %60 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %23[%59] : tensor<?xi64>
      %61 = arith.index_cast %extracted_49 : i64 to index
      %62:4 = scf.for %arg8 = %60 to %61 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_50 = tensor.extract %24[%arg8] : tensor<?xi64>
        %63 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %49[%63] : tensor<?xi1>
        %64:4 = scf.if %extracted_51 -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_52 = tensor.extract %24[%arg8] : tensor<?xi64>
          %65 = arith.index_cast %extracted_52 : i64 to index
          %extracted_53 = tensor.extract %12[%arg3] : tensor<?xf64>
          %extracted_54 = tensor.extract %25[%arg8] : tensor<?xf64>
          %66 = arith.mulf %extracted_53, %extracted_54 : f64
          %extracted_55 = tensor.extract %arg10[%65] : tensor<?xi32>
          %67 = arith.cmpi eq, %extracted_55, %51 : i32
          %68:4 = scf.if %67 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_56 = tensor.extract %arg9[%65] : tensor<?xf64>
            %69 = arith.addf %extracted_56, %66 : f64
            %inserted_57 = tensor.insert %69 into %arg9[%65] : tensor<?xf64>
            scf.yield %arg10, %arg11, %arg12, %inserted_57 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_56 = tensor.insert %51 into %arg10[%65] : tensor<?xi32>
            %inserted_57 = tensor.insert %extracted_52 into %arg12[%arg11] : tensor<?xi64>
            %69 = index.add %arg11, %idx1
            %inserted_58 = tensor.insert %66 into %arg9[%65] : tensor<?xf64>
            scf.yield %inserted_56, %69, %inserted_57, %inserted_58 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %68#3, %68#0, %68#1, %68#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        } else {
          scf.yield %arg9, %arg10, %arg11, %arg12 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %64#0, %64#1, %64#2, %64#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %62#0, %62#1, %62#2, %62#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %56 = "ta.TensorSortOp"(%55#3, %idx0, %55#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %57:2 = scf.for %arg3 = %c0 to %55#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_47 = tensor.extract %56[%arg3] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %extracted_48 = tensor.extract %55#0[%58] : tensor<?xf64>
      %inserted_49 = tensor.insert %extracted_47 into %arg4[%arg3] : tensor<?xi64>
      %inserted_50 = tensor.insert %extracted_48 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_49, %inserted_50 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %57#0 into %arg1[%42] [%45] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %57#1 into %arg2[%42] [%45] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %41 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_40 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_40) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%40#0) : (tensor<?xi64>) -> ()
  "ta.print"(%40#1) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %27 = tensor.empty(%26) : tensor<?xi64>
  %28 = tensor.empty(%22) : tensor<?xi64>
  %splat = tensor.splat %false[%22] : tensor<?xi1>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %42 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %23[%arg0] : tensor<?xi64>
    %43 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %23[%42] : tensor<?xi64>
    %44 = arith.index_cast %extracted_41 : i64 to index
    %45 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %splat) -> (tensor<?xi1>) {
      %extracted_45 = tensor.extract %24[%arg2] : tensor<?xi64>
      %52 = arith.index_cast %extracted_45 : i64 to index
      %inserted_46 = tensor.insert %true into %arg3[%52] : tensor<?xi1>
      scf.yield %inserted_46 : tensor<?xi1>
    }
    %46 = arith.addi %arg0, %c1 : index
    %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
    %47 = arith.index_cast %extracted_42 : i64 to index
    %extracted_43 = tensor.extract %10[%46] : tensor<?xi64>
    %48 = arith.index_cast %extracted_43 : i64 to index
    %49:2 = scf.for %arg2 = %47 to %48 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
      %extracted_45 = tensor.extract %11[%arg2] : tensor<?xi64>
      %52 = arith.index_cast %extracted_45 : i64 to index
      %53 = arith.addi %52, %c1 : index
      %extracted_46 = tensor.extract %23[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %23[%53] : tensor<?xi64>
      %55 = arith.index_cast %extracted_47 : i64 to index
      %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_48 = tensor.extract %24[%arg5] : tensor<?xi64>
        %57 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %45[%57] : tensor<?xi1>
        %58:2 = scf.if %extracted_49 -> (index, tensor<?xi64>) {
          %extracted_50 = tensor.extract %24[%arg5] : tensor<?xi64>
          %59 = arith.index_cast %extracted_50 : i64 to index
          %60 = index.add %arg0, %idx1
          %61 = arith.index_cast %60 : index to i64
          %extracted_51 = tensor.extract %arg7[%59] : tensor<?xi64>
          %62 = arith.cmpi eq, %61, %extracted_51 : i64
          %63:2 = scf.if %62 -> (index, tensor<?xi64>) {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          } else {
            %inserted_52 = tensor.insert %61 into %arg7[%59] : tensor<?xi64>
            %64 = index.add %arg6, %idx1
            scf.yield %64, %inserted_52 : index, tensor<?xi64>
          }
          scf.yield %63#0, %63#1 : index, tensor<?xi64>
        } else {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        }
        scf.yield %58#0, %58#1 : index, tensor<?xi64>
      }
      scf.yield %56#0, %56#1 : index, tensor<?xi64>
    }
    %50 = index.add %arg0, %idx1
    %51 = arith.index_cast %49#0 : index to i64
    %inserted_44 = tensor.insert %51 into %arg1[%50] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted_44[%50] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%50] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %42 = arith.addi %extracted, %arg1 : i64
    %inserted_41 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %42, %inserted_41 : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = arith.index_cast %9 : index to i64
  %34 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xi64>
  %36 = tensor.empty(%32) : tensor<?xf64>
  %splat_39 = tensor.splat %false[%22] : tensor<?xi1>
  %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted : i64 to index
    %43 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %31#1[%43] : tensor<?xi64>
    %44 = arith.index_cast %extracted_41 : i64 to index
    %45 = arith.subi %44, %42 : index
    %extracted_slice = tensor.extract_slice %arg1[%42] [%45] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_42 = tensor.extract_slice %arg2[%42] [%45] [1] : tensor<?xf64> to tensor<?xf64>
    %46 = arith.addi %arg0, %c1 : index
    %extracted_43 = tensor.extract %23[%arg0] : tensor<?xi64>
    %47 = arith.index_cast %extracted_43 : i64 to index
    %extracted_44 = tensor.extract %23[%46] : tensor<?xi64>
    %48 = arith.index_cast %extracted_44 : i64 to index
    %49 = scf.for %arg3 = %47 to %48 step %c1 iter_args(%arg4 = %splat_39) -> (tensor<?xi1>) {
      %extracted_47 = tensor.extract %24[%arg3] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %inserted_48 = tensor.insert %true into %arg4[%58] : tensor<?xi1>
      scf.yield %inserted_48 : tensor<?xi1>
    }
    %50 = arith.index_cast %arg0 : index to i32
    %51 = arith.addi %50, %c1_i32 : i32
    %52 = arith.addi %arg0, %c1 : index
    %extracted_45 = tensor.extract %10[%arg0] : tensor<?xi64>
    %53 = arith.index_cast %extracted_45 : i64 to index
    %extracted_46 = tensor.extract %10[%52] : tensor<?xi64>
    %54 = arith.index_cast %extracted_46 : i64 to index
    %55:4 = scf.for %arg3 = %53 to %54 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_47 = tensor.extract %11[%arg3] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %59 = arith.addi %58, %c1 : index
      %extracted_48 = tensor.extract %23[%58] : tensor<?xi64>
      %60 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %23[%59] : tensor<?xi64>
      %61 = arith.index_cast %extracted_49 : i64 to index
      %62:4 = scf.for %arg8 = %60 to %61 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_50 = tensor.extract %24[%arg8] : tensor<?xi64>
        %63 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %49[%63] : tensor<?xi1>
        %64:4 = scf.if %extracted_51 -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_52 = tensor.extract %24[%arg8] : tensor<?xi64>
          %65 = arith.index_cast %extracted_52 : i64 to index
          %extracted_53 = tensor.extract %12[%arg3] : tensor<?xf64>
          %extracted_54 = tensor.extract %25[%arg8] : tensor<?xf64>
          %66 = arith.mulf %extracted_53, %extracted_54 : f64
          %extracted_55 = tensor.extract %arg10[%65] : tensor<?xi32>
          %67 = arith.cmpi eq, %extracted_55, %51 : i32
          %68:4 = scf.if %67 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_56 = tensor.extract %arg9[%65] : tensor<?xf64>
            %69 = arith.addf %extracted_56, %66 : f64
            %inserted_57 = tensor.insert %69 into %arg9[%65] : tensor<?xf64>
            scf.yield %arg10, %arg11, %arg12, %inserted_57 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_56 = tensor.insert %51 into %arg10[%65] : tensor<?xi32>
            %inserted_57 = tensor.insert %extracted_52 into %arg12[%arg11] : tensor<?xi64>
            %69 = index.add %arg11, %idx1
            %inserted_58 = tensor.insert %66 into %arg9[%65] : tensor<?xf64>
            scf.yield %inserted_56, %69, %inserted_57, %inserted_58 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %68#3, %68#0, %68#1, %68#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        } else {
          scf.yield %arg9, %arg10, %arg11, %arg12 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %64#0, %64#1, %64#2, %64#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %62#0, %62#1, %62#2, %62#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %56 = "ta.TensorSortOp"(%55#3, %idx0, %55#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %57:2 = scf.for %arg3 = %c0 to %55#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_47 = tensor.extract %56[%arg3] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %extracted_48 = tensor.extract %55#0[%58] : tensor<?xf64>
      %inserted_49 = tensor.insert %extracted_47 into %arg4[%arg3] : tensor<?xi64>
      %inserted_50 = tensor.insert %extracted_48 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_49, %inserted_50 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %57#0 into %arg1[%42] [%45] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %57#1 into %arg2[%42] [%45] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %41 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_40 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_40) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%40#0) : (tensor<?xi64>) -> ()
  "ta.print"(%40#1) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %27 = tensor.empty(%26) : tensor<?xi64>
  %28 = tensor.empty(%22) : tensor<?xi64>
  %splat = tensor.splat %false[%22] : tensor<?xi1>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %42 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %23[%arg0] : tensor<?xi64>
    %43 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %23[%42] : tensor<?xi64>
    %44 = arith.index_cast %extracted_41 : i64 to index
    %45 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %splat) -> (tensor<?xi1>) {
      %extracted_45 = tensor.extract %24[%arg2] : tensor<?xi64>
      %52 = arith.index_cast %extracted_45 : i64 to index
      %inserted_46 = tensor.insert %true into %arg3[%52] : tensor<?xi1>
      scf.yield %inserted_46 : tensor<?xi1>
    }
    %46 = arith.addi %arg0, %c1 : index
    %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
    %47 = arith.index_cast %extracted_42 : i64 to index
    %extracted_43 = tensor.extract %10[%46] : tensor<?xi64>
    %48 = arith.index_cast %extracted_43 : i64 to index
    %49:2 = scf.for %arg2 = %47 to %48 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
      %extracted_45 = tensor.extract %11[%arg2] : tensor<?xi64>
      %52 = arith.index_cast %extracted_45 : i64 to index
      %53 = arith.addi %52, %c1 : index
      %extracted_46 = tensor.extract %23[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %23[%53] : tensor<?xi64>
      %55 = arith.index_cast %extracted_47 : i64 to index
      %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_48 = tensor.extract %24[%arg5] : tensor<?xi64>
        %57 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %45[%57] : tensor<?xi1>
        %58:2 = scf.if %extracted_49 -> (index, tensor<?xi64>) {
          %extracted_50 = tensor.extract %24[%arg5] : tensor<?xi64>
          %59 = arith.index_cast %extracted_50 : i64 to index
          %60 = index.add %arg0, %idx1
          %61 = arith.index_cast %60 : index to i64
          %extracted_51 = tensor.extract %arg7[%59] : tensor<?xi64>
          %62 = arith.cmpi eq, %61, %extracted_51 : i64
          %63:2 = scf.if %62 -> (index, tensor<?xi64>) {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          } else {
            %inserted_52 = tensor.insert %61 into %arg7[%59] : tensor<?xi64>
            %64 = index.add %arg6, %idx1
            scf.yield %64, %inserted_52 : index, tensor<?xi64>
          }
          scf.yield %63#0, %63#1 : index, tensor<?xi64>
        } else {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        }
        scf.yield %58#0, %58#1 : index, tensor<?xi64>
      }
      scf.yield %56#0, %56#1 : index, tensor<?xi64>
    }
    %50 = index.add %arg0, %idx1
    %51 = arith.index_cast %49#0 : index to i64
    %inserted_44 = tensor.insert %51 into %arg1[%50] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted_44[%50] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%50] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %42 = arith.addi %extracted, %arg1 : i64
    %inserted_41 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %42, %inserted_41 : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = arith.index_cast %9 : index to i64
  %34 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %35 = tensor.empty(%32) : tensor<?xi64>
  %36 = tensor.empty(%32) : tensor<?xf64>
  %splat_39 = tensor.splat %false[%22] : tensor<?xi1>
  %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted : i64 to index
    %43 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %31#1[%43] : tensor<?xi64>
    %44 = arith.index_cast %extracted_41 : i64 to index
    %45 = arith.subi %44, %42 : index
    %extracted_slice = tensor.extract_slice %arg1[%42] [%45] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_42 = tensor.extract_slice %arg2[%42] [%45] [1] : tensor<?xf64> to tensor<?xf64>
    %46 = arith.addi %arg0, %c1 : index
    %extracted_43 = tensor.extract %23[%arg0] : tensor<?xi64>
    %47 = arith.index_cast %extracted_43 : i64 to index
    %extracted_44 = tensor.extract %23[%46] : tensor<?xi64>
    %48 = arith.index_cast %extracted_44 : i64 to index
    %49 = scf.for %arg3 = %47 to %48 step %c1 iter_args(%arg4 = %splat_39) -> (tensor<?xi1>) {
      %extracted_47 = tensor.extract %24[%arg3] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %inserted_48 = tensor.insert %true into %arg4[%58] : tensor<?xi1>
      scf.yield %inserted_48 : tensor<?xi1>
    }
    %50 = arith.index_cast %arg0 : index to i32
    %51 = arith.addi %50, %c1_i32 : i32
    %52 = arith.addi %arg0, %c1 : index
    %extracted_45 = tensor.extract %10[%arg0] : tensor<?xi64>
    %53 = arith.index_cast %extracted_45 : i64 to index
    %extracted_46 = tensor.extract %10[%52] : tensor<?xi64>
    %54 = arith.index_cast %extracted_46 : i64 to index
    %55:4 = scf.for %arg3 = %53 to %54 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_47 = tensor.extract %11[%arg3] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %59 = arith.addi %58, %c1 : index
      %extracted_48 = tensor.extract %23[%58] : tensor<?xi64>
      %60 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %23[%59] : tensor<?xi64>
      %61 = arith.index_cast %extracted_49 : i64 to index
      %62:4 = scf.for %arg8 = %60 to %61 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_50 = tensor.extract %24[%arg8] : tensor<?xi64>
        %63 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %49[%63] : tensor<?xi1>
        %64:4 = scf.if %extracted_51 -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_52 = tensor.extract %24[%arg8] : tensor<?xi64>
          %65 = arith.index_cast %extracted_52 : i64 to index
          %extracted_53 = tensor.extract %12[%arg3] : tensor<?xf64>
          %extracted_54 = tensor.extract %25[%arg8] : tensor<?xf64>
          %66 = arith.mulf %extracted_53, %extracted_54 : f64
          %extracted_55 = tensor.extract %arg10[%65] : tensor<?xi32>
          %67 = arith.cmpi eq, %extracted_55, %51 : i32
          %68:4 = scf.if %67 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_56 = tensor.extract %arg9[%65] : tensor<?xf64>
            %69 = arith.addf %extracted_56, %66 : f64
            %inserted_57 = tensor.insert %69 into %arg9[%65] : tensor<?xf64>
            scf.yield %arg10, %arg11, %arg12, %inserted_57 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_56 = tensor.insert %51 into %arg10[%65] : tensor<?xi32>
            %inserted_57 = tensor.insert %extracted_52 into %arg12[%arg11] : tensor<?xi64>
            %69 = index.add %arg11, %idx1
            %inserted_58 = tensor.insert %66 into %arg9[%65] : tensor<?xf64>
            scf.yield %inserted_56, %69, %inserted_57, %inserted_58 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %68#3, %68#0, %68#1, %68#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        } else {
          scf.yield %arg9, %arg10, %arg11, %arg12 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %64#0, %64#1, %64#2, %64#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %62#0, %62#1, %62#2, %62#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %56 = "ta.TensorSortOp"(%55#3, %idx0, %55#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %57:2 = scf.for %arg3 = %c0 to %55#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_47 = tensor.extract %56[%arg3] : tensor<?xi64>
      %58 = arith.index_cast %extracted_47 : i64 to index
      %extracted_48 = tensor.extract %55#0[%58] : tensor<?xf64>
      %inserted_49 = tensor.insert %extracted_47 into %arg4[%arg3] : tensor<?xi64>
      %inserted_50 = tensor.insert %extracted_48 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_49, %inserted_50 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %57#0 into %arg1[%42] [%45] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %57#1 into %arg2[%42] [%45] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %41 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_40 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_40) : (tensor<1xindex>) -> ()
  "ta.print"(%31#1) : (tensor<?xi64>) -> ()
  "ta.print"(%40#0) : (tensor<?xi64>) -> ()
  "ta.print"(%40#1) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %27 = tensor.empty(%26) : tensor<?xi64>
    %28 = tensor.empty(%22) : tensor<?xi64>
    %splat = tensor.splat %false[%22] : tensor<?xi1>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %42 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %23[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %23[%42] : tensor<?xi64>
      %44 = arith.index_cast %extracted_41 : i64 to index
      %45 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %splat) -> (tensor<?xi1>) {
        %extracted_45 = tensor.extract %24[%arg2] : tensor<?xi64>
        %52 = arith.index_cast %extracted_45 : i64 to index
        %inserted_46 = tensor.insert %true into %arg3[%52] : tensor<?xi1>
        scf.yield %inserted_46 : tensor<?xi1>
      }
      %46 = arith.addi %arg0, %c1 : index
      %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
      %47 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %10[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_43 : i64 to index
      %49:2 = scf.for %arg2 = %47 to %48 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %11[%arg2] : tensor<?xi64>
        %52 = arith.index_cast %extracted_45 : i64 to index
        %53 = arith.addi %52, %c1 : index
        %extracted_46 = tensor.extract %23[%52] : tensor<?xi64>
        %54 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%53] : tensor<?xi64>
        %55 = arith.index_cast %extracted_47 : i64 to index
        %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
          %extracted_48 = tensor.extract %24[%arg5] : tensor<?xi64>
          %57 = arith.index_cast %extracted_48 : i64 to index
          %extracted_49 = tensor.extract %45[%57] : tensor<?xi1>
          %58:2 = scf.if %extracted_49 -> (index, tensor<?xi64>) {
            %extracted_50 = tensor.extract %24[%arg5] : tensor<?xi64>
            %59 = arith.index_cast %extracted_50 : i64 to index
            %60 = index.add %arg0, %idx1
            %61 = arith.index_cast %60 : index to i64
            %extracted_51 = tensor.extract %arg7[%59] : tensor<?xi64>
            %62 = arith.cmpi eq, %61, %extracted_51 : i64
            %63:2 = scf.if %62 -> (index, tensor<?xi64>) {
              scf.yield %arg6, %arg7 : index, tensor<?xi64>
            } else {
              %inserted_52 = tensor.insert %61 into %arg7[%59] : tensor<?xi64>
              %64 = index.add %arg6, %idx1
              scf.yield %64, %inserted_52 : index, tensor<?xi64>
            }
            scf.yield %63#0, %63#1 : index, tensor<?xi64>
          } else {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          }
          scf.yield %58#0, %58#1 : index, tensor<?xi64>
        }
        scf.yield %56#0, %56#1 : index, tensor<?xi64>
      }
      %50 = index.add %arg0, %idx1
      %51 = arith.index_cast %49#0 : index to i64
      %inserted_44 = tensor.insert %51 into %arg1[%50] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted_44[%50] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%50] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %42 = arith.addi %extracted, %arg1 : i64
      %inserted_41 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %42, %inserted_41 : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = arith.index_cast %9 : index to i64
    %34 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xi64>
    %36 = tensor.empty(%32) : tensor<?xf64>
    %splat_39 = tensor.splat %false[%22] : tensor<?xi1>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted : i64 to index
      %43 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %31#1[%43] : tensor<?xi64>
      %44 = arith.index_cast %extracted_41 : i64 to index
      %45 = arith.subi %44, %42 : index
      %extracted_slice = tensor.extract_slice %arg1[%42] [%45] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_42 = tensor.extract_slice %arg2[%42] [%45] [1] : tensor<?xf64> to tensor<?xf64>
      %46 = arith.addi %arg0, %c1 : index
      %extracted_43 = tensor.extract %23[%arg0] : tensor<?xi64>
      %47 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_44 : i64 to index
      %49 = scf.for %arg3 = %47 to %48 step %c1 iter_args(%arg4 = %splat_39) -> (tensor<?xi1>) {
        %extracted_47 = tensor.extract %24[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %inserted_48 = tensor.insert %true into %arg4[%58] : tensor<?xi1>
        scf.yield %inserted_48 : tensor<?xi1>
      }
      %50 = arith.index_cast %arg0 : index to i32
      %51 = arith.addi %50, %c1_i32 : i32
      %52 = arith.addi %arg0, %c1 : index
      %extracted_45 = tensor.extract %10[%arg0] : tensor<?xi64>
      %53 = arith.index_cast %extracted_45 : i64 to index
      %extracted_46 = tensor.extract %10[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_46 : i64 to index
      %55:4 = scf.for %arg3 = %53 to %54 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_47 = tensor.extract %11[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %59 = arith.addi %58, %c1 : index
        %extracted_48 = tensor.extract %23[%58] : tensor<?xi64>
        %60 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %23[%59] : tensor<?xi64>
        %61 = arith.index_cast %extracted_49 : i64 to index
        %62:4 = scf.for %arg8 = %60 to %61 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_50 = tensor.extract %24[%arg8] : tensor<?xi64>
          %63 = arith.index_cast %extracted_50 : i64 to index
          %extracted_51 = tensor.extract %49[%63] : tensor<?xi1>
          %64:4 = scf.if %extracted_51 -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
            %extracted_52 = tensor.extract %24[%arg8] : tensor<?xi64>
            %65 = arith.index_cast %extracted_52 : i64 to index
            %extracted_53 = tensor.extract %12[%arg3] : tensor<?xf64>
            %extracted_54 = tensor.extract %25[%arg8] : tensor<?xf64>
            %66 = arith.mulf %extracted_53, %extracted_54 : f64
            %extracted_55 = tensor.extract %arg10[%65] : tensor<?xi32>
            %67 = arith.cmpi eq, %extracted_55, %51 : i32
            %68:4 = scf.if %67 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
              %extracted_56 = tensor.extract %arg9[%65] : tensor<?xf64>
              %69 = arith.addf %extracted_56, %66 : f64
              %inserted_57 = tensor.insert %69 into %arg9[%65] : tensor<?xf64>
              scf.yield %arg10, %arg11, %arg12, %inserted_57 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
            } else {
              %inserted_56 = tensor.insert %51 into %arg10[%65] : tensor<?xi32>
              %inserted_57 = tensor.insert %extracted_52 into %arg12[%arg11] : tensor<?xi64>
              %69 = index.add %arg11, %idx1
              %inserted_58 = tensor.insert %66 into %arg9[%65] : tensor<?xf64>
              scf.yield %inserted_56, %69, %inserted_57, %inserted_58 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
            }
            scf.yield %68#3, %68#0, %68#1, %68#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg9, %arg10, %arg11, %arg12 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
          }
          scf.yield %64#0, %64#1, %64#2, %64#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %62#0, %62#1, %62#2, %62#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %56 = "ta.TensorSortOp"(%55#3, %idx0, %55#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %57:2 = scf.for %arg3 = %c0 to %55#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted_47 = tensor.extract %56[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %extracted_48 = tensor.extract %55#0[%58] : tensor<?xf64>
        %inserted_49 = tensor.insert %extracted_47 into %arg4[%arg3] : tensor<?xi64>
        %inserted_50 = tensor.insert %extracted_48 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %inserted_49, %inserted_50 : tensor<?xi64>, tensor<?xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %57#0 into %arg1[%42] [%45] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %57#1 into %arg2[%42] [%45] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %41 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_40 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_40) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%40#0) : (tensor<?xi64>) -> ()
    "ta.print"(%40#1) : (tensor<?xf64>) -> ()
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
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %27 = tensor.empty(%26) : tensor<?xi64>
    %28 = tensor.empty(%22) : tensor<?xi64>
    %splat = tensor.splat %false[%22] : tensor<?xi1>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %42 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %23[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %23[%42] : tensor<?xi64>
      %44 = arith.index_cast %extracted_41 : i64 to index
      %45 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %splat) -> (tensor<?xi1>) {
        %extracted_45 = tensor.extract %24[%arg2] : tensor<?xi64>
        %52 = arith.index_cast %extracted_45 : i64 to index
        %inserted_46 = tensor.insert %true into %arg3[%52] : tensor<?xi1>
        scf.yield %inserted_46 : tensor<?xi1>
      }
      %46 = arith.addi %arg0, %c1 : index
      %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
      %47 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %10[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_43 : i64 to index
      %49:2 = scf.for %arg2 = %47 to %48 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %11[%arg2] : tensor<?xi64>
        %52 = arith.index_cast %extracted_45 : i64 to index
        %53 = arith.addi %52, %c1 : index
        %extracted_46 = tensor.extract %23[%52] : tensor<?xi64>
        %54 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%53] : tensor<?xi64>
        %55 = arith.index_cast %extracted_47 : i64 to index
        %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
          %extracted_48 = tensor.extract %24[%arg5] : tensor<?xi64>
          %57 = arith.index_cast %extracted_48 : i64 to index
          %extracted_49 = tensor.extract %45[%57] : tensor<?xi1>
          %58:2 = scf.if %extracted_49 -> (index, tensor<?xi64>) {
            %extracted_50 = tensor.extract %24[%arg5] : tensor<?xi64>
            %59 = arith.index_cast %extracted_50 : i64 to index
            %60 = index.add %arg0, %idx1
            %61 = arith.index_cast %60 : index to i64
            %extracted_51 = tensor.extract %arg7[%59] : tensor<?xi64>
            %62 = arith.cmpi eq, %61, %extracted_51 : i64
            %63:2 = scf.if %62 -> (index, tensor<?xi64>) {
              scf.yield %arg6, %arg7 : index, tensor<?xi64>
            } else {
              %inserted_52 = tensor.insert %61 into %arg7[%59] : tensor<?xi64>
              %64 = index.add %arg6, %idx1
              scf.yield %64, %inserted_52 : index, tensor<?xi64>
            }
            scf.yield %63#0, %63#1 : index, tensor<?xi64>
          } else {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          }
          scf.yield %58#0, %58#1 : index, tensor<?xi64>
        }
        scf.yield %56#0, %56#1 : index, tensor<?xi64>
      }
      %50 = index.add %arg0, %idx1
      %51 = arith.index_cast %49#0 : index to i64
      %inserted_44 = tensor.insert %51 into %arg1[%50] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted_44[%50] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%50] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %42 = arith.addi %extracted, %arg1 : i64
      %inserted_41 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %42, %inserted_41 : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = arith.index_cast %9 : index to i64
    %34 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xi64>
    %36 = tensor.empty(%32) : tensor<?xf64>
    %splat_39 = tensor.splat %false[%22] : tensor<?xi1>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted : i64 to index
      %43 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %31#1[%43] : tensor<?xi64>
      %44 = arith.index_cast %extracted_41 : i64 to index
      %45 = arith.subi %44, %42 : index
      %extracted_slice = tensor.extract_slice %arg1[%42] [%45] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_42 = tensor.extract_slice %arg2[%42] [%45] [1] : tensor<?xf64> to tensor<?xf64>
      %46 = arith.addi %arg0, %c1 : index
      %extracted_43 = tensor.extract %23[%arg0] : tensor<?xi64>
      %47 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_44 : i64 to index
      %49 = scf.for %arg3 = %47 to %48 step %c1 iter_args(%arg4 = %splat_39) -> (tensor<?xi1>) {
        %extracted_47 = tensor.extract %24[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %inserted_48 = tensor.insert %true into %arg4[%58] : tensor<?xi1>
        scf.yield %inserted_48 : tensor<?xi1>
      }
      %50 = arith.index_cast %arg0 : index to i32
      %51 = arith.addi %50, %c1_i32 : i32
      %52 = arith.addi %arg0, %c1 : index
      %extracted_45 = tensor.extract %10[%arg0] : tensor<?xi64>
      %53 = arith.index_cast %extracted_45 : i64 to index
      %extracted_46 = tensor.extract %10[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_46 : i64 to index
      %55:4 = scf.for %arg3 = %53 to %54 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_47 = tensor.extract %11[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %59 = arith.addi %58, %c1 : index
        %extracted_48 = tensor.extract %23[%58] : tensor<?xi64>
        %60 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %23[%59] : tensor<?xi64>
        %61 = arith.index_cast %extracted_49 : i64 to index
        %62:4 = scf.for %arg8 = %60 to %61 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_50 = tensor.extract %24[%arg8] : tensor<?xi64>
          %63 = arith.index_cast %extracted_50 : i64 to index
          %extracted_51 = tensor.extract %49[%63] : tensor<?xi1>
          %64:4 = scf.if %extracted_51 -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
            %extracted_52 = tensor.extract %24[%arg8] : tensor<?xi64>
            %65 = arith.index_cast %extracted_52 : i64 to index
            %extracted_53 = tensor.extract %12[%arg3] : tensor<?xf64>
            %extracted_54 = tensor.extract %25[%arg8] : tensor<?xf64>
            %66 = arith.mulf %extracted_53, %extracted_54 : f64
            %extracted_55 = tensor.extract %arg10[%65] : tensor<?xi32>
            %67 = arith.cmpi eq, %extracted_55, %51 : i32
            %68:4 = scf.if %67 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
              %extracted_56 = tensor.extract %arg9[%65] : tensor<?xf64>
              %69 = arith.addf %extracted_56, %66 : f64
              %inserted_57 = tensor.insert %69 into %arg9[%65] : tensor<?xf64>
              scf.yield %arg10, %arg11, %arg12, %inserted_57 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
            } else {
              %inserted_56 = tensor.insert %51 into %arg10[%65] : tensor<?xi32>
              %inserted_57 = tensor.insert %extracted_52 into %arg12[%arg11] : tensor<?xi64>
              %69 = index.add %arg11, %idx1
              %inserted_58 = tensor.insert %66 into %arg9[%65] : tensor<?xf64>
              scf.yield %inserted_56, %69, %inserted_57, %inserted_58 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
            }
            scf.yield %68#3, %68#0, %68#1, %68#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg9, %arg10, %arg11, %arg12 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
          }
          scf.yield %64#0, %64#1, %64#2, %64#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %62#0, %62#1, %62#2, %62#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %56 = "ta.TensorSortOp"(%55#3, %idx0, %55#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %57:2 = scf.for %arg3 = %c0 to %55#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted_47 = tensor.extract %56[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %extracted_48 = tensor.extract %55#0[%58] : tensor<?xf64>
        %inserted_49 = tensor.insert %extracted_47 into %arg4[%arg3] : tensor<?xi64>
        %inserted_50 = tensor.insert %extracted_48 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %inserted_49, %inserted_50 : tensor<?xi64>, tensor<?xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %57#0 into %arg1[%42] [%45] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %57#1 into %arg2[%42] [%45] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %41 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_40 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_40) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%40#0) : (tensor<?xi64>) -> ()
    "ta.print"(%40#1) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %27 = tensor.empty(%26) : tensor<?xi64>
    %28 = tensor.empty(%22) : tensor<?xi64>
    %splat = tensor.splat %false[%22] : tensor<?xi1>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %42 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %23[%arg0] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %23[%42] : tensor<?xi64>
      %44 = arith.index_cast %extracted_41 : i64 to index
      %45 = scf.for %arg2 = %43 to %44 step %c1 iter_args(%arg3 = %splat) -> (tensor<?xi1>) {
        %extracted_45 = tensor.extract %24[%arg2] : tensor<?xi64>
        %52 = arith.index_cast %extracted_45 : i64 to index
        %inserted_46 = tensor.insert %true into %arg3[%52] : tensor<?xi1>
        scf.yield %inserted_46 : tensor<?xi1>
      }
      %46 = arith.addi %arg0, %c1 : index
      %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
      %47 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %10[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_43 : i64 to index
      %49:2 = scf.for %arg2 = %47 to %48 step %c1 iter_args(%arg3 = %c0, %arg4 = %28) -> (index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %11[%arg2] : tensor<?xi64>
        %52 = arith.index_cast %extracted_45 : i64 to index
        %53 = arith.addi %52, %c1 : index
        %extracted_46 = tensor.extract %23[%52] : tensor<?xi64>
        %54 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%53] : tensor<?xi64>
        %55 = arith.index_cast %extracted_47 : i64 to index
        %56:2 = scf.for %arg5 = %54 to %55 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
          %extracted_48 = tensor.extract %24[%arg5] : tensor<?xi64>
          %57 = arith.index_cast %extracted_48 : i64 to index
          %extracted_49 = tensor.extract %45[%57] : tensor<?xi1>
          %58:2 = scf.if %extracted_49 -> (index, tensor<?xi64>) {
            %extracted_50 = tensor.extract %24[%arg5] : tensor<?xi64>
            %59 = arith.index_cast %extracted_50 : i64 to index
            %60 = index.add %arg0, %idx1
            %61 = arith.index_cast %60 : index to i64
            %extracted_51 = tensor.extract %arg7[%59] : tensor<?xi64>
            %62 = arith.cmpi eq, %61, %extracted_51 : i64
            %63:2 = scf.if %62 -> (index, tensor<?xi64>) {
              scf.yield %arg6, %arg7 : index, tensor<?xi64>
            } else {
              %inserted_52 = tensor.insert %61 into %arg7[%59] : tensor<?xi64>
              %64 = index.add %arg6, %idx1
              scf.yield %64, %inserted_52 : index, tensor<?xi64>
            }
            scf.yield %63#0, %63#1 : index, tensor<?xi64>
          } else {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          }
          scf.yield %58#0, %58#1 : index, tensor<?xi64>
        }
        scf.yield %56#0, %56#1 : index, tensor<?xi64>
      }
      %50 = index.add %arg0, %idx1
      %51 = arith.index_cast %49#0 : index to i64
      %inserted_44 = tensor.insert %51 into %arg1[%50] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted_44[%50] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%50] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %42 = arith.addi %extracted, %arg1 : i64
      %inserted_41 = tensor.insert %42 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %42, %inserted_41 : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = arith.index_cast %9 : index to i64
    %34 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %33 into %34[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %35 = tensor.empty(%32) : tensor<?xi64>
    %36 = tensor.empty(%32) : tensor<?xf64>
    %splat_39 = tensor.splat %false[%22] : tensor<?xi1>
    %37 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %38 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %39 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %40:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %35, %arg2 = %36) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted : i64 to index
      %43 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %31#1[%43] : tensor<?xi64>
      %44 = arith.index_cast %extracted_41 : i64 to index
      %45 = arith.subi %44, %42 : index
      %extracted_slice = tensor.extract_slice %arg1[%42] [%45] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_42 = tensor.extract_slice %arg2[%42] [%45] [1] : tensor<?xf64> to tensor<?xf64>
      %46 = arith.addi %arg0, %c1 : index
      %extracted_43 = tensor.extract %23[%arg0] : tensor<?xi64>
      %47 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_44 : i64 to index
      %49 = scf.for %arg3 = %47 to %48 step %c1 iter_args(%arg4 = %splat_39) -> (tensor<?xi1>) {
        %extracted_47 = tensor.extract %24[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %inserted_48 = tensor.insert %true into %arg4[%58] : tensor<?xi1>
        scf.yield %inserted_48 : tensor<?xi1>
      }
      %50 = arith.index_cast %arg0 : index to i32
      %51 = arith.addi %50, %c1_i32 : i32
      %52 = arith.addi %arg0, %c1 : index
      %extracted_45 = tensor.extract %10[%arg0] : tensor<?xi64>
      %53 = arith.index_cast %extracted_45 : i64 to index
      %extracted_46 = tensor.extract %10[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_46 : i64 to index
      %55:4 = scf.for %arg3 = %53 to %54 step %c1 iter_args(%arg4 = %37, %arg5 = %38, %arg6 = %idx0, %arg7 = %39) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_47 = tensor.extract %11[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %59 = arith.addi %58, %c1 : index
        %extracted_48 = tensor.extract %23[%58] : tensor<?xi64>
        %60 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %23[%59] : tensor<?xi64>
        %61 = arith.index_cast %extracted_49 : i64 to index
        %62:4 = scf.for %arg8 = %60 to %61 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_50 = tensor.extract %24[%arg8] : tensor<?xi64>
          %63 = arith.index_cast %extracted_50 : i64 to index
          %extracted_51 = tensor.extract %49[%63] : tensor<?xi1>
          %64:4 = scf.if %extracted_51 -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
            %extracted_52 = tensor.extract %24[%arg8] : tensor<?xi64>
            %65 = arith.index_cast %extracted_52 : i64 to index
            %extracted_53 = tensor.extract %12[%arg3] : tensor<?xf64>
            %extracted_54 = tensor.extract %25[%arg8] : tensor<?xf64>
            %66 = arith.mulf %extracted_53, %extracted_54 : f64
            %extracted_55 = tensor.extract %arg10[%65] : tensor<?xi32>
            %67 = arith.cmpi eq, %extracted_55, %51 : i32
            %68:4 = scf.if %67 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
              %extracted_56 = tensor.extract %arg9[%65] : tensor<?xf64>
              %69 = arith.addf %extracted_56, %66 : f64
              %inserted_57 = tensor.insert %69 into %arg9[%65] : tensor<?xf64>
              scf.yield %arg10, %arg11, %arg12, %inserted_57 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
            } else {
              %inserted_56 = tensor.insert %51 into %arg10[%65] : tensor<?xi32>
              %inserted_57 = tensor.insert %extracted_52 into %arg12[%arg11] : tensor<?xi64>
              %69 = index.add %arg11, %idx1
              %inserted_58 = tensor.insert %66 into %arg9[%65] : tensor<?xf64>
              scf.yield %inserted_56, %69, %inserted_57, %inserted_58 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
            }
            scf.yield %68#3, %68#0, %68#1, %68#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg9, %arg10, %arg11, %arg12 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
          }
          scf.yield %64#0, %64#1, %64#2, %64#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %62#0, %62#1, %62#2, %62#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %56 = "ta.TensorSortOp"(%55#3, %idx0, %55#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %57:2 = scf.for %arg3 = %c0 to %55#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_42) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted_47 = tensor.extract %56[%arg3] : tensor<?xi64>
        %58 = arith.index_cast %extracted_47 : i64 to index
        %extracted_48 = tensor.extract %55#0[%58] : tensor<?xf64>
        %inserted_49 = tensor.insert %extracted_47 into %arg4[%arg3] : tensor<?xi64>
        %inserted_50 = tensor.insert %extracted_48 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %inserted_49, %inserted_50 : tensor<?xi64>, tensor<?xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %57#0 into %arg1[%42] [%45] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %57#1 into %arg2[%42] [%45] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %41 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_40 = tensor.insert %idx-1 into %41[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_40) : (tensor<1xindex>) -> ()
    "ta.print"(%31#1) : (tensor<?xi64>) -> ()
    "ta.print"(%40#0) : (tensor<?xi64>) -> ()
    "ta.print"(%40#1) : (tensor<?xf64>) -> ()
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
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_39 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %30 = arith.addi %arg0, %c1 : index
      %31 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_28[%30] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %c0_46 = arith.constant 0 : index
      %dim = memref.dim %alloc_39, %c0_46 : memref<?xi1>
      %alloc_47 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_47 : memref<?xi1> to memref<?xi1>
      %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %alloc_47) -> (memref<?xi1>) {
        %44 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        memref.store %true, %arg2[%45] : memref<?xi1>
        scf.yield %arg2 : memref<?xi1>
      }
      %36 = arith.addi %arg0, %c1 : index
      %37 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = memref.load %alloc_8[%36] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %41:2 = scf.for %arg1 = %38 to %40 step %c1 iter_args(%arg2 = %c0, %arg3 = %alloc_48) -> (index, memref<?xi64>) {
        %44 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = arith.addi %45, %c1 : index
        %47 = memref.load %alloc_28[%45] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49 = memref.load %alloc_28[%46] : memref<?xi64>
        %50 = arith.index_cast %49 : i64 to index
        %51:2 = scf.for %arg4 = %48 to %50 step %c1 iter_args(%arg5 = %arg2, %arg6 = %arg3) -> (index, memref<?xi64>) {
          %52 = memref.load %alloc_30[%arg4] : memref<?xi64>
          %53 = arith.index_cast %52 : i64 to index
          %54 = memref.load %35[%53] : memref<?xi1>
          %55:2 = scf.if %54 -> (index, memref<?xi64>) {
            %56 = memref.load %alloc_30[%arg4] : memref<?xi64>
            %57 = arith.index_cast %56 : i64 to index
            %58 = index.add %arg0, %idx1
            %59 = arith.index_cast %58 : index to i64
            %60 = memref.load %arg6[%57] : memref<?xi64>
            %61 = arith.cmpi eq, %59, %60 : i64
            %62:2 = scf.if %61 -> (index, memref<?xi64>) {
              scf.yield %arg5, %arg6 : index, memref<?xi64>
            } else {
              memref.store %59, %arg6[%57] : memref<?xi64>
              %63 = index.add %arg5, %idx1
              scf.yield %63, %arg6 : index, memref<?xi64>
            }
            scf.yield %62#0, %62#1 : index, memref<?xi64>
          } else {
            scf.yield %arg5, %arg6 : index, memref<?xi64>
          }
          scf.yield %55#0, %55#1 : index, memref<?xi64>
        }
        scf.yield %51#0, %51#1 : index, memref<?xi64>
      }
      %42 = index.add %arg0, %idx1
      %43 = arith.index_cast %41#0 : index to i64
      %c0_49 = arith.constant 0 : index
      %dim_50 = memref.dim %alloc_38, %c0_49 : memref<?xi64>
      %alloc_51 = memref.alloc(%dim_50) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_51 : memref<?xi64> to memref<?xi64>
      memref.store %43, %alloc_51[%42] : memref<?xi64>
      %subview = memref.subview %alloc_51[%42] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_38[%42] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_52 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22:2 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
      %30 = memref.load %arg2[%arg0] : memref<?xi64>
      %31 = arith.addi %30, %arg1 : i64
      memref.store %31, %arg2[%arg0] : memref<?xi64>
      scf.yield %31, %arg2 : i64, memref<?xi64>
    }
    %23 = bufferization.to_tensor %22#1 : memref<?xi64>
    %24 = arith.index_cast %22#0 : i64 to index
    %25 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %25, %alloc_40[%idx0] : memref<1xi64>
    %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
    %26 = bufferization.to_tensor %cast_41 : memref<?xi64>
    %alloc_42 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_44 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %30 = memref.load %22#1[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = arith.addi %arg0, %c1 : index
      %33 = memref.load %22#1[%32] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = arith.subi %34, %31 : index
      %subview = memref.subview %alloc_42[%31] [%35] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_46 = memref.subview %alloc_43[%31] [%35] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %36 = arith.addi %arg0, %c1 : index
      %37 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = memref.load %alloc_28[%36] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %c0_47 = arith.constant 0 : index
      %dim = memref.dim %alloc_44, %c0_47 : memref<?xi1>
      %alloc_48 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_44, %alloc_48 : memref<?xi1> to memref<?xi1>
      %41 = scf.for %arg1 = %38 to %40 step %c1 iter_args(%arg2 = %alloc_48) -> (memref<?xi1>) {
        %51 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %52 = arith.index_cast %51 : i64 to index
        memref.store %true, %arg2[%52] : memref<?xi1>
        scf.yield %arg2 : memref<?xi1>
      }
      %42 = arith.index_cast %arg0 : index to i32
      %43 = arith.addi %42, %c1_i32 : i32
      %44 = arith.addi %arg0, %c1 : index
      %45 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = memref.load %alloc_8[%44] : memref<?xi64>
      %48 = arith.index_cast %47 : i64 to index
      %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %49:4 = scf.for %arg1 = %46 to %48 step %c1 iter_args(%arg2 = %alloc_49, %arg3 = %alloc_50, %arg4 = %idx0, %arg5 = %alloc_51) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %51 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %52 = arith.index_cast %51 : i64 to index
        %53 = arith.addi %52, %c1 : index
        %54 = memref.load %alloc_28[%52] : memref<?xi64>
        %55 = arith.index_cast %54 : i64 to index
        %56 = memref.load %alloc_28[%53] : memref<?xi64>
        %57 = arith.index_cast %56 : i64 to index
        %58:4 = scf.for %arg6 = %55 to %57 step %c1 iter_args(%arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4, %arg10 = %arg5) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
          %59 = memref.load %alloc_30[%arg6] : memref<?xi64>
          %60 = arith.index_cast %59 : i64 to index
          %61 = memref.load %41[%60] : memref<?xi1>
          %62:4 = scf.if %61 -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
            %63 = memref.load %alloc_30[%arg6] : memref<?xi64>
            %64 = arith.index_cast %63 : i64 to index
            %65 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %66 = memref.load %alloc_36[%arg6] : memref<?xf64>
            %67 = arith.mulf %65, %66 : f64
            %68 = memref.load %arg8[%64] : memref<?xi32>
            %69 = arith.cmpi eq, %68, %43 : i32
            %70:4 = scf.if %69 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
              %71 = memref.load %arg7[%64] : memref<?xf64>
              %72 = arith.addf %71, %67 : f64
              memref.store %72, %arg7[%64] : memref<?xf64>
              scf.yield %arg8, %arg9, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
            } else {
              memref.store %43, %arg8[%64] : memref<?xi32>
              memref.store %63, %arg10[%arg9] : memref<?xi64>
              %71 = index.add %arg9, %idx1
              memref.store %67, %arg7[%64] : memref<?xf64>
              scf.yield %arg8, %71, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
            }
            scf.yield %70#3, %70#0, %70#1, %70#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
          } else {
            scf.yield %arg7, %arg8, %arg9, %arg10 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
          }
          scf.yield %62#0, %62#1, %62#2, %62#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        }
        scf.yield %58#0, %58#1, %58#2, %58#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      "ta.TensorSortOp"(%49#3, %idx0, %49#2) : (memref<?xi64>, index, index) -> ()
      %50:2 = scf.for %arg1 = %c0 to %49#2 step %c1 iter_args(%arg2 = %subview, %arg3 = %subview_46) -> (memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>) {
        %51 = memref.load %49#3[%arg1] : memref<?xi64>
        %52 = arith.index_cast %51 : i64 to index
        %53 = memref.load %49#0[%52] : memref<?xf64>
        memref.store %51, %arg2[%arg1] : memref<?xi64, strided<[1], offset: ?>>
        memref.store %53, %arg3[%arg1] : memref<?xf64, strided<[1], offset: ?>>
        scf.yield %arg2, %arg3 : memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>
      }
      %subview_52 = memref.subview %alloc_42[%31] [%35] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %50#0, %subview_52 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_43[%31] [%35] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %50#1, %subview_53 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %27 = bufferization.to_tensor %alloc_43 : memref<?xf64>
    %28 = bufferization.to_tensor %alloc_42 : memref<?xi64>
    %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
    %29 = bufferization.to_tensor %alloc_45 : memref<1xindex>
    "ta.print"(%26) : (tensor<?xi64>) -> ()
    "ta.print"(%29) : (tensor<1xindex>) -> ()
    "ta.print"(%23) : (tensor<?xi64>) -> ()
    "ta.print"(%28) : (tensor<?xi64>) -> ()
    "ta.print"(%27) : (tensor<?xf64>) -> ()
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
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
  linalg.map outs(%alloc_39 : memref<?xi1>)
    () {
      linalg.yield %false : i1
    }
  scf.forall (%arg0) in (%9) {
    %30 = arith.addi %arg0, %c1 : index
    %31 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %33 = memref.load %alloc_28[%30] : memref<?xi64>
    %34 = arith.index_cast %33 : i64 to index
    %c0_46 = arith.constant 0 : index
    %dim = memref.dim %alloc_39, %c0_46 : memref<?xi1>
    %alloc_47 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi1>
    memref.copy %alloc_39, %alloc_47 : memref<?xi1> to memref<?xi1>
    %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %alloc_47) -> (memref<?xi1>) {
      %44 = memref.load %alloc_30[%arg1] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      memref.store %true, %arg2[%45] : memref<?xi1>
      scf.yield %arg2 : memref<?xi1>
    }
    %36 = arith.addi %arg0, %c1 : index
    %37 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39 = memref.load %alloc_8[%36] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %41:2 = scf.for %arg1 = %38 to %40 step %c1 iter_args(%arg2 = %c0, %arg3 = %alloc_48) -> (index, memref<?xi64>) {
      %44 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = arith.addi %45, %c1 : index
      %47 = memref.load %alloc_28[%45] : memref<?xi64>
      %48 = arith.index_cast %47 : i64 to index
      %49 = memref.load %alloc_28[%46] : memref<?xi64>
      %50 = arith.index_cast %49 : i64 to index
      %51:2 = scf.for %arg4 = %48 to %50 step %c1 iter_args(%arg5 = %arg2, %arg6 = %arg3) -> (index, memref<?xi64>) {
        %52 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %53 = arith.index_cast %52 : i64 to index
        %54 = memref.load %35[%53] : memref<?xi1>
        %55:2 = scf.if %54 -> (index, memref<?xi64>) {
          %56 = memref.load %alloc_30[%arg4] : memref<?xi64>
          %57 = arith.index_cast %56 : i64 to index
          %58 = index.add %arg0, %idx1
          %59 = arith.index_cast %58 : index to i64
          %60 = memref.load %arg6[%57] : memref<?xi64>
          %61 = arith.cmpi eq, %59, %60 : i64
          %62:2 = scf.if %61 -> (index, memref<?xi64>) {
            scf.yield %arg5, %arg6 : index, memref<?xi64>
          } else {
            memref.store %59, %arg6[%57] : memref<?xi64>
            %63 = index.add %arg5, %idx1
            scf.yield %63, %arg6 : index, memref<?xi64>
          }
          scf.yield %62#0, %62#1 : index, memref<?xi64>
        } else {
          scf.yield %arg5, %arg6 : index, memref<?xi64>
        }
        scf.yield %55#0, %55#1 : index, memref<?xi64>
      }
      scf.yield %51#0, %51#1 : index, memref<?xi64>
    }
    %42 = index.add %arg0, %idx1
    %43 = arith.index_cast %41#0 : index to i64
    %c0_49 = arith.constant 0 : index
    %dim_50 = memref.dim %alloc_38, %c0_49 : memref<?xi64>
    %alloc_51 = memref.alloc(%dim_50) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_51 : memref<?xi64> to memref<?xi64>
    memref.store %43, %alloc_51[%42] : memref<?xi64>
    %subview = memref.subview %alloc_51[%42] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_52 = memref.subview %alloc_38[%42] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_52 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21 = arith.addi %9, %c1 : index
  %22:2 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %30 = memref.load %arg2[%arg0] : memref<?xi64>
    %31 = arith.addi %30, %arg1 : i64
    memref.store %31, %arg2[%arg0] : memref<?xi64>
    scf.yield %31, %arg2 : i64, memref<?xi64>
  }
  %23 = bufferization.to_tensor %22#1 : memref<?xi64>
  %24 = arith.index_cast %22#0 : i64 to index
  %25 = arith.index_cast %9 : index to i64
  %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %25, %alloc_40[%idx0] : memref<1xi64>
  %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
  %26 = bufferization.to_tensor %cast_41 : memref<?xi64>
  %alloc_42 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xi64>
  %alloc_43 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf64>
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
  linalg.map outs(%alloc_44 : memref<?xi1>)
    () {
      linalg.yield %false : i1
    }
  scf.forall (%arg0) in (%9) {
    %30 = memref.load %22#1[%arg0] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32 = arith.addi %arg0, %c1 : index
    %33 = memref.load %22#1[%32] : memref<?xi64>
    %34 = arith.index_cast %33 : i64 to index
    %35 = arith.subi %34, %31 : index
    %subview = memref.subview %alloc_42[%31] [%35] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_46 = memref.subview %alloc_43[%31] [%35] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %36 = arith.addi %arg0, %c1 : index
    %37 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39 = memref.load %alloc_28[%36] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %c0_47 = arith.constant 0 : index
    %dim = memref.dim %alloc_44, %c0_47 : memref<?xi1>
    %alloc_48 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi1>
    memref.copy %alloc_44, %alloc_48 : memref<?xi1> to memref<?xi1>
    %41 = scf.for %arg1 = %38 to %40 step %c1 iter_args(%arg2 = %alloc_48) -> (memref<?xi1>) {
      %51 = memref.load %alloc_30[%arg1] : memref<?xi64>
      %52 = arith.index_cast %51 : i64 to index
      memref.store %true, %arg2[%52] : memref<?xi1>
      scf.yield %arg2 : memref<?xi1>
    }
    %42 = arith.index_cast %arg0 : index to i32
    %43 = arith.addi %42, %c1_i32 : i32
    %44 = arith.addi %arg0, %c1 : index
    %45 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %46 = arith.index_cast %45 : i64 to index
    %47 = memref.load %alloc_8[%44] : memref<?xi64>
    %48 = arith.index_cast %47 : i64 to index
    %alloc_49 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %49:4 = scf.for %arg1 = %46 to %48 step %c1 iter_args(%arg2 = %alloc_49, %arg3 = %alloc_50, %arg4 = %idx0, %arg5 = %alloc_51) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %51 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %52 = arith.index_cast %51 : i64 to index
      %53 = arith.addi %52, %c1 : index
      %54 = memref.load %alloc_28[%52] : memref<?xi64>
      %55 = arith.index_cast %54 : i64 to index
      %56 = memref.load %alloc_28[%53] : memref<?xi64>
      %57 = arith.index_cast %56 : i64 to index
      %58:4 = scf.for %arg6 = %55 to %57 step %c1 iter_args(%arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4, %arg10 = %arg5) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %59 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %60 = arith.index_cast %59 : i64 to index
        %61 = memref.load %41[%60] : memref<?xi1>
        %62:4 = scf.if %61 -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
          %63 = memref.load %alloc_30[%arg6] : memref<?xi64>
          %64 = arith.index_cast %63 : i64 to index
          %65 = memref.load %alloc_16[%arg1] : memref<?xf64>
          %66 = memref.load %alloc_36[%arg6] : memref<?xf64>
          %67 = arith.mulf %65, %66 : f64
          %68 = memref.load %arg8[%64] : memref<?xi32>
          %69 = arith.cmpi eq, %68, %43 : i32
          %70:4 = scf.if %69 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
            %71 = memref.load %arg7[%64] : memref<?xf64>
            %72 = arith.addf %71, %67 : f64
            memref.store %72, %arg7[%64] : memref<?xf64>
            scf.yield %arg8, %arg9, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          } else {
            memref.store %43, %arg8[%64] : memref<?xi32>
            memref.store %63, %arg10[%arg9] : memref<?xi64>
            %71 = index.add %arg9, %idx1
            memref.store %67, %arg7[%64] : memref<?xf64>
            scf.yield %arg8, %71, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          }
          scf.yield %70#3, %70#0, %70#1, %70#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        } else {
          scf.yield %arg7, %arg8, %arg9, %arg10 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        }
        scf.yield %62#0, %62#1, %62#2, %62#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %58#0, %58#1, %58#2, %58#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    "ta.TensorSortOp"(%49#3, %idx0, %49#2) : (memref<?xi64>, index, index) -> ()
    %50:2 = scf.for %arg1 = %c0 to %49#2 step %c1 iter_args(%arg2 = %subview, %arg3 = %subview_46) -> (memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>) {
      %51 = memref.load %49#3[%arg1] : memref<?xi64>
      %52 = arith.index_cast %51 : i64 to index
      %53 = memref.load %49#0[%52] : memref<?xf64>
      memref.store %51, %arg2[%arg1] : memref<?xi64, strided<[1], offset: ?>>
      memref.store %53, %arg3[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      scf.yield %arg2, %arg3 : memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>
    }
    %subview_52 = memref.subview %alloc_42[%31] [%35] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %50#0, %subview_52 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
    %subview_53 = memref.subview %alloc_43[%31] [%35] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %50#1, %subview_53 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
  }
  %27 = bufferization.to_tensor %alloc_43 : memref<?xf64>
  %28 = bufferization.to_tensor %alloc_42 : memref<?xi64>
  %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
  %29 = bufferization.to_tensor %alloc_45 : memref<1xindex>
  "ta.print"(%26) : (tensor<?xi64>) -> ()
  "ta.print"(%29) : (tensor<1xindex>) -> ()
  "ta.print"(%23) : (tensor<?xi64>) -> ()
  "ta.print"(%28) : (tensor<?xi64>) -> ()
  "ta.print"(%27) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
  linalg.map outs(%alloc_39 : memref<?xi1>)
    () {
      linalg.yield %false : i1
    }
  scf.forall (%arg0) in (%9) {
    %35 = arith.addi %arg0, %c1 : index
    %36 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38 = memref.load %alloc_28[%35] : memref<?xi64>
    %39 = arith.index_cast %38 : i64 to index
    %c0_51 = arith.constant 0 : index
    %dim = memref.dim %alloc_39, %c0_51 : memref<?xi1>
    %alloc_52 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi1>
    memref.copy %alloc_39, %alloc_52 : memref<?xi1> to memref<?xi1>
    %40 = scf.for %arg1 = %37 to %39 step %c1 iter_args(%arg2 = %alloc_52) -> (memref<?xi1>) {
      %49 = memref.load %alloc_30[%arg1] : memref<?xi64>
      %50 = arith.index_cast %49 : i64 to index
      memref.store %true, %arg2[%50] : memref<?xi1>
      scf.yield %arg2 : memref<?xi1>
    }
    %41 = arith.addi %arg0, %c1 : index
    %42 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %43 = arith.index_cast %42 : i64 to index
    %44 = memref.load %alloc_8[%41] : memref<?xi64>
    %45 = arith.index_cast %44 : i64 to index
    %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %46:2 = scf.for %arg1 = %43 to %45 step %c1 iter_args(%arg2 = %c0, %arg3 = %alloc_53) -> (index, memref<?xi64>) {
      %49 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %50 = arith.index_cast %49 : i64 to index
      %51 = arith.addi %50, %c1 : index
      %52 = memref.load %alloc_28[%50] : memref<?xi64>
      %53 = arith.index_cast %52 : i64 to index
      %54 = memref.load %alloc_28[%51] : memref<?xi64>
      %55 = arith.index_cast %54 : i64 to index
      %56:2 = scf.for %arg4 = %53 to %55 step %c1 iter_args(%arg5 = %arg2, %arg6 = %arg3) -> (index, memref<?xi64>) {
        %57 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %58 = arith.index_cast %57 : i64 to index
        %59 = memref.load %40[%58] : memref<?xi1>
        %60:2 = scf.if %59 -> (index, memref<?xi64>) {
          %61 = memref.load %alloc_30[%arg4] : memref<?xi64>
          %62 = arith.index_cast %61 : i64 to index
          %63 = index.add %arg0, %idx1
          %64 = arith.index_cast %63 : index to i64
          %65 = memref.load %arg6[%62] : memref<?xi64>
          %66 = arith.cmpi eq, %64, %65 : i64
          %67:2 = scf.if %66 -> (index, memref<?xi64>) {
            scf.yield %arg5, %arg6 : index, memref<?xi64>
          } else {
            memref.store %64, %arg6[%62] : memref<?xi64>
            %68 = index.add %arg5, %idx1
            scf.yield %68, %arg6 : index, memref<?xi64>
          }
          scf.yield %67#0, %67#1 : index, memref<?xi64>
        } else {
          scf.yield %arg5, %arg6 : index, memref<?xi64>
        }
        scf.yield %60#0, %60#1 : index, memref<?xi64>
      }
      scf.yield %56#0, %56#1 : index, memref<?xi64>
    }
    %47 = index.add %arg0, %idx1
    %48 = arith.index_cast %46#0 : index to i64
    %c0_54 = arith.constant 0 : index
    %dim_55 = memref.dim %alloc_38, %c0_54 : memref<?xi64>
    %alloc_56 = memref.alloc(%dim_55) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_56 : memref<?xi64> to memref<?xi64>
    memref.store %48, %alloc_56[%47] : memref<?xi64>
    %subview = memref.subview %alloc_56[%47] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_57 = memref.subview %alloc_38[%47] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_57 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21 = arith.addi %9, %c1 : index
  %22:2 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %35 = memref.load %arg2[%arg0] : memref<?xi64>
    %36 = arith.addi %35, %arg1 : i64
    memref.store %36, %arg2[%arg0] : memref<?xi64>
    scf.yield %36, %arg2 : i64, memref<?xi64>
  }
  %23 = bufferization.to_tensor %22#1 : memref<?xi64>
  %24 = arith.index_cast %22#0 : i64 to index
  %25 = arith.index_cast %9 : index to i64
  %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %25, %alloc_40[%idx0] : memref<1xi64>
  %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
  %26 = bufferization.to_tensor %cast_41 : memref<?xi64>
  %alloc_42 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xi64>
  %alloc_43 = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf64>
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
  linalg.map outs(%alloc_44 : memref<?xi1>)
    () {
      linalg.yield %false : i1
    }
  scf.forall (%arg0) in (%9) {
    %35 = memref.load %22#1[%arg0] : memref<?xi64>
    %36 = arith.index_cast %35 : i64 to index
    %37 = arith.addi %arg0, %c1 : index
    %38 = memref.load %22#1[%37] : memref<?xi64>
    %39 = arith.index_cast %38 : i64 to index
    %40 = arith.subi %39, %36 : index
    %subview = memref.subview %alloc_42[%36] [%40] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_51 = memref.subview %alloc_43[%36] [%40] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %41 = arith.addi %arg0, %c1 : index
    %42 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %43 = arith.index_cast %42 : i64 to index
    %44 = memref.load %alloc_28[%41] : memref<?xi64>
    %45 = arith.index_cast %44 : i64 to index
    %c0_52 = arith.constant 0 : index
    %dim = memref.dim %alloc_44, %c0_52 : memref<?xi1>
    %alloc_53 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi1>
    memref.copy %alloc_44, %alloc_53 : memref<?xi1> to memref<?xi1>
    %46 = scf.for %arg1 = %43 to %45 step %c1 iter_args(%arg2 = %alloc_53) -> (memref<?xi1>) {
      %56 = memref.load %alloc_30[%arg1] : memref<?xi64>
      %57 = arith.index_cast %56 : i64 to index
      memref.store %true, %arg2[%57] : memref<?xi1>
      scf.yield %arg2 : memref<?xi1>
    }
    %47 = arith.index_cast %arg0 : index to i32
    %48 = arith.addi %47, %c1_i32 : i32
    %49 = arith.addi %arg0, %c1 : index
    %50 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %51 = arith.index_cast %50 : i64 to index
    %52 = memref.load %alloc_8[%49] : memref<?xi64>
    %53 = arith.index_cast %52 : i64 to index
    %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_55 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_56 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %54:4 = scf.for %arg1 = %51 to %53 step %c1 iter_args(%arg2 = %alloc_54, %arg3 = %alloc_55, %arg4 = %idx0, %arg5 = %alloc_56) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %56 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %57 = arith.index_cast %56 : i64 to index
      %58 = arith.addi %57, %c1 : index
      %59 = memref.load %alloc_28[%57] : memref<?xi64>
      %60 = arith.index_cast %59 : i64 to index
      %61 = memref.load %alloc_28[%58] : memref<?xi64>
      %62 = arith.index_cast %61 : i64 to index
      %63:4 = scf.for %arg6 = %60 to %62 step %c1 iter_args(%arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4, %arg10 = %arg5) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %64 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %65 = arith.index_cast %64 : i64 to index
        %66 = memref.load %46[%65] : memref<?xi1>
        %67:4 = scf.if %66 -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
          %68 = memref.load %alloc_30[%arg6] : memref<?xi64>
          %69 = arith.index_cast %68 : i64 to index
          %70 = memref.load %alloc_16[%arg1] : memref<?xf64>
          %71 = memref.load %alloc_36[%arg6] : memref<?xf64>
          %72 = arith.mulf %70, %71 : f64
          %73 = memref.load %arg8[%69] : memref<?xi32>
          %74 = arith.cmpi eq, %73, %48 : i32
          %75:4 = scf.if %74 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
            %76 = memref.load %arg7[%69] : memref<?xf64>
            %77 = arith.addf %76, %72 : f64
            memref.store %77, %arg7[%69] : memref<?xf64>
            scf.yield %arg8, %arg9, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          } else {
            memref.store %48, %arg8[%69] : memref<?xi32>
            memref.store %68, %arg10[%arg9] : memref<?xi64>
            %76 = index.add %arg9, %idx1
            memref.store %72, %arg7[%69] : memref<?xf64>
            scf.yield %arg8, %76, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          }
          scf.yield %75#3, %75#0, %75#1, %75#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        } else {
          scf.yield %arg7, %arg8, %arg9, %arg10 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        }
        scf.yield %67#0, %67#1, %67#2, %67#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %63#0, %63#1, %63#2, %63#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    "ta.TensorSortOp"(%54#3, %idx0, %54#2) : (memref<?xi64>, index, index) -> ()
    %55:2 = scf.for %arg1 = %c0 to %54#2 step %c1 iter_args(%arg2 = %subview, %arg3 = %subview_51) -> (memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>) {
      %56 = memref.load %54#3[%arg1] : memref<?xi64>
      %57 = arith.index_cast %56 : i64 to index
      %58 = memref.load %54#0[%57] : memref<?xf64>
      memref.store %56, %arg2[%arg1] : memref<?xi64, strided<[1], offset: ?>>
      memref.store %58, %arg3[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      scf.yield %arg2, %arg3 : memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>
    }
    %subview_57 = memref.subview %alloc_42[%36] [%40] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %55#0, %subview_57 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
    %subview_58 = memref.subview %alloc_43[%36] [%40] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %55#1, %subview_58 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
  }
  %27 = bufferization.to_tensor %alloc_43 : memref<?xf64>
  %28 = bufferization.to_tensor %alloc_42 : memref<?xi64>
  %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
  %29 = bufferization.to_tensor %alloc_45 : memref<1xindex>
  %30 = bufferization.to_memref %26 : memref<?xi64>
  %cast_46 = memref.cast %30 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %31 = bufferization.to_memref %29 : memref<1xindex>
  %cast_47 = memref.cast %31 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_47) : (memref<*xindex>) -> ()
  %32 = bufferization.to_memref %23 : memref<?xi64>
  %cast_48 = memref.cast %32 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
  %33 = bufferization.to_memref %28 : memref<?xi64>
  %cast_49 = memref.cast %33 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
  %34 = bufferization.to_memref %27 : memref<?xf64>
  %cast_50 = memref.cast %34 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_50) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_39 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %38 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        memref.store %true, %alloc_50[%39] : memref<?xi1>
      }
      %30 = arith.addi %arg0, %c1 : index
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%30] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %35 = scf.for %arg1 = %32 to %34 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %38 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.addi %39, %c1 : index
        %41 = memref.load %alloc_28[%39] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_28[%40] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = scf.for %arg3 = %42 to %44 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %46 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %47 = arith.index_cast %46 : i64 to index
          %48 = memref.load %alloc_50[%47] : memref<?xi1>
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %51 = arith.index_cast %50 : i64 to index
            %52 = index.add %arg0, %idx1
            %53 = arith.index_cast %52 : index to i64
            %54 = memref.load %alloc_51[%51] : memref<?xi64>
            %55 = arith.cmpi eq, %53, %54 : i64
            %56 = scf.if %55 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %53, %alloc_51[%51] : memref<?xi64>
              %57 = index.add %arg4, %idx1
              scf.yield %57 : index
            }
            scf.yield %56 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %49 : index
        }
        scf.yield %45 : index
      }
      %36 = index.add %arg0, %idx1
      %37 = arith.index_cast %35 : index to i64
      %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %37, %alloc_52[%36] : memref<?xi64>
      %subview = memref.subview %alloc_52[%36] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%36] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_43 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_38[%27] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = arith.subi %29, %26 : index
      %subview = memref.subview %alloc_41[%26] [%30] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_50 = memref.subview %alloc_42[%26] [%30] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %31 = arith.addi %arg0, %c1 : index
      %32 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%31] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_43, %alloc_51 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %33 to %35 step %c1 {
        %44 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        memref.store %true, %alloc_51[%45] : memref<?xi1>
      }
      %36 = arith.index_cast %arg0 : index to i32
      %37 = arith.addi %36, %c1_i32 : i32
      %38 = arith.addi %arg0, %c1 : index
      %39 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_8[%38] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %43 = scf.for %arg1 = %40 to %42 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %44 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = arith.addi %45, %c1 : index
        %47 = memref.load %alloc_28[%45] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49 = memref.load %alloc_28[%46] : memref<?xi64>
        %50 = arith.index_cast %49 : i64 to index
        %51 = scf.for %arg3 = %48 to %50 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %52 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %53 = arith.index_cast %52 : i64 to index
          %54 = memref.load %alloc_51[%53] : memref<?xi1>
          %55 = scf.if %54 -> (index) {
            %56 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %57 = arith.index_cast %56 : i64 to index
            %58 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %59 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %60 = arith.mulf %58, %59 : f64
            %61 = memref.load %alloc_53[%57] : memref<?xi32>
            %62 = arith.cmpi eq, %61, %37 : i32
            %63 = scf.if %62 -> (index) {
              %64 = memref.load %alloc_52[%57] : memref<?xf64>
              %65 = arith.addf %64, %60 : f64
              memref.store %65, %alloc_52[%57] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %37, %alloc_53[%57] : memref<?xi32>
              memref.store %56, %alloc_54[%arg4] : memref<?xi64>
              %64 = index.add %arg4, %idx1
              memref.store %60, %alloc_52[%57] : memref<?xf64>
              scf.yield %64 : index
            }
            scf.yield %63 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %55 : index
        }
        scf.yield %51 : index
      }
      "ta.TensorSortOp"(%alloc_54, %idx0, %43) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %43 step %c1 {
        %44 = memref.load %alloc_54[%arg1] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_52[%45] : memref<?xf64>
        memref.store %44, %subview[%arg1] : memref<?xi64, strided<[1], offset: ?>>
        memref.store %46, %subview_50[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      }
      %subview_55 = memref.subview %alloc_41[%26] [%30] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_55 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      %subview_56 = memref.subview %alloc_42[%26] [%30] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %subview_50, %subview_56 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
    %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
    %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
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
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_39 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        memref.store %true, %alloc_50[%38] : memref<?xi1>
      }
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%25] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_50[%46] : memref<?xi1>
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %50 = arith.index_cast %49 : i64 to index
            %51 = index.add %arg0, %idx1
            %52 = arith.index_cast %51 : index to i64
            %53 = memref.load %alloc_51[%50] : memref<?xi64>
            %54 = arith.cmpi eq, %52, %53 : i64
            %55 = scf.if %54 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %52, %alloc_51[%50] : memref<?xi64>
              %56 = index.add %arg4, %idx1
              scf.yield %56 : index
            }
            scf.yield %55 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %48 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34 : index to i64
      %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_52[%35] : memref<?xi64>
      %subview = memref.subview %alloc_52[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_43 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_38[%27] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = arith.subi %29, %26 : index
      %subview = memref.subview %alloc_41[%26] [%30] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_50 = memref.subview %alloc_42[%26] [%30] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %31 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_28[%27] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_43, %alloc_51 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %32 to %34 step %c1 {
        %42 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        memref.store %true, %alloc_51[%43] : memref<?xi1>
      }
      %35 = arith.index_cast %arg0 : index to i32
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = memref.load %alloc_8[%27] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %41 = scf.for %arg1 = %38 to %40 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %42 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = arith.addi %43, %c1 : index
        %45 = memref.load %alloc_28[%43] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_28[%44] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49 = scf.for %arg3 = %46 to %48 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %50 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %51 = arith.index_cast %50 : i64 to index
          %52 = memref.load %alloc_51[%51] : memref<?xi1>
          %53 = scf.if %52 -> (index) {
            %54 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %55 = arith.index_cast %54 : i64 to index
            %56 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %57 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %58 = arith.mulf %56, %57 : f64
            %59 = memref.load %alloc_53[%55] : memref<?xi32>
            %60 = arith.cmpi eq, %59, %36 : i32
            %61 = scf.if %60 -> (index) {
              %62 = memref.load %alloc_52[%55] : memref<?xf64>
              %63 = arith.addf %62, %58 : f64
              memref.store %63, %alloc_52[%55] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %36, %alloc_53[%55] : memref<?xi32>
              memref.store %54, %alloc_54[%arg4] : memref<?xi64>
              %62 = index.add %arg4, %idx1
              memref.store %58, %alloc_52[%55] : memref<?xf64>
              scf.yield %62 : index
            }
            scf.yield %61 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %53 : index
        }
        scf.yield %49 : index
      }
      "ta.TensorSortOp"(%alloc_54, %idx0, %41) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %41 step %c1 {
        %42 = memref.load %alloc_54[%arg1] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_52[%43] : memref<?xf64>
        memref.store %42, %subview[%arg1] : memref<?xi64, strided<[1], offset: ?>>
        memref.store %44, %subview_50[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      }
      memref.copy %subview, %subview : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview_50, %subview_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
    %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
    %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_39 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        memref.store %true, %alloc_50[%38] : memref<?xi1>
      }
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%25] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_50[%46] : memref<?xi1>
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %50 = arith.index_cast %49 : i64 to index
            %51 = index.add %arg0, %idx1
            %52 = arith.index_cast %51 : index to i64
            %53 = memref.load %alloc_51[%50] : memref<?xi64>
            %54 = arith.cmpi eq, %52, %53 : i64
            %55 = scf.if %54 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %52, %alloc_51[%50] : memref<?xi64>
              %56 = index.add %arg4, %idx1
              scf.yield %56 : index
            }
            scf.yield %55 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %48 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34 : index to i64
      %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_52[%35] : memref<?xi64>
      %subview = memref.subview %alloc_52[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_43 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_38[%27] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = arith.subi %29, %26 : index
      %subview = memref.subview %alloc_41[%26] [%30] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_50 = memref.subview %alloc_42[%26] [%30] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %31 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_28[%27] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_43, %alloc_51 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %32 to %34 step %c1 {
        %42 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        memref.store %true, %alloc_51[%43] : memref<?xi1>
      }
      %35 = arith.index_cast %arg0 : index to i32
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = memref.load %alloc_8[%27] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %41 = scf.for %arg1 = %38 to %40 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %42 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = arith.addi %43, %c1 : index
        %45 = memref.load %alloc_28[%43] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_28[%44] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49 = scf.for %arg3 = %46 to %48 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %50 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %51 = arith.index_cast %50 : i64 to index
          %52 = memref.load %alloc_51[%51] : memref<?xi1>
          %53 = scf.if %52 -> (index) {
            %54 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %55 = arith.index_cast %54 : i64 to index
            %56 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %57 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %58 = arith.mulf %56, %57 : f64
            %59 = memref.load %alloc_53[%55] : memref<?xi32>
            %60 = arith.cmpi eq, %59, %36 : i32
            %61 = scf.if %60 -> (index) {
              %62 = memref.load %alloc_52[%55] : memref<?xf64>
              %63 = arith.addf %62, %58 : f64
              memref.store %63, %alloc_52[%55] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %36, %alloc_53[%55] : memref<?xi32>
              memref.store %54, %alloc_54[%arg4] : memref<?xi64>
              %62 = index.add %arg4, %idx1
              memref.store %58, %alloc_52[%55] : memref<?xf64>
              scf.yield %62 : index
            }
            scf.yield %61 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %53 : index
        }
        scf.yield %49 : index
      }
      "ta.TensorSortOp"(%alloc_54, %idx0, %41) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %41 step %c1 {
        %42 = memref.load %alloc_54[%arg1] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_52[%43] : memref<?xf64>
        %45 = affine.apply #map()[%26, %arg1]
        memref.store %42, %alloc_41[%45] : memref<?xi64>
        %46 = affine.apply #map()[%26, %arg1]
        memref.store %44, %alloc_42[%46] : memref<?xf64>
      }
      memref.copy %subview, %subview : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview_50, %subview_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
    %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
    %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_39 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        memref.store %true, %alloc_50[%38] : memref<?xi1>
      }
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%25] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_50[%46] : memref<?xi1>
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %50 = arith.index_cast %49 : i64 to index
            %51 = index.add %arg0, %idx1
            %52 = arith.index_cast %51 : index to i64
            %53 = memref.load %alloc_51[%50] : memref<?xi64>
            %54 = arith.cmpi eq, %52, %53 : i64
            %55 = scf.if %54 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %52, %alloc_51[%50] : memref<?xi64>
              %56 = index.add %arg4, %idx1
              scf.yield %56 : index
            }
            scf.yield %55 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %48 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34 : index to i64
      %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_52[%35] : memref<?xi64>
      %subview = memref.subview %alloc_52[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    linalg.map outs(%alloc_43 : memref<?xi1>)
      () {
        linalg.yield %false : i1
      }
    scf.forall (%arg0) in (%9) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_43, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %29 to %31 step %c1 {
        %39 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        memref.store %true, %alloc_50[%40] : memref<?xi1>
      }
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_8[%27] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %47 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = memref.load %alloc_50[%48] : memref<?xi1>
          %50 = scf.if %49 -> (index) {
            %51 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %52 = arith.index_cast %51 : i64 to index
            %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %54 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = memref.load %alloc_52[%52] : memref<?xi32>
            %57 = arith.cmpi eq, %56, %33 : i32
            %58 = scf.if %57 -> (index) {
              %59 = memref.load %alloc_51[%52] : memref<?xf64>
              %60 = arith.addf %59, %55 : f64
              memref.store %60, %alloc_51[%52] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %33, %alloc_52[%52] : memref<?xi32>
              memref.store %51, %alloc_53[%arg4] : memref<?xi64>
              %59 = index.add %arg4, %idx1
              memref.store %55, %alloc_51[%52] : memref<?xf64>
              scf.yield %59 : index
            }
            scf.yield %58 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %50 : index
        }
        scf.yield %46 : index
      }
      "ta.TensorSortOp"(%alloc_53, %idx0, %38) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %38 step %c1 {
        %39 = memref.load %alloc_53[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_51[%40] : memref<?xf64>
        %42 = affine.apply #map()[%26, %arg1]
        memref.store %39, %alloc_41[%42] : memref<?xi64>
        %43 = affine.apply #map()[%26, %arg1]
        memref.store %41, %alloc_42[%43] : memref<?xf64>
      }
    }
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
    %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
    %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
  linalg.map outs(%alloc_39 : memref<?xi1>)
    () {
      linalg.yield %false : i1
    }
  scf.forall (%arg0) in (%9) {
    %25 = arith.addi %arg0, %c1 : index
    %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_28[%25] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
    scf.for %arg1 = %27 to %29 step %c1 {
      %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      memref.store %true, %alloc_50[%38] : memref<?xi1>
    }
    %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32 = memref.load %alloc_8[%25] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
      %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = arith.addi %38, %c1 : index
      %40 = memref.load %alloc_28[%38] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = memref.load %alloc_28[%39] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_50[%46] : memref<?xi1>
        %48 = scf.if %47 -> (index) {
          %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %50 = arith.index_cast %49 : i64 to index
          %51 = index.add %arg0, %idx1
          %52 = arith.index_cast %51 : index to i64
          %53 = memref.load %alloc_51[%50] : memref<?xi64>
          %54 = arith.cmpi eq, %52, %53 : i64
          %55 = scf.if %54 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %52, %alloc_51[%50] : memref<?xi64>
            %56 = index.add %arg4, %idx1
            scf.yield %56 : index
          }
          scf.yield %55 : index
        } else {
          scf.yield %arg4 : index
        }
        scf.yield %48 : index
      }
      scf.yield %44 : index
    }
    %35 = index.add %arg0, %idx1
    %36 = arith.index_cast %34 : index to i64
    %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
    memref.store %36, %alloc_52[%35] : memref<?xi64>
    %subview = memref.subview %alloc_52[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_53 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21 = arith.addi %9, %c1 : index
  %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %26 = arith.addi %25, %arg1 : i64
    memref.store %26, %alloc_38[%arg0] : memref<?xi64>
    scf.yield %26 : i64
  }
  %23 = arith.index_cast %22 : i64 to index
  %24 = arith.index_cast %9 : index to i64
  %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %24, %alloc_40[%idx0] : memref<1xi64>
  %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
  linalg.map outs(%alloc_43 : memref<?xi1>)
    () {
      linalg.yield %false : i1
    }
  scf.forall (%arg0) in (%9) {
    %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %27 = arith.addi %arg0, %c1 : index
    %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_28[%27] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    memref.copy %alloc_43, %alloc_50 : memref<?xi1> to memref<?xi1>
    scf.for %arg1 = %29 to %31 step %c1 {
      %39 = memref.load %alloc_30[%arg1] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      memref.store %true, %alloc_50[%40] : memref<?xi1>
    }
    %32 = arith.index_cast %arg0 : index to i32
    %33 = arith.addi %32, %c1_i32 : i32
    %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = memref.load %alloc_8[%27] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
      %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = arith.addi %40, %c1 : index
      %42 = memref.load %alloc_28[%40] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = memref.load %alloc_28[%41] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %47 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49 = memref.load %alloc_50[%48] : memref<?xi1>
        %50 = scf.if %49 -> (index) {
          %51 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %52 = arith.index_cast %51 : i64 to index
          %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
          %54 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %55 = arith.mulf %53, %54 : f64
          %56 = memref.load %alloc_52[%52] : memref<?xi32>
          %57 = arith.cmpi eq, %56, %33 : i32
          %58 = scf.if %57 -> (index) {
            %59 = memref.load %alloc_51[%52] : memref<?xf64>
            %60 = arith.addf %59, %55 : f64
            memref.store %60, %alloc_51[%52] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %33, %alloc_52[%52] : memref<?xi32>
            memref.store %51, %alloc_53[%arg4] : memref<?xi64>
            %59 = index.add %arg4, %idx1
            memref.store %55, %alloc_51[%52] : memref<?xf64>
            scf.yield %59 : index
          }
          scf.yield %58 : index
        } else {
          scf.yield %arg4 : index
        }
        scf.yield %50 : index
      }
      scf.yield %46 : index
    }
    "ta.TensorSortOp"(%alloc_53, %idx0, %38) : (memref<?xi64>, index, index) -> ()
    scf.for %arg1 = %c0 to %38 step %c1 {
      %39 = memref.load %alloc_53[%arg1] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_51[%40] : memref<?xf64>
      %42 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%26, %arg1]
      memref.store %39, %alloc_41[%42] : memref<?xi64>
      %43 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%26, %arg1]
      memref.store %41, %alloc_42[%43] : memref<?xf64>
    }
  }
  %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
  %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
  %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
  %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
  %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
  %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %true = arith.constant true
  %cst = arith.constant 0.000000e+00 : f64
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
  %false = arith.constant false
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
  }
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
  }
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
  }
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
  }
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
  }
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
  }
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
  }
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
  }
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
  }
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  scf.for %arg0 = %c0 to %10 step %c1 {
    memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
  }
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  scf.for %arg0 = %c0 to %11 step %c1 {
    memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
  }
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  scf.for %arg0 = %c0 to %12 step %c1 {
    memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
  }
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  scf.for %arg0 = %c0 to %13 step %c1 {
    memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
  }
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  scf.for %arg0 = %c0 to %14 step %c1 {
    memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
  }
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  scf.for %arg0 = %c0 to %15 step %c1 {
    memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
  }
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  scf.for %arg0 = %c0 to %16 step %c1 {
    memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
  }
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  scf.for %arg0 = %c0 to %17 step %c1 {
    memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
  }
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  scf.for %arg0 = %c0 to %18 step %c1 {
    memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
  }
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
  %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
  scf.for %arg0 = %c0 to %19 step %c1 {
    memref.store %false, %alloc_39[%arg0] : memref<?xi1>
  }
  scf.forall (%arg0) in (%9) {
    %25 = arith.addi %arg0, %c1 : index
    %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_28[%25] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
    scf.for %arg1 = %27 to %29 step %c1 {
      %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      memref.store %true, %alloc_50[%38] : memref<?xi1>
    }
    %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32 = memref.load %alloc_8[%25] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
      %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = arith.addi %38, %c1 : index
      %40 = memref.load %alloc_28[%38] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = memref.load %alloc_28[%39] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_50[%46] : memref<?xi1>
        %48 = scf.if %47 -> (index) {
          %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %50 = arith.index_cast %49 : i64 to index
          %51 = index.add %arg0, %idx1
          %52 = arith.index_cast %51 : index to i64
          %53 = memref.load %alloc_51[%50] : memref<?xi64>
          %54 = arith.cmpi eq, %52, %53 : i64
          %55 = scf.if %54 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %52, %alloc_51[%50] : memref<?xi64>
            %56 = index.add %arg4, %idx1
            scf.yield %56 : index
          }
          scf.yield %55 : index
        } else {
          scf.yield %arg4 : index
        }
        scf.yield %48 : index
      }
      scf.yield %44 : index
    }
    %35 = index.add %arg0, %idx1
    %36 = arith.index_cast %34 : index to i64
    %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
    memref.store %36, %alloc_52[%35] : memref<?xi64>
    %subview = memref.subview %alloc_52[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_53 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21 = arith.addi %9, %c1 : index
  %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %26 = arith.addi %25, %arg1 : i64
    memref.store %26, %alloc_38[%arg0] : memref<?xi64>
    scf.yield %26 : i64
  }
  %23 = arith.index_cast %22 : i64 to index
  %24 = arith.index_cast %9 : index to i64
  %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %24, %alloc_40[%idx0] : memref<1xi64>
  %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
  scf.for %arg0 = %c0 to %19 step %c1 {
    memref.store %false, %alloc_43[%arg0] : memref<?xi1>
  }
  scf.forall (%arg0) in (%9) {
    %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %27 = arith.addi %arg0, %c1 : index
    %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_28[%27] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    memref.copy %alloc_43, %alloc_50 : memref<?xi1> to memref<?xi1>
    scf.for %arg1 = %29 to %31 step %c1 {
      %39 = memref.load %alloc_30[%arg1] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      memref.store %true, %alloc_50[%40] : memref<?xi1>
    }
    %32 = arith.index_cast %arg0 : index to i32
    %33 = arith.addi %32, %c1_i32 : i32
    %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = memref.load %alloc_8[%27] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
      %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = arith.addi %40, %c1 : index
      %42 = memref.load %alloc_28[%40] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = memref.load %alloc_28[%41] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %47 = memref.load %alloc_30[%arg3] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49 = memref.load %alloc_50[%48] : memref<?xi1>
        %50 = scf.if %49 -> (index) {
          %51 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %52 = arith.index_cast %51 : i64 to index
          %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
          %54 = memref.load %alloc_36[%arg3] : memref<?xf64>
          %55 = arith.mulf %53, %54 : f64
          %56 = memref.load %alloc_52[%52] : memref<?xi32>
          %57 = arith.cmpi eq, %56, %33 : i32
          %58 = scf.if %57 -> (index) {
            %59 = memref.load %alloc_51[%52] : memref<?xf64>
            %60 = arith.addf %59, %55 : f64
            memref.store %60, %alloc_51[%52] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %33, %alloc_52[%52] : memref<?xi32>
            memref.store %51, %alloc_53[%arg4] : memref<?xi64>
            %59 = index.add %arg4, %idx1
            memref.store %55, %alloc_51[%52] : memref<?xf64>
            scf.yield %59 : index
          }
          scf.yield %58 : index
        } else {
          scf.yield %arg4 : index
        }
        scf.yield %50 : index
      }
      scf.yield %46 : index
    }
    "ta.TensorSortOp"(%alloc_53, %idx0, %38) : (memref<?xi64>, index, index) -> ()
    scf.for %arg1 = %c0 to %38 step %c1 {
      %39 = memref.load %alloc_53[%arg1] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_51[%40] : memref<?xf64>
      %42 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%26, %arg1]
      memref.store %39, %alloc_41[%42] : memref<?xi64>
      %43 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%26, %arg1]
      memref.store %41, %alloc_42[%43] : memref<?xf64>
    }
  }
  %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
  %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
  %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
  %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
  %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
  %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_39[%arg0] : memref<?xi1>
    }
    scf.forall (%arg0) in (%9) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        memref.store %true, %alloc_50[%38] : memref<?xi1>
      }
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%25] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_50[%46] : memref<?xi1>
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %50 = arith.index_cast %49 : i64 to index
            %51 = index.add %arg0, %idx1
            %52 = arith.index_cast %51 : index to i64
            %53 = memref.load %alloc_51[%50] : memref<?xi64>
            %54 = arith.cmpi eq, %52, %53 : i64
            %55 = scf.if %54 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %52, %alloc_51[%50] : memref<?xi64>
              %56 = index.add %arg4, %idx1
              scf.yield %56 : index
            }
            scf.yield %55 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %48 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34 : index to i64
      %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_52[%35] : memref<?xi64>
      %subview = memref.subview %alloc_52[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_43[%arg0] : memref<?xi1>
    }
    scf.forall (%arg0) in (%9) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_43, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %29 to %31 step %c1 {
        %39 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        memref.store %true, %alloc_50[%40] : memref<?xi1>
      }
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_8[%27] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %47 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = memref.load %alloc_50[%48] : memref<?xi1>
          %50 = scf.if %49 -> (index) {
            %51 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %52 = arith.index_cast %51 : i64 to index
            %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %54 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = memref.load %alloc_52[%52] : memref<?xi32>
            %57 = arith.cmpi eq, %56, %33 : i32
            %58 = scf.if %57 -> (index) {
              %59 = memref.load %alloc_51[%52] : memref<?xf64>
              %60 = arith.addf %59, %55 : f64
              memref.store %60, %alloc_51[%52] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %33, %alloc_52[%52] : memref<?xi32>
              memref.store %51, %alloc_53[%arg4] : memref<?xi64>
              %59 = index.add %arg4, %idx1
              memref.store %55, %alloc_51[%52] : memref<?xf64>
              scf.yield %59 : index
            }
            scf.yield %58 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %50 : index
        }
        scf.yield %46 : index
      }
      "ta.TensorSortOp"(%alloc_53, %idx0, %38) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %38 step %c1 {
        %39 = memref.load %alloc_53[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_51[%40] : memref<?xf64>
        %42 = arith.addi %26, %arg1 : index
        memref.store %39, %alloc_41[%42] : memref<?xi64>
        %43 = arith.addi %26, %arg1 : index
        memref.store %41, %alloc_42[%43] : memref<?xf64>
      }
    }
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
    %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
    %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_39[%arg0] : memref<?xi1>
    }
    %c0_40 = arith.constant 0 : index
    %c1_41 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_40) to (%9) step (%c1_41) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_54 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        memref.store %true, %alloc_54[%38] : memref<?xi1>
      }
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%25] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %alloc_55 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_54[%46] : memref<?xi1>
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %50 = arith.index_cast %49 : i64 to index
            %51 = index.add %arg0, %idx1
            %52 = arith.index_cast %51 : index to i64
            %53 = memref.load %alloc_55[%50] : memref<?xi64>
            %54 = arith.cmpi eq, %52, %53 : i64
            %55 = scf.if %54 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %52, %alloc_55[%50] : memref<?xi64>
              %56 = index.add %arg4, %idx1
              scf.yield %56 : index
            }
            scf.yield %55 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %48 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34 : index to i64
      %alloc_56 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_56 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_56[%35] : memref<?xi64>
      %subview = memref.subview %alloc_56[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_57 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_57 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_42[%idx0] : memref<1xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_44 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_45[%arg0] : memref<?xi1>
    }
    %c0_46 = arith.constant 0 : index
    %c1_47 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_46) to (%9) step (%c1_47) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_45, %alloc_54 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %29 to %31 step %c1 {
        %39 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        memref.store %true, %alloc_54[%40] : memref<?xi1>
      }
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_8[%27] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %alloc_55 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_56 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_57 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %47 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = memref.load %alloc_54[%48] : memref<?xi1>
          %50 = scf.if %49 -> (index) {
            %51 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %52 = arith.index_cast %51 : i64 to index
            %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %54 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = memref.load %alloc_56[%52] : memref<?xi32>
            %57 = arith.cmpi eq, %56, %33 : i32
            %58 = scf.if %57 -> (index) {
              %59 = memref.load %alloc_55[%52] : memref<?xf64>
              %60 = arith.addf %59, %55 : f64
              memref.store %60, %alloc_55[%52] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %33, %alloc_56[%52] : memref<?xi32>
              memref.store %51, %alloc_57[%arg4] : memref<?xi64>
              %59 = index.add %arg4, %idx1
              memref.store %55, %alloc_55[%52] : memref<?xf64>
              scf.yield %59 : index
            }
            scf.yield %58 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %50 : index
        }
        scf.yield %46 : index
      }
      "ta.TensorSortOp"(%alloc_57, %idx0, %38) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %38 step %c1 {
        %39 = memref.load %alloc_57[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_55[%40] : memref<?xf64>
        %42 = arith.addi %26, %arg1 : index
        memref.store %39, %alloc_43[%42] : memref<?xi64>
        %43 = arith.addi %26, %arg1 : index
        memref.store %41, %alloc_44[%43] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_48 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_48[%idx0] : memref<1xindex>
    %cast_49 = memref.cast %alloc_42 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_48 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_50) : (memref<*xindex>) -> ()
    %cast_51 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_51) : (memref<*xi64>) -> ()
    %cast_52 = memref.cast %alloc_43 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_52) : (memref<*xi64>) -> ()
    %cast_53 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_53) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_39[%arg0] : memref<?xi1>
    }
    %c0_40 = arith.constant 0 : index
    %c1_41 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_40) to (%9) step (%c1_41) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_54 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        memref.store %true, %alloc_54[%38] : memref<?xi1>
      }
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%25] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %alloc_55 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_54[%46] : memref<?xi1>
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %50 = arith.index_cast %49 : i64 to index
            %51 = index.add %arg0, %idx1
            %52 = arith.index_cast %51 : index to i64
            %53 = memref.load %alloc_55[%50] : memref<?xi64>
            %54 = arith.cmpi eq, %52, %53 : i64
            %55 = scf.if %54 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %52, %alloc_55[%50] : memref<?xi64>
              %56 = index.add %arg4, %idx1
              scf.yield %56 : index
            }
            scf.yield %55 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %48 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34 : index to i64
      %alloc_56 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_56 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_56[%35] : memref<?xi64>
      %subview = memref.subview %alloc_56[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_57 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_57 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_42[%idx0] : memref<1xi64>
    %alloc_43 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_44 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_45[%arg0] : memref<?xi1>
    }
    %c0_46 = arith.constant 0 : index
    %c1_47 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_46) to (%9) step (%c1_47) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %alloc_54 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_45, %alloc_54 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %29 to %31 step %c1 {
        %39 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        memref.store %true, %alloc_54[%40] : memref<?xi1>
      }
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_8[%27] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %alloc_55 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_56 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_57 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %47 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = memref.load %alloc_54[%48] : memref<?xi1>
          %50 = scf.if %49 -> (index) {
            %51 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %52 = arith.index_cast %51 : i64 to index
            %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %54 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = memref.load %alloc_56[%52] : memref<?xi32>
            %57 = arith.cmpi eq, %56, %33 : i32
            %58 = scf.if %57 -> (index) {
              %59 = memref.load %alloc_55[%52] : memref<?xf64>
              %60 = arith.addf %59, %55 : f64
              memref.store %60, %alloc_55[%52] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %33, %alloc_56[%52] : memref<?xi32>
              memref.store %51, %alloc_57[%arg4] : memref<?xi64>
              %59 = index.add %arg4, %idx1
              memref.store %55, %alloc_55[%52] : memref<?xf64>
              scf.yield %59 : index
            }
            scf.yield %58 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %50 : index
        }
        scf.yield %46 : index
      }
      "ta.TensorSortOp"(%alloc_57, %idx0, %38) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %38 step %c1 {
        %39 = memref.load %alloc_57[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_55[%40] : memref<?xf64>
        %42 = arith.addi %26, %arg1 : index
        memref.store %39, %alloc_43[%42] : memref<?xi64>
        %43 = arith.addi %26, %arg1 : index
        memref.store %41, %alloc_44[%43] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_48 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_48[%idx0] : memref<1xindex>
    %cast_49 = memref.cast %alloc_42 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_48 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_50) : (memref<*xindex>) -> ()
    %cast_51 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_51) : (memref<*xi64>) -> ()
    %cast_52 = memref.cast %alloc_43 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_52) : (memref<*xi64>) -> ()
    %cast_53 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_53) : (memref<*xf64>) -> ()
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
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_39[%arg0] : memref<?xi1>
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        memref.store %true, %alloc_50[%38] : memref<?xi1>
      }
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%25] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_50[%46] : memref<?xi1>
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %50 = arith.index_cast %49 : i64 to index
            %51 = index.add %arg0, %idx1
            %52 = arith.index_cast %51 : index to i64
            %53 = memref.load %alloc_51[%50] : memref<?xi64>
            %54 = arith.cmpi eq, %52, %53 : i64
            %55 = scf.if %54 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %52, %alloc_51[%50] : memref<?xi64>
              %56 = index.add %arg4, %idx1
              scf.yield %56 : index
            }
            scf.yield %55 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %48 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34 : index to i64
      %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_52[%35] : memref<?xi64>
      %subview = memref.subview %alloc_52[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_43[%arg0] : memref<?xi1>
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_43, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %29 to %31 step %c1 {
        %39 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        memref.store %true, %alloc_50[%40] : memref<?xi1>
      }
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_8[%27] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %47 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = memref.load %alloc_50[%48] : memref<?xi1>
          %50 = scf.if %49 -> (index) {
            %51 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %52 = arith.index_cast %51 : i64 to index
            %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %54 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = memref.load %alloc_52[%52] : memref<?xi32>
            %57 = arith.cmpi eq, %56, %33 : i32
            %58 = scf.if %57 -> (index) {
              %59 = memref.load %alloc_51[%52] : memref<?xf64>
              %60 = arith.addf %59, %55 : f64
              memref.store %60, %alloc_51[%52] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %33, %alloc_52[%52] : memref<?xi32>
              memref.store %51, %alloc_53[%arg4] : memref<?xi64>
              %59 = index.add %arg4, %idx1
              memref.store %55, %alloc_51[%52] : memref<?xf64>
              scf.yield %59 : index
            }
            scf.yield %58 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %50 : index
        }
        scf.yield %46 : index
      }
      "ta.TensorSortOp"(%alloc_53, %idx0, %38) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %38 step %c1 {
        %39 = memref.load %alloc_53[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_51[%40] : memref<?xf64>
        %42 = arith.addi %26, %arg1 : index
        memref.store %39, %alloc_41[%42] : memref<?xi64>
        %43 = arith.addi %26, %arg1 : index
        memref.store %41, %alloc_42[%43] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
    %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
    %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
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
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_39[%arg0] : memref<?xi1>
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        memref.store %true, %alloc_50[%38] : memref<?xi1>
      }
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%25] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_50[%46] : memref<?xi1>
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %50 = arith.index_cast %49 : i64 to index
            %51 = index.add %arg0, %idx1
            %52 = arith.index_cast %51 : index to i64
            %53 = memref.load %alloc_51[%50] : memref<?xi64>
            %54 = arith.cmpi eq, %52, %53 : i64
            %55 = scf.if %54 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %52, %alloc_51[%50] : memref<?xi64>
              %56 = index.add %arg4, %idx1
              scf.yield %56 : index
            }
            scf.yield %55 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %48 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34 : index to i64
      %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_52[%35] : memref<?xi64>
      %subview = memref.subview %alloc_52[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_43[%arg0] : memref<?xi1>
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_43, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %29 to %31 step %c1 {
        %39 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        memref.store %true, %alloc_50[%40] : memref<?xi1>
      }
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_8[%27] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %47 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = memref.load %alloc_50[%48] : memref<?xi1>
          %50 = scf.if %49 -> (index) {
            %51 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %52 = arith.index_cast %51 : i64 to index
            %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %54 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = memref.load %alloc_52[%52] : memref<?xi32>
            %57 = arith.cmpi eq, %56, %33 : i32
            %58 = scf.if %57 -> (index) {
              %59 = memref.load %alloc_51[%52] : memref<?xf64>
              %60 = arith.addf %59, %55 : f64
              memref.store %60, %alloc_51[%52] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %33, %alloc_52[%52] : memref<?xi32>
              memref.store %51, %alloc_53[%arg4] : memref<?xi64>
              %59 = index.add %arg4, %idx1
              memref.store %55, %alloc_51[%52] : memref<?xf64>
              scf.yield %59 : index
            }
            scf.yield %58 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %50 : index
        }
        scf.yield %46 : index
      }
      "ta.TensorSortOp"(%alloc_53, %idx0, %38) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %38 step %c1 {
        %39 = memref.load %alloc_53[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_51[%40] : memref<?xf64>
        %42 = arith.addi %26, %arg1 : index
        memref.store %39, %alloc_41[%42] : memref<?xi64>
        %43 = arith.addi %26, %arg1 : index
        memref.store %41, %alloc_42[%43] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
    %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
    %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
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
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
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
    %false = arith.constant false
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
    %alloc_39 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_39[%arg0] : memref<?xi1>
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_39, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %27 to %29 step %c1 {
        %37 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        memref.store %true, %alloc_50[%38] : memref<?xi1>
      }
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%25] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %34 = scf.for %arg1 = %31 to %33 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %37 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg3 = %41 to %43 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %45 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_50[%46] : memref<?xi1>
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %50 = arith.index_cast %49 : i64 to index
            %51 = index.add %arg0, %idx1
            %52 = arith.index_cast %51 : index to i64
            %53 = memref.load %alloc_51[%50] : memref<?xi64>
            %54 = arith.cmpi eq, %52, %53 : i64
            %55 = scf.if %54 -> (index) {
              scf.yield %arg4 : index
            } else {
              memref.store %52, %alloc_51[%50] : memref<?xi64>
              %56 = index.add %arg4, %idx1
              scf.yield %56 : index
            }
            scf.yield %55 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %48 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34 : index to i64
      %alloc_52 = memref.alloc(%20) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_52[%35] : memref<?xi64>
      %subview = memref.subview %alloc_52[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %21 = arith.addi %9, %c1 : index
    %22 = scf.for %arg0 = %c1 to %21 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %25, %arg1 : i64
      memref.store %26, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %26 : i64
    }
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
    scf.for %arg0 = %c0 to %19 step %c1 {
      memref.store %false, %alloc_43[%arg0] : memref<?xi1>
    }
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %arg0, %c1 : index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %alloc_50 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi1>
      memref.copy %alloc_43, %alloc_50 : memref<?xi1> to memref<?xi1>
      scf.for %arg1 = %29 to %31 step %c1 {
        %39 = memref.load %alloc_30[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        memref.store %true, %alloc_50[%40] : memref<?xi1>
      }
      %32 = arith.index_cast %arg0 : index to i32
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_8[%27] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %alloc_51 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
      %alloc_53 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      %38 = scf.for %arg1 = %35 to %37 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %39 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.addi %40, %c1 : index
        %42 = memref.load %alloc_28[%40] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_28[%41] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = scf.for %arg3 = %43 to %45 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %47 = memref.load %alloc_30[%arg3] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = memref.load %alloc_50[%48] : memref<?xi1>
          %50 = scf.if %49 -> (index) {
            %51 = memref.load %alloc_30[%arg3] : memref<?xi64>
            %52 = arith.index_cast %51 : i64 to index
            %53 = memref.load %alloc_16[%arg1] : memref<?xf64>
            %54 = memref.load %alloc_36[%arg3] : memref<?xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = memref.load %alloc_52[%52] : memref<?xi32>
            %57 = arith.cmpi eq, %56, %33 : i32
            %58 = scf.if %57 -> (index) {
              %59 = memref.load %alloc_51[%52] : memref<?xf64>
              %60 = arith.addf %59, %55 : f64
              memref.store %60, %alloc_51[%52] : memref<?xf64>
              scf.yield %arg4 : index
            } else {
              memref.store %33, %alloc_52[%52] : memref<?xi32>
              memref.store %51, %alloc_53[%arg4] : memref<?xi64>
              %59 = index.add %arg4, %idx1
              memref.store %55, %alloc_51[%52] : memref<?xf64>
              scf.yield %59 : index
            }
            scf.yield %58 : index
          } else {
            scf.yield %arg4 : index
          }
          scf.yield %50 : index
        }
        scf.yield %46 : index
      }
      "ta.TensorSortOp"(%alloc_53, %idx0, %38) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %38 step %c1 {
        %39 = memref.load %alloc_53[%arg1] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_51[%40] : memref<?xf64>
        %42 = arith.addi %26, %arg1 : index
        memref.store %39, %alloc_41[%42] : memref<?xi64>
        %43 = arith.addi %26, %arg1 : index
        memref.store %41, %alloc_42[%43] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_44[%idx0] : memref<1xindex>
    %cast_45 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_44 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_46) : (memref<*xindex>) -> ()
    %cast_47 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_49) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
