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
    %9 = "it.IndexOp"(%8) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %10 = "it.IndexOp"(%9) <{IsParallel = true}> : (!it.index) -> !it.index
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
    %10 = "it.IndexOp"(%6, %9) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %12 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %13 = "it.DomainIntersectionOp"(%12, %11) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %14 = "it.IndexOp"(%10, %13) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %15 = "it.IndexOp"(%13, %14) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %16 = "it.SparseDomainOp"(%7, %8, %9, %dim_1, %dim_2, %10, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %17 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos_4) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %18 = "it.DomainIntersectionOp"(%17, %16, %4) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %19 = "it.IndexOp"(%15, %18) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %59 = "it.IndexOp"(%57, %58) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %62 = "it.DomainIntersectionOp"(%61, %60, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %63 = "it.IndexOp"(%59, %62) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %59 = "it.IndexOp"(%57, %58) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %62 = "it.DomainIntersectionOp"(%61, %60, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %63 = "it.IndexOp"(%59, %62) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %59 = "it.IndexOp"(%57, %58) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %62 = "it.DomainIntersectionOp"(%61, %60, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %63 = "it.IndexOp"(%59, %62) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %60 = "it.IndexOp"(%58, %59) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.DomainIntersectionOp"(%62, %61, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %64 = "it.IndexOp"(%60, %63) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %60 = "it.IndexOp"(%58, %59) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.DomainIntersectionOp"(%62, %61, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %64 = "it.IndexOp"(%60, %63) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %60 = "it.IndexOp"(%58, %59) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%51, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%22, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.DomainIntersectionOp"(%62, %61, %26) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %64 = "it.IndexOp"(%60, %63) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%45, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %59 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%45, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %59 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%45, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %59 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %56 = "it.IndexOp"(%54, %55) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
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
    %56 = "it.IndexOp"(%54, %55) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%45, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %57 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%20, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %59 = "it.DomainIntersectionOp"(%58, %57, %24) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %60 = "it.IndexOp"(%56, %59) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
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
    %54:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %55 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %54#4) -> (tensor<?xi64>) {
      %c0_44 = arith.constant 0 : index
      %60 = builtin.unrealized_conversion_cast %arg1, %54#1, %c0_44, %54#3, %arg2, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %c1_45 = arith.constant 1 : index
      %idx0 = index.constant 0
      %61 = arith.addi %arg1, %c1_45 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %62 = arith.index_cast %extracted : i64 to index
      %extracted_46 = tensor.extract %22[%61] : tensor<?xi64>
      %63 = arith.index_cast %extracted_46 : i64 to index
      %64 = arith.addi %arg1, %c1_45 : index
      %extracted_47 = tensor.extract %46[%arg1] : tensor<?xi64>
      %65 = arith.index_cast %extracted_47 : i64 to index
      %extracted_48 = tensor.extract %46[%64] : tensor<?xi64>
      %66 = arith.index_cast %extracted_48 : i64 to index
      %67:4 = scf.while (%arg3 = %60, %arg4 = %idx0, %arg5 = %62, %arg6 = %65) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index) {
        %70 = arith.cmpi ult, %arg6, %66 : index
        %71 = arith.cmpi ult, %arg5, %63 : index
        %72 = arith.andi %71, %70 : i1
        scf.condition(%72) %arg3, %arg4, %arg5, %arg6 : !it.symbolic_domain<64>, index, index, index
      } do {
      ^bb0(%arg3: !it.symbolic_domain<64>, %arg4: index, %arg5: index, %arg6: index):
        %70 = "ta.SpTensorGetCrd"(%45, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %71 = arith.index_cast %70 : i64 to index
        %72 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %73 = arith.index_cast %72 : i64 to index
        %74 = arith.minui %73, %71 : index
        %75 = arith.cmpi eq, %74, %73 : index
        %76 = arith.cmpi eq, %74, %71 : index
        %77 = arith.andi %75, %76 : i1
        %78:2 = scf.if %77 -> (!it.symbolic_domain<64>, index) {
          %idx1 = index.constant 1
          %83 = "it.SymbolicDomainInsertOp"(%arg3, %74) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          %84 = index.add %arg4, %idx1
          scf.yield %83, %84 : !it.symbolic_domain<64>, index
        } else {
          scf.yield %arg3, %arg4 : !it.symbolic_domain<64>, index
        }
        %79 = index.castu %75 : i1 to index
        %80 = index.add %arg5, %79
        %81 = index.castu %76 : i1 to index
        %82 = index.add %arg6, %81
        scf.yield %78#0, %78#1, %80, %82 : !it.symbolic_domain<64>, index, index, index
      }
      %68 = "it.SymbolicDomainEndRowOp"(%67#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %69:6 = builtin.unrealized_conversion_cast %68 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %69#4[%69#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%69#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %c0_i64_42 = arith.constant 0 : i64
    %c1_43 = arith.constant 1 : index
    %56 = arith.addi %21, %c1_43 : index
    %57:2 = scf.for %arg1 = %c1_43 to %56 step %c1_43 iter_args(%arg2 = %c0_i64_42, %arg3 = %55) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %60 = arith.addi %extracted, %arg2 : i64
      %inserted = tensor.insert %60 into %arg3[%arg1] : tensor<?xi64>
      scf.yield %60, %inserted : i64, tensor<?xi64>
    }
    %58 = arith.index_cast %57#0 : i64 to index
    %59 = builtin.unrealized_conversion_cast %21, %54#1, %58, %54#3, %57#1, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %59 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "it.itree"(%52) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %54:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %55:2 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %54#5, %arg3 = %54#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %54#4[%arg1] : tensor<?xi64>
      %57 = arith.index_cast %extracted : i64 to index
      %c1_42 = arith.constant 1 : index
      %58 = arith.addi %arg1, %c1_42 : index
      %extracted_43 = tensor.extract %54#4[%58] : tensor<?xi64>
      %59 = arith.index_cast %extracted_43 : i64 to index
      %60 = arith.subi %59, %57 : index
      %extracted_slice = tensor.extract_slice %arg2[%57] [%60] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_44 = tensor.extract_slice %arg3[%57] [%60] [1] : tensor<?xf64> to tensor<?xf64>
      %c0_45 = arith.constant 0 : index
      %61 = builtin.unrealized_conversion_cast %54#0, %54#1, %54#2, %c0_45, %54#4, %extracted_slice, %extracted_slice_44 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %c1_46 = arith.constant 1 : index
      %idx0 = index.constant 0
      %62 = arith.addi %arg1, %c1_46 : index
      %extracted_47 = tensor.extract %22[%arg1] : tensor<?xi64>
      %63 = arith.index_cast %extracted_47 : i64 to index
      %extracted_48 = tensor.extract %22[%62] : tensor<?xi64>
      %64 = arith.index_cast %extracted_48 : i64 to index
      %65 = arith.addi %arg1, %c1_46 : index
      %extracted_49 = tensor.extract %46[%arg1] : tensor<?xi64>
      %66 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %46[%65] : tensor<?xi64>
      %67 = arith.index_cast %extracted_50 : i64 to index
      %68:4 = scf.while (%arg4 = %61, %arg5 = %idx0, %arg6 = %63, %arg7 = %66) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %74 = arith.cmpi ult, %arg7, %67 : index
        %75 = arith.cmpi ult, %arg6, %64 : index
        %76 = arith.andi %75, %74 : i1
        scf.condition(%76) %arg4, %arg5, %arg6, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg4: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg5: index, %arg6: index, %arg7: index):
        %74 = "ta.SpTensorGetCrd"(%45, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %75 = arith.index_cast %74 : i64 to index
        %76 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %77 = arith.index_cast %76 : i64 to index
        %78 = arith.minui %77, %75 : index
        %79 = arith.cmpi eq, %78, %77 : index
        %80 = arith.cmpi eq, %78, %75 : index
        %81 = arith.andi %79, %80 : i1
        %82:2 = scf.if %81 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %idx1 = index.constant 1
          %idx0_54 = index.constant 0
          %87 = "ta.TensorFindPos"(%arg4, %78) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %88 = "ta.TAExtractOp"(%20, %arg6, %arg1, %78) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %89 = "ta.TAExtractOp"(%45, %arg7, %arg1, %78) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %90 = arith.mulf %88, %89 : f64
          %91 = "ta.TAInsertOp"(%arg4, %arg1, %87, %arg1, %78, %90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %92 = index.add %arg5, %idx1
          scf.yield %91, %92 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg4, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %83 = index.castu %79 : i1 to index
        %84 = index.add %arg6, %83
        %85 = index.castu %80 : i1 to index
        %86 = index.add %arg7, %85
        scf.yield %82#0, %82#1, %84, %86 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      %69:7 = builtin.unrealized_conversion_cast %68#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %extracted_51 = tensor.extract %54#4[%arg1] : tensor<?xi64>
      %70 = arith.index_cast %extracted_51 : i64 to index
      %c1_52 = arith.constant 1 : index
      %71 = arith.addi %arg1, %c1_52 : index
      %extracted_53 = tensor.extract %54#4[%71] : tensor<?xi64>
      %72 = arith.index_cast %extracted_53 : i64 to index
      %73 = arith.subi %72, %70 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %69#5 into %arg2[%70] [%73] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %69#6 into %arg3[%70] [%73] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %56 = builtin.unrealized_conversion_cast %54#0, %54#1, %54#2, %54#3, %54#4, %55#0, %55#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %56 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
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
    %51:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %52 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %51#4) -> (tensor<?xi64>) {
      %57 = builtin.unrealized_conversion_cast %arg1, %51#1, %c0, %51#3, %arg2, %51#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %58 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %59 = arith.index_cast %extracted : i64 to index
      %extracted_39 = tensor.extract %22[%58] : tensor<?xi64>
      %60 = arith.index_cast %extracted_39 : i64 to index
      %61 = arith.addi %arg1, %c1 : index
      %extracted_40 = tensor.extract %45[%arg1] : tensor<?xi64>
      %62 = arith.index_cast %extracted_40 : i64 to index
      %extracted_41 = tensor.extract %45[%61] : tensor<?xi64>
      %63 = arith.index_cast %extracted_41 : i64 to index
      %64:4 = scf.while (%arg3 = %57, %arg4 = %idx0, %arg5 = %59, %arg6 = %62) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index) {
        %67 = arith.cmpi ult, %arg6, %63 : index
        %68 = arith.cmpi ult, %arg5, %60 : index
        %69 = arith.andi %68, %67 : i1
        scf.condition(%69) %arg3, %arg4, %arg5, %arg6 : !it.symbolic_domain<64>, index, index, index
      } do {
      ^bb0(%arg3: !it.symbolic_domain<64>, %arg4: index, %arg5: index, %arg6: index):
        %67 = "ta.SpTensorGetCrd"(%44, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %68 = arith.index_cast %67 : i64 to index
        %69 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %70 = arith.index_cast %69 : i64 to index
        %71 = arith.minui %70, %68 : index
        %72 = arith.cmpi eq, %71, %70 : index
        %73 = arith.cmpi eq, %71, %68 : index
        %74 = arith.andi %72, %73 : i1
        %75:2 = scf.if %74 -> (!it.symbolic_domain<64>, index) {
          %80 = "it.SymbolicDomainInsertOp"(%arg3, %71) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          %81 = index.add %arg4, %idx1
          scf.yield %80, %81 : !it.symbolic_domain<64>, index
        } else {
          scf.yield %arg3, %arg4 : !it.symbolic_domain<64>, index
        }
        %76 = index.castu %72 : i1 to index
        %77 = index.add %arg5, %76
        %78 = index.castu %73 : i1 to index
        %79 = index.add %arg6, %78
        scf.yield %75#0, %75#1, %77, %79 : !it.symbolic_domain<64>, index, index, index
      }
      %65 = "it.SymbolicDomainEndRowOp"(%64#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %66:6 = builtin.unrealized_conversion_cast %65 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %66#4[%66#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%66#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %53 = arith.addi %21, %c1 : index
    %54:2 = scf.for %arg1 = %c1 to %53 step %c1 iter_args(%arg2 = %c0_i64, %arg3 = %52) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %57 = arith.addi %extracted, %arg2 : i64
      %inserted = tensor.insert %57 into %arg3[%arg1] : tensor<?xi64>
      scf.yield %57, %inserted : i64, tensor<?xi64>
    }
    %55 = arith.index_cast %54#0 : i64 to index
    %56 = builtin.unrealized_conversion_cast %21, %51#1, %55, %51#3, %54#1, %51#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %56 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %49 = "it.IndexTreeSparseTensorOp"(%46, %48) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.itree"(%49) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %51:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %52:2 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %51#5, %arg3 = %51#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %51#4[%arg1] : tensor<?xi64>
      %54 = arith.index_cast %extracted : i64 to index
      %55 = arith.addi %arg1, %c1 : index
      %extracted_39 = tensor.extract %51#4[%55] : tensor<?xi64>
      %56 = arith.index_cast %extracted_39 : i64 to index
      %57 = arith.subi %56, %54 : index
      %extracted_slice = tensor.extract_slice %arg2[%54] [%57] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_40 = tensor.extract_slice %arg3[%54] [%57] [1] : tensor<?xf64> to tensor<?xf64>
      %58 = builtin.unrealized_conversion_cast %51#0, %51#1, %51#2, %c0, %51#4, %extracted_slice, %extracted_slice_40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %59 = arith.addi %arg1, %c1 : index
      %extracted_41 = tensor.extract %22[%arg1] : tensor<?xi64>
      %60 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%59] : tensor<?xi64>
      %61 = arith.index_cast %extracted_42 : i64 to index
      %62 = arith.addi %arg1, %c1 : index
      %extracted_43 = tensor.extract %45[%arg1] : tensor<?xi64>
      %63 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %45[%62] : tensor<?xi64>
      %64 = arith.index_cast %extracted_44 : i64 to index
      %65:4 = scf.while (%arg4 = %58, %arg5 = %idx0, %arg6 = %60, %arg7 = %63) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %71 = arith.cmpi ult, %arg7, %64 : index
        %72 = arith.cmpi ult, %arg6, %61 : index
        %73 = arith.andi %72, %71 : i1
        scf.condition(%73) %arg4, %arg5, %arg6, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg4: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg5: index, %arg6: index, %arg7: index):
        %71 = "ta.SpTensorGetCrd"(%44, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %72 = arith.index_cast %71 : i64 to index
        %73 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %74 = arith.index_cast %73 : i64 to index
        %75 = arith.minui %74, %72 : index
        %76 = arith.cmpi eq, %75, %74 : index
        %77 = arith.cmpi eq, %75, %72 : index
        %78 = arith.andi %76, %77 : i1
        %79:2 = scf.if %78 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %84 = "ta.TensorFindPos"(%arg4, %75) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %85 = "ta.TAExtractOp"(%20, %arg6, %arg1, %75) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %86 = "ta.TAExtractOp"(%44, %arg7, %arg1, %75) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %87 = arith.mulf %85, %86 : f64
          %88 = "ta.TAInsertOp"(%arg4, %arg1, %84, %arg1, %75, %87) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %89 = index.add %arg5, %idx1
          scf.yield %88, %89 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg4, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %80 = index.castu %76 : i1 to index
        %81 = index.add %arg6, %80
        %82 = index.castu %77 : i1 to index
        %83 = index.add %arg7, %82
        scf.yield %79#0, %79#1, %81, %83 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      %66:7 = builtin.unrealized_conversion_cast %65#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %extracted_45 = tensor.extract %51#4[%arg1] : tensor<?xi64>
      %67 = arith.index_cast %extracted_45 : i64 to index
      %68 = arith.addi %arg1, %c1 : index
      %extracted_46 = tensor.extract %51#4[%68] : tensor<?xi64>
      %69 = arith.index_cast %extracted_46 : i64 to index
      %70 = arith.subi %69, %67 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %66#5 into %arg2[%67] [%70] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %66#6 into %arg3[%67] [%70] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %53 = builtin.unrealized_conversion_cast %51#0, %51#1, %51#2, %51#3, %51#4, %52#0, %52#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
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
    %65 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %66:6 = builtin.unrealized_conversion_cast %65 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %67 = scf.forall (%arg6) in (%21) shared_outs(%arg7 = %66#4) -> (tensor<?xi64>) {
      %72 = builtin.unrealized_conversion_cast %arg6, %66#1, %c0, %66#3, %arg7, %66#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %73 = arith.addi %arg6, %c1 : index
      %extracted = tensor.extract %22[%arg6] : tensor<?xi64>
      %74 = arith.index_cast %extracted : i64 to index
      %extracted_48 = tensor.extract %22[%73] : tensor<?xi64>
      %75 = arith.index_cast %extracted_48 : i64 to index
      %76 = arith.addi %arg6, %c1 : index
      %extracted_49 = tensor.extract %45[%arg6] : tensor<?xi64>
      %77 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %45[%76] : tensor<?xi64>
      %78 = arith.index_cast %extracted_50 : i64 to index
      %79:9 = scf.while (%arg8 = %arg6, %arg9 = %66#1, %arg10 = %c0, %arg11 = %66#3, %arg12 = %arg7, %arg13 = %66#5, %arg14 = %idx0, %arg15 = %74, %arg16 = %77) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
        %85 = arith.cmpi ult, %arg16, %78 : index
        %86 = arith.cmpi ult, %arg15, %75 : index
        %87 = arith.andi %86, %85 : i1
        scf.condition(%87) %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg8: index, %arg9: index, %arg10: index, %arg11: index, %arg12: tensor<?xi64>, %arg13: tensor<?xi64>, %arg14: index, %arg15: index, %arg16: index):
        %85 = "ta.SpTensorGetCrd"(%44, %arg16) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %86 = arith.index_cast %85 : i64 to index
        %87 = "ta.SpTensorGetCrd"(%20, %arg15) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %88 = arith.index_cast %87 : i64 to index
        %89 = arith.minui %88, %86 : index
        %90 = arith.cmpi eq, %89, %88 : index
        %91 = arith.cmpi eq, %89, %86 : index
        %92 = arith.andi %90, %91 : i1
        %93:7 = scf.if %92 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
          %idx1_53 = index.constant 1
          %99 = index.add %arg10, %idx1_53
          %100 = builtin.unrealized_conversion_cast %arg8, %arg9, %99, %arg11, %arg12, %arg13 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          %101 = index.add %arg14, %idx1
          scf.yield %arg8, %arg9, %99, %arg11, %arg12, %arg13, %101 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        } else {
          scf.yield %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        }
        %94 = builtin.unrealized_conversion_cast %93#0, %93#1, %93#2, %93#3, %93#4, %93#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %95 = index.castu %90 : i1 to index
        %96 = index.add %arg15, %95
        %97 = index.castu %91 : i1 to index
        %98 = index.add %arg16, %97
        scf.yield %93#0, %93#1, %93#2, %93#3, %93#4, %93#5, %93#6, %96, %98 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      }
      %80 = builtin.unrealized_conversion_cast %79#0, %79#1, %79#2, %79#3, %79#4, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_51 = index.constant 1
      %81 = index.add %79#0, %idx1_51
      %82 = arith.index_cast %79#2 : index to i64
      %inserted_52 = tensor.insert %82 into %79#4[%81] : tensor<?xi64>
      %83 = builtin.unrealized_conversion_cast %81, %79#1, %79#2, %79#3, %inserted_52, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %84:6 = builtin.unrealized_conversion_cast %83 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %84#4[%84#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%84#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %68 = arith.addi %21, %c1 : index
    %69:2 = scf.for %arg6 = %c1 to %68 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %67) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %72 = arith.addi %extracted, %arg7 : i64
      %inserted_48 = tensor.insert %72 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %72, %inserted_48 : i64, tensor<?xi64>
    }
    %70 = arith.index_cast %69#0 : i64 to index
    %71 = builtin.unrealized_conversion_cast %21, %66#1, %70, %66#3, %69#1, %66#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %21, %66#1, %70, %66#3, %69#1, %66#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
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
    %65:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %66:2 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %65#5, %arg3 = %65#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %65#4[%arg1] : tensor<?xi64>
      %68 = arith.index_cast %extracted : i64 to index
      %69 = arith.addi %arg1, %c1 : index
      %extracted_48 = tensor.extract %65#4[%69] : tensor<?xi64>
      %70 = arith.index_cast %extracted_48 : i64 to index
      %71 = arith.subi %70, %68 : index
      %extracted_slice = tensor.extract_slice %arg2[%68] [%71] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_49 = tensor.extract_slice %arg3[%68] [%71] [1] : tensor<?xf64> to tensor<?xf64>
      %72 = builtin.unrealized_conversion_cast %65#0, %65#1, %65#2, %c0, %65#4, %extracted_slice, %extracted_slice_49 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %73 = arith.addi %arg1, %c1 : index
      %extracted_50 = tensor.extract %22[%arg1] : tensor<?xi64>
      %74 = arith.index_cast %extracted_50 : i64 to index
      %extracted_51 = tensor.extract %22[%73] : tensor<?xi64>
      %75 = arith.index_cast %extracted_51 : i64 to index
      %76 = arith.addi %arg1, %c1 : index
      %extracted_52 = tensor.extract %45[%arg1] : tensor<?xi64>
      %77 = arith.index_cast %extracted_52 : i64 to index
      %extracted_53 = tensor.extract %45[%76] : tensor<?xi64>
      %78 = arith.index_cast %extracted_53 : i64 to index
      %79:4 = scf.while (%arg4 = %72, %arg5 = %idx0, %arg6 = %74, %arg7 = %77) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %85 = arith.cmpi ult, %arg7, %78 : index
        %86 = arith.cmpi ult, %arg6, %75 : index
        %87 = arith.andi %86, %85 : i1
        scf.condition(%87) %arg4, %arg5, %arg6, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg4: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg5: index, %arg6: index, %arg7: index):
        %85 = "ta.SpTensorGetCrd"(%44, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %86 = arith.index_cast %85 : i64 to index
        %87 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %88 = arith.index_cast %87 : i64 to index
        %89 = arith.minui %88, %86 : index
        %90 = arith.cmpi eq, %89, %88 : index
        %91 = arith.cmpi eq, %89, %86 : index
        %92 = arith.andi %90, %91 : i1
        %93:2 = scf.if %92 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %98 = "ta.TensorFindPos"(%arg4, %89) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %99 = "ta.TAExtractOp"(%20, %arg6, %arg1, %89) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %100 = "ta.TAExtractOp"(%44, %arg7, %arg1, %89) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %101 = arith.mulf %99, %100 : f64
          %102 = "ta.TAInsertOp"(%arg4, %arg1, %98, %arg1, %89, %101) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %103 = index.add %arg5, %idx1
          scf.yield %102, %103 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg4, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %94 = index.castu %90 : i1 to index
        %95 = index.add %arg6, %94
        %96 = index.castu %91 : i1 to index
        %97 = index.add %arg7, %96
        scf.yield %93#0, %93#1, %95, %97 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      %80:7 = builtin.unrealized_conversion_cast %79#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %extracted_54 = tensor.extract %65#4[%arg1] : tensor<?xi64>
      %81 = arith.index_cast %extracted_54 : i64 to index
      %82 = arith.addi %arg1, %c1 : index
      %extracted_55 = tensor.extract %65#4[%82] : tensor<?xi64>
      %83 = arith.index_cast %extracted_55 : i64 to index
      %84 = arith.subi %83, %81 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %80#5 into %arg2[%81] [%84] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %80#6 into %arg3[%81] [%84] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %67 = builtin.unrealized_conversion_cast %65#0, %65#1, %65#2, %65#3, %65#4, %66#0, %66#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %67 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
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
    %63 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %64:6 = builtin.unrealized_conversion_cast %63 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %65 = scf.forall (%arg6) in (%extracted) shared_outs(%arg7 = %64#4) -> (tensor<?xi64>) {
      %70 = builtin.unrealized_conversion_cast %arg6, %64#1, %c0, %64#3, %arg7, %64#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %71 = arith.addi %arg6, %c1 : index
      %extracted_59 = tensor.extract %15[%arg6] : tensor<?xi64>
      %72 = arith.index_cast %extracted_59 : i64 to index
      %extracted_60 = tensor.extract %15[%71] : tensor<?xi64>
      %73 = arith.index_cast %extracted_60 : i64 to index
      %74 = arith.addi %arg6, %c1 : index
      %extracted_61 = tensor.extract %36[%arg6] : tensor<?xi64>
      %75 = arith.index_cast %extracted_61 : i64 to index
      %extracted_62 = tensor.extract %36[%74] : tensor<?xi64>
      %76 = arith.index_cast %extracted_62 : i64 to index
      %77:9 = scf.while (%arg8 = %arg6, %arg9 = %64#1, %arg10 = %c0, %arg11 = %64#3, %arg12 = %arg7, %arg13 = %64#5, %arg14 = %idx0, %arg15 = %72, %arg16 = %75) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
        %83 = arith.cmpi ult, %arg16, %76 : index
        %84 = arith.cmpi ult, %arg15, %73 : index
        %85 = arith.andi %84, %83 : i1
        scf.condition(%85) %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg8: index, %arg9: index, %arg10: index, %arg11: index, %arg12: tensor<?xi64>, %arg13: tensor<?xi64>, %arg14: index, %arg15: index, %arg16: index):
        %extracted_65 = tensor.extract %37[%arg16] : tensor<?xi64>
        %83 = arith.index_cast %extracted_65 : i64 to index
        %extracted_66 = tensor.extract %16[%arg15] : tensor<?xi64>
        %84 = arith.index_cast %extracted_66 : i64 to index
        %85 = arith.minui %84, %83 : index
        %86 = arith.cmpi eq, %85, %84 : index
        %87 = arith.cmpi eq, %85, %83 : index
        %88 = arith.andi %86, %87 : i1
        %89:7 = scf.if %88 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
          %idx1_67 = index.constant 1
          %95 = index.add %arg10, %idx1_67
          %96 = builtin.unrealized_conversion_cast %arg8, %arg9, %95, %arg11, %arg12, %arg13 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          %97 = index.add %arg14, %idx1
          scf.yield %arg8, %arg9, %95, %arg11, %arg12, %arg13, %97 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        } else {
          scf.yield %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        }
        %90 = builtin.unrealized_conversion_cast %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %91 = index.castu %86 : i1 to index
        %92 = index.add %arg15, %91
        %93 = index.castu %87 : i1 to index
        %94 = index.add %arg16, %93
        scf.yield %89#0, %89#1, %89#2, %89#3, %89#4, %89#5, %89#6, %92, %94 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      }
      %78 = builtin.unrealized_conversion_cast %77#0, %77#1, %77#2, %77#3, %77#4, %77#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_63 = index.constant 1
      %79 = index.add %77#0, %idx1_63
      %80 = arith.index_cast %77#2 : index to i64
      %inserted_64 = tensor.insert %80 into %77#4[%79] : tensor<?xi64>
      %81 = builtin.unrealized_conversion_cast %79, %77#1, %77#2, %77#3, %inserted_64, %77#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %82:6 = builtin.unrealized_conversion_cast %81 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %82#4[%82#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%82#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %66 = arith.addi %extracted, %c1 : index
    %67:2 = scf.for %arg6 = %c1 to %66 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %65) -> (i64, tensor<?xi64>) {
      %extracted_59 = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %70 = arith.addi %extracted_59, %arg7 : i64
      %inserted_60 = tensor.insert %70 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %70, %inserted_60 : i64, tensor<?xi64>
    }
    %68 = arith.index_cast %67#0 : i64 to index
    %69 = builtin.unrealized_conversion_cast %extracted, %64#1, %68, %64#3, %67#1, %64#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %extracted, %64#1, %68, %64#3, %67#1, %64#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
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
    %63 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %64:7 = builtin.unrealized_conversion_cast %63 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %65:2 = scf.forall (%arg7) in (%extracted) shared_outs(%arg8 = %64#5, %arg9 = %64#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_59 = tensor.extract %64#4[%arg7] : tensor<?xi64>
      %67 = arith.index_cast %extracted_59 : i64 to index
      %68 = arith.addi %arg7, %c1 : index
      %extracted_60 = tensor.extract %64#4[%68] : tensor<?xi64>
      %69 = arith.index_cast %extracted_60 : i64 to index
      %70 = arith.subi %69, %67 : index
      %extracted_slice = tensor.extract_slice %arg8[%67] [%70] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_61 = tensor.extract_slice %arg9[%67] [%70] [1] : tensor<?xf64> to tensor<?xf64>
      %71 = builtin.unrealized_conversion_cast %64#0, %64#1, %64#2, %c0, %64#4, %extracted_slice, %extracted_slice_61 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %72 = arith.addi %arg7, %c1 : index
      %extracted_62 = tensor.extract %15[%arg7] : tensor<?xi64>
      %73 = arith.index_cast %extracted_62 : i64 to index
      %extracted_63 = tensor.extract %15[%72] : tensor<?xi64>
      %74 = arith.index_cast %extracted_63 : i64 to index
      %75 = arith.addi %arg7, %c1 : index
      %extracted_64 = tensor.extract %36[%arg7] : tensor<?xi64>
      %76 = arith.index_cast %extracted_64 : i64 to index
      %extracted_65 = tensor.extract %36[%75] : tensor<?xi64>
      %77 = arith.index_cast %extracted_65 : i64 to index
      %78:10 = scf.while (%arg10 = %64#0, %arg11 = %64#1, %arg12 = %64#2, %arg13 = %c0, %arg14 = %64#4, %arg15 = %extracted_slice, %arg16 = %extracted_slice_61, %arg17 = %idx0, %arg18 = %73, %arg19 = %76) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %85 = arith.cmpi ult, %arg19, %77 : index
        %86 = arith.cmpi ult, %arg18, %74 : index
        %87 = arith.andi %86, %85 : i1
        scf.condition(%87) %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg10: tensor<2xindex>, %arg11: index, %arg12: tensor<?xi64>, %arg13: index, %arg14: tensor<?xi64>, %arg15: tensor<?xi64>, %arg16: tensor<?xf64>, %arg17: index, %arg18: index, %arg19: index):
        %extracted_68 = tensor.extract %37[%arg19] : tensor<?xi64>
        %85 = arith.index_cast %extracted_68 : i64 to index
        %extracted_69 = tensor.extract %16[%arg18] : tensor<?xi64>
        %86 = arith.index_cast %extracted_69 : i64 to index
        %87 = arith.minui %86, %85 : index
        %88 = arith.cmpi eq, %87, %86 : index
        %89 = arith.cmpi eq, %87, %85 : index
        %90 = arith.andi %88, %89 : i1
        %91:8 = scf.if %90 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_70 = tensor.extract %19[%arg18] : tensor<?xf64>
          %extracted_71 = tensor.extract %40[%arg19] : tensor<?xf64>
          %97 = arith.mulf %extracted_70, %extracted_71 : f64
          %98 = arith.index_cast %87 : index to i64
          %inserted_72 = tensor.insert %98 into %arg15[%arg13] : tensor<?xi64>
          %idx1_73 = index.constant 1
          %99 = index.add %arg13, %idx1_73
          %inserted_74 = tensor.insert %97 into %arg16[%arg13] : tensor<?xf64>
          %100 = builtin.unrealized_conversion_cast %arg10, %arg11, %arg12, %99, %arg14, %inserted_72, %inserted_74 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %101 = index.add %arg17, %idx1
          scf.yield %arg10, %arg11, %arg12, %99, %arg14, %inserted_72, %inserted_74, %101 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
        }
        %92 = builtin.unrealized_conversion_cast %91#0, %91#1, %91#2, %91#3, %91#4, %91#5, %91#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %93 = index.castu %88 : i1 to index
        %94 = index.add %arg18, %93
        %95 = index.castu %89 : i1 to index
        %96 = index.add %arg19, %95
        scf.yield %91#0, %91#1, %91#2, %91#3, %91#4, %91#5, %91#6, %91#7, %94, %96 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %79 = builtin.unrealized_conversion_cast %78#0, %78#1, %78#2, %78#3, %78#4, %78#5, %78#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %80:7 = builtin.unrealized_conversion_cast %79 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %extracted_66 = tensor.extract %64#4[%arg7] : tensor<?xi64>
      %81 = arith.index_cast %extracted_66 : i64 to index
      %82 = arith.addi %arg7, %c1 : index
      %extracted_67 = tensor.extract %64#4[%82] : tensor<?xi64>
      %83 = arith.index_cast %extracted_67 : i64 to index
      %84 = arith.subi %83, %81 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %80#5 into %arg8[%81] [%84] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %80#6 into %arg9[%81] [%84] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %66 = builtin.unrealized_conversion_cast %64#0, %64#1, %64#2, %64#3, %64#4, %65#0, %65#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %64#0, %64#1, %64#2, %64#3, %64#4, %65#0, %65#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
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
  %47 = builtin.unrealized_conversion_cast %idx0_45, %43, %idx0_45, %10, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %48 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %44) -> (tensor<?xi64>) {
    %70 = builtin.unrealized_conversion_cast %arg0, %43, %c0, %10, %arg1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %71 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %72 = arith.index_cast %extracted : i64 to index
    %extracted_58 = tensor.extract %15[%71] : tensor<?xi64>
    %73 = arith.index_cast %extracted_58 : i64 to index
    %74 = arith.addi %arg0, %c1 : index
    %extracted_59 = tensor.extract %36[%arg0] : tensor<?xi64>
    %75 = arith.index_cast %extracted_59 : i64 to index
    %extracted_60 = tensor.extract %36[%74] : tensor<?xi64>
    %76 = arith.index_cast %extracted_60 : i64 to index
    %77:9 = scf.while (%arg2 = %arg0, %arg3 = %43, %arg4 = %c0, %arg5 = %10, %arg6 = %arg1, %arg7 = %45, %arg8 = %idx0, %arg9 = %72, %arg10 = %75) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
      %82 = arith.cmpi ult, %arg10, %76 : index
      %83 = arith.cmpi ult, %arg9, %73 : index
      %84 = arith.andi %83, %82 : i1
      scf.condition(%84) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: tensor<?xi64>, %arg7: tensor<?xi64>, %arg8: index, %arg9: index, %arg10: index):
      %extracted_63 = tensor.extract %37[%arg10] : tensor<?xi64>
      %82 = arith.index_cast %extracted_63 : i64 to index
      %extracted_64 = tensor.extract %16[%arg9] : tensor<?xi64>
      %83 = arith.index_cast %extracted_64 : i64 to index
      %84 = arith.minui %83, %82 : index
      %85 = arith.cmpi eq, %84, %83 : index
      %86 = arith.cmpi eq, %84, %82 : index
      %87 = arith.andi %85, %86 : i1
      %88:7 = scf.if %87 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
        %idx1_65 = index.constant 1
        %94 = index.add %arg4, %idx1_65
        %95 = builtin.unrealized_conversion_cast %arg2, %arg3, %94, %arg5, %arg6, %arg7 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %96 = index.add %arg8, %idx1
        scf.yield %arg2, %arg3, %94, %arg5, %arg6, %arg7, %96 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
      } else {
        scf.yield %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
      }
      %89 = builtin.unrealized_conversion_cast %88#0, %88#1, %88#2, %88#3, %88#4, %88#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %90 = index.castu %85 : i1 to index
      %91 = index.add %arg9, %90
      %92 = index.castu %86 : i1 to index
      %93 = index.add %arg10, %92
      scf.yield %88#0, %88#1, %88#2, %88#3, %88#4, %88#5, %88#6, %91, %93 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
    }
    %78 = builtin.unrealized_conversion_cast %77#0, %77#1, %77#2, %77#3, %77#4, %77#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx1_61 = index.constant 1
    %79 = index.add %77#0, %idx1_61
    %80 = arith.index_cast %77#2 : index to i64
    %inserted_62 = tensor.insert %80 into %77#4[%79] : tensor<?xi64>
    %81 = builtin.unrealized_conversion_cast %79, %77#1, %77#2, %77#3, %inserted_62, %77#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %extracted_slice = tensor.extract_slice %inserted_62[%79] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%79] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %49 = arith.addi %9, %c1 : index
  %50:2 = scf.for %arg0 = %c1 to %49 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %48) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %70 = arith.addi %extracted, %arg1 : i64
    %inserted_58 = tensor.insert %70 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %70, %inserted_58 : i64, tensor<?xi64>
  }
  %51 = arith.index_cast %50#0 : i64 to index
  %52 = builtin.unrealized_conversion_cast %9, %43, %51, %10, %50#1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %53 = builtin.unrealized_conversion_cast %9, %43, %51, %10, %50#1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_48 = index.constant 0
  %idx1_49 = index.constant 1
  %54 = arith.index_cast %9 : index to i64
  %idx1_50 = index.constant 1
  %55 = tensor.empty(%idx1_50) : tensor<?xi64>
  %inserted_51 = tensor.insert %54 into %55[%idx0_48] : tensor<?xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = tensor.empty() : tensor<0xi64>
  %59 = index.mul %idx1_49, %9
  %60 = tensor.empty(%51) : tensor<?xi64>
  %61 = tensor.empty() : tensor<0xi64>
  %62 = tensor.empty() : tensor<0xi64>
  %63 = tensor.empty(%51) : tensor<?xf64>
  %cst_52 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_48 to %51 step %idx1_49 {
    %inserted_58 = tensor.insert %cst_52 into %63[%arg0] : tensor<?xf64>
  }
  %from_elements_53 = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_54 = index.constant 0
  %idx0_55 = index.constant 0
  %64 = builtin.unrealized_conversion_cast %from_elements_53, %idx0_54, %inserted_51, %idx0_55, %50#1, %60, %63 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %65 = builtin.unrealized_conversion_cast %from_elements_53, %idx0_54, %inserted_51, %idx0_55, %50#1, %60, %63 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %66:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %60, %arg2 = %63) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %50#1[%arg0] : tensor<?xi64>
    %70 = arith.index_cast %extracted : i64 to index
    %71 = arith.addi %arg0, %c1 : index
    %extracted_58 = tensor.extract %50#1[%71] : tensor<?xi64>
    %72 = arith.index_cast %extracted_58 : i64 to index
    %73 = arith.subi %72, %70 : index
    %extracted_slice = tensor.extract_slice %arg1[%70] [%73] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_59 = tensor.extract_slice %arg2[%70] [%73] [1] : tensor<?xf64> to tensor<?xf64>
    %74 = builtin.unrealized_conversion_cast %from_elements_53, %idx0_54, %inserted_51, %c0, %50#1, %extracted_slice, %extracted_slice_59 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %75 = arith.addi %arg0, %c1 : index
    %extracted_60 = tensor.extract %15[%arg0] : tensor<?xi64>
    %76 = arith.index_cast %extracted_60 : i64 to index
    %extracted_61 = tensor.extract %15[%75] : tensor<?xi64>
    %77 = arith.index_cast %extracted_61 : i64 to index
    %78 = arith.addi %arg0, %c1 : index
    %extracted_62 = tensor.extract %36[%arg0] : tensor<?xi64>
    %79 = arith.index_cast %extracted_62 : i64 to index
    %extracted_63 = tensor.extract %36[%78] : tensor<?xi64>
    %80 = arith.index_cast %extracted_63 : i64 to index
    %81:10 = scf.while (%arg3 = %from_elements_53, %arg4 = %idx0_54, %arg5 = %inserted_51, %arg6 = %c0, %arg7 = %50#1, %arg8 = %extracted_slice, %arg9 = %extracted_slice_59, %arg10 = %idx0, %arg11 = %76, %arg12 = %79) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %87 = arith.cmpi ult, %arg12, %80 : index
      %88 = arith.cmpi ult, %arg11, %77 : index
      %89 = arith.andi %88, %87 : i1
      scf.condition(%89) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg3: tensor<2xindex>, %arg4: index, %arg5: tensor<?xi64>, %arg6: index, %arg7: tensor<?xi64>, %arg8: tensor<?xi64>, %arg9: tensor<?xf64>, %arg10: index, %arg11: index, %arg12: index):
      %extracted_66 = tensor.extract %37[%arg12] : tensor<?xi64>
      %87 = arith.index_cast %extracted_66 : i64 to index
      %extracted_67 = tensor.extract %16[%arg11] : tensor<?xi64>
      %88 = arith.index_cast %extracted_67 : i64 to index
      %89 = arith.minui %88, %87 : index
      %90 = arith.cmpi eq, %89, %88 : index
      %91 = arith.cmpi eq, %89, %87 : index
      %92 = arith.andi %90, %91 : i1
      %93:8 = scf.if %92 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_68 = tensor.extract %19[%arg11] : tensor<?xf64>
        %extracted_69 = tensor.extract %40[%arg12] : tensor<?xf64>
        %99 = arith.mulf %extracted_68, %extracted_69 : f64
        %100 = arith.index_cast %89 : index to i64
        %inserted_70 = tensor.insert %100 into %arg8[%arg6] : tensor<?xi64>
        %idx1_71 = index.constant 1
        %101 = index.add %arg6, %idx1_71
        %inserted_72 = tensor.insert %99 into %arg9[%arg6] : tensor<?xf64>
        %102 = builtin.unrealized_conversion_cast %arg3, %arg4, %arg5, %101, %arg7, %inserted_70, %inserted_72 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %103 = index.add %arg10, %idx1
        scf.yield %arg3, %arg4, %arg5, %101, %arg7, %inserted_70, %inserted_72, %103 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
      }
      %94 = builtin.unrealized_conversion_cast %93#0, %93#1, %93#2, %93#3, %93#4, %93#5, %93#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %95 = index.castu %90 : i1 to index
      %96 = index.add %arg11, %95
      %97 = index.castu %91 : i1 to index
      %98 = index.add %arg12, %97
      scf.yield %93#0, %93#1, %93#2, %93#3, %93#4, %93#5, %93#6, %93#7, %96, %98 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %82 = builtin.unrealized_conversion_cast %81#0, %81#1, %81#2, %81#3, %81#4, %81#5, %81#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %extracted_64 = tensor.extract %50#1[%arg0] : tensor<?xi64>
    %83 = arith.index_cast %extracted_64 : i64 to index
    %84 = arith.addi %arg0, %c1 : index
    %extracted_65 = tensor.extract %50#1[%84] : tensor<?xi64>
    %85 = arith.index_cast %extracted_65 : i64 to index
    %86 = arith.subi %85, %83 : index
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %81#5 into %arg1[%83] [%86] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %81#6 into %arg2[%83] [%86] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %67 = builtin.unrealized_conversion_cast %from_elements_53, %idx0_54, %inserted_51, %idx0_55, %50#1, %66#0, %66#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %68 = builtin.unrealized_conversion_cast %from_elements_53, %idx0_54, %inserted_51, %idx0_55, %50#1, %66#0, %66#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %69 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_56 = index.constant 0
  %inserted_57 = tensor.insert %idx-1 into %69[%idx0_56] : tensor<1xindex>
  "ta.print"(%inserted_51) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_57) : (tensor<1xindex>) -> ()
  "ta.print"(%50#1) : (tensor<?xi64>) -> ()
  "ta.print"(%66#0) : (tensor<?xi64>) -> ()
  "ta.print"(%66#1) : (tensor<?xf64>) -> ()
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
  %27 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %26) -> (tensor<?xi64>) {
    %37 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_40 : i64 to index
    %40 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
    %41 = arith.index_cast %extracted_41 : i64 to index
    %extracted_42 = tensor.extract %22[%40] : tensor<?xi64>
    %42 = arith.index_cast %extracted_42 : i64 to index
    %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
      %46 = arith.cmpi ult, %arg5, %42 : index
      %47 = arith.cmpi ult, %arg4, %39 : index
      %48 = arith.andi %47, %46 : i1
      scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %extracted_44 = tensor.extract %23[%arg5] : tensor<?xi64>
      %46 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %11[%arg4] : tensor<?xi64>
      %47 = arith.index_cast %extracted_45 : i64 to index
      %48 = arith.minui %47, %46 : index
      %49 = arith.cmpi eq, %48, %47 : index
      %50 = arith.cmpi eq, %48, %46 : index
      %51 = arith.andi %49, %50 : i1
      %52:2 = scf.if %51 -> (index, index) {
        %57 = index.add %arg2, %idx1
        %58 = index.add %arg3, %idx1
        scf.yield %57, %58 : index, index
      } else {
        scf.yield %arg2, %arg3 : index, index
      }
      %53 = index.castu %49 : i1 to index
      %54 = index.add %arg4, %53
      %55 = index.castu %50 : i1 to index
      %56 = index.add %arg5, %55
      scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
    }
    %44 = index.add %arg0, %idx1
    %45 = arith.index_cast %43#0 : index to i64
    %inserted_43 = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted_43[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %28 = arith.addi %9, %c1 : index
  %29:2 = scf.for %arg0 = %c1 to %28 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %27) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %37 = arith.addi %extracted, %arg1 : i64
    %inserted_40 = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %37, %inserted_40 : i64, tensor<?xi64>
  }
  %30 = arith.index_cast %29#0 : i64 to index
  %31 = arith.index_cast %9 : index to i64
  %32 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %31 into %32[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %33 = tensor.empty(%30) : tensor<?xi64>
  %34 = tensor.empty(%30) : tensor<?xf64>
  %35:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %33, %arg2 = %34) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %29#1[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %extracted_40 = tensor.extract %29#1[%38] : tensor<?xi64>
    %39 = arith.index_cast %extracted_40 : i64 to index
    %40 = arith.subi %39, %37 : index
    %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_41 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
    %41 = arith.addi %arg0, %c1 : index
    %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted_42 : i64 to index
    %extracted_43 = tensor.extract %10[%41] : tensor<?xi64>
    %43 = arith.index_cast %extracted_43 : i64 to index
    %44 = arith.addi %arg0, %c1 : index
    %extracted_44 = tensor.extract %22[%arg0] : tensor<?xi64>
    %45 = arith.index_cast %extracted_44 : i64 to index
    %extracted_45 = tensor.extract %22[%44] : tensor<?xi64>
    %46 = arith.index_cast %extracted_45 : i64 to index
    %47:6 = scf.while (%arg3 = %c0, %arg4 = %extracted_slice, %arg5 = %extracted_slice_41, %arg6 = %idx0, %arg7 = %42, %arg8 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %52 = arith.cmpi ult, %arg8, %46 : index
      %53 = arith.cmpi ult, %arg7, %43 : index
      %54 = arith.andi %53, %52 : i1
      scf.condition(%54) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xf64>, %arg6: index, %arg7: index, %arg8: index):
      %extracted_48 = tensor.extract %23[%arg8] : tensor<?xi64>
      %52 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %11[%arg7] : tensor<?xi64>
      %53 = arith.index_cast %extracted_49 : i64 to index
      %54 = arith.minui %53, %52 : index
      %55 = arith.cmpi eq, %54, %53 : index
      %56 = arith.cmpi eq, %54, %52 : index
      %57 = arith.andi %55, %56 : i1
      %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_50 = tensor.extract %12[%arg7] : tensor<?xf64>
        %extracted_51 = tensor.extract %24[%arg8] : tensor<?xf64>
        %63 = arith.mulf %extracted_50, %extracted_51 : f64
        %64 = arith.index_cast %54 : index to i64
        %inserted_52 = tensor.insert %64 into %arg4[%arg3] : tensor<?xi64>
        %65 = index.add %arg3, %idx1
        %inserted_53 = tensor.insert %63 into %arg5[%arg3] : tensor<?xf64>
        %66 = index.add %arg6, %idx1
        scf.yield %65, %inserted_52, %inserted_53, %66 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg3, %arg4, %arg5, %arg6 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %59 = index.castu %55 : i1 to index
      %60 = index.add %arg7, %59
      %61 = index.castu %56 : i1 to index
      %62 = index.add %arg8, %61
      scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %extracted_46 = tensor.extract %29#1[%arg0] : tensor<?xi64>
    %48 = arith.index_cast %extracted_46 : i64 to index
    %49 = arith.addi %arg0, %c1 : index
    %extracted_47 = tensor.extract %29#1[%49] : tensor<?xi64>
    %50 = arith.index_cast %extracted_47 : i64 to index
    %51 = arith.subi %50, %48 : index
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %47#1 into %arg1[%48] [%51] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %47#2 into %arg2[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %36 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %36[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%29#1) : (tensor<?xi64>) -> ()
  "ta.print"(%35#0) : (tensor<?xi64>) -> ()
  "ta.print"(%35#1) : (tensor<?xf64>) -> ()
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
  %27 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %26) -> (tensor<?xi64>) {
    %37 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_40 : i64 to index
    %40 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
    %41 = arith.index_cast %extracted_41 : i64 to index
    %extracted_42 = tensor.extract %22[%40] : tensor<?xi64>
    %42 = arith.index_cast %extracted_42 : i64 to index
    %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
      %46 = arith.cmpi ult, %arg5, %42 : index
      %47 = arith.cmpi ult, %arg4, %39 : index
      %48 = arith.andi %47, %46 : i1
      scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %extracted_44 = tensor.extract %23[%arg5] : tensor<?xi64>
      %46 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %11[%arg4] : tensor<?xi64>
      %47 = arith.index_cast %extracted_45 : i64 to index
      %48 = arith.minui %47, %46 : index
      %49 = arith.cmpi eq, %48, %47 : index
      %50 = arith.cmpi eq, %48, %46 : index
      %51 = arith.andi %49, %50 : i1
      %52:2 = scf.if %51 -> (index, index) {
        %57 = index.add %arg2, %idx1
        %58 = index.add %arg3, %idx1
        scf.yield %57, %58 : index, index
      } else {
        scf.yield %arg2, %arg3 : index, index
      }
      %53 = index.castu %49 : i1 to index
      %54 = index.add %arg4, %53
      %55 = index.castu %50 : i1 to index
      %56 = index.add %arg5, %55
      scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
    }
    %44 = index.add %arg0, %idx1
    %45 = arith.index_cast %43#0 : index to i64
    %inserted_43 = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted_43[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %28 = arith.addi %9, %c1 : index
  %29:2 = scf.for %arg0 = %c1 to %28 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %27) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %37 = arith.addi %extracted, %arg1 : i64
    %inserted_40 = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %37, %inserted_40 : i64, tensor<?xi64>
  }
  %30 = arith.index_cast %29#0 : i64 to index
  %31 = arith.index_cast %9 : index to i64
  %32 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %31 into %32[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %33 = tensor.empty(%30) : tensor<?xi64>
  %34 = tensor.empty(%30) : tensor<?xf64>
  %35:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %33, %arg2 = %34) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %29#1[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %extracted_40 = tensor.extract %29#1[%38] : tensor<?xi64>
    %39 = arith.index_cast %extracted_40 : i64 to index
    %40 = arith.subi %39, %37 : index
    %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_41 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
    %41 = arith.addi %arg0, %c1 : index
    %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted_42 : i64 to index
    %extracted_43 = tensor.extract %10[%41] : tensor<?xi64>
    %43 = arith.index_cast %extracted_43 : i64 to index
    %44 = arith.addi %arg0, %c1 : index
    %extracted_44 = tensor.extract %22[%arg0] : tensor<?xi64>
    %45 = arith.index_cast %extracted_44 : i64 to index
    %extracted_45 = tensor.extract %22[%44] : tensor<?xi64>
    %46 = arith.index_cast %extracted_45 : i64 to index
    %47:6 = scf.while (%arg3 = %c0, %arg4 = %extracted_slice, %arg5 = %extracted_slice_41, %arg6 = %idx0, %arg7 = %42, %arg8 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %52 = arith.cmpi ult, %arg8, %46 : index
      %53 = arith.cmpi ult, %arg7, %43 : index
      %54 = arith.andi %53, %52 : i1
      scf.condition(%54) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xf64>, %arg6: index, %arg7: index, %arg8: index):
      %extracted_48 = tensor.extract %23[%arg8] : tensor<?xi64>
      %52 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %11[%arg7] : tensor<?xi64>
      %53 = arith.index_cast %extracted_49 : i64 to index
      %54 = arith.minui %53, %52 : index
      %55 = arith.cmpi eq, %54, %53 : index
      %56 = arith.cmpi eq, %54, %52 : index
      %57 = arith.andi %55, %56 : i1
      %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_50 = tensor.extract %12[%arg7] : tensor<?xf64>
        %extracted_51 = tensor.extract %24[%arg8] : tensor<?xf64>
        %63 = arith.mulf %extracted_50, %extracted_51 : f64
        %64 = arith.index_cast %54 : index to i64
        %inserted_52 = tensor.insert %64 into %arg4[%arg3] : tensor<?xi64>
        %65 = index.add %arg3, %idx1
        %inserted_53 = tensor.insert %63 into %arg5[%arg3] : tensor<?xf64>
        %66 = index.add %arg6, %idx1
        scf.yield %65, %inserted_52, %inserted_53, %66 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg3, %arg4, %arg5, %arg6 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %59 = index.castu %55 : i1 to index
      %60 = index.add %arg7, %59
      %61 = index.castu %56 : i1 to index
      %62 = index.add %arg8, %61
      scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %extracted_46 = tensor.extract %29#1[%arg0] : tensor<?xi64>
    %48 = arith.index_cast %extracted_46 : i64 to index
    %49 = arith.addi %arg0, %c1 : index
    %extracted_47 = tensor.extract %29#1[%49] : tensor<?xi64>
    %50 = arith.index_cast %extracted_47 : i64 to index
    %51 = arith.subi %50, %48 : index
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %47#1 into %arg1[%48] [%51] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %47#2 into %arg2[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %36 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %36[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%29#1) : (tensor<?xi64>) -> ()
  "ta.print"(%35#0) : (tensor<?xi64>) -> ()
  "ta.print"(%35#1) : (tensor<?xf64>) -> ()
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
  %27 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %26) -> (tensor<?xi64>) {
    %37 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_40 = tensor.extract %10[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_40 : i64 to index
    %40 = arith.addi %arg0, %c1 : index
    %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
    %41 = arith.index_cast %extracted_41 : i64 to index
    %extracted_42 = tensor.extract %22[%40] : tensor<?xi64>
    %42 = arith.index_cast %extracted_42 : i64 to index
    %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
      %46 = arith.cmpi ult, %arg5, %42 : index
      %47 = arith.cmpi ult, %arg4, %39 : index
      %48 = arith.andi %47, %46 : i1
      scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %extracted_44 = tensor.extract %23[%arg5] : tensor<?xi64>
      %46 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %11[%arg4] : tensor<?xi64>
      %47 = arith.index_cast %extracted_45 : i64 to index
      %48 = arith.minui %47, %46 : index
      %49 = arith.cmpi eq, %48, %47 : index
      %50 = arith.cmpi eq, %48, %46 : index
      %51 = arith.andi %49, %50 : i1
      %52:2 = scf.if %51 -> (index, index) {
        %57 = index.add %arg2, %idx1
        %58 = index.add %arg3, %idx1
        scf.yield %57, %58 : index, index
      } else {
        scf.yield %arg2, %arg3 : index, index
      }
      %53 = index.castu %49 : i1 to index
      %54 = index.add %arg4, %53
      %55 = index.castu %50 : i1 to index
      %56 = index.add %arg5, %55
      scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
    }
    %44 = index.add %arg0, %idx1
    %45 = arith.index_cast %43#0 : index to i64
    %inserted_43 = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted_43[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %28 = arith.addi %9, %c1 : index
  %29:2 = scf.for %arg0 = %c1 to %28 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %27) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %37 = arith.addi %extracted, %arg1 : i64
    %inserted_40 = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %37, %inserted_40 : i64, tensor<?xi64>
  }
  %30 = arith.index_cast %29#0 : i64 to index
  %31 = arith.index_cast %9 : index to i64
  %32 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %31 into %32[%idx0] : tensor<1xi64>
  %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %33 = tensor.empty(%30) : tensor<?xi64>
  %34 = tensor.empty(%30) : tensor<?xf64>
  %35:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %33, %arg2 = %34) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %29#1[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %extracted_40 = tensor.extract %29#1[%38] : tensor<?xi64>
    %39 = arith.index_cast %extracted_40 : i64 to index
    %40 = arith.subi %39, %37 : index
    %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_41 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
    %41 = arith.addi %arg0, %c1 : index
    %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted_42 : i64 to index
    %extracted_43 = tensor.extract %10[%41] : tensor<?xi64>
    %43 = arith.index_cast %extracted_43 : i64 to index
    %44 = arith.addi %arg0, %c1 : index
    %extracted_44 = tensor.extract %22[%arg0] : tensor<?xi64>
    %45 = arith.index_cast %extracted_44 : i64 to index
    %extracted_45 = tensor.extract %22[%44] : tensor<?xi64>
    %46 = arith.index_cast %extracted_45 : i64 to index
    %47:6 = scf.while (%arg3 = %c0, %arg4 = %extracted_slice, %arg5 = %extracted_slice_41, %arg6 = %idx0, %arg7 = %42, %arg8 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %52 = arith.cmpi ult, %arg8, %46 : index
      %53 = arith.cmpi ult, %arg7, %43 : index
      %54 = arith.andi %53, %52 : i1
      scf.condition(%54) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xf64>, %arg6: index, %arg7: index, %arg8: index):
      %extracted_48 = tensor.extract %23[%arg8] : tensor<?xi64>
      %52 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %11[%arg7] : tensor<?xi64>
      %53 = arith.index_cast %extracted_49 : i64 to index
      %54 = arith.minui %53, %52 : index
      %55 = arith.cmpi eq, %54, %53 : index
      %56 = arith.cmpi eq, %54, %52 : index
      %57 = arith.andi %55, %56 : i1
      %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_50 = tensor.extract %12[%arg7] : tensor<?xf64>
        %extracted_51 = tensor.extract %24[%arg8] : tensor<?xf64>
        %63 = arith.mulf %extracted_50, %extracted_51 : f64
        %64 = arith.index_cast %54 : index to i64
        %inserted_52 = tensor.insert %64 into %arg4[%arg3] : tensor<?xi64>
        %65 = index.add %arg3, %idx1
        %inserted_53 = tensor.insert %63 into %arg5[%arg3] : tensor<?xf64>
        %66 = index.add %arg6, %idx1
        scf.yield %65, %inserted_52, %inserted_53, %66 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg3, %arg4, %arg5, %arg6 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %59 = index.castu %55 : i1 to index
      %60 = index.add %arg7, %59
      %61 = index.castu %56 : i1 to index
      %62 = index.add %arg8, %61
      scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %extracted_46 = tensor.extract %29#1[%arg0] : tensor<?xi64>
    %48 = arith.index_cast %extracted_46 : i64 to index
    %49 = arith.addi %arg0, %c1 : index
    %extracted_47 = tensor.extract %29#1[%49] : tensor<?xi64>
    %50 = arith.index_cast %extracted_47 : i64 to index
    %51 = arith.subi %50, %48 : index
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %47#1 into %arg1[%48] [%51] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %47#2 into %arg2[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %36 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %36[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%29#1) : (tensor<?xi64>) -> ()
  "ta.print"(%35#0) : (tensor<?xi64>) -> ()
  "ta.print"(%35#1) : (tensor<?xf64>) -> ()
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
    %27 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %26) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_40 : i64 to index
      %40 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %41 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_42 : i64 to index
      %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
        %46 = arith.cmpi ult, %arg5, %42 : index
        %47 = arith.cmpi ult, %arg4, %39 : index
        %48 = arith.andi %47, %46 : i1
        scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %extracted_44 = tensor.extract %23[%arg5] : tensor<?xi64>
        %46 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %11[%arg4] : tensor<?xi64>
        %47 = arith.index_cast %extracted_45 : i64 to index
        %48 = arith.minui %47, %46 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %46 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = index.add %arg2, %idx1
          %58 = index.add %arg3, %idx1
          scf.yield %57, %58 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg4, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg5, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %44 = index.add %arg0, %idx1
      %45 = arith.index_cast %43#0 : index to i64
      %inserted_43 = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted_43[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %28 = arith.addi %9, %c1 : index
    %29:2 = scf.for %arg0 = %c1 to %28 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %27) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted_40 = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted_40 : i64, tensor<?xi64>
    }
    %30 = arith.index_cast %29#0 : i64 to index
    %31 = arith.index_cast %9 : index to i64
    %32 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %31 into %32[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %33 = tensor.empty(%30) : tensor<?xi64>
    %34 = tensor.empty(%30) : tensor<?xf64>
    %35:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %33, %arg2 = %34) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %29#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_40 = tensor.extract %29#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_40 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_41 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.addi %arg0, %c1 : index
      %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %10[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_43 : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_44 = tensor.extract %22[%arg0] : tensor<?xi64>
      %45 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %22[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_45 : i64 to index
      %47:6 = scf.while (%arg3 = %c0, %arg4 = %extracted_slice, %arg5 = %extracted_slice_41, %arg6 = %idx0, %arg7 = %42, %arg8 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %52 = arith.cmpi ult, %arg8, %46 : index
        %53 = arith.cmpi ult, %arg7, %43 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xf64>, %arg6: index, %arg7: index, %arg8: index):
        %extracted_48 = tensor.extract %23[%arg8] : tensor<?xi64>
        %52 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %11[%arg7] : tensor<?xi64>
        %53 = arith.index_cast %extracted_49 : i64 to index
        %54 = arith.minui %53, %52 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %52 : index
        %57 = arith.andi %55, %56 : i1
        %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_50 = tensor.extract %12[%arg7] : tensor<?xf64>
          %extracted_51 = tensor.extract %24[%arg8] : tensor<?xf64>
          %63 = arith.mulf %extracted_50, %extracted_51 : f64
          %64 = arith.index_cast %54 : index to i64
          %inserted_52 = tensor.insert %64 into %arg4[%arg3] : tensor<?xi64>
          %65 = index.add %arg3, %idx1
          %inserted_53 = tensor.insert %63 into %arg5[%arg3] : tensor<?xf64>
          %66 = index.add %arg6, %idx1
          scf.yield %65, %inserted_52, %inserted_53, %66 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg3, %arg4, %arg5, %arg6 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg7, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg8, %61
        scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %extracted_46 = tensor.extract %29#1[%arg0] : tensor<?xi64>
      %48 = arith.index_cast %extracted_46 : i64 to index
      %49 = arith.addi %arg0, %c1 : index
      %extracted_47 = tensor.extract %29#1[%49] : tensor<?xi64>
      %50 = arith.index_cast %extracted_47 : i64 to index
      %51 = arith.subi %50, %48 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %47#1 into %arg1[%48] [%51] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %47#2 into %arg2[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %36 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %36[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%29#1) : (tensor<?xi64>) -> ()
    "ta.print"(%35#0) : (tensor<?xi64>) -> ()
    "ta.print"(%35#1) : (tensor<?xf64>) -> ()
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
    %27 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %26) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_40 : i64 to index
      %40 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %41 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_42 : i64 to index
      %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
        %46 = arith.cmpi ult, %arg5, %42 : index
        %47 = arith.cmpi ult, %arg4, %39 : index
        %48 = arith.andi %47, %46 : i1
        scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %extracted_44 = tensor.extract %23[%arg5] : tensor<?xi64>
        %46 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %11[%arg4] : tensor<?xi64>
        %47 = arith.index_cast %extracted_45 : i64 to index
        %48 = arith.minui %47, %46 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %46 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = index.add %arg2, %idx1
          %58 = index.add %arg3, %idx1
          scf.yield %57, %58 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg4, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg5, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %44 = index.add %arg0, %idx1
      %45 = arith.index_cast %43#0 : index to i64
      %inserted_43 = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted_43[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %28 = arith.addi %9, %c1 : index
    %29:2 = scf.for %arg0 = %c1 to %28 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %27) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted_40 = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted_40 : i64, tensor<?xi64>
    }
    %30 = arith.index_cast %29#0 : i64 to index
    %31 = arith.index_cast %9 : index to i64
    %32 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %31 into %32[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %33 = tensor.empty(%30) : tensor<?xi64>
    %34 = tensor.empty(%30) : tensor<?xf64>
    %35:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %33, %arg2 = %34) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %29#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_40 = tensor.extract %29#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_40 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_41 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.addi %arg0, %c1 : index
      %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %10[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_43 : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_44 = tensor.extract %22[%arg0] : tensor<?xi64>
      %45 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %22[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_45 : i64 to index
      %47:6 = scf.while (%arg3 = %c0, %arg4 = %extracted_slice, %arg5 = %extracted_slice_41, %arg6 = %idx0, %arg7 = %42, %arg8 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %52 = arith.cmpi ult, %arg8, %46 : index
        %53 = arith.cmpi ult, %arg7, %43 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xf64>, %arg6: index, %arg7: index, %arg8: index):
        %extracted_48 = tensor.extract %23[%arg8] : tensor<?xi64>
        %52 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %11[%arg7] : tensor<?xi64>
        %53 = arith.index_cast %extracted_49 : i64 to index
        %54 = arith.minui %53, %52 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %52 : index
        %57 = arith.andi %55, %56 : i1
        %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_50 = tensor.extract %12[%arg7] : tensor<?xf64>
          %extracted_51 = tensor.extract %24[%arg8] : tensor<?xf64>
          %63 = arith.mulf %extracted_50, %extracted_51 : f64
          %64 = arith.index_cast %54 : index to i64
          %inserted_52 = tensor.insert %64 into %arg4[%arg3] : tensor<?xi64>
          %65 = index.add %arg3, %idx1
          %inserted_53 = tensor.insert %63 into %arg5[%arg3] : tensor<?xf64>
          %66 = index.add %arg6, %idx1
          scf.yield %65, %inserted_52, %inserted_53, %66 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg3, %arg4, %arg5, %arg6 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg7, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg8, %61
        scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %extracted_46 = tensor.extract %29#1[%arg0] : tensor<?xi64>
      %48 = arith.index_cast %extracted_46 : i64 to index
      %49 = arith.addi %arg0, %c1 : index
      %extracted_47 = tensor.extract %29#1[%49] : tensor<?xi64>
      %50 = arith.index_cast %extracted_47 : i64 to index
      %51 = arith.subi %50, %48 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %47#1 into %arg1[%48] [%51] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %47#2 into %arg2[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %36 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %36[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%29#1) : (tensor<?xi64>) -> ()
    "ta.print"(%35#0) : (tensor<?xi64>) -> ()
    "ta.print"(%35#1) : (tensor<?xf64>) -> ()
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
    %27 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %26) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %10[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_40 : i64 to index
      %40 = arith.addi %arg0, %c1 : index
      %extracted_41 = tensor.extract %22[%arg0] : tensor<?xi64>
      %41 = arith.index_cast %extracted_41 : i64 to index
      %extracted_42 = tensor.extract %22[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_42 : i64 to index
      %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
        %46 = arith.cmpi ult, %arg5, %42 : index
        %47 = arith.cmpi ult, %arg4, %39 : index
        %48 = arith.andi %47, %46 : i1
        scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %extracted_44 = tensor.extract %23[%arg5] : tensor<?xi64>
        %46 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %11[%arg4] : tensor<?xi64>
        %47 = arith.index_cast %extracted_45 : i64 to index
        %48 = arith.minui %47, %46 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %46 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = index.add %arg2, %idx1
          %58 = index.add %arg3, %idx1
          scf.yield %57, %58 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg4, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg5, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %44 = index.add %arg0, %idx1
      %45 = arith.index_cast %43#0 : index to i64
      %inserted_43 = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted_43[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %28 = arith.addi %9, %c1 : index
    %29:2 = scf.for %arg0 = %c1 to %28 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %27) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted_40 = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted_40 : i64, tensor<?xi64>
    }
    %30 = arith.index_cast %29#0 : i64 to index
    %31 = arith.index_cast %9 : index to i64
    %32 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %31 into %32[%idx0] : tensor<1xi64>
    %cast_38 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %33 = tensor.empty(%30) : tensor<?xi64>
    %34 = tensor.empty(%30) : tensor<?xf64>
    %35:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %33, %arg2 = %34) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %29#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_40 = tensor.extract %29#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_40 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_41 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.addi %arg0, %c1 : index
      %extracted_42 = tensor.extract %10[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %10[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_43 : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_44 = tensor.extract %22[%arg0] : tensor<?xi64>
      %45 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %22[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_45 : i64 to index
      %47:6 = scf.while (%arg3 = %c0, %arg4 = %extracted_slice, %arg5 = %extracted_slice_41, %arg6 = %idx0, %arg7 = %42, %arg8 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %52 = arith.cmpi ult, %arg8, %46 : index
        %53 = arith.cmpi ult, %arg7, %43 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xf64>, %arg6: index, %arg7: index, %arg8: index):
        %extracted_48 = tensor.extract %23[%arg8] : tensor<?xi64>
        %52 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %11[%arg7] : tensor<?xi64>
        %53 = arith.index_cast %extracted_49 : i64 to index
        %54 = arith.minui %53, %52 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %52 : index
        %57 = arith.andi %55, %56 : i1
        %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_50 = tensor.extract %12[%arg7] : tensor<?xf64>
          %extracted_51 = tensor.extract %24[%arg8] : tensor<?xf64>
          %63 = arith.mulf %extracted_50, %extracted_51 : f64
          %64 = arith.index_cast %54 : index to i64
          %inserted_52 = tensor.insert %64 into %arg4[%arg3] : tensor<?xi64>
          %65 = index.add %arg3, %idx1
          %inserted_53 = tensor.insert %63 into %arg5[%arg3] : tensor<?xf64>
          %66 = index.add %arg6, %idx1
          scf.yield %65, %inserted_52, %inserted_53, %66 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg3, %arg4, %arg5, %arg6 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg7, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg8, %61
        scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %extracted_46 = tensor.extract %29#1[%arg0] : tensor<?xi64>
      %48 = arith.index_cast %extracted_46 : i64 to index
      %49 = arith.addi %arg0, %c1 : index
      %extracted_47 = tensor.extract %29#1[%49] : tensor<?xi64>
      %50 = arith.index_cast %extracted_47 : i64 to index
      %51 = arith.subi %50, %48 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %47#1 into %arg1[%48] [%51] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %47#2 into %arg2[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %36 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %36[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%29#1) : (tensor<?xi64>) -> ()
    "ta.print"(%35#0) : (tensor<?xi64>) -> ()
    "ta.print"(%35#1) : (tensor<?xf64>) -> ()
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
    scf.forall (%arg0) in (%9) {
      %29 = arith.addi %arg0, %c1 : index
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%29] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = arith.addi %arg0, %c1 : index
      %35 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = memref.load %alloc_28[%34] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %36) : (index, index, index, index) -> (index, index, index, index) {
        %42 = arith.cmpi ult, %arg4, %38 : index
        %43 = arith.cmpi ult, %arg3, %33 : index
        %44 = arith.andi %43, %42 : i1
        scf.condition(%44) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %42 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = arith.minui %45, %43 : index
        %47 = arith.cmpi eq, %46, %45 : index
        %48 = arith.cmpi eq, %46, %43 : index
        %49 = arith.andi %47, %48 : i1
        %50:2 = scf.if %49 -> (index, index) {
          %55 = index.add %arg1, %idx1
          %56 = index.add %arg2, %idx1
          scf.yield %55, %56 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %51 = index.castu %47 : i1 to index
        %52 = index.add %arg3, %51
        %53 = index.castu %48 : i1 to index
        %54 = index.add %arg4, %53
        scf.yield %50#0, %50#1, %52, %54 : index, index, index, index
      }
      %40 = index.add %arg0, %idx1
      %41 = arith.index_cast %39#0 : index to i64
      %c0_44 = arith.constant 0 : index
      %dim = memref.dim %alloc_38, %c0_44 : memref<?xi64>
      %alloc_45 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_45 : memref<?xi64> to memref<?xi64>
      memref.store %41, %alloc_45[%40] : memref<?xi64>
      %subview = memref.subview %alloc_45[%40] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_46 = memref.subview %alloc_38[%40] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_46 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %20 = arith.addi %9, %c1 : index
    %21:2 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
      %29 = memref.load %arg2[%arg0] : memref<?xi64>
      %30 = arith.addi %29, %arg1 : i64
      memref.store %30, %arg2[%arg0] : memref<?xi64>
      scf.yield %30, %arg2 : i64, memref<?xi64>
    }
    %22 = bufferization.to_tensor %21#1 : memref<?xi64>
    %23 = arith.index_cast %21#0 : i64 to index
    %24 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %24, %alloc_39[%idx0] : memref<1xi64>
    %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
    %25 = bufferization.to_tensor %cast_40 : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %29 = memref.load %21#1[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = arith.addi %arg0, %c1 : index
      %32 = memref.load %21#1[%31] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = arith.subi %33, %30 : index
      %subview = memref.subview %alloc_41[%30] [%34] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %c0_44 = arith.constant 0 : index
      %dim = memref.dim %subview, %c0_44 : memref<?xi64, strided<[1], offset: ?>>
      %alloc_45 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_45 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_46 = memref.subview %alloc_42[%30] [%34] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %c0_47 = arith.constant 0 : index
      %dim_48 = memref.dim %subview_46, %c0_47 : memref<?xf64, strided<[1], offset: ?>>
      %alloc_49 = memref.alloc(%dim_48) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_46, %alloc_49 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %35 = arith.addi %arg0, %c1 : index
      %36 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = memref.load %alloc_8[%35] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = arith.addi %arg0, %c1 : index
      %41 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = memref.load %alloc_28[%40] : memref<?xi64>
      %44 = arith.index_cast %43 : i64 to index
      %45:6 = scf.while (%arg1 = %c0, %arg2 = %alloc_45, %arg3 = %alloc_49, %arg4 = %idx0, %arg5 = %37, %arg6 = %42) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
        %52 = arith.cmpi ult, %arg6, %44 : index
        %53 = arith.cmpi ult, %arg5, %39 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : index, memref<?xi64>, memref<?xf64>, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: memref<?xi64>, %arg3: memref<?xf64>, %arg4: index, %arg5: index, %arg6: index):
        %52 = memref.load %alloc_30[%arg6] : memref<?xi64>
        %53 = arith.index_cast %52 : i64 to index
        %54 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %55 = arith.index_cast %54 : i64 to index
        %56 = arith.minui %55, %53 : index
        %57 = arith.cmpi eq, %56, %55 : index
        %58 = arith.cmpi eq, %56, %53 : index
        %59 = arith.andi %57, %58 : i1
        %60:4 = scf.if %59 -> (index, memref<?xi64>, memref<?xf64>, index) {
          %65 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %66 = memref.load %alloc_36[%arg6] : memref<?xf64>
          %67 = arith.mulf %65, %66 : f64
          %68 = arith.index_cast %56 : index to i64
          memref.store %68, %arg2[%arg1] : memref<?xi64>
          %69 = index.add %arg1, %idx1
          memref.store %67, %arg3[%arg1] : memref<?xf64>
          %70 = index.add %arg4, %idx1
          scf.yield %69, %arg2, %arg3, %70 : index, memref<?xi64>, memref<?xf64>, index
        } else {
          scf.yield %arg1, %arg2, %arg3, %arg4 : index, memref<?xi64>, memref<?xf64>, index
        }
        %61 = index.castu %57 : i1 to index
        %62 = index.add %arg5, %61
        %63 = index.castu %58 : i1 to index
        %64 = index.add %arg6, %63
        scf.yield %60#0, %60#1, %60#2, %60#3, %62, %64 : index, memref<?xi64>, memref<?xf64>, index, index, index
      }
      %46 = memref.load %21#1[%arg0] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = arith.addi %arg0, %c1 : index
      %49 = memref.load %21#1[%48] : memref<?xi64>
      %50 = arith.index_cast %49 : i64 to index
      %51 = arith.subi %50, %47 : index
      %subview_50 = memref.subview %alloc_41[%47] [%51] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %45#1, %subview_50 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_51 = memref.subview %alloc_42[%47] [%51] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %45#2, %subview_51 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    }
    %26 = bufferization.to_tensor %alloc_42 : memref<?xf64>
    %27 = bufferization.to_tensor %alloc_41 : memref<?xi64>
    %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_43[%idx0] : memref<1xindex>
    %28 = bufferization.to_tensor %alloc_43 : memref<1xindex>
    "ta.print"(%25) : (tensor<?xi64>) -> ()
    "ta.print"(%28) : (tensor<1xindex>) -> ()
    "ta.print"(%22) : (tensor<?xi64>) -> ()
    "ta.print"(%27) : (tensor<?xi64>) -> ()
    "ta.print"(%26) : (tensor<?xf64>) -> ()
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
  scf.forall (%arg0) in (%9) {
    %29 = arith.addi %arg0, %c1 : index
    %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32 = memref.load %alloc_8[%29] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = arith.addi %arg0, %c1 : index
    %35 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %36 = arith.index_cast %35 : i64 to index
    %37 = memref.load %alloc_28[%34] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %36) : (index, index, index, index) -> (index, index, index, index) {
      %42 = arith.cmpi ult, %arg4, %38 : index
      %43 = arith.cmpi ult, %arg3, %33 : index
      %44 = arith.andi %43, %42 : i1
      scf.condition(%44) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %42 = memref.load %alloc_30[%arg4] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = arith.minui %45, %43 : index
      %47 = arith.cmpi eq, %46, %45 : index
      %48 = arith.cmpi eq, %46, %43 : index
      %49 = arith.andi %47, %48 : i1
      %50:2 = scf.if %49 -> (index, index) {
        %55 = index.add %arg1, %idx1
        %56 = index.add %arg2, %idx1
        scf.yield %55, %56 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %51 = index.castu %47 : i1 to index
      %52 = index.add %arg3, %51
      %53 = index.castu %48 : i1 to index
      %54 = index.add %arg4, %53
      scf.yield %50#0, %50#1, %52, %54 : index, index, index, index
    }
    %40 = index.add %arg0, %idx1
    %41 = arith.index_cast %39#0 : index to i64
    %c0_44 = arith.constant 0 : index
    %dim = memref.dim %alloc_38, %c0_44 : memref<?xi64>
    %alloc_45 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_45 : memref<?xi64> to memref<?xi64>
    memref.store %41, %alloc_45[%40] : memref<?xi64>
    %subview = memref.subview %alloc_45[%40] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_46 = memref.subview %alloc_38[%40] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_46 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %20 = arith.addi %9, %c1 : index
  %21:2 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %29 = memref.load %arg2[%arg0] : memref<?xi64>
    %30 = arith.addi %29, %arg1 : i64
    memref.store %30, %arg2[%arg0] : memref<?xi64>
    scf.yield %30, %arg2 : i64, memref<?xi64>
  }
  %22 = bufferization.to_tensor %21#1 : memref<?xi64>
  %23 = arith.index_cast %21#0 : i64 to index
  %24 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %24, %alloc_39[%idx0] : memref<1xi64>
  %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
  %25 = bufferization.to_tensor %cast_40 : memref<?xi64>
  %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %29 = memref.load %21#1[%arg0] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = arith.addi %arg0, %c1 : index
    %32 = memref.load %21#1[%31] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = arith.subi %33, %30 : index
    %subview = memref.subview %alloc_41[%30] [%34] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %c0_44 = arith.constant 0 : index
    %dim = memref.dim %subview, %c0_44 : memref<?xi64, strided<[1], offset: ?>>
    %alloc_45 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %subview, %alloc_45 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
    %subview_46 = memref.subview %alloc_42[%30] [%34] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %c0_47 = arith.constant 0 : index
    %dim_48 = memref.dim %subview_46, %c0_47 : memref<?xf64, strided<[1], offset: ?>>
    %alloc_49 = memref.alloc(%dim_48) {alignment = 64 : i64} : memref<?xf64>
    memref.copy %subview_46, %alloc_49 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
    %35 = arith.addi %arg0, %c1 : index
    %36 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38 = memref.load %alloc_8[%35] : memref<?xi64>
    %39 = arith.index_cast %38 : i64 to index
    %40 = arith.addi %arg0, %c1 : index
    %41 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %42 = arith.index_cast %41 : i64 to index
    %43 = memref.load %alloc_28[%40] : memref<?xi64>
    %44 = arith.index_cast %43 : i64 to index
    %45:6 = scf.while (%arg1 = %c0, %arg2 = %alloc_45, %arg3 = %alloc_49, %arg4 = %idx0, %arg5 = %37, %arg6 = %42) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
      %52 = arith.cmpi ult, %arg6, %44 : index
      %53 = arith.cmpi ult, %arg5, %39 : index
      %54 = arith.andi %53, %52 : i1
      scf.condition(%54) %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : index, memref<?xi64>, memref<?xf64>, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: memref<?xi64>, %arg3: memref<?xf64>, %arg4: index, %arg5: index, %arg6: index):
      %52 = memref.load %alloc_30[%arg6] : memref<?xi64>
      %53 = arith.index_cast %52 : i64 to index
      %54 = memref.load %alloc_10[%arg5] : memref<?xi64>
      %55 = arith.index_cast %54 : i64 to index
      %56 = arith.minui %55, %53 : index
      %57 = arith.cmpi eq, %56, %55 : index
      %58 = arith.cmpi eq, %56, %53 : index
      %59 = arith.andi %57, %58 : i1
      %60:4 = scf.if %59 -> (index, memref<?xi64>, memref<?xf64>, index) {
        %65 = memref.load %alloc_16[%arg5] : memref<?xf64>
        %66 = memref.load %alloc_36[%arg6] : memref<?xf64>
        %67 = arith.mulf %65, %66 : f64
        %68 = arith.index_cast %56 : index to i64
        memref.store %68, %arg2[%arg1] : memref<?xi64>
        %69 = index.add %arg1, %idx1
        memref.store %67, %arg3[%arg1] : memref<?xf64>
        %70 = index.add %arg4, %idx1
        scf.yield %69, %arg2, %arg3, %70 : index, memref<?xi64>, memref<?xf64>, index
      } else {
        scf.yield %arg1, %arg2, %arg3, %arg4 : index, memref<?xi64>, memref<?xf64>, index
      }
      %61 = index.castu %57 : i1 to index
      %62 = index.add %arg5, %61
      %63 = index.castu %58 : i1 to index
      %64 = index.add %arg6, %63
      scf.yield %60#0, %60#1, %60#2, %60#3, %62, %64 : index, memref<?xi64>, memref<?xf64>, index, index, index
    }
    %46 = memref.load %21#1[%arg0] : memref<?xi64>
    %47 = arith.index_cast %46 : i64 to index
    %48 = arith.addi %arg0, %c1 : index
    %49 = memref.load %21#1[%48] : memref<?xi64>
    %50 = arith.index_cast %49 : i64 to index
    %51 = arith.subi %50, %47 : index
    %subview_50 = memref.subview %alloc_41[%47] [%51] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %45#1, %subview_50 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_51 = memref.subview %alloc_42[%47] [%51] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %45#2, %subview_51 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
  }
  %26 = bufferization.to_tensor %alloc_42 : memref<?xf64>
  %27 = bufferization.to_tensor %alloc_41 : memref<?xi64>
  %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_43[%idx0] : memref<1xindex>
  %28 = bufferization.to_tensor %alloc_43 : memref<1xindex>
  "ta.print"(%25) : (tensor<?xi64>) -> ()
  "ta.print"(%28) : (tensor<1xindex>) -> ()
  "ta.print"(%22) : (tensor<?xi64>) -> ()
  "ta.print"(%27) : (tensor<?xi64>) -> ()
  "ta.print"(%26) : (tensor<?xf64>) -> ()
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
  scf.forall (%arg0) in (%9) {
    %34 = arith.addi %arg0, %c1 : index
    %35 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %36 = arith.index_cast %35 : i64 to index
    %37 = memref.load %alloc_8[%34] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39 = arith.addi %arg0, %c1 : index
    %40 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %41 = arith.index_cast %40 : i64 to index
    %42 = memref.load %alloc_28[%39] : memref<?xi64>
    %43 = arith.index_cast %42 : i64 to index
    %44:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %36, %arg4 = %41) : (index, index, index, index) -> (index, index, index, index) {
      %47 = arith.cmpi ult, %arg4, %43 : index
      %48 = arith.cmpi ult, %arg3, %38 : index
      %49 = arith.andi %48, %47 : i1
      scf.condition(%49) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %47 = memref.load %alloc_30[%arg4] : memref<?xi64>
      %48 = arith.index_cast %47 : i64 to index
      %49 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %50 = arith.index_cast %49 : i64 to index
      %51 = arith.minui %50, %48 : index
      %52 = arith.cmpi eq, %51, %50 : index
      %53 = arith.cmpi eq, %51, %48 : index
      %54 = arith.andi %52, %53 : i1
      %55:2 = scf.if %54 -> (index, index) {
        %60 = index.add %arg1, %idx1
        %61 = index.add %arg2, %idx1
        scf.yield %60, %61 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %56 = index.castu %52 : i1 to index
      %57 = index.add %arg3, %56
      %58 = index.castu %53 : i1 to index
      %59 = index.add %arg4, %58
      scf.yield %55#0, %55#1, %57, %59 : index, index, index, index
    }
    %45 = index.add %arg0, %idx1
    %46 = arith.index_cast %44#0 : index to i64
    %c0_49 = arith.constant 0 : index
    %dim = memref.dim %alloc_38, %c0_49 : memref<?xi64>
    %alloc_50 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_50 : memref<?xi64> to memref<?xi64>
    memref.store %46, %alloc_50[%45] : memref<?xi64>
    %subview = memref.subview %alloc_50[%45] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_51 = memref.subview %alloc_38[%45] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_51 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %20 = arith.addi %9, %c1 : index
  %21:2 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %34 = memref.load %arg2[%arg0] : memref<?xi64>
    %35 = arith.addi %34, %arg1 : i64
    memref.store %35, %arg2[%arg0] : memref<?xi64>
    scf.yield %35, %arg2 : i64, memref<?xi64>
  }
  %22 = bufferization.to_tensor %21#1 : memref<?xi64>
  %23 = arith.index_cast %21#0 : i64 to index
  %24 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %24, %alloc_39[%idx0] : memref<1xi64>
  %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
  %25 = bufferization.to_tensor %cast_40 : memref<?xi64>
  %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %34 = memref.load %21#1[%arg0] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = arith.addi %arg0, %c1 : index
    %37 = memref.load %21#1[%36] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39 = arith.subi %38, %35 : index
    %subview = memref.subview %alloc_41[%35] [%39] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %c0_49 = arith.constant 0 : index
    %dim = memref.dim %subview, %c0_49 : memref<?xi64, strided<[1], offset: ?>>
    %alloc_50 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %subview, %alloc_50 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
    %subview_51 = memref.subview %alloc_42[%35] [%39] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %c0_52 = arith.constant 0 : index
    %dim_53 = memref.dim %subview_51, %c0_52 : memref<?xf64, strided<[1], offset: ?>>
    %alloc_54 = memref.alloc(%dim_53) {alignment = 64 : i64} : memref<?xf64>
    memref.copy %subview_51, %alloc_54 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
    %40 = arith.addi %arg0, %c1 : index
    %41 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %42 = arith.index_cast %41 : i64 to index
    %43 = memref.load %alloc_8[%40] : memref<?xi64>
    %44 = arith.index_cast %43 : i64 to index
    %45 = arith.addi %arg0, %c1 : index
    %46 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %47 = arith.index_cast %46 : i64 to index
    %48 = memref.load %alloc_28[%45] : memref<?xi64>
    %49 = arith.index_cast %48 : i64 to index
    %50:6 = scf.while (%arg1 = %c0, %arg2 = %alloc_50, %arg3 = %alloc_54, %arg4 = %idx0, %arg5 = %42, %arg6 = %47) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
      %57 = arith.cmpi ult, %arg6, %49 : index
      %58 = arith.cmpi ult, %arg5, %44 : index
      %59 = arith.andi %58, %57 : i1
      scf.condition(%59) %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : index, memref<?xi64>, memref<?xf64>, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: memref<?xi64>, %arg3: memref<?xf64>, %arg4: index, %arg5: index, %arg6: index):
      %57 = memref.load %alloc_30[%arg6] : memref<?xi64>
      %58 = arith.index_cast %57 : i64 to index
      %59 = memref.load %alloc_10[%arg5] : memref<?xi64>
      %60 = arith.index_cast %59 : i64 to index
      %61 = arith.minui %60, %58 : index
      %62 = arith.cmpi eq, %61, %60 : index
      %63 = arith.cmpi eq, %61, %58 : index
      %64 = arith.andi %62, %63 : i1
      %65:4 = scf.if %64 -> (index, memref<?xi64>, memref<?xf64>, index) {
        %70 = memref.load %alloc_16[%arg5] : memref<?xf64>
        %71 = memref.load %alloc_36[%arg6] : memref<?xf64>
        %72 = arith.mulf %70, %71 : f64
        %73 = arith.index_cast %61 : index to i64
        memref.store %73, %arg2[%arg1] : memref<?xi64>
        %74 = index.add %arg1, %idx1
        memref.store %72, %arg3[%arg1] : memref<?xf64>
        %75 = index.add %arg4, %idx1
        scf.yield %74, %arg2, %arg3, %75 : index, memref<?xi64>, memref<?xf64>, index
      } else {
        scf.yield %arg1, %arg2, %arg3, %arg4 : index, memref<?xi64>, memref<?xf64>, index
      }
      %66 = index.castu %62 : i1 to index
      %67 = index.add %arg5, %66
      %68 = index.castu %63 : i1 to index
      %69 = index.add %arg6, %68
      scf.yield %65#0, %65#1, %65#2, %65#3, %67, %69 : index, memref<?xi64>, memref<?xf64>, index, index, index
    }
    %51 = memref.load %21#1[%arg0] : memref<?xi64>
    %52 = arith.index_cast %51 : i64 to index
    %53 = arith.addi %arg0, %c1 : index
    %54 = memref.load %21#1[%53] : memref<?xi64>
    %55 = arith.index_cast %54 : i64 to index
    %56 = arith.subi %55, %52 : index
    %subview_55 = memref.subview %alloc_41[%52] [%56] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %50#1, %subview_55 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_56 = memref.subview %alloc_42[%52] [%56] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %50#2, %subview_56 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
  }
  %26 = bufferization.to_tensor %alloc_42 : memref<?xf64>
  %27 = bufferization.to_tensor %alloc_41 : memref<?xi64>
  %alloc_43 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_43[%idx0] : memref<1xindex>
  %28 = bufferization.to_tensor %alloc_43 : memref<1xindex>
  %29 = bufferization.to_memref %25 : memref<?xi64>
  %cast_44 = memref.cast %29 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_44) : (memref<*xi64>) -> ()
  %30 = bufferization.to_memref %28 : memref<1xindex>
  %cast_45 = memref.cast %30 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_45) : (memref<*xindex>) -> ()
  %31 = bufferization.to_memref %22 : memref<?xi64>
  %cast_46 = memref.cast %31 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %32 = bufferization.to_memref %27 : memref<?xi64>
  %cast_47 = memref.cast %32 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
  %33 = bufferization.to_memref %26 : memref<?xf64>
  %cast_48 = memref.cast %33 : memref<?xf64> to memref<*xf64>
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
    scf.forall (%arg0) in (%9) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.addi %arg0, %c1 : index
      %30 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_28[%29] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %31) : (index, index, index, index) -> (index, index, index, index) {
        %37 = arith.cmpi ult, %arg4, %33 : index
        %38 = arith.cmpi ult, %arg3, %28 : index
        %39 = arith.andi %38, %37 : i1
        scf.condition(%39) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %37 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = arith.minui %40, %38 : index
        %42 = arith.cmpi eq, %41, %40 : index
        %43 = arith.cmpi eq, %41, %38 : index
        %44 = arith.andi %42, %43 : i1
        %45:2 = scf.if %44 -> (index, index) {
          %50 = index.add %arg1, %idx1
          %51 = index.add %arg2, %idx1
          scf.yield %50, %51 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %46 = index.castu %42 : i1 to index
        %47 = index.add %arg3, %46
        %48 = index.castu %43 : i1 to index
        %49 = index.add %arg4, %48
        scf.yield %45#0, %45#1, %47, %49 : index, index, index, index
      }
      %35 = index.add %arg0, %idx1
      %36 = arith.index_cast %34#0 : index to i64
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
      memref.store %36, %alloc_48[%35] : memref<?xi64>
      %subview = memref.subview %alloc_48[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_38[%35] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = arith.addi %arg0, %c1 : index
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%30] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = arith.addi %arg0, %c1 : index
      %36 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = memref.load %alloc_28[%35] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %32, %arg4 = %37) : (index, index, index, index) -> (index, index, index, index) {
        %47 = arith.cmpi ult, %arg4, %39 : index
        %48 = arith.cmpi ult, %arg3, %34 : index
        %49 = arith.andi %48, %47 : i1
        scf.condition(%49) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %47 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %50 = arith.index_cast %49 : i64 to index
        %51 = arith.minui %50, %48 : index
        %52 = arith.cmpi eq, %51, %50 : index
        %53 = arith.cmpi eq, %51, %48 : index
        %54 = arith.andi %52, %53 : i1
        %55:2 = scf.if %54 -> (index, index) {
          %60 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %61 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %62 = arith.mulf %60, %61 : f64
          %63 = arith.index_cast %51 : index to i64
          memref.store %63, %alloc_48[%arg1] : memref<?xi64>
          %64 = index.add %arg1, %idx1
          memref.store %62, %alloc_50[%arg1] : memref<?xf64>
          %65 = index.add %arg2, %idx1
          scf.yield %64, %65 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %56 = index.castu %52 : i1 to index
        %57 = index.add %arg3, %56
        %58 = index.castu %53 : i1 to index
        %59 = index.add %arg4, %58
        scf.yield %55#0, %55#1, %57, %59 : index, index, index, index
      }
      %41 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.addi %arg0, %c1 : index
      %44 = memref.load %alloc_38[%43] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = arith.subi %45, %42 : index
      %subview_51 = memref.subview %alloc_40[%42] [%46] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_41[%42] [%46] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
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
    scf.forall (%arg0) in (%9) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_48[%34] : memref<?xi64>
      %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%26] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%26] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %44 = arith.cmpi ult, %arg4, %37 : index
        %45 = arith.cmpi ult, %arg3, %33 : index
        %46 = arith.andi %45, %44 : i1
        scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.minui %47, %45 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %45 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %59 = arith.mulf %57, %58 : f64
          %60 = arith.index_cast %48 : index to i64
          memref.store %60, %alloc_48[%arg1] : memref<?xi64>
          %61 = index.add %arg1, %idx1
          memref.store %59, %alloc_50[%arg1] : memref<?xf64>
          %62 = index.add %arg2, %idx1
          scf.yield %61, %62 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg3, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg4, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_38[%26] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.subi %42, %40 : index
      %subview_51 = memref.subview %alloc_40[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_41[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
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
    scf.forall (%arg0) in (%9) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_48[%34] : memref<?xi64>
      %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%26] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%26] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %44 = arith.cmpi ult, %arg4, %37 : index
        %45 = arith.cmpi ult, %arg3, %33 : index
        %46 = arith.andi %45, %44 : i1
        scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.minui %47, %45 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %45 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %59 = arith.mulf %57, %58 : f64
          %60 = arith.index_cast %48 : index to i64
          memref.store %60, %alloc_48[%arg1] : memref<?xi64>
          %61 = index.add %arg1, %idx1
          memref.store %59, %alloc_50[%arg1] : memref<?xf64>
          %62 = index.add %arg2, %idx1
          scf.yield %61, %62 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg3, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg4, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_38[%26] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.subi %42, %40 : index
      %subview_51 = memref.subview %alloc_40[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_41[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
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
    scf.forall (%arg0) in (%9) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_48[%34] : memref<?xi64>
      %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%26] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%26] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %44 = arith.cmpi ult, %arg4, %37 : index
        %45 = arith.cmpi ult, %arg3, %33 : index
        %46 = arith.andi %45, %44 : i1
        scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.minui %47, %45 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %45 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %59 = arith.mulf %57, %58 : f64
          %60 = arith.index_cast %48 : index to i64
          memref.store %60, %alloc_48[%arg1] : memref<?xi64>
          %61 = index.add %arg1, %idx1
          memref.store %59, %alloc_50[%arg1] : memref<?xf64>
          %62 = index.add %arg2, %idx1
          scf.yield %61, %62 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg3, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg4, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_38[%26] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.subi %42, %40 : index
      %subview_51 = memref.subview %alloc_40[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_41[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
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
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

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
  scf.forall (%arg0) in (%9) {
    %24 = arith.addi %arg0, %c1 : index
    %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %27 = memref.load %alloc_8[%24] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = memref.load %alloc_28[%24] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
      %36 = arith.cmpi ult, %arg4, %32 : index
      %37 = arith.cmpi ult, %arg3, %28 : index
      %38 = arith.andi %37, %36 : i1
      scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = arith.minui %39, %37 : index
      %41 = arith.cmpi eq, %40, %39 : index
      %42 = arith.cmpi eq, %40, %37 : index
      %43 = arith.andi %41, %42 : i1
      %44:2 = scf.if %43 -> (index, index) {
        %49 = index.add %arg1, %idx1
        %50 = index.add %arg2, %idx1
        scf.yield %49, %50 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %45 = index.castu %41 : i1 to index
      %46 = index.add %arg3, %45
      %47 = index.castu %42 : i1 to index
      %48 = index.add %arg4, %47
      scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
    }
    %34 = index.add %arg0, %idx1
    %35 = arith.index_cast %33#0 : index to i64
    %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
    memref.store %35, %alloc_48[%34] : memref<?xi64>
    %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %20 = arith.addi %9, %c1 : index
  %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %25 = arith.addi %24, %arg1 : i64
    memref.store %25, %alloc_38[%arg0] : memref<?xi64>
    scf.yield %25 : i64
  }
  %22 = arith.index_cast %21 : i64 to index
  %23 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %23, %alloc_39[%idx0] : memref<1xi64>
  %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
  %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %alloc_38[%26] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = arith.subi %28, %25 : index
    %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
    %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
    memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
    %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32 = memref.load %alloc_8[%26] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = memref.load %alloc_28[%26] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
      %44 = arith.cmpi ult, %arg4, %37 : index
      %45 = arith.cmpi ult, %arg3, %33 : index
      %46 = arith.andi %45, %44 : i1
      scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = arith.minui %47, %45 : index
      %49 = arith.cmpi eq, %48, %47 : index
      %50 = arith.cmpi eq, %48, %45 : index
      %51 = arith.andi %49, %50 : i1
      %52:2 = scf.if %51 -> (index, index) {
        %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
        %59 = arith.mulf %57, %58 : f64
        %60 = arith.index_cast %48 : index to i64
        memref.store %60, %alloc_48[%arg1] : memref<?xi64>
        %61 = index.add %arg1, %idx1
        memref.store %59, %alloc_50[%arg1] : memref<?xf64>
        %62 = index.add %arg2, %idx1
        scf.yield %61, %62 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %53 = index.castu %49 : i1 to index
      %54 = index.add %arg3, %53
      %55 = index.castu %50 : i1 to index
      %56 = index.add %arg4, %55
      scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
    }
    %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %41 = memref.load %alloc_38[%26] : memref<?xi64>
    %42 = arith.index_cast %41 : i64 to index
    %43 = arith.subi %42, %40 : index
    %subview_51 = memref.subview %alloc_40[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_52 = memref.subview %alloc_41[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
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
  scf.forall (%arg0) in (%9) {
    %24 = arith.addi %arg0, %c1 : index
    %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %27 = memref.load %alloc_8[%24] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = memref.load %alloc_28[%24] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
      %36 = arith.cmpi ult, %arg4, %32 : index
      %37 = arith.cmpi ult, %arg3, %28 : index
      %38 = arith.andi %37, %36 : i1
      scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = arith.minui %39, %37 : index
      %41 = arith.cmpi eq, %40, %39 : index
      %42 = arith.cmpi eq, %40, %37 : index
      %43 = arith.andi %41, %42 : i1
      %44:2 = scf.if %43 -> (index, index) {
        %49 = index.add %arg1, %idx1
        %50 = index.add %arg2, %idx1
        scf.yield %49, %50 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %45 = index.castu %41 : i1 to index
      %46 = index.add %arg3, %45
      %47 = index.castu %42 : i1 to index
      %48 = index.add %arg4, %47
      scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
    }
    %34 = index.add %arg0, %idx1
    %35 = arith.index_cast %33#0 : index to i64
    %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
    memref.store %35, %alloc_48[%34] : memref<?xi64>
    %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %20 = arith.addi %9, %c1 : index
  %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %25 = arith.addi %24, %arg1 : i64
    memref.store %25, %alloc_38[%arg0] : memref<?xi64>
    scf.yield %25 : i64
  }
  %22 = arith.index_cast %21 : i64 to index
  %23 = arith.index_cast %9 : index to i64
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %23, %alloc_39[%idx0] : memref<1xi64>
  %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
  %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %alloc_38[%26] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = arith.subi %28, %25 : index
    %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
    %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
    memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
    %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32 = memref.load %alloc_8[%26] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36 = memref.load %alloc_28[%26] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
      %44 = arith.cmpi ult, %arg4, %37 : index
      %45 = arith.cmpi ult, %arg3, %33 : index
      %46 = arith.andi %45, %44 : i1
      scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
      %45 = arith.index_cast %44 : i64 to index
      %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = arith.minui %47, %45 : index
      %49 = arith.cmpi eq, %48, %47 : index
      %50 = arith.cmpi eq, %48, %45 : index
      %51 = arith.andi %49, %50 : i1
      %52:2 = scf.if %51 -> (index, index) {
        %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
        %59 = arith.mulf %57, %58 : f64
        %60 = arith.index_cast %48 : index to i64
        memref.store %60, %alloc_48[%arg1] : memref<?xi64>
        %61 = index.add %arg1, %idx1
        memref.store %59, %alloc_50[%arg1] : memref<?xf64>
        %62 = index.add %arg2, %idx1
        scf.yield %61, %62 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %53 = index.castu %49 : i1 to index
      %54 = index.add %arg3, %53
      %55 = index.castu %50 : i1 to index
      %56 = index.add %arg4, %55
      scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
    }
    %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %41 = memref.load %alloc_38[%26] : memref<?xi64>
    %42 = arith.index_cast %41 : i64 to index
    %43 = arith.subi %42, %40 : index
    %subview_51 = memref.subview %alloc_40[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_52 = memref.subview %alloc_41[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
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
    scf.forall (%arg0) in (%9) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_48[%34] : memref<?xi64>
      %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%26] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%26] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %44 = arith.cmpi ult, %arg4, %37 : index
        %45 = arith.cmpi ult, %arg3, %33 : index
        %46 = arith.andi %45, %44 : i1
        scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.minui %47, %45 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %45 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %59 = arith.mulf %57, %58 : f64
          %60 = arith.index_cast %48 : index to i64
          memref.store %60, %alloc_48[%arg1] : memref<?xi64>
          %61 = index.add %arg1, %idx1
          memref.store %59, %alloc_50[%arg1] : memref<?xf64>
          %62 = index.add %arg2, %idx1
          scf.yield %61, %62 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg3, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg4, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_38[%26] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.subi %42, %40 : index
      %subview_51 = memref.subview %alloc_40[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_41[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
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
    %c0_39 = arith.constant 0 : index
    %c1_40 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_39) to (%9) step (%c1_40) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_52[%34] : memref<?xi64>
      %subview = memref.subview %alloc_52[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_41[%idx0] : memref<1xi64>
    %alloc_42 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %c0_44 = arith.constant 0 : index
    %c1_45 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_44) to (%9) step (%c1_45) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_42[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_52 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_52 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_53 = memref.subview %alloc_43[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_54 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_53, %alloc_54 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%26] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%26] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %44 = arith.cmpi ult, %arg4, %37 : index
        %45 = arith.cmpi ult, %arg3, %33 : index
        %46 = arith.andi %45, %44 : i1
        scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.minui %47, %45 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %45 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %59 = arith.mulf %57, %58 : f64
          %60 = arith.index_cast %48 : index to i64
          memref.store %60, %alloc_52[%arg1] : memref<?xi64>
          %61 = index.add %arg1, %idx1
          memref.store %59, %alloc_54[%arg1] : memref<?xf64>
          %62 = index.add %arg2, %idx1
          scf.yield %61, %62 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg3, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg4, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_38[%26] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.subi %42, %40 : index
      %subview_55 = memref.subview %alloc_42[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_52, %subview_55 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_56 = memref.subview %alloc_43[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_54, %subview_56 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
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
    %c0_39 = arith.constant 0 : index
    %c1_40 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_39) to (%9) step (%c1_40) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_52 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_52 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_52[%34] : memref<?xi64>
      %subview = memref.subview %alloc_52[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_53 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_41 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_41[%idx0] : memref<1xi64>
    %alloc_42 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_43 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %c0_44 = arith.constant 0 : index
    %c1_45 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_44) to (%9) step (%c1_45) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_42[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_52 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_52 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_53 = memref.subview %alloc_43[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_54 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_53, %alloc_54 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%26] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%26] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %44 = arith.cmpi ult, %arg4, %37 : index
        %45 = arith.cmpi ult, %arg3, %33 : index
        %46 = arith.andi %45, %44 : i1
        scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.minui %47, %45 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %45 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %59 = arith.mulf %57, %58 : f64
          %60 = arith.index_cast %48 : index to i64
          memref.store %60, %alloc_52[%arg1] : memref<?xi64>
          %61 = index.add %arg1, %idx1
          memref.store %59, %alloc_54[%arg1] : memref<?xf64>
          %62 = index.add %arg2, %idx1
          scf.yield %61, %62 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg3, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg4, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_38[%26] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.subi %42, %40 : index
      %subview_55 = memref.subview %alloc_42[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_52, %subview_55 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_56 = memref.subview %alloc_43[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_54, %subview_56 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_41 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_42 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_43 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
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
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_48[%34] : memref<?xi64>
      %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%26] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%26] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %44 = arith.cmpi ult, %arg4, %37 : index
        %45 = arith.cmpi ult, %arg3, %33 : index
        %46 = arith.andi %45, %44 : i1
        scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.minui %47, %45 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %45 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %59 = arith.mulf %57, %58 : f64
          %60 = arith.index_cast %48 : index to i64
          memref.store %60, %alloc_48[%arg1] : memref<?xi64>
          %61 = index.add %arg1, %idx1
          memref.store %59, %alloc_50[%arg1] : memref<?xf64>
          %62 = index.add %arg2, %idx1
          scf.yield %61, %62 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg3, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg4, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_38[%26] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.subi %42, %40 : index
      %subview_51 = memref.subview %alloc_40[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_41[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
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
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_48[%34] : memref<?xi64>
      %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%26] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%26] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %44 = arith.cmpi ult, %arg4, %37 : index
        %45 = arith.cmpi ult, %arg3, %33 : index
        %46 = arith.andi %45, %44 : i1
        scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.minui %47, %45 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %45 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %59 = arith.mulf %57, %58 : f64
          %60 = arith.index_cast %48 : index to i64
          memref.store %60, %alloc_48[%arg1] : memref<?xi64>
          %61 = index.add %arg1, %idx1
          memref.store %59, %alloc_50[%arg1] : memref<?xf64>
          %62 = index.add %arg2, %idx1
          scf.yield %61, %62 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg3, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg4, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_38[%26] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.subi %42, %40 : index
      %subview_51 = memref.subview %alloc_40[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_41[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
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
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_28[%24] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %26, %arg4 = %30) : (index, index, index, index) -> (index, index, index, index) {
        %36 = arith.cmpi ult, %arg4, %32 : index
        %37 = arith.cmpi ult, %arg3, %28 : index
        %38 = arith.andi %37, %36 : i1
        scf.condition(%38) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %36 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.minui %39, %37 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %37 : index
        %43 = arith.andi %41, %42 : i1
        %44:2 = scf.if %43 -> (index, index) {
          %49 = index.add %arg1, %idx1
          %50 = index.add %arg2, %idx1
          scf.yield %49, %50 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg3, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg4, %47
        scf.yield %44#0, %44#1, %46, %48 : index, index, index, index
      }
      %34 = index.add %arg0, %idx1
      %35 = arith.index_cast %33#0 : index to i64
      %alloc_48 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_38, %alloc_48 : memref<?xi64> to memref<?xi64>
      memref.store %35, %alloc_48[%34] : memref<?xi64>
      %subview = memref.subview %alloc_48[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_49 = memref.subview %alloc_38[%34] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_49 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %20 = arith.addi %9, %c1 : index
    %21 = scf.for %arg0 = %c1 to %20 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.addi %24, %arg1 : i64
      memref.store %25, %alloc_38[%arg0] : memref<?xi64>
      scf.yield %25 : i64
    }
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.index_cast %9 : index to i64
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %23, %alloc_39[%idx0] : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %24 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_38[%26] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.subi %28, %25 : index
      %subview = memref.subview %alloc_40[%25] [%29] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %alloc_48 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %subview, %alloc_48 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64>
      %subview_49 = memref.subview %alloc_41[%25] [%29] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_50 = memref.alloc(%29) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_49, %alloc_50 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%26] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36 = memref.load %alloc_28[%26] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %31, %arg4 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %44 = arith.cmpi ult, %arg4, %37 : index
        %45 = arith.cmpi ult, %arg3, %33 : index
        %46 = arith.andi %45, %44 : i1
        scf.condition(%46) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %44 = memref.load %alloc_30[%arg4] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %47 = arith.index_cast %46 : i64 to index
        %48 = arith.minui %47, %45 : index
        %49 = arith.cmpi eq, %48, %47 : index
        %50 = arith.cmpi eq, %48, %45 : index
        %51 = arith.andi %49, %50 : i1
        %52:2 = scf.if %51 -> (index, index) {
          %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %58 = memref.load %alloc_36[%arg4] : memref<?xf64>
          %59 = arith.mulf %57, %58 : f64
          %60 = arith.index_cast %48 : index to i64
          memref.store %60, %alloc_48[%arg1] : memref<?xi64>
          %61 = index.add %arg1, %idx1
          memref.store %59, %alloc_50[%arg1] : memref<?xf64>
          %62 = index.add %arg2, %idx1
          scf.yield %61, %62 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %53 = index.castu %49 : i1 to index
        %54 = index.add %arg3, %53
        %55 = index.castu %50 : i1 to index
        %56 = index.add %arg4, %55
        scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
      }
      %39 = memref.load %alloc_38[%arg0] : memref<?xi64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = memref.load %alloc_38[%26] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = arith.subi %42, %40 : index
      %subview_51 = memref.subview %alloc_40[%40] [%43] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %alloc_48, %subview_51 : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_41[%40] [%43] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_50, %subview_52 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
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
