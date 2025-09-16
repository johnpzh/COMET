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
  %17:2 = "it.itree"(%12, %splat) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>):
    %18 = "it.RootOp"() : () -> !it.index_tree
    %19 = "it.DenseDomainOp"(%1, %0, %13) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %20 = "it.IndexOp"(%18, %19) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %20) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %21 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%13, %20) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %22 = "it.SparseDomainOp"(%13, %14, %15, %dim_3, %dim_4, %16, %pos_6) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %23 = "it.FillMaskOp"(%20, %22, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
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
    %33 = "it.ZeroMaskOp"(%20, %22, %23) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %32, %33 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>)
  "ta.set_op"(%17#0, %12) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %61:2 = "it.itree"(%56, %splat) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%23, %22, %57) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%57, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%57, %58, %59, %dim_84, %dim_85, %60, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
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
    %77 = "it.ZeroMaskOp"(%64, %66, %67) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %76, %77 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>)
  "ta.set_op"(%61#0, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %61:2 = "it.itree"(%56, %splat) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%23, %22, %57) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%57, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%57, %58, %59, %dim_84, %dim_85, %60, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
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
    %77 = "it.ZeroMaskOp"(%64, %66, %67) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %76, %77 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>)
  "ta.set_op"(%61#0, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %61:2 = "it.itree"(%56, %splat) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%23, %22, %57) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%57, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%57, %58, %59, %dim_84, %dim_85, %60, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
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
    %77 = "it.ZeroMaskOp"(%64, %66, %67) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %76, %77 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>)
  "ta.set_op"(%61#0, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %62:2 = "it.itree"(%57, %splat) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>):
    %63 = "it.RootOp"() : () -> !it.index_tree
    %64 = "it.DenseDomainOp"(%23, %22, %58) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%58, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %67 = "it.SparseDomainOp"(%58, %59, %60, %dim_84, %dim_85, %61, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %68 = "it.FillMaskOp"(%65, %67, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
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
    %78 = "it.ZeroMaskOp"(%65, %67, %68) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %77, %78 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>)
  "ta.set_op"(%62#0, %57) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %62:2 = "it.itree"(%57, %splat) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>):
    %63 = "it.RootOp"() : () -> !it.index_tree
    %64 = "it.DenseDomainOp"(%23, %22, %58) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%58, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %67 = "it.SparseDomainOp"(%58, %59, %60, %dim_84, %dim_85, %61, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %68 = "it.FillMaskOp"(%65, %67, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
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
    %78 = "it.ZeroMaskOp"(%65, %67, %68) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %77, %78 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>)
  "ta.set_op"(%62#0, %57) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %62:2 = "it.itree"(%57, %splat) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>):
    %63 = "it.RootOp"() : () -> !it.index_tree
    %64 = "it.DenseDomainOp"(%23, %22, %58) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%58, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %67 = "it.SparseDomainOp"(%58, %59, %60, %dim_84, %dim_85, %61, %pos_87) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %68 = "it.FillMaskOp"(%65, %67, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
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
    %78 = "it.ZeroMaskOp"(%65, %67, %68) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %77, %78 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>)
  "ta.set_op"(%62#0, %57) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %60:2 = "it.itree"(%59, %splat) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>):
    %61 = "it.RootOp"() : () -> !it.index_tree
    %62 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.IndexOp"(%61, %62) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %64 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%49, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %66 = "it.FillMaskOp"(%63, %65, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
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
    %76 = "it.ZeroMaskOp"(%63, %65, %66) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %75, %76 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>)
  "ta.set_op"(%60#0, %59) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %61:3 = "it.itree"(%59, %splat, %60) <{operandSegmentSizes = array<i32: 1, 2>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>, %arg2: !ta.workspace<f64, i64, ?>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%49, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %68 = "it.WorkspaceStartRowOp"(%64, %arg2) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
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
    %83 = "it.ZeroMaskOp"(%64, %66, %67) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %82, %83, %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>, !ta.workspace<f64, i64, ?>)
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
  %61:3 = "it.itree"(%59, %splat, %60) <{operandSegmentSizes = array<i32: 1, 2>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>, %arg2: !ta.workspace<f64, i64, ?>):
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%49, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.FillMaskOp"(%64, %66, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %68 = "it.WorkspaceStartRowOp"(%64, %arg2) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
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
    %83 = "it.ZeroMaskOp"(%64, %66, %67) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %82, %83, %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>, !ta.workspace<f64, i64, ?>)
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
  %55:2 = "it.itree"(%54, %splat) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>, %arg1: tensor<?xi1>):
    %59 = "it.RootOp"() : () -> !it.index_tree
    %60 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%49, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%20, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %63 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_46) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %64 = "it.FillMaskOp"(%61, %62, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %65 = "it.IndexOp"(%61, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%45, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.MaskedDomainOp"(%64, %66, %48) : (tensor<?xi1>, !it.domain, index) -> !it.domain
    %68 = "it.IndexOp"(%65, %67) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %69 = "it.ComputeSymbolicDomainOp"(%68, %arg0) <{is_unique = false}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %70 = "it.ComputeSymbolicDomainRowOp"(%61, %69) <{needs_mark = true}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %71 = "it.ZeroMaskOp"(%61, %62, %64) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %70, %71 : !it.symbolic_domain<64>, tensor<?xi1>
  }) : (!it.symbolic_domain<64>, tensor<?xi1>) -> (!it.symbolic_domain<64>, tensor<?xi1>)
  %56 = "it.IndexTreeSparseTensorOp"(%50, %55#0) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %splat_44 = tensor.splat %false[%53] : tensor<?xi1>
  %57 = "ta.AllocWorkspace"(%56) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %58:3 = "it.itree"(%56, %splat_44, %57) <{operandSegmentSizes = array<i32: 1, 2>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xi1>, %arg2: !ta.workspace<f64, i64, ?>):
    %59 = "it.RootOp"() : () -> !it.index_tree
    %60 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%49, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %63 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_46) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %64 = "it.FillMaskOp"(%61, %63, %arg1) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    %65 = "it.WorkspaceStartRowOp"(%61, %arg2) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
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
    %80 = "it.ZeroMaskOp"(%61, %63, %64) : (!it.index, !it.domain, tensor<?xi1>) -> tensor<?xi1>
    it.yield %79, %80, %57 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi1>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%58#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

Assertion failed: (isa<To>(Val) && "cast<Ty>() argument of incompatible type!"), function cast, file Casting.h, line 566.
run00.ta_each_step.sh: line 74: 38609 Abort trap: 6           ../../cmake-build-debug/bin/comet-opt --convert-ta-to-it --convert-to-loops --opt-comp-workspace --mlir-print-ir-after-all ../../test/integration/ops/mult_spgemm_CSRxCSR_oCSR_wMasking.ta
