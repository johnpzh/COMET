// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1) -> (d0, d1)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %3 = "ta.dim"(%2, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %4 = "ta.dim"(%2, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %5 = "ta.spTensor_decl"(%3, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %6 = "ta.spTensor_decl"(%3, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    %7 = "ta.elews_mul"(%2, %5, %0, %1, %0, %1, %0, %1) <{MaskType = "none", indexing_maps = [#map, #map, #map], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %3 = "ta.dim"(%2, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %4 = "ta.dim"(%2, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %5 = "ta.spTensor_decl"(%3, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %6 = "ta.spTensor_decl"(%3, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %7 = "ta.elews_mul"(%2, %5, %0, %1, %0, %1, %0, %1) <{MaskType = "none", indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %3 = "ta.dim"(%2, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %4 = "ta.dim"(%2, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %5 = "ta.spTensor_decl"(%3, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %6 = "ta.spTensor_decl"(%3, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %7 = "it.itree"(%6) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.IndexOp"(%8) <{IsParallel = false}> : (!it.index_tree) -> !it.index
    %10 = "it.IndexOp"(%9) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%2, %9) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%2, %10, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%2, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%5, %9) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%5, %10, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%5, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %14 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.spTensor_decl"(%1, %2) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %4 = "ta.spTensor_decl"(%1, %2) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %5 = "it.itree"(%4) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %6 = "it.RootOp"() : () -> !it.index_tree
    %7 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %12 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %13 = "it.DomainIntersectionOp"(%12, %11) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %14 = "it.IndexOp"(%10, %13) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %14, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %18 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%5, %4) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
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
  %7 = "ta.spTensor_decl"(%5, %6) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %8 = "ta.SpTensorGetDimPos"(%7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %9 = "ta.SpTensorGetDimCrd"(%7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_1 = tensor.dim %8, %c0 : tensor<?xi64>
  %dim_2 = tensor.dim %9, %c0 : tensor<?xi64>
  %10 = "ta.SpTensorGetDimSize"(%7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %11 = "ta.spTensor_decl"(%5, %6) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%7) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %12 = "it.itree"(%11) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.DenseDomainOp"(%1, %0, %7) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.IndexOp"(%13, %14) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %16 = "it.SparseDomainOp"(%7, %8, %9, %dim_1, %dim_2, %10, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %17 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos_4) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %18 = "it.DomainIntersectionOp"(%17, %16, %4) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %19 = "it.IndexOp"(%15, %18) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%arg0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%arg0, %19, %pos_6) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg0, %pos_6, %pos_8, %crd_5, %crd_7) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%0, %19, %pos_4) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%0, %pos_4, %pos_10, %crd_3, %crd_9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%7, %19, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%7, %pos, %pos_12, %crd, %crd_11) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %23 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%12, %11) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%11) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %c0_i32_39 = arith.constant 0 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %55 = "ta.sparse_output_tensor_decl"(%27, %28) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %56 = "it.itree"(%55) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %57 = "it.RootOp"() : () -> !it.index_tree
    %58 = "it.DenseDomainOp"(%23, %22, %51) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %62 = "it.DomainIntersectionOp"(%61, %60, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %63 = "it.IndexOp"(%59, %62) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %63, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %63, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.OperandOp"(%22, %pos_85, %pos_91, %crd_84, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %63, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.OperandOp"(%51, %pos, %pos_93, %crd, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %67 = "it.ComputeOp"(%63, %64, %65, %66) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %67 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%56, %55) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%55) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %c0_i32_39 = arith.constant 0 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %55 = "ta.sparse_output_tensor_decl"(%27, %28) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %56 = "it.itree"(%55) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %57 = "it.RootOp"() : () -> !it.index_tree
    %58 = "it.DenseDomainOp"(%23, %22, %51) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %62 = "it.DomainIntersectionOp"(%61, %60, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %63 = "it.IndexOp"(%59, %62) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %63, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %63, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.OperandOp"(%22, %pos_85, %pos_91, %crd_84, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %63, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.OperandOp"(%51, %pos, %pos_93, %crd, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %67 = "it.ComputeOp"(%63, %64, %65, %66) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %67 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%56, %55) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%55) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %c0_i32_39 = arith.constant 0 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %55 = "ta.sparse_output_tensor_decl"(%27, %28) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %56 = "it.itree"(%55) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %57 = "it.RootOp"() : () -> !it.index_tree
    %58 = "it.DenseDomainOp"(%23, %22, %51) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %62 = "it.DomainIntersectionOp"(%61, %60, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %63 = "it.IndexOp"(%59, %62) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %63, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %63, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.OperandOp"(%22, %pos_85, %pos_91, %crd_84, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %63, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.OperandOp"(%51, %pos, %pos_93, %crd, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %67 = "it.ComputeOp"(%63, %64, %65, %66) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %67 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%56, %55) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%55) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %c0_i32_39 = arith.constant 0 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %55 = "it.EmptyDomain"() : () -> !it.domain
  %56 = "it.IndexTreeSparseTensorOp"(%55, %55) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %57 = "it.itree"(%56) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %58 = "it.RootOp"() : () -> !it.index_tree
    %59 = "it.DenseDomainOp"(%23, %22, %51) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.DomainIntersectionOp"(%62, %61, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %64 = "it.IndexOp"(%60, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %64, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %64, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.OperandOp"(%22, %pos_85, %pos_91, %crd_84, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%51, %pos, %pos_93, %crd, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %68 = "it.ComputeOp"(%64, %65, %66, %67) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %68 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%57, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %c0_i32_39 = arith.constant 0 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %55 = "it.EmptyDomain"() : () -> !it.domain
  %56 = "it.IndexTreeSparseTensorOp"(%55, %55) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %57 = "it.itree"(%56) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %58 = "it.RootOp"() : () -> !it.index_tree
    %59 = "it.DenseDomainOp"(%23, %22, %51) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.DomainIntersectionOp"(%62, %61, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %64 = "it.IndexOp"(%60, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %64, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %64, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.OperandOp"(%22, %pos_85, %pos_91, %crd_84, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%51, %pos, %pos_93, %crd, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %68 = "it.ComputeOp"(%64, %65, %66, %67) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %68 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%57, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %c0_i32_39 = arith.constant 0 : i32
  %c1_i32_40 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_33, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32_39, %c0_35, %c-1_34, %c1_36, %c-1_34, %cast_56, %cast_59, %cast_62, %cast_65, %cast_68, %cast_71, %cast_74, %cast_77, %cast_80, %c1_i32_40) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %55 = "it.EmptyDomain"() : () -> !it.domain
  %56 = "it.IndexTreeSparseTensorOp"(%55, %55) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %57 = "it.itree"(%56) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %58 = "it.RootOp"() : () -> !it.index_tree
    %59 = "it.DenseDomainOp"(%23, %22, %51) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.DomainIntersectionOp"(%62, %61, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %64 = "it.IndexOp"(%60, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %64, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %64, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.OperandOp"(%22, %pos_85, %pos_91, %crd_84, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%51, %pos, %pos_93, %crd, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %68 = "it.ComputeOp"(%64, %65, %66, %67) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %68 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%57, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %51 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.DomainIntersectionOp"(%50, %51, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
  %53 = "it.IndexTreeSparseTensorOp"(%49, %52) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %54 = "it.itree"(%53) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%45, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %59 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg0, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg0, %61, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.LHSOperandOp"(%arg0, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %61, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%20, %pos_43, %pos_49, %crd_42, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %61, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.OperandOp"(%45, %pos, %pos_51, %crd, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %65 = "it.ComputeOp"(%61, %62, %63, %64) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %65 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%54, %53) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %51 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.DomainIntersectionOp"(%50, %51, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
  %53 = "it.IndexTreeSparseTensorOp"(%49, %52) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %54 = "it.itree"(%53) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%45, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %59 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg0, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg0, %61, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.LHSOperandOp"(%arg0, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %61, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%20, %pos_43, %pos_49, %crd_42, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %61, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.OperandOp"(%45, %pos, %pos_51, %crd, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %65 = "it.ComputeOp"(%61, %62, %63, %64) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %65 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%54, %53) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %51 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.DomainIntersectionOp"(%50, %51, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
  %53 = "it.IndexTreeSparseTensorOp"(%49, %52) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %54 = "it.itree"(%53) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%45, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %59 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg0, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg0, %61, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.LHSOperandOp"(%arg0, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %61, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%20, %pos_43, %pos_49, %crd_42, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %61, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.OperandOp"(%45, %pos, %pos_51, %crd, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %65 = "it.ComputeOp"(%61, %62, %63, %64) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %65 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%54) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.DeclDomainOp"(%24, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %51 = "it.itree"(%50) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %54 = "it.RootOp"() : () -> !it.index_tree
    %55 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.IndexOp"(%54, %55) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %57 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %59 = "it.DomainIntersectionOp"(%57, %58, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %60 = "it.IndexOp"(%56, %59) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %61 = "it.ComputeSymbolicDomainOp"(%60, %arg0) <{is_unique = true}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %62 = "it.ComputeSymbolicDomainRowOp"(%56, %61) <{needs_mark = false}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    it.yield %62 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "it.itree"(%52) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %54 = "it.RootOp"() : () -> !it.index_tree
    %55 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.IndexOp"(%54, %55) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%45, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %57 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%20, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %59 = "it.DomainIntersectionOp"(%58, %57, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %60 = "it.IndexOp"(%56, %59) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg0, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg0, %60, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.LHSOperandOp"(%arg0, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %60, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.OperandOp"(%20, %pos_43, %pos_49, %crd_42, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%45, %pos, %pos_51, %crd, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %64 = "it.ComputeOp"(%60, %61, %62, %63) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %64 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20, %45) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.DeclDomainOp"(%24, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %51 = "it.itree"(%50) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %c0_42 = arith.constant 0 : index
    %c1_43 = arith.constant 1 : index
    %54 = scf.for %arg1 = %c0_42 to %21 step %c1_43 iter_args(%arg2 = %arg0) -> (!it.symbolic_domain<64>) {
      %c1_44 = arith.constant 1 : index
      %idx0 = index.constant 0
      %55 = arith.addi %arg1, %c1_44 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %56 = arith.index_cast %extracted : i64 to index
      %extracted_45 = tensor.extract %22[%55] : tensor<?xi64>
      %57 = arith.index_cast %extracted_45 : i64 to index
      %58 = arith.addi %arg1, %c1_44 : index
      %extracted_46 = tensor.extract %46[%arg1] : tensor<?xi64>
      %59 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %46[%58] : tensor<?xi64>
      %60 = arith.index_cast %extracted_47 : i64 to index
      %61:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %56, %arg6 = %59) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index) {
        %63 = arith.cmpi ult, %arg6, %60 : index
        %64 = arith.cmpi ult, %arg5, %57 : index
        %65 = arith.andi %64, %63 : i1
        scf.condition(%65) %arg3, %arg4, %arg5, %arg6 : !it.symbolic_domain<64>, index, index, index
      } do {
      ^bb0(%arg3: !it.symbolic_domain<64>, %arg4: index, %arg5: index, %arg6: index):
        %63 = "ta.SpTensorGetCrd"(%45, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %64 = arith.index_cast %63 : i64 to index
        %65 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %66 = arith.index_cast %65 : i64 to index
        %67 = arith.minui %66, %64 : index
        %68 = arith.cmpi eq, %67, %66 : index
        %69 = arith.cmpi eq, %67, %64 : index
        %70 = arith.andi %68, %69 : i1
        %71:2 = scf.if %70 -> (!it.symbolic_domain<64>, index) {
          %idx1 = index.constant 1
          %76 = "it.SymbolicDomainInsertOp"(%arg3, %67) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          %77 = index.add %arg4, %idx1
          scf.yield %76, %77 : !it.symbolic_domain<64>, index
        } else {
          scf.yield %arg3, %arg4 : !it.symbolic_domain<64>, index
        }
        %72 = index.castu %68 : i1 to index
        %73 = index.add %arg5, %72
        %74 = index.castu %69 : i1 to index
        %75 = index.add %arg6, %74
        scf.yield %71#0, %71#1, %73, %75 : !it.symbolic_domain<64>, index, index, index
      }
      %62 = "it.SymbolicDomainEndRowOp"(%61#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      scf.yield %62 : !it.symbolic_domain<64>
    }
    it.yield %54 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "it.itree"(%52) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %c0_42 = arith.constant 0 : index
    %c1_43 = arith.constant 1 : index
    %54 = scf.for %arg1 = %c0_42 to %21 step %c1_43 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %c1_44 = arith.constant 1 : index
      %idx0 = index.constant 0
      %55 = arith.addi %arg1, %c1_44 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %56 = arith.index_cast %extracted : i64 to index
      %extracted_45 = tensor.extract %22[%55] : tensor<?xi64>
      %57 = arith.index_cast %extracted_45 : i64 to index
      %58 = arith.addi %arg1, %c1_44 : index
      %extracted_46 = tensor.extract %46[%arg1] : tensor<?xi64>
      %59 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %46[%58] : tensor<?xi64>
      %60 = arith.index_cast %extracted_47 : i64 to index
      %61:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %56, %arg6 = %59) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %62 = arith.cmpi ult, %arg6, %60 : index
        %63 = arith.cmpi ult, %arg5, %57 : index
        %64 = arith.andi %63, %62 : i1
        scf.condition(%64) %arg3, %arg4, %arg5, %arg6 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg3: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg4: index, %arg5: index, %arg6: index):
        %62 = "ta.SpTensorGetCrd"(%45, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %63 = arith.index_cast %62 : i64 to index
        %64 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %65 = arith.index_cast %64 : i64 to index
        %66 = arith.minui %65, %63 : index
        %67 = arith.cmpi eq, %66, %65 : index
        %68 = arith.cmpi eq, %66, %63 : index
        %69 = arith.andi %67, %68 : i1
        %70:2 = scf.if %69 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %idx1 = index.constant 1
          %75 = "ta.TensorFindPos"(%arg3, %66) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %76 = "ta.TAExtractOp"(%20, %arg5, %arg1, %66) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %77 = "ta.TAExtractOp"(%45, %arg6, %arg1, %66) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %78 = arith.mulf %76, %77 : f64
          %79 = "ta.TAExtractOp"(%arg3, %75, %arg1, %66) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %80 = "ta.TAInsertOp"(%arg3, %arg1, %75, %arg1, %66, %78) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %81 = index.add %arg4, %idx1
          scf.yield %80, %81 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg3, %arg4 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %71 = index.castu %67 : i1 to index
        %72 = index.add %arg5, %71
        %73 = index.castu %68 : i1 to index
        %74 = index.add %arg6, %73
        scf.yield %70#0, %70#1, %72, %74 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      scf.yield %61#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %24 = memref.load %alloc_18[%c0] : memref<13xindex>
  %25 = memref.load %alloc_18[%c1] : memref<13xindex>
  %26 = memref.load %alloc_18[%c2] : memref<13xindex>
  %27 = memref.load %alloc_18[%c3] : memref<13xindex>
  %28 = memref.load %alloc_18[%c4] : memref<13xindex>
  %29 = memref.load %alloc_18[%c5] : memref<13xindex>
  %30 = memref.load %alloc_18[%c6] : memref<13xindex>
  %31 = memref.load %alloc_18[%c7] : memref<13xindex>
  %32 = memref.load %alloc_18[%c8] : memref<13xindex>
  %33 = memref.load %alloc_18[%c9] : memref<13xindex>
  %34 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%32) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %35 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %from_elements_38 = tensor.from_elements %33, %34 : tensor<2xindex>
  %44 = "ta.spTensor_construct"(%from_elements_38, %35, %39, %36, %40, %37, %41, %38, %42, %43) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %45 = "ta.SpTensorGetDimPos"(%44) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %46 = "it.DenseDomainOp"(%21, %20, %44) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %47 = "it.DeclDomainOp"(%23, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %48 = "it.itree"(%47) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %51 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %arg0) -> (!it.symbolic_domain<64>) {
      %52 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %53 = arith.index_cast %extracted : i64 to index
      %extracted_39 = tensor.extract %22[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_39 : i64 to index
      %55 = arith.addi %arg1, %c1 : index
      %extracted_40 = tensor.extract %45[%arg1] : tensor<?xi64>
      %56 = arith.index_cast %extracted_40 : i64 to index
      %extracted_41 = tensor.extract %45[%55] : tensor<?xi64>
      %57 = arith.index_cast %extracted_41 : i64 to index
      %58:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %53, %arg6 = %56) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index) {
        %60 = arith.cmpi ult, %arg6, %57 : index
        %61 = arith.cmpi ult, %arg5, %54 : index
        %62 = arith.andi %61, %60 : i1
        scf.condition(%62) %arg3, %arg4, %arg5, %arg6 : !it.symbolic_domain<64>, index, index, index
      } do {
      ^bb0(%arg3: !it.symbolic_domain<64>, %arg4: index, %arg5: index, %arg6: index):
        %60 = "ta.SpTensorGetCrd"(%44, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %61 = arith.index_cast %60 : i64 to index
        %62 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %63 = arith.index_cast %62 : i64 to index
        %64 = arith.minui %63, %61 : index
        %65 = arith.cmpi eq, %64, %63 : index
        %66 = arith.cmpi eq, %64, %61 : index
        %67 = arith.andi %65, %66 : i1
        %68:2 = scf.if %67 -> (!it.symbolic_domain<64>, index) {
          %73 = "it.SymbolicDomainInsertOp"(%arg3, %64) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          %74 = index.add %arg4, %idx1
          scf.yield %73, %74 : !it.symbolic_domain<64>, index
        } else {
          scf.yield %arg3, %arg4 : !it.symbolic_domain<64>, index
        }
        %69 = index.castu %65 : i1 to index
        %70 = index.add %arg5, %69
        %71 = index.castu %66 : i1 to index
        %72 = index.add %arg6, %71
        scf.yield %68#0, %68#1, %70, %72 : !it.symbolic_domain<64>, index, index, index
      }
      %59 = "it.SymbolicDomainEndRowOp"(%58#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      scf.yield %59 : !it.symbolic_domain<64>
    }
    it.yield %51 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %49 = "it.IndexTreeSparseTensorOp"(%46, %48) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.itree"(%49) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %51 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %52 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %53 = arith.index_cast %extracted : i64 to index
      %extracted_39 = tensor.extract %22[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_39 : i64 to index
      %55 = arith.addi %arg1, %c1 : index
      %extracted_40 = tensor.extract %45[%arg1] : tensor<?xi64>
      %56 = arith.index_cast %extracted_40 : i64 to index
      %extracted_41 = tensor.extract %45[%55] : tensor<?xi64>
      %57 = arith.index_cast %extracted_41 : i64 to index
      %58:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %53, %arg6 = %56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %59 = arith.cmpi ult, %arg6, %57 : index
        %60 = arith.cmpi ult, %arg5, %54 : index
        %61 = arith.andi %60, %59 : i1
        scf.condition(%61) %arg3, %arg4, %arg5, %arg6 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg3: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg4: index, %arg5: index, %arg6: index):
        %59 = "ta.SpTensorGetCrd"(%44, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %60 = arith.index_cast %59 : i64 to index
        %61 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %62 = arith.index_cast %61 : i64 to index
        %63 = arith.minui %62, %60 : index
        %64 = arith.cmpi eq, %63, %62 : index
        %65 = arith.cmpi eq, %63, %60 : index
        %66 = arith.andi %64, %65 : i1
        %67:2 = scf.if %66 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %72 = "ta.TensorFindPos"(%arg3, %63) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %73 = "ta.TAExtractOp"(%20, %arg5, %arg1, %63) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %74 = "ta.TAExtractOp"(%44, %arg6, %arg1, %63) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %75 = arith.mulf %73, %74 : f64
          %76 = "ta.TAInsertOp"(%arg3, %arg1, %72, %arg1, %63, %75) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %77 = index.add %arg4, %idx1
          scf.yield %76, %77 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg3, %arg4 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %68 = index.castu %64 : i1 to index
        %69 = index.add %arg5, %68
        %70 = index.castu %65 : i1 to index
        %71 = index.add %arg6, %70
        scf.yield %67#0, %67#1, %69, %71 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      scf.yield %58#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %51 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %24 = memref.load %alloc_18[%c0] : memref<13xindex>
  %25 = memref.load %alloc_18[%c1] : memref<13xindex>
  %26 = memref.load %alloc_18[%c2] : memref<13xindex>
  %27 = memref.load %alloc_18[%c3] : memref<13xindex>
  %28 = memref.load %alloc_18[%c4] : memref<13xindex>
  %29 = memref.load %alloc_18[%c5] : memref<13xindex>
  %30 = memref.load %alloc_18[%c6] : memref<13xindex>
  %31 = memref.load %alloc_18[%c7] : memref<13xindex>
  %32 = memref.load %alloc_18[%c8] : memref<13xindex>
  %33 = memref.load %alloc_18[%c9] : memref<13xindex>
  %34 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%32) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %35 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_22 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %from_elements_38 = tensor.from_elements %33, %34 : tensor<2xindex>
  %44 = "ta.spTensor_construct"(%from_elements_38, %35, %39, %36, %40, %37, %41, %38, %42, %43) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %45 = "ta.SpTensorGetDimPos"(%44) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %46 = "it.DenseDomainOp"(%21, %20, %44) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_39 = index.constant 0
  %idx1_40 = index.constant 1
  %47 = index.add %21, %idx1_40
  %48 = tensor.empty(%47) : tensor<?xi64>
  %c0_i64_41 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_41 into %48[%idx0_39] : tensor<?xi64>
  %49 = tensor.empty(%23) : tensor<?xi64>
  %50 = builtin.unrealized_conversion_cast %idx0_39, %47, %idx0_39, %23, %48, %49 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %51:6 = "it.itree"(%idx0_39, %47, %idx0_39, %23, %48, %49) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %65:6 = scf.for %arg6 = %c0 to %21 step %c1 iter_args(%arg7 = %arg0, %arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %67 = arith.addi %arg6, %c1 : index
      %extracted = tensor.extract %22[%arg6] : tensor<?xi64>
      %68 = arith.index_cast %extracted : i64 to index
      %extracted_48 = tensor.extract %22[%67] : tensor<?xi64>
      %69 = arith.index_cast %extracted_48 : i64 to index
      %70 = arith.addi %arg6, %c1 : index
      %extracted_49 = tensor.extract %45[%arg6] : tensor<?xi64>
      %71 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %45[%70] : tensor<?xi64>
      %72 = arith.index_cast %extracted_50 : i64 to index
      %73:9 = scf.while (%arg13 = %arg7, %arg14 = %arg8, %arg15 = %arg9, %arg16 = %arg10, %arg17 = %arg11, %arg18 = %arg12, %arg19 = %idx0, %arg20 = %68, %arg21 = %71) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
        %78 = arith.cmpi ult, %arg21, %72 : index
        %79 = arith.cmpi ult, %arg20, %69 : index
        %80 = arith.andi %79, %78 : i1
        scf.condition(%80) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg13: index, %arg14: index, %arg15: index, %arg16: index, %arg17: tensor<?xi64>, %arg18: tensor<?xi64>, %arg19: index, %arg20: index, %arg21: index):
        %78 = "ta.SpTensorGetCrd"(%44, %arg21) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %79 = arith.index_cast %78 : i64 to index
        %80 = "ta.SpTensorGetCrd"(%20, %arg20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %81 = arith.index_cast %80 : i64 to index
        %82 = arith.minui %81, %79 : index
        %83 = arith.cmpi eq, %82, %81 : index
        %84 = arith.cmpi eq, %82, %79 : index
        %85 = arith.andi %83, %84 : i1
        %86:7 = scf.if %85 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
          %idx1_53 = index.constant 1
          %92 = index.add %arg15, %idx1_53
          %93 = builtin.unrealized_conversion_cast %arg13, %arg14, %92, %arg16, %arg17, %arg18 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          %94 = index.add %arg19, %idx1
          scf.yield %arg13, %arg14, %92, %arg16, %arg17, %arg18, %94 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        } else {
          scf.yield %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        }
        %87 = builtin.unrealized_conversion_cast %86#0, %86#1, %86#2, %86#3, %86#4, %86#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %88 = index.castu %83 : i1 to index
        %89 = index.add %arg20, %88
        %90 = index.castu %84 : i1 to index
        %91 = index.add %arg21, %90
        scf.yield %86#0, %86#1, %86#2, %86#3, %86#4, %86#5, %86#6, %89, %91 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      }
      %74 = builtin.unrealized_conversion_cast %73#0, %73#1, %73#2, %73#3, %73#4, %73#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_51 = index.constant 1
      %75 = index.add %73#0, %idx1_51
      %76 = arith.index_cast %73#2 : index to i64
      %inserted_52 = tensor.insert %76 into %73#4[%75] : tensor<?xi64>
      %77 = builtin.unrealized_conversion_cast %75, %73#1, %73#2, %73#3, %inserted_52, %73#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %75, %73#1, %73#2, %73#3, %inserted_52, %73#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %66 = builtin.unrealized_conversion_cast %65#0, %65#1, %65#2, %65#3, %65#4, %65#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %65#0, %65#1, %65#2, %65#3, %65#4, %65#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %52 = builtin.unrealized_conversion_cast %51#0, %51#1, %51#2, %51#3, %51#4, %51#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_42 = index.constant 0
  %idx1_43 = index.constant 1
  %53 = arith.index_cast %21 : index to i64
  %idx1_44 = index.constant 1
  %54 = tensor.empty(%idx1_44) : tensor<?xi64>
  %inserted_45 = tensor.insert %53 into %54[%idx0_42] : tensor<?xi64>
  %55 = tensor.empty() : tensor<0xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = index.mul %idx1_43, %21
  %59 = tensor.empty(%51#2) : tensor<?xi64>
  %60 = tensor.empty() : tensor<0xi64>
  %61 = tensor.empty() : tensor<0xi64>
  %62 = tensor.empty(%51#2) : tensor<?xf64>
  %cst_46 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_42 to %51#2 step %idx1_43 {
    %inserted_48 = tensor.insert %cst_46 into %62[%arg0] : tensor<?xf64>
  }
  %from_elements_47 = tensor.from_elements %21, %51#3 : tensor<2xindex>
  %63 = "ta.spTensor_construct"(%from_elements_47, %inserted_45, %51#4, %55, %59, %56, %60, %57, %61, %62) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %64 = "it.itree"(%63) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %65 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %66 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %67 = arith.index_cast %extracted : i64 to index
      %extracted_48 = tensor.extract %22[%66] : tensor<?xi64>
      %68 = arith.index_cast %extracted_48 : i64 to index
      %69 = arith.addi %arg1, %c1 : index
      %extracted_49 = tensor.extract %45[%arg1] : tensor<?xi64>
      %70 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %45[%69] : tensor<?xi64>
      %71 = arith.index_cast %extracted_50 : i64 to index
      %72:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %67, %arg6 = %70) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %73 = arith.cmpi ult, %arg6, %71 : index
        %74 = arith.cmpi ult, %arg5, %68 : index
        %75 = arith.andi %74, %73 : i1
        scf.condition(%75) %arg3, %arg4, %arg5, %arg6 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg3: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg4: index, %arg5: index, %arg6: index):
        %73 = "ta.SpTensorGetCrd"(%44, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %74 = arith.index_cast %73 : i64 to index
        %75 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %76 = arith.index_cast %75 : i64 to index
        %77 = arith.minui %76, %74 : index
        %78 = arith.cmpi eq, %77, %76 : index
        %79 = arith.cmpi eq, %77, %74 : index
        %80 = arith.andi %78, %79 : i1
        %81:2 = scf.if %80 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %86 = "ta.TensorFindPos"(%arg3, %77) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %87 = "ta.TAExtractOp"(%20, %arg5, %arg1, %77) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %88 = "ta.TAExtractOp"(%44, %arg6, %arg1, %77) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %89 = arith.mulf %87, %88 : f64
          %90 = "ta.TAInsertOp"(%arg3, %arg1, %86, %arg1, %77, %89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %91 = index.add %arg4, %idx1
          scf.yield %90, %91 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg3, %arg4 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %82 = index.castu %78 : i1 to index
        %83 = index.add %arg5, %82
        %84 = index.castu %79 : i1 to index
        %85 = index.add %arg6, %84
        scf.yield %81#0, %81#1, %83, %85 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      scf.yield %72#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %65 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%64) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %idx0_18 = index.constant 0
  %idx0_19 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_18, %11, %idx0_19, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_20 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_20] : tensor<2xindex>
  %idx1_21 = index.constant 1
  %extracted_22 = tensor.extract %from_elements[%idx1_21] : tensor<2xindex>
  %alloc_23 = memref.alloc() : memref<13xindex>
  %cast_24 = memref.cast %alloc_23 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_24, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %21 = memref.load %alloc_23[%c0] : memref<13xindex>
  %22 = memref.load %alloc_23[%c1] : memref<13xindex>
  %23 = memref.load %alloc_23[%c2] : memref<13xindex>
  %24 = memref.load %alloc_23[%c3] : memref<13xindex>
  %25 = memref.load %alloc_23[%c4] : memref<13xindex>
  %26 = memref.load %alloc_23[%c5] : memref<13xindex>
  %27 = memref.load %alloc_23[%c6] : memref<13xindex>
  %28 = memref.load %alloc_23[%c7] : memref<13xindex>
  %29 = memref.load %alloc_23[%c8] : memref<13xindex>
  %30 = memref.load %alloc_23[%c9] : memref<13xindex>
  %31 = memref.load %alloc_23[%c10] : memref<13xindex>
  %alloc_25 = memref.alloc(%21) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%22) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_37 : memref<?xi64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xi64> to memref<*xi64>
  %alloc_39 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_39 : memref<?xi64>)
  %cast_40 = memref.cast %alloc_39 : memref<?xi64> to memref<*xi64>
  %alloc_41 = memref.alloc(%29) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_41 : memref<?xf64>)
  %cast_42 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %cast_40, %cast_42, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %32 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %33 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %34 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_39 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_41 restrict writable : memref<?xf64>
  %from_elements_43 = tensor.from_elements %30, %31 : tensor<2xindex>
  %idx0_44 = index.constant 0
  %idx0_45 = index.constant 0
  %41 = builtin.unrealized_conversion_cast %from_elements_43, %idx0_44, %32, %idx0_45, %36, %37, %40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %42 = "it.DenseDomainOp"(%extracted, %20, %41) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_46 = index.constant 0
  %idx1_47 = index.constant 1
  %43 = index.add %extracted, %idx1_47
  %44 = tensor.empty(%43) : tensor<?xi64>
  %c0_i64_48 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_48 into %44[%idx0_46] : tensor<?xi64>
  %45 = tensor.empty(%extracted_22) : tensor<?xi64>
  %46 = builtin.unrealized_conversion_cast %idx0_46, %43, %idx0_46, %extracted_22, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %47:6 = "it.itree"(%idx0_46, %43, %idx0_46, %extracted_22, %44, %45) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %63:6 = scf.for %arg6 = %c0 to %extracted step %c1 iter_args(%arg7 = %arg0, %arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %65 = arith.addi %arg6, %c1 : index
      %extracted_59 = tensor.extract %15[%arg6] : tensor<?xi64>
      %66 = arith.index_cast %extracted_59 : i64 to index
      %extracted_60 = tensor.extract %15[%65] : tensor<?xi64>
      %67 = arith.index_cast %extracted_60 : i64 to index
      %68 = arith.addi %arg6, %c1 : index
      %extracted_61 = tensor.extract %36[%arg6] : tensor<?xi64>
      %69 = arith.index_cast %extracted_61 : i64 to index
      %extracted_62 = tensor.extract %36[%68] : tensor<?xi64>
      %70 = arith.index_cast %extracted_62 : i64 to index
      %71:9 = scf.while (%arg13 = %arg7, %arg14 = %arg8, %arg15 = %arg9, %arg16 = %arg10, %arg17 = %arg11, %arg18 = %arg12, %arg19 = %idx0, %arg20 = %66, %arg21 = %69) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
        %76 = arith.cmpi ult, %arg21, %70 : index
        %77 = arith.cmpi ult, %arg20, %67 : index
        %78 = arith.andi %77, %76 : i1
        scf.condition(%78) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg13: index, %arg14: index, %arg15: index, %arg16: index, %arg17: tensor<?xi64>, %arg18: tensor<?xi64>, %arg19: index, %arg20: index, %arg21: index):
        %extracted_65 = tensor.extract %37[%arg21] : tensor<?xi64>
        %76 = arith.index_cast %extracted_65 : i64 to index
        %extracted_66 = tensor.extract %16[%arg20] : tensor<?xi64>
        %77 = arith.index_cast %extracted_66 : i64 to index
        %78 = arith.minui %77, %76 : index
        %79 = arith.cmpi eq, %78, %77 : index
        %80 = arith.cmpi eq, %78, %76 : index
        %81 = arith.andi %79, %80 : i1
        %82:7 = scf.if %81 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
          %idx1_67 = index.constant 1
          %88 = index.add %arg15, %idx1_67
          %89 = builtin.unrealized_conversion_cast %arg13, %arg14, %88, %arg16, %arg17, %arg18 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          %90 = index.add %arg19, %idx1
          scf.yield %arg13, %arg14, %88, %arg16, %arg17, %arg18, %90 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        } else {
          scf.yield %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        }
        %83 = builtin.unrealized_conversion_cast %82#0, %82#1, %82#2, %82#3, %82#4, %82#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %84 = index.castu %79 : i1 to index
        %85 = index.add %arg20, %84
        %86 = index.castu %80 : i1 to index
        %87 = index.add %arg21, %86
        scf.yield %82#0, %82#1, %82#2, %82#3, %82#4, %82#5, %82#6, %85, %87 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      }
      %72 = builtin.unrealized_conversion_cast %71#0, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_63 = index.constant 1
      %73 = index.add %71#0, %idx1_63
      %74 = arith.index_cast %71#2 : index to i64
      %inserted_64 = tensor.insert %74 into %71#4[%73] : tensor<?xi64>
      %75 = builtin.unrealized_conversion_cast %73, %71#1, %71#2, %71#3, %inserted_64, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %73, %71#1, %71#2, %71#3, %inserted_64, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %64 = builtin.unrealized_conversion_cast %63#0, %63#1, %63#2, %63#3, %63#4, %63#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %63#0, %63#1, %63#2, %63#3, %63#4, %63#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
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
    %inserted_59 = tensor.insert %cst_53 into %58[%arg0] : tensor<?xf64>
  }
  %from_elements_54 = tensor.from_elements %extracted, %47#3 : tensor<2xindex>
  %idx0_55 = index.constant 0
  %idx0_56 = index.constant 0
  %59 = builtin.unrealized_conversion_cast %from_elements_54, %idx0_55, %inserted_52, %idx0_56, %47#4, %55, %58 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %60:7 = "it.itree"(%from_elements_54, %idx0_55, %inserted_52, %idx0_56, %47#4, %55, %58) <{operandSegmentSizes = array<i32: 7, 0>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>):
    %63:7 = scf.for %arg7 = %c0 to %extracted step %c1 iter_args(%arg8 = %arg0, %arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3, %arg12 = %arg4, %arg13 = %arg5, %arg14 = %arg6) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
      %65 = arith.addi %arg7, %c1 : index
      %extracted_59 = tensor.extract %15[%arg7] : tensor<?xi64>
      %66 = arith.index_cast %extracted_59 : i64 to index
      %extracted_60 = tensor.extract %15[%65] : tensor<?xi64>
      %67 = arith.index_cast %extracted_60 : i64 to index
      %68 = arith.addi %arg7, %c1 : index
      %extracted_61 = tensor.extract %36[%arg7] : tensor<?xi64>
      %69 = arith.index_cast %extracted_61 : i64 to index
      %extracted_62 = tensor.extract %36[%68] : tensor<?xi64>
      %70 = arith.index_cast %extracted_62 : i64 to index
      %71:10 = scf.while (%arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14, %arg22 = %idx0, %arg23 = %66, %arg24 = %69) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %73 = arith.cmpi ult, %arg24, %70 : index
        %74 = arith.cmpi ult, %arg23, %67 : index
        %75 = arith.andi %74, %73 : i1
        scf.condition(%75) %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22, %arg23, %arg24 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg15: tensor<2xindex>, %arg16: index, %arg17: tensor<?xi64>, %arg18: index, %arg19: tensor<?xi64>, %arg20: tensor<?xi64>, %arg21: tensor<?xf64>, %arg22: index, %arg23: index, %arg24: index):
        %extracted_63 = tensor.extract %37[%arg24] : tensor<?xi64>
        %73 = arith.index_cast %extracted_63 : i64 to index
        %extracted_64 = tensor.extract %16[%arg23] : tensor<?xi64>
        %74 = arith.index_cast %extracted_64 : i64 to index
        %75 = arith.minui %74, %73 : index
        %76 = arith.cmpi eq, %75, %74 : index
        %77 = arith.cmpi eq, %75, %73 : index
        %78 = arith.andi %76, %77 : i1
        %79:8 = scf.if %78 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_65 = tensor.extract %19[%arg23] : tensor<?xf64>
          %extracted_66 = tensor.extract %40[%arg24] : tensor<?xf64>
          %85 = arith.mulf %extracted_65, %extracted_66 : f64
          %86 = arith.index_cast %75 : index to i64
          %inserted_67 = tensor.insert %86 into %arg20[%arg18] : tensor<?xi64>
          %idx1_68 = index.constant 1
          %87 = index.add %arg18, %idx1_68
          %inserted_69 = tensor.insert %85 into %arg21[%arg18] : tensor<?xf64>
          %88 = builtin.unrealized_conversion_cast %arg15, %arg16, %arg17, %87, %arg19, %inserted_67, %inserted_69 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %89 = index.add %arg22, %idx1
          scf.yield %arg15, %arg16, %arg17, %87, %arg19, %inserted_67, %inserted_69, %89 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
        }
        %80 = builtin.unrealized_conversion_cast %79#0, %79#1, %79#2, %79#3, %79#4, %79#5, %79#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %81 = index.castu %76 : i1 to index
        %82 = index.add %arg23, %81
        %83 = index.castu %77 : i1 to index
        %84 = index.add %arg24, %83
        scf.yield %79#0, %79#1, %79#2, %79#3, %79#4, %79#5, %79#6, %79#7, %82, %84 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %72 = builtin.unrealized_conversion_cast %71#0, %71#1, %71#2, %71#3, %71#4, %71#5, %71#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %71#0, %71#1, %71#2, %71#3, %71#4, %71#5, %71#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    }
    %64 = builtin.unrealized_conversion_cast %63#0, %63#1, %63#2, %63#3, %63#4, %63#5, %63#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %63#0, %63#1, %63#2, %63#3, %63#4, %63#5, %63#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>)
  %61 = builtin.unrealized_conversion_cast %60#0, %60#1, %60#2, %60#3, %60#4, %60#5, %60#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %62 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_57 = index.constant 0
  %inserted_58 = tensor.insert %idx-1 into %62[%idx0_57] : tensor<1xindex>
  "ta.print"(%60#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_58) : (tensor<1xindex>) -> ()
  "ta.print"(%60#4) : (tensor<?xi64>) -> ()
  "ta.print"(%60#5) : (tensor<?xi64>) -> ()
  "ta.print"(%60#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %idx0_18 = index.constant 0
  %idx0_19 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_18, %11, %idx0_19, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_20 = index.constant 0
  %idx1_21 = index.constant 1
  %alloc_22 = memref.alloc() : memref<13xindex>
  %cast_23 = memref.cast %alloc_22 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_23, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %21 = memref.load %alloc_22[%c0] : memref<13xindex>
  %22 = memref.load %alloc_22[%c1] : memref<13xindex>
  %23 = memref.load %alloc_22[%c2] : memref<13xindex>
  %24 = memref.load %alloc_22[%c3] : memref<13xindex>
  %25 = memref.load %alloc_22[%c4] : memref<13xindex>
  %26 = memref.load %alloc_22[%c5] : memref<13xindex>
  %27 = memref.load %alloc_22[%c6] : memref<13xindex>
  %28 = memref.load %alloc_22[%c7] : memref<13xindex>
  %29 = memref.load %alloc_22[%c8] : memref<13xindex>
  %30 = memref.load %alloc_22[%c9] : memref<13xindex>
  %31 = memref.load %alloc_22[%c10] : memref<13xindex>
  %alloc_24 = memref.alloc(%21) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%22) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_38 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_38 : memref<?xi64>)
  %cast_39 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  %alloc_40 = memref.alloc(%29) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_40 : memref<?xf64>)
  %cast_41 = memref.cast %alloc_40 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %cast_39, %cast_41, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %32 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %33 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %34 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_40 restrict writable : memref<?xf64>
  %from_elements_42 = tensor.from_elements %30, %31 : tensor<2xindex>
  %idx0_43 = index.constant 0
  %idx0_44 = index.constant 0
  %41 = builtin.unrealized_conversion_cast %from_elements_42, %idx0_43, %32, %idx0_44, %36, %37, %40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %42 = "it.DenseDomainOp"(%9, %20, %41) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_45 = index.constant 0
  %idx1_46 = index.constant 1
  %43 = index.add %9, %idx1_46
  %44 = tensor.empty(%43) : tensor<?xi64>
  %c0_i64_47 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_47 into %44[%idx0_45] : tensor<?xi64>
  %45 = tensor.empty(%10) : tensor<?xi64>
  %46 = builtin.unrealized_conversion_cast %idx0_45, %43, %idx0_45, %10, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %47:6 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0_45, %arg2 = %43, %arg3 = %idx0_45, %arg4 = %10, %arg5 = %44, %arg6 = %45) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
    %65 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %66 = arith.index_cast %extracted : i64 to index
    %extracted_58 = tensor.extract %15[%65] : tensor<?xi64>
    %67 = arith.index_cast %extracted_58 : i64 to index
    %68 = arith.addi %arg0, %c1 : index
    %extracted_59 = tensor.extract %36[%arg0] : tensor<?xi64>
    %69 = arith.index_cast %extracted_59 : i64 to index
    %extracted_60 = tensor.extract %36[%68] : tensor<?xi64>
    %70 = arith.index_cast %extracted_60 : i64 to index
    %71:9 = scf.while (%arg7 = %arg1, %arg8 = %arg2, %arg9 = %arg3, %arg10 = %arg4, %arg11 = %arg5, %arg12 = %arg6, %arg13 = %idx0, %arg14 = %66, %arg15 = %69) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
      %76 = arith.cmpi ult, %arg15, %70 : index
      %77 = arith.cmpi ult, %arg14, %67 : index
      %78 = arith.andi %77, %76 : i1
      scf.condition(%78) %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
    } do {
    ^bb0(%arg7: index, %arg8: index, %arg9: index, %arg10: index, %arg11: tensor<?xi64>, %arg12: tensor<?xi64>, %arg13: index, %arg14: index, %arg15: index):
      %extracted_63 = tensor.extract %37[%arg15] : tensor<?xi64>
      %76 = arith.index_cast %extracted_63 : i64 to index
      %extracted_64 = tensor.extract %16[%arg14] : tensor<?xi64>
      %77 = arith.index_cast %extracted_64 : i64 to index
      %78 = arith.minui %77, %76 : index
      %79 = arith.cmpi eq, %78, %77 : index
      %80 = arith.cmpi eq, %78, %76 : index
      %81 = arith.andi %79, %80 : i1
      %82:7 = scf.if %81 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
        %idx1_65 = index.constant 1
        %88 = index.add %arg9, %idx1_65
        %89 = builtin.unrealized_conversion_cast %arg7, %arg8, %88, %arg10, %arg11, %arg12 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %90 = index.add %arg13, %idx1
        scf.yield %arg7, %arg8, %88, %arg10, %arg11, %arg12, %90 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
      } else {
        scf.yield %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
      }
      %83 = builtin.unrealized_conversion_cast %82#0, %82#1, %82#2, %82#3, %82#4, %82#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %84 = index.castu %79 : i1 to index
      %85 = index.add %arg14, %84
      %86 = index.castu %80 : i1 to index
      %87 = index.add %arg15, %86
      scf.yield %82#0, %82#1, %82#2, %82#3, %82#4, %82#5, %82#6, %85, %87 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
    }
    %72 = builtin.unrealized_conversion_cast %71#0, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx1_61 = index.constant 1
    %73 = index.add %71#0, %idx1_61
    %74 = arith.index_cast %71#2 : index to i64
    %inserted_62 = tensor.insert %74 into %71#4[%73] : tensor<?xi64>
    %75 = builtin.unrealized_conversion_cast %73, %71#1, %71#2, %71#3, %inserted_62, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    scf.yield %73, %71#1, %71#2, %71#3, %inserted_62, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }
  %48 = builtin.unrealized_conversion_cast %47#0, %47#1, %47#2, %47#3, %47#4, %47#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %49 = builtin.unrealized_conversion_cast %47#0, %47#1, %47#2, %47#3, %47#4, %47#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_48 = index.constant 0
  %idx1_49 = index.constant 1
  %50 = arith.index_cast %9 : index to i64
  %idx1_50 = index.constant 1
  %51 = tensor.empty(%idx1_50) : tensor<?xi64>
  %inserted_51 = tensor.insert %50 into %51[%idx0_48] : tensor<?xi64>
  %52 = tensor.empty() : tensor<0xi64>
  %53 = tensor.empty() : tensor<0xi64>
  %54 = tensor.empty() : tensor<0xi64>
  %55 = index.mul %idx1_49, %9
  %56 = tensor.empty(%47#2) : tensor<?xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = tensor.empty() : tensor<0xi64>
  %59 = tensor.empty(%47#2) : tensor<?xf64>
  %cst_52 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_48 to %47#2 step %idx1_49 {
    %inserted_58 = tensor.insert %cst_52 into %59[%arg0] : tensor<?xf64>
  }
  %from_elements_53 = tensor.from_elements %9, %47#3 : tensor<2xindex>
  %idx0_54 = index.constant 0
  %idx0_55 = index.constant 0
  %60 = builtin.unrealized_conversion_cast %from_elements_53, %idx0_54, %inserted_51, %idx0_55, %47#4, %56, %59 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %61:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %from_elements_53, %arg2 = %idx0_54, %arg3 = %inserted_51, %arg4 = %idx0_55, %arg5 = %47#4, %arg6 = %56, %arg7 = %59) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
    %65 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %66 = arith.index_cast %extracted : i64 to index
    %extracted_58 = tensor.extract %15[%65] : tensor<?xi64>
    %67 = arith.index_cast %extracted_58 : i64 to index
    %68 = arith.addi %arg0, %c1 : index
    %extracted_59 = tensor.extract %36[%arg0] : tensor<?xi64>
    %69 = arith.index_cast %extracted_59 : i64 to index
    %extracted_60 = tensor.extract %36[%68] : tensor<?xi64>
    %70 = arith.index_cast %extracted_60 : i64 to index
    %71:10 = scf.while (%arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6, %arg14 = %arg7, %arg15 = %idx0, %arg16 = %66, %arg17 = %69) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %73 = arith.cmpi ult, %arg17, %70 : index
      %74 = arith.cmpi ult, %arg16, %67 : index
      %75 = arith.andi %74, %73 : i1
      scf.condition(%75) %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg8: tensor<2xindex>, %arg9: index, %arg10: tensor<?xi64>, %arg11: index, %arg12: tensor<?xi64>, %arg13: tensor<?xi64>, %arg14: tensor<?xf64>, %arg15: index, %arg16: index, %arg17: index):
      %extracted_61 = tensor.extract %37[%arg17] : tensor<?xi64>
      %73 = arith.index_cast %extracted_61 : i64 to index
      %extracted_62 = tensor.extract %16[%arg16] : tensor<?xi64>
      %74 = arith.index_cast %extracted_62 : i64 to index
      %75 = arith.minui %74, %73 : index
      %76 = arith.cmpi eq, %75, %74 : index
      %77 = arith.cmpi eq, %75, %73 : index
      %78 = arith.andi %76, %77 : i1
      %79:8 = scf.if %78 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_63 = tensor.extract %19[%arg16] : tensor<?xf64>
        %extracted_64 = tensor.extract %40[%arg17] : tensor<?xf64>
        %85 = arith.mulf %extracted_63, %extracted_64 : f64
        %86 = arith.index_cast %75 : index to i64
        %inserted_65 = tensor.insert %86 into %arg13[%arg11] : tensor<?xi64>
        %idx1_66 = index.constant 1
        %87 = index.add %arg11, %idx1_66
        %inserted_67 = tensor.insert %85 into %arg14[%arg11] : tensor<?xf64>
        %88 = builtin.unrealized_conversion_cast %arg8, %arg9, %arg10, %87, %arg12, %inserted_65, %inserted_67 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %89 = index.add %arg15, %idx1
        scf.yield %arg8, %arg9, %arg10, %87, %arg12, %inserted_65, %inserted_67, %89 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
      }
      %80 = builtin.unrealized_conversion_cast %79#0, %79#1, %79#2, %79#3, %79#4, %79#5, %79#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %81 = index.castu %76 : i1 to index
      %82 = index.add %arg16, %81
      %83 = index.castu %77 : i1 to index
      %84 = index.add %arg17, %83
      scf.yield %79#0, %79#1, %79#2, %79#3, %79#4, %79#5, %79#6, %79#7, %82, %84 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %72 = builtin.unrealized_conversion_cast %71#0, %71#1, %71#2, %71#3, %71#4, %71#5, %71#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    scf.yield %71#0, %71#1, %71#2, %71#3, %71#4, %71#5, %71#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
  }
  %62 = builtin.unrealized_conversion_cast %61#0, %61#1, %61#2, %61#3, %61#4, %61#5, %61#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %63 = builtin.unrealized_conversion_cast %61#0, %61#1, %61#2, %61#3, %61#4, %61#5, %61#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %64 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_56 = index.constant 0
  %inserted_57 = tensor.insert %idx-1 into %64[%idx0_56] : tensor<1xindex>
  "ta.print"(%61#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_57) : (tensor<1xindex>) -> ()
  "ta.print"(%61#4) : (tensor<?xi64>) -> ()
  "ta.print"(%61#5) : (tensor<?xi64>) -> ()
  "ta.print"(%61#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %25 = index.add %9, %idx1
  %26 = tensor.empty(%25) : tensor<?xi64>
  %27:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %26) -> (index, index, tensor<?xi64>) {
    %34 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_40 : i64 to index
    %37 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted_41 : i64 to index
    %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_42 : i64 to index
    %40:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %35, %arg7 = %38) : (index, index, index, index) -> (index, index, index, index) {
      %43 = arith.cmpi ult, %arg7, %39 : index
      %44 = arith.cmpi ult, %arg6, %36 : index
      %45 = arith.andi %44, %43 : i1
      scf.condition(%45) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %extracted_44 = tensor.extract %23[%arg7] : tensor<?xi64>
      %43 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %11[%arg6] : tensor<?xi64>
      %44 = arith.index_cast %extracted_45 : i64 to index
      %45 = arith.minui %44, %43 : index
      %46 = arith.cmpi eq, %45, %44 : index
      %47 = arith.cmpi eq, %45, %43 : index
      %48 = arith.andi %46, %47 : i1
      %49:2 = scf.if %48 -> (index, index) {
        %54 = index.add %arg4, %idx1
        %55 = index.add %arg5, %idx1
        scf.yield %54, %55 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %50 = index.castu %46 : i1 to index
      %51 = index.add %arg6, %50
      %52 = index.castu %47 : i1 to index
      %53 = index.add %arg7, %52
      scf.yield %49#0, %49#1, %51, %53 : index, index, index, index
    }
    %41 = index.add %arg1, %idx1
    %42 = arith.index_cast %40#0 : index to i64
    %inserted_43 = tensor.insert %42 into %arg3[%41] : tensor<?xi64>
    scf.yield %41, %40#0, %inserted_43 : index, index, tensor<?xi64>
  }
  %28 = arith.index_cast %9 : index to i64
  %29 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %28 into %29[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %30 = tensor.empty(%27#1) : tensor<?xi64>
  %31 = tensor.empty(%27#1) : tensor<?xf64>
  %32:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %30, %arg3 = %31) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %34 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_40 : i64 to index
    %37 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted_41 : i64 to index
    %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_42 : i64 to index
    %40:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %35, %arg9 = %38) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %41 = arith.cmpi ult, %arg9, %39 : index
      %42 = arith.cmpi ult, %arg8, %36 : index
      %43 = arith.andi %42, %41 : i1
      scf.condition(%43) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %extracted_43 = tensor.extract %23[%arg9] : tensor<?xi64>
      %41 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %11[%arg8] : tensor<?xi64>
      %42 = arith.index_cast %extracted_44 : i64 to index
      %43 = arith.minui %42, %41 : index
      %44 = arith.cmpi eq, %43, %42 : index
      %45 = arith.cmpi eq, %43, %41 : index
      %46 = arith.andi %44, %45 : i1
      %47:4 = scf.if %46 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
        %extracted_46 = tensor.extract %24[%arg9] : tensor<?xf64>
        %52 = arith.mulf %extracted_45, %extracted_46 : f64
        %53 = arith.index_cast %43 : index to i64
        %inserted_47 = tensor.insert %53 into %arg5[%arg4] : tensor<?xi64>
        %54 = index.add %arg4, %idx1
        %inserted_48 = tensor.insert %52 into %arg6[%arg4] : tensor<?xf64>
        %55 = index.add %arg7, %idx1
        scf.yield %54, %inserted_47, %inserted_48, %55 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %48 = index.castu %44 : i1 to index
      %49 = index.add %arg8, %48
      %50 = index.castu %45 : i1 to index
      %51 = index.add %arg9, %50
      scf.yield %47#0, %47#1, %47#2, %47#3, %49, %51 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    scf.yield %40#0, %40#1, %40#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %33 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %33[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%27#2) : (tensor<?xi64>) -> ()
  "ta.print"(%32#1) : (tensor<?xi64>) -> ()
  "ta.print"(%32#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %25 = index.add %9, %idx1
  %26 = tensor.empty(%25) : tensor<?xi64>
  %27:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %26) -> (index, index, tensor<?xi64>) {
    %34 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_40 : i64 to index
    %37 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted_41 : i64 to index
    %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_42 : i64 to index
    %40:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %35, %arg7 = %38) : (index, index, index, index) -> (index, index, index, index) {
      %43 = arith.cmpi ult, %arg7, %39 : index
      %44 = arith.cmpi ult, %arg6, %36 : index
      %45 = arith.andi %44, %43 : i1
      scf.condition(%45) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %extracted_44 = tensor.extract %23[%arg7] : tensor<?xi64>
      %43 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %11[%arg6] : tensor<?xi64>
      %44 = arith.index_cast %extracted_45 : i64 to index
      %45 = arith.minui %44, %43 : index
      %46 = arith.cmpi eq, %45, %44 : index
      %47 = arith.cmpi eq, %45, %43 : index
      %48 = arith.andi %46, %47 : i1
      %49:2 = scf.if %48 -> (index, index) {
        %54 = index.add %arg4, %idx1
        %55 = index.add %arg5, %idx1
        scf.yield %54, %55 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %50 = index.castu %46 : i1 to index
      %51 = index.add %arg6, %50
      %52 = index.castu %47 : i1 to index
      %53 = index.add %arg7, %52
      scf.yield %49#0, %49#1, %51, %53 : index, index, index, index
    }
    %41 = index.add %arg1, %idx1
    %42 = arith.index_cast %40#0 : index to i64
    %inserted_43 = tensor.insert %42 into %arg3[%41] : tensor<?xi64>
    scf.yield %41, %40#0, %inserted_43 : index, index, tensor<?xi64>
  }
  %28 = arith.index_cast %9 : index to i64
  %29 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %28 into %29[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %30 = tensor.empty(%27#1) : tensor<?xi64>
  %31 = tensor.empty(%27#1) : tensor<?xf64>
  %32:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %30, %arg3 = %31) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %34 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_40 : i64 to index
    %37 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted_41 : i64 to index
    %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_42 : i64 to index
    %40:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %35, %arg9 = %38) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %41 = arith.cmpi ult, %arg9, %39 : index
      %42 = arith.cmpi ult, %arg8, %36 : index
      %43 = arith.andi %42, %41 : i1
      scf.condition(%43) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %extracted_43 = tensor.extract %23[%arg9] : tensor<?xi64>
      %41 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %11[%arg8] : tensor<?xi64>
      %42 = arith.index_cast %extracted_44 : i64 to index
      %43 = arith.minui %42, %41 : index
      %44 = arith.cmpi eq, %43, %42 : index
      %45 = arith.cmpi eq, %43, %41 : index
      %46 = arith.andi %44, %45 : i1
      %47:4 = scf.if %46 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
        %extracted_46 = tensor.extract %24[%arg9] : tensor<?xf64>
        %52 = arith.mulf %extracted_45, %extracted_46 : f64
        %53 = arith.index_cast %43 : index to i64
        %inserted_47 = tensor.insert %53 into %arg5[%arg4] : tensor<?xi64>
        %54 = index.add %arg4, %idx1
        %inserted_48 = tensor.insert %52 into %arg6[%arg4] : tensor<?xf64>
        %55 = index.add %arg7, %idx1
        scf.yield %54, %inserted_47, %inserted_48, %55 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %48 = index.castu %44 : i1 to index
      %49 = index.add %arg8, %48
      %50 = index.castu %45 : i1 to index
      %51 = index.add %arg9, %50
      scf.yield %47#0, %47#1, %47#2, %47#3, %49, %51 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    scf.yield %40#0, %40#1, %40#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %33 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %33[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%27#2) : (tensor<?xi64>) -> ()
  "ta.print"(%32#1) : (tensor<?xi64>) -> ()
  "ta.print"(%32#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %23 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %25 = index.add %9, %idx1
  %26 = tensor.empty(%25) : tensor<?xi64>
  %27:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %26) -> (index, index, tensor<?xi64>) {
    %34 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_40 : i64 to index
    %37 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted_41 : i64 to index
    %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_42 : i64 to index
    %40:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %35, %arg7 = %38) : (index, index, index, index) -> (index, index, index, index) {
      %43 = arith.cmpi ult, %arg7, %39 : index
      %44 = arith.cmpi ult, %arg6, %36 : index
      %45 = arith.andi %44, %43 : i1
      scf.condition(%45) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %extracted_44 = tensor.extract %23[%arg7] : tensor<?xi64>
      %43 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %11[%arg6] : tensor<?xi64>
      %44 = arith.index_cast %extracted_45 : i64 to index
      %45 = arith.minui %44, %43 : index
      %46 = arith.cmpi eq, %45, %44 : index
      %47 = arith.cmpi eq, %45, %43 : index
      %48 = arith.andi %46, %47 : i1
      %49:2 = scf.if %48 -> (index, index) {
        %54 = index.add %arg4, %idx1
        %55 = index.add %arg5, %idx1
        scf.yield %54, %55 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %50 = index.castu %46 : i1 to index
      %51 = index.add %arg6, %50
      %52 = index.castu %47 : i1 to index
      %53 = index.add %arg7, %52
      scf.yield %49#0, %49#1, %51, %53 : index, index, index, index
    }
    %41 = index.add %arg1, %idx1
    %42 = arith.index_cast %40#0 : index to i64
    %inserted_43 = tensor.insert %42 into %arg3[%41] : tensor<?xi64>
    scf.yield %41, %40#0, %inserted_43 : index, index, tensor<?xi64>
  }
  %28 = arith.index_cast %9 : index to i64
  %29 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %28 into %29[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %30 = tensor.empty(%27#1) : tensor<?xi64>
  %31 = tensor.empty(%27#1) : tensor<?xf64>
  %32:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %30, %arg3 = %31) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %34 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_40 : i64 to index
    %37 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted_41 : i64 to index
    %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_42 : i64 to index
    %40:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %35, %arg9 = %38) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %41 = arith.cmpi ult, %arg9, %39 : index
      %42 = arith.cmpi ult, %arg8, %36 : index
      %43 = arith.andi %42, %41 : i1
      scf.condition(%43) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %extracted_43 = tensor.extract %23[%arg9] : tensor<?xi64>
      %41 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %11[%arg8] : tensor<?xi64>
      %42 = arith.index_cast %extracted_44 : i64 to index
      %43 = arith.minui %42, %41 : index
      %44 = arith.cmpi eq, %43, %42 : index
      %45 = arith.cmpi eq, %43, %41 : index
      %46 = arith.andi %44, %45 : i1
      %47:4 = scf.if %46 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
        %extracted_46 = tensor.extract %24[%arg9] : tensor<?xf64>
        %52 = arith.mulf %extracted_45, %extracted_46 : f64
        %53 = arith.index_cast %43 : index to i64
        %inserted_47 = tensor.insert %53 into %arg5[%arg4] : tensor<?xi64>
        %54 = index.add %arg4, %idx1
        %inserted_48 = tensor.insert %52 into %arg6[%arg4] : tensor<?xf64>
        %55 = index.add %arg7, %idx1
        scf.yield %54, %inserted_47, %inserted_48, %55 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %48 = index.castu %44 : i1 to index
      %49 = index.add %arg8, %48
      %50 = index.castu %45 : i1 to index
      %51 = index.add %arg9, %50
      scf.yield %47#0, %47#1, %47#2, %47#3, %49, %51 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    scf.yield %40#0, %40#1, %40#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %33 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %33[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%27#2) : (tensor<?xi64>) -> ()
  "ta.print"(%32#1) : (tensor<?xi64>) -> ()
  "ta.print"(%32#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %23 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %25 = index.add %9, %idx1
    %26 = tensor.empty(%25) : tensor<?xi64>
    %27:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %26) -> (index, index, tensor<?xi64>) {
      %34 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_40 : i64 to index
      %37 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_42 : i64 to index
      %40:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %35, %arg7 = %38) : (index, index, index, index) -> (index, index, index, index) {
        %43 = arith.cmpi ult, %arg7, %39 : index
        %44 = arith.cmpi ult, %arg6, %36 : index
        %45 = arith.andi %44, %43 : i1
        scf.condition(%45) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
        %extracted_44 = tensor.extract %23[%arg7] : tensor<?xi64>
        %43 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %11[%arg6] : tensor<?xi64>
        %44 = arith.index_cast %extracted_45 : i64 to index
        %45 = arith.minui %44, %43 : index
        %46 = arith.cmpi eq, %45, %44 : index
        %47 = arith.cmpi eq, %45, %43 : index
        %48 = arith.andi %46, %47 : i1
        %49:2 = scf.if %48 -> (index, index) {
          %54 = index.add %arg4, %idx1
          %55 = index.add %arg5, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg4, %arg5 : index, index
        }
        %50 = index.castu %46 : i1 to index
        %51 = index.add %arg6, %50
        %52 = index.castu %47 : i1 to index
        %53 = index.add %arg7, %52
        scf.yield %49#0, %49#1, %51, %53 : index, index, index, index
      }
      %41 = index.add %arg1, %idx1
      %42 = arith.index_cast %40#0 : index to i64
      %inserted_43 = tensor.insert %42 into %arg3[%41] : tensor<?xi64>
      scf.yield %41, %40#0, %inserted_43 : index, index, tensor<?xi64>
    }
    %28 = arith.index_cast %9 : index to i64
    %29 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %28 into %29[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %30 = tensor.empty(%27#1) : tensor<?xi64>
    %31 = tensor.empty(%27#1) : tensor<?xf64>
    %32:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %30, %arg3 = %31) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %34 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_40 : i64 to index
      %37 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_42 : i64 to index
      %40:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %35, %arg9 = %38) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %41 = arith.cmpi ult, %arg9, %39 : index
        %42 = arith.cmpi ult, %arg8, %36 : index
        %43 = arith.andi %42, %41 : i1
        scf.condition(%43) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
        %extracted_43 = tensor.extract %23[%arg9] : tensor<?xi64>
        %41 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %11[%arg8] : tensor<?xi64>
        %42 = arith.index_cast %extracted_44 : i64 to index
        %43 = arith.minui %42, %41 : index
        %44 = arith.cmpi eq, %43, %42 : index
        %45 = arith.cmpi eq, %43, %41 : index
        %46 = arith.andi %44, %45 : i1
        %47:4 = scf.if %46 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
          %extracted_46 = tensor.extract %24[%arg9] : tensor<?xf64>
          %52 = arith.mulf %extracted_45, %extracted_46 : f64
          %53 = arith.index_cast %43 : index to i64
          %inserted_47 = tensor.insert %53 into %arg5[%arg4] : tensor<?xi64>
          %54 = index.add %arg4, %idx1
          %inserted_48 = tensor.insert %52 into %arg6[%arg4] : tensor<?xf64>
          %55 = index.add %arg7, %idx1
          scf.yield %54, %inserted_47, %inserted_48, %55 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %48 = index.castu %44 : i1 to index
        %49 = index.add %arg8, %48
        %50 = index.castu %45 : i1 to index
        %51 = index.add %arg9, %50
        scf.yield %47#0, %47#1, %47#2, %47#3, %49, %51 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      scf.yield %40#0, %40#1, %40#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %33 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %33[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%27#2) : (tensor<?xi64>) -> ()
    "ta.print"(%32#1) : (tensor<?xi64>) -> ()
    "ta.print"(%32#2) : (tensor<?xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %23 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %25 = index.add %9, %idx1
    %26 = tensor.empty(%25) : tensor<?xi64>
    %27:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %26) -> (index, index, tensor<?xi64>) {
      %34 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_40 : i64 to index
      %37 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_42 : i64 to index
      %40:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %35, %arg7 = %38) : (index, index, index, index) -> (index, index, index, index) {
        %43 = arith.cmpi ult, %arg7, %39 : index
        %44 = arith.cmpi ult, %arg6, %36 : index
        %45 = arith.andi %44, %43 : i1
        scf.condition(%45) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
        %extracted_44 = tensor.extract %23[%arg7] : tensor<?xi64>
        %43 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %11[%arg6] : tensor<?xi64>
        %44 = arith.index_cast %extracted_45 : i64 to index
        %45 = arith.minui %44, %43 : index
        %46 = arith.cmpi eq, %45, %44 : index
        %47 = arith.cmpi eq, %45, %43 : index
        %48 = arith.andi %46, %47 : i1
        %49:2 = scf.if %48 -> (index, index) {
          %54 = index.add %arg4, %idx1
          %55 = index.add %arg5, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg4, %arg5 : index, index
        }
        %50 = index.castu %46 : i1 to index
        %51 = index.add %arg6, %50
        %52 = index.castu %47 : i1 to index
        %53 = index.add %arg7, %52
        scf.yield %49#0, %49#1, %51, %53 : index, index, index, index
      }
      %41 = index.add %arg1, %idx1
      %42 = arith.index_cast %40#0 : index to i64
      %inserted_43 = tensor.insert %42 into %arg3[%41] : tensor<?xi64>
      scf.yield %41, %40#0, %inserted_43 : index, index, tensor<?xi64>
    }
    %28 = arith.index_cast %9 : index to i64
    %29 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %28 into %29[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %30 = tensor.empty(%27#1) : tensor<?xi64>
    %31 = tensor.empty(%27#1) : tensor<?xf64>
    %32:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %30, %arg3 = %31) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %34 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_40 : i64 to index
      %37 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_42 : i64 to index
      %40:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %35, %arg9 = %38) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %41 = arith.cmpi ult, %arg9, %39 : index
        %42 = arith.cmpi ult, %arg8, %36 : index
        %43 = arith.andi %42, %41 : i1
        scf.condition(%43) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
        %extracted_43 = tensor.extract %23[%arg9] : tensor<?xi64>
        %41 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %11[%arg8] : tensor<?xi64>
        %42 = arith.index_cast %extracted_44 : i64 to index
        %43 = arith.minui %42, %41 : index
        %44 = arith.cmpi eq, %43, %42 : index
        %45 = arith.cmpi eq, %43, %41 : index
        %46 = arith.andi %44, %45 : i1
        %47:4 = scf.if %46 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
          %extracted_46 = tensor.extract %24[%arg9] : tensor<?xf64>
          %52 = arith.mulf %extracted_45, %extracted_46 : f64
          %53 = arith.index_cast %43 : index to i64
          %inserted_47 = tensor.insert %53 into %arg5[%arg4] : tensor<?xi64>
          %54 = index.add %arg4, %idx1
          %inserted_48 = tensor.insert %52 into %arg6[%arg4] : tensor<?xf64>
          %55 = index.add %arg7, %idx1
          scf.yield %54, %inserted_47, %inserted_48, %55 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %48 = index.castu %44 : i1 to index
        %49 = index.add %arg8, %48
        %50 = index.castu %45 : i1 to index
        %51 = index.add %arg9, %50
        scf.yield %47#0, %47#1, %47#2, %47#3, %49, %51 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      scf.yield %40#0, %40#1, %40#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %33 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %33[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%27#2) : (tensor<?xi64>) -> ()
    "ta.print"(%32#1) : (tensor<?xi64>) -> ()
    "ta.print"(%32#2) : (tensor<?xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %23 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %25 = index.add %9, %idx1
    %26 = tensor.empty(%25) : tensor<?xi64>
    %27:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %26) -> (index, index, tensor<?xi64>) {
      %34 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_40 : i64 to index
      %37 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_42 : i64 to index
      %40:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %35, %arg7 = %38) : (index, index, index, index) -> (index, index, index, index) {
        %43 = arith.cmpi ult, %arg7, %39 : index
        %44 = arith.cmpi ult, %arg6, %36 : index
        %45 = arith.andi %44, %43 : i1
        scf.condition(%45) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
        %extracted_44 = tensor.extract %23[%arg7] : tensor<?xi64>
        %43 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %11[%arg6] : tensor<?xi64>
        %44 = arith.index_cast %extracted_45 : i64 to index
        %45 = arith.minui %44, %43 : index
        %46 = arith.cmpi eq, %45, %44 : index
        %47 = arith.cmpi eq, %45, %43 : index
        %48 = arith.andi %46, %47 : i1
        %49:2 = scf.if %48 -> (index, index) {
          %54 = index.add %arg4, %idx1
          %55 = index.add %arg5, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg4, %arg5 : index, index
        }
        %50 = index.castu %46 : i1 to index
        %51 = index.add %arg6, %50
        %52 = index.castu %47 : i1 to index
        %53 = index.add %arg7, %52
        scf.yield %49#0, %49#1, %51, %53 : index, index, index, index
      }
      %41 = index.add %arg1, %idx1
      %42 = arith.index_cast %40#0 : index to i64
      %inserted_43 = tensor.insert %42 into %arg3[%41] : tensor<?xi64>
      scf.yield %41, %40#0, %inserted_43 : index, index, tensor<?xi64>
    }
    %28 = arith.index_cast %9 : index to i64
    %29 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %28 into %29[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %30 = tensor.empty(%27#1) : tensor<?xi64>
    %31 = tensor.empty(%27#1) : tensor<?xf64>
    %32:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %30, %arg3 = %31) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %34 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_40 : i64 to index
      %37 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_42 : i64 to index
      %40:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %35, %arg9 = %38) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %41 = arith.cmpi ult, %arg9, %39 : index
        %42 = arith.cmpi ult, %arg8, %36 : index
        %43 = arith.andi %42, %41 : i1
        scf.condition(%43) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
        %extracted_43 = tensor.extract %23[%arg9] : tensor<?xi64>
        %41 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %11[%arg8] : tensor<?xi64>
        %42 = arith.index_cast %extracted_44 : i64 to index
        %43 = arith.minui %42, %41 : index
        %44 = arith.cmpi eq, %43, %42 : index
        %45 = arith.cmpi eq, %43, %41 : index
        %46 = arith.andi %44, %45 : i1
        %47:4 = scf.if %46 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
          %extracted_46 = tensor.extract %24[%arg9] : tensor<?xf64>
          %52 = arith.mulf %extracted_45, %extracted_46 : f64
          %53 = arith.index_cast %43 : index to i64
          %inserted_47 = tensor.insert %53 into %arg5[%arg4] : tensor<?xi64>
          %54 = index.add %arg4, %idx1
          %inserted_48 = tensor.insert %52 into %arg6[%arg4] : tensor<?xf64>
          %55 = index.add %arg7, %idx1
          scf.yield %54, %inserted_47, %inserted_48, %55 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %48 = index.castu %44 : i1 to index
        %49 = index.add %arg8, %48
        %50 = index.castu %45 : i1 to index
        %51 = index.add %arg9, %50
        scf.yield %47#0, %47#1, %47#2, %47#3, %49, %51 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      scf.yield %40#0, %40#1, %40#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %33 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %33[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%27#2) : (tensor<?xi64>) -> ()
    "ta.print"(%32#1) : (tensor<?xi64>) -> ()
    "ta.print"(%32#2) : (tensor<?xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %alloc_38) -> (index, index, memref<?xi64>) {
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_8[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = arith.addi %arg0, %c1 : index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%33] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %30, %arg7 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %41 = arith.cmpi ult, %arg7, %37 : index
        %42 = arith.cmpi ult, %arg6, %32 : index
        %43 = arith.andi %42, %41 : i1
        scf.condition(%43) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
        %41 = memref.load %alloc_30[%arg7] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = arith.minui %44, %42 : index
        %46 = arith.cmpi eq, %45, %44 : index
        %47 = arith.cmpi eq, %45, %42 : index
        %48 = arith.andi %46, %47 : i1
        %49:2 = scf.if %48 -> (index, index) {
          %54 = index.add %arg4, %idx1
          %55 = index.add %arg5, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg4, %arg5 : index, index
        }
        %50 = index.castu %46 : i1 to index
        %51 = index.add %arg6, %50
        %52 = index.castu %47 : i1 to index
        %53 = index.add %arg7, %52
        scf.yield %49#0, %49#1, %51, %53 : index, index, index, index
      }
      %39 = index.add %arg1, %idx1
      %40 = arith.index_cast %38#0 : index to i64
      memref.store %40, %arg3[%39] : memref<?xi64>
      scf.yield %39, %38#0, %arg3 : index, index, memref<?xi64>
    }
    %21 = bufferization.to_tensor %20#2 : memref<?xi64>
    %22 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %22, %alloc_39[%idx0] : memref<1xi64>
    %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
    %23 = bufferization.to_tensor %cast_40 : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %24:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_41, %arg3 = %alloc_42) -> (index, memref<?xi64>, memref<?xf64>) {
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_8[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = arith.addi %arg0, %c1 : index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%33] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %30, %arg9 = %35) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
        %39 = arith.cmpi ult, %arg9, %37 : index
        %40 = arith.cmpi ult, %arg8, %32 : index
        %41 = arith.andi %40, %39 : i1
        scf.condition(%41) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, memref<?xi64>, memref<?xf64>, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: memref<?xi64>, %arg6: memref<?xf64>, %arg7: index, %arg8: index, %arg9: index):
        %39 = memref.load %alloc_30[%arg9] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_10[%arg8] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = arith.minui %42, %40 : index
        %44 = arith.cmpi eq, %43, %42 : index
        %45 = arith.cmpi eq, %43, %40 : index
        %46 = arith.andi %44, %45 : i1
        %47:4 = scf.if %46 -> (index, memref<?xi64>, memref<?xf64>, index) {
          %52 = memref.load %alloc_16[%arg8] : memref<?xf64>
          %53 = memref.load %alloc_36[%arg9] : memref<?xf64>
          %54 = arith.mulf %52, %53 : f64
          %55 = arith.index_cast %43 : index to i64
          memref.store %55, %arg5[%arg4] : memref<?xi64>
          %56 = index.add %arg4, %idx1
          memref.store %54, %arg6[%arg4] : memref<?xf64>
          %57 = index.add %arg7, %idx1
          scf.yield %56, %arg5, %arg6, %57 : index, memref<?xi64>, memref<?xf64>, index
        } else {
          scf.yield %arg4, %arg5, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>, index
        }
        %48 = index.castu %44 : i1 to index
        %49 = index.add %arg8, %48
        %50 = index.castu %45 : i1 to index
        %51 = index.add %arg9, %50
        scf.yield %47#0, %47#1, %47#2, %47#3, %49, %51 : index, memref<?xi64>, memref<?xf64>, index, index, index
      }
      scf.yield %38#0, %38#1, %38#2 : index, memref<?xi64>, memref<?xf64>
    }
    %25 = bufferization.to_tensor %24#2 : memref<?xf64>
    %26 = bufferization.to_tensor %24#1 : memref<?xi64>
    %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_43[%idx0] : memref<1xindex>
    %27 = bufferization.to_tensor %alloc_43 : memref<1xindex>
    "ta.print"(%23) : (tensor<?xi64>) -> ()
    "ta.print"(%27) : (tensor<1xindex>) -> ()
    "ta.print"(%21) : (tensor<?xi64>) -> ()
    "ta.print"(%26) : (tensor<?xi64>) -> ()
    "ta.print"(%25) : (tensor<?xf64>) -> ()
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
  %cst = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %20:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %alloc_38) -> (index, index, memref<?xi64>) {
    %28 = arith.addi %arg0, %c1 : index
    %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = memref.load %alloc_8[%28] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %33 = arith.addi %arg0, %c1 : index
    %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = memref.load %alloc_28[%33] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %30, %arg7 = %35) : (index, index, index, index) -> (index, index, index, index) {
      %41 = arith.cmpi ult, %arg7, %37 : index
      %42 = arith.cmpi ult, %arg6, %32 : index
      %43 = arith.andi %42, %41 : i1
      scf.condition(%43) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %41 = memref.load %alloc_30[%arg7] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = memref.load %alloc_10[%arg6] : memref<?xi64>
      %44 = arith.index_cast %43 : i64 to index
      %45 = arith.minui %44, %42 : index
      %46 = arith.cmpi eq, %45, %44 : index
      %47 = arith.cmpi eq, %45, %42 : index
      %48 = arith.andi %46, %47 : i1
      %49:2 = scf.if %48 -> (index, index) {
        %54 = index.add %arg4, %idx1
        %55 = index.add %arg5, %idx1
        scf.yield %54, %55 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %50 = index.castu %46 : i1 to index
      %51 = index.add %arg6, %50
      %52 = index.castu %47 : i1 to index
      %53 = index.add %arg7, %52
      scf.yield %49#0, %49#1, %51, %53 : index, index, index, index
    }
    %39 = index.add %arg1, %idx1
    %40 = arith.index_cast %38#0 : index to i64
    memref.store %40, %arg3[%39] : memref<?xi64>
    scf.yield %39, %38#0, %arg3 : index, index, memref<?xi64>
  }
  %21 = bufferization.to_tensor %20#2 : memref<?xi64>
  %22 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %22, %alloc_39[%idx0] : memref<1xi64>
  %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
  %23 = bufferization.to_tensor %cast_40 : memref<?xi64>
  %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
  %24:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_41, %arg3 = %alloc_42) -> (index, memref<?xi64>, memref<?xf64>) {
    %28 = arith.addi %arg0, %c1 : index
    %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = memref.load %alloc_8[%28] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %33 = arith.addi %arg0, %c1 : index
    %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = memref.load %alloc_28[%33] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %30, %arg9 = %35) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
      %39 = arith.cmpi ult, %arg9, %37 : index
      %40 = arith.cmpi ult, %arg8, %32 : index
      %41 = arith.andi %40, %39 : i1
      scf.condition(%41) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, memref<?xi64>, memref<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: memref<?xi64>, %arg6: memref<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %39 = memref.load %alloc_30[%arg9] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.minui %42, %40 : index
      %44 = arith.cmpi eq, %43, %42 : index
      %45 = arith.cmpi eq, %43, %40 : index
      %46 = arith.andi %44, %45 : i1
      %47:4 = scf.if %46 -> (index, memref<?xi64>, memref<?xf64>, index) {
        %52 = memref.load %alloc_16[%arg8] : memref<?xf64>
        %53 = memref.load %alloc_36[%arg9] : memref<?xf64>
        %54 = arith.mulf %52, %53 : f64
        %55 = arith.index_cast %43 : index to i64
        memref.store %55, %arg5[%arg4] : memref<?xi64>
        %56 = index.add %arg4, %idx1
        memref.store %54, %arg6[%arg4] : memref<?xf64>
        %57 = index.add %arg7, %idx1
        scf.yield %56, %arg5, %arg6, %57 : index, memref<?xi64>, memref<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>, index
      }
      %48 = index.castu %44 : i1 to index
      %49 = index.add %arg8, %48
      %50 = index.castu %45 : i1 to index
      %51 = index.add %arg9, %50
      scf.yield %47#0, %47#1, %47#2, %47#3, %49, %51 : index, memref<?xi64>, memref<?xf64>, index, index, index
    }
    scf.yield %38#0, %38#1, %38#2 : index, memref<?xi64>, memref<?xf64>
  }
  %25 = bufferization.to_tensor %24#2 : memref<?xf64>
  %26 = bufferization.to_tensor %24#1 : memref<?xi64>
  %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_43[%idx0] : memref<1xindex>
  %27 = bufferization.to_tensor %alloc_43 : memref<1xindex>
  "ta.print"(%23) : (tensor<?xi64>) -> ()
  "ta.print"(%27) : (tensor<1xindex>) -> ()
  "ta.print"(%21) : (tensor<?xi64>) -> ()
  "ta.print"(%26) : (tensor<?xi64>) -> ()
  "ta.print"(%25) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %20:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %alloc_38) -> (index, index, memref<?xi64>) {
    %33 = arith.addi %arg0, %c1 : index
    %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = memref.load %alloc_8[%33] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %39 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %41 = memref.load %alloc_28[%38] : memref<?xi64>
    %42 = arith.index_cast %41 : i64 to index
    %43:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %35, %arg7 = %40) : (index, index, index, index) -> (index, index, index, index) {
      %46 = arith.cmpi ult, %arg7, %42 : index
      %47 = arith.cmpi ult, %arg6, %37 : index
      %48 = arith.andi %47, %46 : i1
      scf.condition(%48) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %46 = memref.load %alloc_30[%arg7] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = memref.load %alloc_10[%arg6] : memref<?xi64>
      %49 = arith.index_cast %48 : i64 to index
      %50 = arith.minui %49, %47 : index
      %51 = arith.cmpi eq, %50, %49 : index
      %52 = arith.cmpi eq, %50, %47 : index
      %53 = arith.andi %51, %52 : i1
      %54:2 = scf.if %53 -> (index, index) {
        %59 = index.add %arg4, %idx1
        %60 = index.add %arg5, %idx1
        scf.yield %59, %60 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %55 = index.castu %51 : i1 to index
      %56 = index.add %arg6, %55
      %57 = index.castu %52 : i1 to index
      %58 = index.add %arg7, %57
      scf.yield %54#0, %54#1, %56, %58 : index, index, index, index
    }
    %44 = index.add %arg1, %idx1
    %45 = arith.index_cast %43#0 : index to i64
    memref.store %45, %arg3[%44] : memref<?xi64>
    scf.yield %44, %43#0, %arg3 : index, index, memref<?xi64>
  }
  %21 = bufferization.to_tensor %20#2 : memref<?xi64>
  %22 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %22, %alloc_39[%idx0] : memref<1xi64>
  %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
  %23 = bufferization.to_tensor %cast_40 : memref<?xi64>
  %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
  %24:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_41, %arg3 = %alloc_42) -> (index, memref<?xi64>, memref<?xf64>) {
    %33 = arith.addi %arg0, %c1 : index
    %34 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = memref.load %alloc_8[%33] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %39 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %41 = memref.load %alloc_28[%38] : memref<?xi64>
    %42 = arith.index_cast %41 : i64 to index
    %43:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %35, %arg9 = %40) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
      %44 = arith.cmpi ult, %arg9, %42 : index
      %45 = arith.cmpi ult, %arg8, %37 : index
      %46 = arith.andi %45, %44 : i1
      scf.condition(%46) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, memref<?xi64>, memref<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: memref<?xi64>, %arg6: memref<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %44 = memref.load %alloc_30[%arg9] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = arith.minui %47, %45 : index
      %49 = arith.cmpi eq, %48, %47 : index
      %50 = arith.cmpi eq, %48, %45 : index
      %51 = arith.andi %49, %50 : i1
      %52:4 = scf.if %51 -> (index, memref<?xi64>, memref<?xf64>, index) {
        %57 = memref.load %alloc_16[%arg8] : memref<?xf64>
        %58 = memref.load %alloc_36[%arg9] : memref<?xf64>
        %59 = arith.mulf %57, %58 : f64
        %60 = arith.index_cast %48 : index to i64
        memref.store %60, %arg5[%arg4] : memref<?xi64>
        %61 = index.add %arg4, %idx1
        memref.store %59, %arg6[%arg4] : memref<?xf64>
        %62 = index.add %arg7, %idx1
        scf.yield %61, %arg5, %arg6, %62 : index, memref<?xi64>, memref<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>, index
      }
      %53 = index.castu %49 : i1 to index
      %54 = index.add %arg8, %53
      %55 = index.castu %50 : i1 to index
      %56 = index.add %arg9, %55
      scf.yield %52#0, %52#1, %52#2, %52#3, %54, %56 : index, memref<?xi64>, memref<?xf64>, index, index, index
    }
    scf.yield %43#0, %43#1, %43#2 : index, memref<?xi64>, memref<?xf64>
  }
  %25 = bufferization.to_tensor %24#2 : memref<?xf64>
  %26 = bufferization.to_tensor %24#1 : memref<?xi64>
  %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_43[%idx0] : memref<1xindex>
  %27 = bufferization.to_tensor %alloc_43 : memref<1xindex>
  %28 = bufferization.to_memref %23 : memref<?xi64>
  %cast_44 = memref.cast %28 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_44) : (memref<*xi64>) -> ()
  %29 = bufferization.to_memref %27 : memref<1xindex>
  %cast_45 = memref.cast %29 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_45) : (memref<*xindex>) -> ()
  %30 = bufferization.to_memref %21 : memref<?xi64>
  %cast_46 = memref.cast %30 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %31 = bufferization.to_memref %26 : memref<?xi64>
  %cast_47 = memref.cast %31 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
  %32 = bufferization.to_memref %25 : memref<?xf64>
  %cast_48 = memref.cast %32 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_48) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg6, %32 : index
        %37 = arith.cmpi ult, %arg5, %27 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %36 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg3, %idx1
          %50 = index.add %arg4, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg5, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg6, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg1, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      memref.store %35, %alloc_38[%34] : memref<?xi64>
      scf.yield %34, %33#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %34 = arith.cmpi ult, %arg5, %32 : index
        %35 = arith.cmpi ult, %arg4, %27 : index
        %36 = arith.andi %35, %34 : i1
        scf.condition(%36) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %34 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = arith.minui %37, %35 : index
        %39 = arith.cmpi eq, %38, %37 : index
        %40 = arith.cmpi eq, %38, %35 : index
        %41 = arith.andi %39, %40 : i1
        %42:2 = scf.if %41 -> (index, index) {
          %47 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %48 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %49 = arith.mulf %47, %48 : f64
          %50 = arith.index_cast %38 : index to i64
          memref.store %50, %alloc_40[%arg2] : memref<?xi64>
          %51 = index.add %arg2, %idx1
          memref.store %49, %alloc_41[%arg2] : memref<?xf64>
          %52 = index.add %arg3, %idx1
          scf.yield %51, %52 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %43 = index.castu %39 : i1 to index
        %44 = index.add %arg4, %43
        %45 = index.castu %40 : i1 to index
        %46 = index.add %arg5, %45
        scf.yield %42#0, %42#1, %44, %46 : index, index, index, index
      }
      scf.yield %33#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %35 = arith.cmpi ult, %arg6, %31 : index
        %36 = arith.cmpi ult, %arg5, %27 : index
        %37 = arith.andi %36, %35 : i1
        scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.minui %38, %36 : index
        %40 = arith.cmpi eq, %39, %38 : index
        %41 = arith.cmpi eq, %39, %36 : index
        %42 = arith.andi %40, %41 : i1
        %43:2 = scf.if %42 -> (index, index) {
          %48 = index.add %arg3, %idx1
          %49 = index.add %arg4, %idx1
          scf.yield %48, %49 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %44 = index.castu %40 : i1 to index
        %45 = index.add %arg5, %44
        %46 = index.castu %41 : i1 to index
        %47 = index.add %arg6, %46
        scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
      }
      %33 = index.add %arg1, %idx1
      %34 = arith.index_cast %32#0 : index to i64
      memref.store %34, %alloc_38[%33] : memref<?xi64>
      scf.yield %33, %32#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg5, %31 : index
        %34 = arith.cmpi ult, %arg4, %27 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.index_cast %37 : index to i64
          memref.store %49, %alloc_40[%arg2] : memref<?xi64>
          %50 = index.add %arg2, %idx1
          memref.store %48, %alloc_41[%arg2] : memref<?xf64>
          %51 = index.add %arg3, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg4, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg5, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      scf.yield %32#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %35 = arith.cmpi ult, %arg6, %31 : index
        %36 = arith.cmpi ult, %arg5, %27 : index
        %37 = arith.andi %36, %35 : i1
        scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.minui %38, %36 : index
        %40 = arith.cmpi eq, %39, %38 : index
        %41 = arith.cmpi eq, %39, %36 : index
        %42 = arith.andi %40, %41 : i1
        %43:2 = scf.if %42 -> (index, index) {
          %48 = index.add %arg3, %idx1
          %49 = index.add %arg4, %idx1
          scf.yield %48, %49 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %44 = index.castu %40 : i1 to index
        %45 = index.add %arg5, %44
        %46 = index.castu %41 : i1 to index
        %47 = index.add %arg6, %46
        scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
      }
      %33 = index.add %arg1, %idx1
      %34 = arith.index_cast %32#0 : index to i64
      memref.store %34, %alloc_38[%33] : memref<?xi64>
      scf.yield %33, %32#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg5, %31 : index
        %34 = arith.cmpi ult, %arg4, %27 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.index_cast %37 : index to i64
          memref.store %49, %alloc_40[%arg2] : memref<?xi64>
          %50 = index.add %arg2, %idx1
          memref.store %48, %alloc_41[%arg2] : memref<?xf64>
          %51 = index.add %arg3, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg4, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg5, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      scf.yield %32#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %35 = arith.cmpi ult, %arg6, %31 : index
        %36 = arith.cmpi ult, %arg5, %27 : index
        %37 = arith.andi %36, %35 : i1
        scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.minui %38, %36 : index
        %40 = arith.cmpi eq, %39, %38 : index
        %41 = arith.cmpi eq, %39, %36 : index
        %42 = arith.andi %40, %41 : i1
        %43:2 = scf.if %42 -> (index, index) {
          %48 = index.add %arg3, %idx1
          %49 = index.add %arg4, %idx1
          scf.yield %48, %49 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %44 = index.castu %40 : i1 to index
        %45 = index.add %arg5, %44
        %46 = index.castu %41 : i1 to index
        %47 = index.add %arg6, %46
        scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
      }
      %33 = index.add %arg1, %idx1
      %34 = arith.index_cast %32#0 : index to i64
      memref.store %34, %alloc_38[%33] : memref<?xi64>
      scf.yield %33, %32#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg5, %31 : index
        %34 = arith.cmpi ult, %arg4, %27 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.index_cast %37 : index to i64
          memref.store %49, %alloc_40[%arg2] : memref<?xi64>
          %50 = index.add %arg2, %idx1
          memref.store %48, %alloc_41[%arg2] : memref<?xf64>
          %51 = index.add %arg3, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg4, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg5, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      scf.yield %32#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_8[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_28[%23] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
      %35 = arith.cmpi ult, %arg6, %31 : index
      %36 = arith.cmpi ult, %arg5, %27 : index
      %37 = arith.andi %36, %35 : i1
      scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
    } do {
    ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
      %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = arith.minui %38, %36 : index
      %40 = arith.cmpi eq, %39, %38 : index
      %41 = arith.cmpi eq, %39, %36 : index
      %42 = arith.andi %40, %41 : i1
      %43:2 = scf.if %42 -> (index, index) {
        %48 = index.add %arg3, %idx1
        %49 = index.add %arg4, %idx1
        scf.yield %48, %49 : index, index
      } else {
        scf.yield %arg3, %arg4 : index, index
      }
      %44 = index.castu %40 : i1 to index
      %45 = index.add %arg5, %44
      %46 = index.castu %41 : i1 to index
      %47 = index.add %arg6, %46
      scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
    }
    %33 = index.add %arg1, %idx1
    %34 = arith.index_cast %32#0 : index to i64
    memref.store %34, %alloc_38[%33] : memref<?xi64>
    scf.yield %33, %32#0 : index, index
  }
  %21 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %21, %alloc_39[%idx0] : memref<1xi64>
  %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
  %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_8[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_28[%23] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
      %33 = arith.cmpi ult, %arg5, %31 : index
      %34 = arith.cmpi ult, %arg4, %27 : index
      %35 = arith.andi %34, %33 : i1
      scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.minui %36, %34 : index
      %38 = arith.cmpi eq, %37, %36 : index
      %39 = arith.cmpi eq, %37, %34 : index
      %40 = arith.andi %38, %39 : i1
      %41:2 = scf.if %40 -> (index, index) {
        %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
        %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
        %48 = arith.mulf %46, %47 : f64
        %49 = arith.index_cast %37 : index to i64
        memref.store %49, %alloc_40[%arg2] : memref<?xi64>
        %50 = index.add %arg2, %idx1
        memref.store %48, %alloc_41[%arg2] : memref<?xf64>
        %51 = index.add %arg3, %idx1
        scf.yield %50, %51 : index, index
      } else {
        scf.yield %arg2, %arg3 : index, index
      }
      %42 = index.castu %38 : i1 to index
      %43 = index.add %arg4, %42
      %44 = index.castu %39 : i1 to index
      %45 = index.add %arg5, %44
      scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
    }
    scf.yield %32#0 : index
  }
  %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
  %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
  %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
  %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
  %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %19 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_8[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_28[%23] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
      %35 = arith.cmpi ult, %arg6, %31 : index
      %36 = arith.cmpi ult, %arg5, %27 : index
      %37 = arith.andi %36, %35 : i1
      scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
    } do {
    ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
      %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = arith.minui %38, %36 : index
      %40 = arith.cmpi eq, %39, %38 : index
      %41 = arith.cmpi eq, %39, %36 : index
      %42 = arith.andi %40, %41 : i1
      %43:2 = scf.if %42 -> (index, index) {
        %48 = index.add %arg3, %idx1
        %49 = index.add %arg4, %idx1
        scf.yield %48, %49 : index, index
      } else {
        scf.yield %arg3, %arg4 : index, index
      }
      %44 = index.castu %40 : i1 to index
      %45 = index.add %arg5, %44
      %46 = index.castu %41 : i1 to index
      %47 = index.add %arg6, %46
      scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
    }
    %33 = index.add %arg1, %idx1
    %34 = arith.index_cast %32#0 : index to i64
    memref.store %34, %alloc_38[%33] : memref<?xi64>
    scf.yield %33, %32#0 : index, index
  }
  %21 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %21, %alloc_39[%idx0] : memref<1xi64>
  %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
  %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_8[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_28[%23] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
      %33 = arith.cmpi ult, %arg5, %31 : index
      %34 = arith.cmpi ult, %arg4, %27 : index
      %35 = arith.andi %34, %33 : i1
      scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.minui %36, %34 : index
      %38 = arith.cmpi eq, %37, %36 : index
      %39 = arith.cmpi eq, %37, %34 : index
      %40 = arith.andi %38, %39 : i1
      %41:2 = scf.if %40 -> (index, index) {
        %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
        %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
        %48 = arith.mulf %46, %47 : f64
        %49 = arith.index_cast %37 : index to i64
        memref.store %49, %alloc_40[%arg2] : memref<?xi64>
        %50 = index.add %arg2, %idx1
        memref.store %48, %alloc_41[%arg2] : memref<?xf64>
        %51 = index.add %arg3, %idx1
        scf.yield %50, %51 : index, index
      } else {
        scf.yield %arg2, %arg3 : index, index
      }
      %42 = index.castu %38 : i1 to index
      %43 = index.add %arg4, %42
      %44 = index.castu %39 : i1 to index
      %45 = index.add %arg5, %44
      scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
    }
    scf.yield %32#0 : index
  }
  %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
  %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
  %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
  %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
  %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %35 = arith.cmpi ult, %arg6, %31 : index
        %36 = arith.cmpi ult, %arg5, %27 : index
        %37 = arith.andi %36, %35 : i1
        scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.minui %38, %36 : index
        %40 = arith.cmpi eq, %39, %38 : index
        %41 = arith.cmpi eq, %39, %36 : index
        %42 = arith.andi %40, %41 : i1
        %43:2 = scf.if %42 -> (index, index) {
          %48 = index.add %arg3, %idx1
          %49 = index.add %arg4, %idx1
          scf.yield %48, %49 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %44 = index.castu %40 : i1 to index
        %45 = index.add %arg5, %44
        %46 = index.castu %41 : i1 to index
        %47 = index.add %arg6, %46
        scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
      }
      %33 = index.add %arg1, %idx1
      %34 = arith.index_cast %32#0 : index to i64
      memref.store %34, %alloc_38[%33] : memref<?xi64>
      scf.yield %33, %32#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg5, %31 : index
        %34 = arith.cmpi ult, %arg4, %27 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.index_cast %37 : index to i64
          memref.store %49, %alloc_40[%arg2] : memref<?xi64>
          %50 = index.add %arg2, %idx1
          memref.store %48, %alloc_41[%arg2] : memref<?xf64>
          %51 = index.add %arg3, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg4, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg5, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      scf.yield %32#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %35 = arith.cmpi ult, %arg6, %31 : index
        %36 = arith.cmpi ult, %arg5, %27 : index
        %37 = arith.andi %36, %35 : i1
        scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.minui %38, %36 : index
        %40 = arith.cmpi eq, %39, %38 : index
        %41 = arith.cmpi eq, %39, %36 : index
        %42 = arith.andi %40, %41 : i1
        %43:2 = scf.if %42 -> (index, index) {
          %48 = index.add %arg3, %idx1
          %49 = index.add %arg4, %idx1
          scf.yield %48, %49 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %44 = index.castu %40 : i1 to index
        %45 = index.add %arg5, %44
        %46 = index.castu %41 : i1 to index
        %47 = index.add %arg6, %46
        scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
      }
      %33 = index.add %arg1, %idx1
      %34 = arith.index_cast %32#0 : index to i64
      memref.store %34, %alloc_38[%33] : memref<?xi64>
      scf.yield %33, %32#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg5, %31 : index
        %34 = arith.cmpi ult, %arg4, %27 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.index_cast %37 : index to i64
          memref.store %49, %alloc_40[%arg2] : memref<?xi64>
          %50 = index.add %arg2, %idx1
          memref.store %48, %alloc_41[%arg2] : memref<?xf64>
          %51 = index.add %arg3, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg4, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg5, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      scf.yield %32#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %35 = arith.cmpi ult, %arg6, %31 : index
        %36 = arith.cmpi ult, %arg5, %27 : index
        %37 = arith.andi %36, %35 : i1
        scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.minui %38, %36 : index
        %40 = arith.cmpi eq, %39, %38 : index
        %41 = arith.cmpi eq, %39, %36 : index
        %42 = arith.andi %40, %41 : i1
        %43:2 = scf.if %42 -> (index, index) {
          %48 = index.add %arg3, %idx1
          %49 = index.add %arg4, %idx1
          scf.yield %48, %49 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %44 = index.castu %40 : i1 to index
        %45 = index.add %arg5, %44
        %46 = index.castu %41 : i1 to index
        %47 = index.add %arg6, %46
        scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
      }
      %33 = index.add %arg1, %idx1
      %34 = arith.index_cast %32#0 : index to i64
      memref.store %34, %alloc_38[%33] : memref<?xi64>
      scf.yield %33, %32#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg5, %31 : index
        %34 = arith.cmpi ult, %arg4, %27 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.index_cast %37 : index to i64
          memref.store %49, %alloc_40[%arg2] : memref<?xi64>
          %50 = index.add %arg2, %idx1
          memref.store %48, %alloc_41[%arg2] : memref<?xf64>
          %51 = index.add %arg3, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg4, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg5, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      scf.yield %32#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %35 = arith.cmpi ult, %arg6, %31 : index
        %36 = arith.cmpi ult, %arg5, %27 : index
        %37 = arith.andi %36, %35 : i1
        scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.minui %38, %36 : index
        %40 = arith.cmpi eq, %39, %38 : index
        %41 = arith.cmpi eq, %39, %36 : index
        %42 = arith.andi %40, %41 : i1
        %43:2 = scf.if %42 -> (index, index) {
          %48 = index.add %arg3, %idx1
          %49 = index.add %arg4, %idx1
          scf.yield %48, %49 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %44 = index.castu %40 : i1 to index
        %45 = index.add %arg5, %44
        %46 = index.castu %41 : i1 to index
        %47 = index.add %arg6, %46
        scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
      }
      %33 = index.add %arg1, %idx1
      %34 = arith.index_cast %32#0 : index to i64
      memref.store %34, %alloc_38[%33] : memref<?xi64>
      scf.yield %33, %32#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg5, %31 : index
        %34 = arith.cmpi ult, %arg4, %27 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.index_cast %37 : index to i64
          memref.store %49, %alloc_40[%arg2] : memref<?xi64>
          %50 = index.add %arg2, %idx1
          memref.store %48, %alloc_41[%arg2] : memref<?xf64>
          %51 = index.add %arg3, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg4, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg5, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      scf.yield %32#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %35 = arith.cmpi ult, %arg6, %31 : index
        %36 = arith.cmpi ult, %arg5, %27 : index
        %37 = arith.andi %36, %35 : i1
        scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.minui %38, %36 : index
        %40 = arith.cmpi eq, %39, %38 : index
        %41 = arith.cmpi eq, %39, %36 : index
        %42 = arith.andi %40, %41 : i1
        %43:2 = scf.if %42 -> (index, index) {
          %48 = index.add %arg3, %idx1
          %49 = index.add %arg4, %idx1
          scf.yield %48, %49 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %44 = index.castu %40 : i1 to index
        %45 = index.add %arg5, %44
        %46 = index.castu %41 : i1 to index
        %47 = index.add %arg6, %46
        scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
      }
      %33 = index.add %arg1, %idx1
      %34 = arith.index_cast %32#0 : index to i64
      memref.store %34, %alloc_38[%33] : memref<?xi64>
      scf.yield %33, %32#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg5, %31 : index
        %34 = arith.cmpi ult, %arg4, %27 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.index_cast %37 : index to i64
          memref.store %49, %alloc_40[%arg2] : memref<?xi64>
          %50 = index.add %arg2, %idx1
          memref.store %48, %alloc_41[%arg2] : memref<?xf64>
          %51 = index.add %arg3, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg4, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg5, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      scf.yield %32#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %19 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %20:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %25, %arg6 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %35 = arith.cmpi ult, %arg6, %31 : index
        %36 = arith.cmpi ult, %arg5, %27 : index
        %37 = arith.andi %36, %35 : i1
        scf.condition(%37) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %35 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.minui %38, %36 : index
        %40 = arith.cmpi eq, %39, %38 : index
        %41 = arith.cmpi eq, %39, %36 : index
        %42 = arith.andi %40, %41 : i1
        %43:2 = scf.if %42 -> (index, index) {
          %48 = index.add %arg3, %idx1
          %49 = index.add %arg4, %idx1
          scf.yield %48, %49 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %44 = index.castu %40 : i1 to index
        %45 = index.add %arg5, %44
        %46 = index.castu %41 : i1 to index
        %47 = index.add %arg6, %46
        scf.yield %43#0, %43#1, %45, %47 : index, index, index, index
      }
      %33 = index.add %arg1, %idx1
      %34 = arith.index_cast %32#0 : index to i64
      memref.store %34, %alloc_38[%33] : memref<?xi64>
      scf.yield %33, %32#0 : index, index
    }
    %21 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %21, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%20#1) {alignment = 64 : i64} : memref<?xf64>
    %22 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_28[%23] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %25, %arg5 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg5, %31 : index
        %34 = arith.cmpi ult, %arg4, %27 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %33 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %47 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.index_cast %37 : index to i64
          memref.store %49, %alloc_40[%arg2] : memref<?xi64>
          %50 = index.add %arg2, %idx1
          memref.store %48, %alloc_41[%arg2] : memref<?xf64>
          %51 = index.add %arg3, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg4, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg5, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      scf.yield %32#0 : index
    }
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_42[%idx0] : memref<1xindex>
    %cast_43 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_43) : (memref<*xi64>) -> ()
    %cast_44 = memref.cast %alloc_42 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_44) : (memref<*xindex>) -> ()
    %cast_45 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_45) : (memref<*xi64>) -> ()
    %cast_46 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_47) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
