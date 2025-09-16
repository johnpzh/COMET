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
    %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    %10 = "ta.reduce"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
    "ta.print"(%10) : (f64) -> ()
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
  %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %10 = "ta.reduce"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%10) : (f64) -> ()
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
  %9 = "it.itree"(%8) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %11 = "it.RootOp"() : () -> !it.index_tree
    %12 = "it.IndexOp"(%11) <{IsParallel = false}> : (!it.index_tree) -> !it.index
    %13 = "it.IndexOp"(%12) <{IsParallel = false}> : (!it.index) -> !it.index
    %14 = "it.IndexOp"(%13) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_2, %crd, %crd_1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%3, %13, %pos_4) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%3, %pos_4, %pos_6, %crd_3, %crd_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%6, %14, %pos_8) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%6, %pos_8, %pos_10, %crd_7, %crd_9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %18 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %10 = "ta.reduce"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%10) : (f64) -> ()
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
  %6 = "it.itree"(%5) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %12 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %13 = "it.DomainIntersectionOp"(%12, %11) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %14 = "it.IndexOp"(%10, %13) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %15 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %16 = "it.IndexOp"(%14, %15) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %16, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %16, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %20 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %7 = "ta.reduce"(%5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%7) : (f64) -> ()
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
  %13 = "it.itree"(%12) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %15 = "it.RootOp"() : () -> !it.index_tree
    %16 = "it.DenseDomainOp"(%1, %0) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %17 = "it.IndexOp"(%15, %16) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %17) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %18 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %19 = "it.IndexOp"(%17, %18) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%7, %19) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %20 = "it.SparseDomainOp"(%7, %8, %9, %dim_1, %dim_2, %10, %pos_4) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %21 = "it.IndexOp"(%19, %20) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%arg0, %17) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%arg0, %21, %pos_6) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %22 = "it.LHSOperandOp"(%arg0, %pos_6, %pos_8, %crd_5, %crd_7) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%0, %19, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%0, %pos, %pos_10, %crd, %crd_9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%7, %21, %pos_4) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %24 = "it.OperandOp"(%7, %pos_4, %pos_12, %crd_3, %crd_11) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %25 = "it.ComputeOp"(%21, %22, %23, %24) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %25 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%13, %12) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %14 = "ta.reduce"(%12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%14) : (f64) -> ()
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
  %57 = "it.itree"(%56) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %59 = "it.RootOp"() : () -> !it.index_tree
    %60 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.IndexOp"(%61, %62) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%51, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %64 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %65, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %63, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%22, %pos, %pos_91, %crd, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %65, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%51, %pos_85, %pos_93, %crd_84, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %69 = "it.ComputeOp"(%65, %66, %67, %68) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %69 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%57, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %58 = "ta.reduce"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%58) : (f64) -> ()
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
  %57 = "it.itree"(%56) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %59 = "it.RootOp"() : () -> !it.index_tree
    %60 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.IndexOp"(%61, %62) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%51, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %64 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %65, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %63, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%22, %pos, %pos_91, %crd, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %65, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%51, %pos_85, %pos_93, %crd_84, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %69 = "it.ComputeOp"(%65, %66, %67, %68) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %69 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%57, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %58 = "ta.reduce"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%58) : (f64) -> ()
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
  %57 = "it.itree"(%56) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %59 = "it.RootOp"() : () -> !it.index_tree
    %60 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.IndexOp"(%61, %62) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%51, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %64 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %65, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %63, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%22, %pos, %pos_91, %crd, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %65, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%51, %pos_85, %pos_93, %crd_84, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %69 = "it.ComputeOp"(%65, %66, %67, %68) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %69 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%57, %56) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %58 = "ta.reduce"(%56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%58) : (f64) -> ()
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
  %58 = "it.itree"(%57) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %60 = "it.RootOp"() : () -> !it.index_tree
    %61 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %62 = "it.IndexOp"(%60, %61) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %62) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %63 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%51, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %66 = "it.IndexOp"(%64, %65) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %62) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %66, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%22, %pos, %pos_91, %crd, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %66, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %69 = "it.OperandOp"(%51, %pos_85, %pos_93, %crd_84, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %70 = "it.ComputeOp"(%66, %67, %68, %69) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %70 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%58, %57) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %59 = "ta.reduce"(%57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%59) : (f64) -> ()
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
  %58 = "it.itree"(%57) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %60 = "it.RootOp"() : () -> !it.index_tree
    %61 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %62 = "it.IndexOp"(%60, %61) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %62) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %63 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%51, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %66 = "it.IndexOp"(%64, %65) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %62) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %66, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%22, %pos, %pos_91, %crd, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %66, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %69 = "it.OperandOp"(%51, %pos_85, %pos_93, %crd_84, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %70 = "it.ComputeOp"(%66, %67, %68, %69) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %70 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%58, %57) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %59 = "ta.reduce"(%57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%59) : (f64) -> ()
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
  %58 = "it.itree"(%57) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %60 = "it.RootOp"() : () -> !it.index_tree
    %61 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %62 = "it.IndexOp"(%60, %61) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %62) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %63 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_84, %pos_85 = "it.IndexToTensorDim"(%51, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%51, %52, %53, %dim_82, %dim_83, %54, %pos_85) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %66 = "it.IndexOp"(%64, %65) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_86, %pos_87 = "it.IndexToTensorDim"(%arg0, %62) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_88, %pos_89 = "it.IndexToTensorDim"(%arg0, %66, %pos_87) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.LHSOperandOp"(%arg0, %pos_87, %pos_89, %crd_86, %crd_88) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_90, %pos_91 = "it.IndexToTensorDim"(%22, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%22, %pos, %pos_91, %crd, %crd_90) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_92, %pos_93 = "it.IndexToTensorDim"(%51, %66, %pos_85) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %69 = "it.OperandOp"(%51, %pos_85, %pos_93, %crd_84, %crd_92) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %70 = "it.ComputeOp"(%66, %67, %68, %69) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %70 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%58, %57) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %59 = "ta.reduce"(%57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%59) : (f64) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %51 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.NestedDomainOp"(%50, %51, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %53 = "it.IndexTreeSparseTensorOp"(%49, %52) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %54 = "it.itree"(%53) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %56 = "it.RootOp"() : () -> !it.index_tree
    %57 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %58 = "it.IndexOp"(%56, %57) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %59 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %62 = "it.IndexOp"(%60, %61) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg0, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg0, %62, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.LHSOperandOp"(%arg0, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.OperandOp"(%20, %pos, %pos_49, %crd, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %62, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.OperandOp"(%45, %pos_43, %pos_51, %crd_42, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %66 = "it.ComputeOp"(%62, %63, %64, %65) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %66 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%54, %53) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %55 = "ta.reduce"(%53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%55) : (f64) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %51 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.NestedDomainOp"(%50, %51, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %53 = "it.IndexTreeSparseTensorOp"(%49, %52) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %54 = "ta.AllocWorkspace"(%53) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %55:2 = "it.itree"(%53, %54) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %57 = "it.RootOp"() : () -> !it.index_tree
    %58 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %61 = "it.WorkspaceStartRowOp"(%59, %arg1) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %62 = "it.IndexOp"(%59, %60) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %62) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %63 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%20, %62, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.OperandOp"(%20, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%45, %64, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.OperandOp"(%45, %pos_43, %pos_47, %crd_42, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%61, %64) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %67 = "it.LHSOperandOp"(%61, %pos_49, %crd_48) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %68 = "it.ComputeOp"(%64, %67, %65, %66) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, ?>
    %69 = "ta.SpTensorGetDimSize"(%68) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>) -> index
    %70 = "it.WorkspaceDomainOp"(%68, %69) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, index) -> !it.domain
    %71 = "it.IndexOp"(%59, %70) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg0, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%arg0, %71, %pos_51) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %72 = "it.LHSOperandOp"(%arg0, %pos_51, %pos_53, %crd_50, %crd_52) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%68, %71) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %73 = "it.OperandOp"(%68, %pos_55, %crd_54) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %74 = "it.ComputeOp"(%71, %72, %73) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %74, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.set_op"(%55#0, %53) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %56 = "ta.reduce"(%53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%56) : (f64) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %51 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.NestedDomainOp"(%50, %51, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %53 = "it.IndexTreeSparseTensorOp"(%49, %52) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %54 = "ta.AllocWorkspace"(%53) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %55:2 = "it.itree"(%53, %54) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %58 = "it.RootOp"() : () -> !it.index_tree
    %59 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %62 = "it.WorkspaceStartRowOp"(%60, %arg1) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %63 = "it.IndexOp"(%60, %61) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%45, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %64 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_50) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%20, %63, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.OperandOp"(%20, %pos, %pos_52, %crd, %crd_51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%45, %65, %pos_50) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%45, %pos_50, %pos_54, %crd_49, %crd_53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%62, %65) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %68 = "it.LHSOperandOp"(%62, %pos_56, %crd_55) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %69 = "it.ComputeOp"(%65, %68, %66, %67) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, ?>
    %70 = "ta.SpTensorGetDimSize"(%69) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>) -> index
    %71 = "it.WorkspaceDomainOp"(%69, %70) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, index) -> !it.domain
    %72 = "it.IndexOp"(%60, %71) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_57, %pos_58 = "it.IndexToTensorDim"(%arg0, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_59, %pos_60 = "it.IndexToTensorDim"(%arg0, %72, %pos_58) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %73 = "it.LHSOperandOp"(%arg0, %pos_58, %pos_60, %crd_57, %crd_59) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_61, %pos_62 = "it.IndexToTensorDim"(%69, %72) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %74 = "it.OperandOp"(%69, %pos_62, %crd_61) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %75 = "it.ComputeOp"(%72, %73, %74) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %75, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%55#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %c0_42 = arith.constant 0 : index
  %alloc_43 = memref.alloc() : memref<1xf64>
  %cst_44 = arith.constant 0.000000e+00 : f64
  memref.store %cst_44, %alloc_43[%c0_42] : memref<1xf64>
  %56 = "ta.SpTensorGetVals"(%55#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %c0_45 = arith.constant 0 : index
  %dim_46 = tensor.dim %56, %c0_45 : tensor<?xf64>
  %c0_47 = arith.constant 0 : index
  %c1_48 = arith.constant 1 : index
  scf.for %arg0 = %c0_47 to %dim_46 step %c1_48 {
    %extracted = tensor.extract %56[%arg0] : tensor<?xf64>
    %58 = memref.load %alloc_43[%c0_42] : memref<1xf64>
    %59 = arith.addf %extracted, %58 : f64
    memref.store %59, %alloc_43[%c0_42] : memref<1xf64>
  }
  %57 = memref.load %alloc_43[%c0_42] : memref<1xf64>
  "ta.print"(%57) : (f64) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %51 = "it.itree"(%50) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %57 = "it.RootOp"() : () -> !it.index_tree
    %58 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%45, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.IndexOp"(%61, %62) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %64 = "it.ComputeSymbolicDomainOp"(%63, %arg0) <{is_unique = false}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %65 = "it.ComputeSymbolicDomainRowOp"(%59, %64) <{needs_mark = true}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    it.yield %65 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %54:2 = "it.itree"(%52, %53) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %57 = "it.RootOp"() : () -> !it.index_tree
    %58 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %61 = "it.WorkspaceStartRowOp"(%59, %arg1) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %62 = "it.IndexOp"(%59, %60) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%45, %62) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %63 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%20, %62, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.OperandOp"(%20, %pos, %pos_47, %crd, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%45, %64, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.OperandOp"(%45, %pos_45, %pos_49, %crd_44, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%61, %64) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %67 = "it.LHSOperandOp"(%61, %pos_51, %crd_50) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %68 = "it.ComputeOp"(%64, %67, %65, %66) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, ?>
    %69 = "ta.SpTensorGetDimSize"(%68) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>) -> index
    %70 = "it.WorkspaceDomainOp"(%68, %69) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, index) -> !it.domain
    %71 = "it.IndexOp"(%59, %70) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%arg0, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%arg0, %71, %pos_53) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %72 = "it.LHSOperandOp"(%arg0, %pos_53, %pos_55, %crd_52, %crd_54) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%68, %71) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %73 = "it.OperandOp"(%68, %pos_57, %crd_56) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %74 = "it.ComputeOp"(%71, %72, %73) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %74, %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %alloc_42 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_42[%c0] : memref<1xf64>
  %55 = "ta.SpTensorGetVals"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim_43 = tensor.dim %55, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim_43 step %c1 {
    %extracted = tensor.extract %55[%arg0] : tensor<?xf64>
    %57 = memref.load %alloc_42[%c0] : memref<1xf64>
    %58 = arith.addf %extracted, %57 : f64
    memref.store %58, %alloc_42[%c0] : memref<1xf64>
  }
  %56 = memref.load %alloc_42[%c0] : memref<1xf64>
  "ta.print"(%56) : (f64) -> ()
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
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %51 = "it.itree"(%50) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %57:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %58 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %57#4) -> (tensor<?xi64>) {
      %c0_48 = arith.constant 0 : index
      %63 = builtin.unrealized_conversion_cast %arg1, %57#1, %c0_48, %57#3, %arg2, %57#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %extracted_slice = tensor.extract_slice %arg2[%arg1] [1] [1] : tensor<?xi64> to tensor<1xi64>
      %c1_49 = arith.constant 1 : index
      %64 = arith.addi %arg1, %c1_49 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %65 = arith.index_cast %extracted : i64 to index
      %extracted_50 = tensor.extract %22[%64] : tensor<?xi64>
      %66 = arith.index_cast %extracted_50 : i64 to index
      %c1_51 = arith.constant 1 : index
      %67 = scf.for %arg3 = %65 to %66 step %c1_51 iter_args(%arg4 = %63) -> (!it.symbolic_domain<64>) {
        %70 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %71 = arith.index_cast %70 : i64 to index
        %c1_53 = arith.constant 1 : index
        %72 = arith.addi %71, %c1_53 : index
        %extracted_54 = tensor.extract %46[%71] : tensor<?xi64>
        %73 = arith.index_cast %extracted_54 : i64 to index
        %extracted_55 = tensor.extract %46[%72] : tensor<?xi64>
        %74 = arith.index_cast %extracted_55 : i64 to index
        %c1_56 = arith.constant 1 : index
        %75 = scf.for %arg5 = %73 to %74 step %c1_56 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %76 = "ta.SpTensorGetCrd"(%45, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %77 = arith.index_cast %76 : i64 to index
          %78 = "it.SymbolicDomainInsertOp"(%arg6, %77) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          scf.yield %78 : !it.symbolic_domain<64>
        }
        scf.yield %75 : !it.symbolic_domain<64>
      }
      %68 = "it.SymbolicDomainEndRowOp"(%67) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %69:6 = builtin.unrealized_conversion_cast %68 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      /// WRONG version
      // %extracted_slice_52 = tensor.extract_slice %69#4[%arg1] [1] [1] : tensor<?xi64> to tensor<1xi64>
      // scf.forall.in_parallel {
      //   tensor.parallel_insert_slice %extracted_slice_52 into %arg2[%arg1] [1] [1] : tensor<1xi64> into tensor<?xi64>
      // }
      /// correct version
      // %ii = arith.addi %69#0, %c1_49 : index  /// No need to add 1
      %extracted_slice_52 = tensor.extract_slice %69#4[%69#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice_52 into %arg2[%69#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    /// WRONG version
    // %c0_i64_44 = arith.constant 0 : i64
    // %c0_45 = arith.constant 0 : index
    // %c1_46 = arith.constant 1 : index
    // %59:2 = scf.for %arg1 = %c0_45 to %21 step %c1_46 iter_args(%arg2 = %c0_i64_44, %arg3 = %58) -> (i64, tensor<?xi64>) {
    //   %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
    //   %inserted_48 = tensor.insert %arg2 into %arg3[%arg1] : tensor<?xi64>
    //   %63 = arith.addi %arg2, %extracted : i64
    //   scf.yield %63, %inserted_48 : i64, tensor<?xi64>
    // }
    // %inserted = tensor.insert %59#0 into %59#1[%21] : tensor<?xi64>
    // %c1_47 = arith.constant 1 : index
    // %60 = arith.addi %21, %c1_47 : index
    // %61 = arith.index_cast %59#0 : i64 to index
    // %62 = builtin.unrealized_conversion_cast %60, %57#1, %61, %57#3, %inserted, %57#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    /// correct version
    %c0_i64_44 = arith.constant 0 : i64
    %c1_46 = arith.constant 1 : index
    %bound = arith.addi %21, %c1_46 : index
    %59:2 = scf.for %arg1 = %c1_46 to %bound step %c1_46 iter_args(%arg2 = %c0_i64_44, %arg3 = %58) -> (i64, tensor<?xi64>) {  /// changed boundary and body
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %added = arith.addi %extracted, %arg2 : i64
      %inserted_48 = tensor.insert %added into %arg3[%arg1] : tensor<?xi64>
      scf.yield %added, %inserted_48 : i64, tensor<?xi64>
    }
    %62 = builtin.unrealized_conversion_cast %21, %57#1, %59#0, %57#3, %59#1, %57#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>  /// changed to use %59#0 and %59#1
    it.yield %62 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %54:2 = "it.itree"(%52, %53) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %c0_44 = arith.constant 0 : index
    %c1_45 = arith.constant 1 : index
    %57:2 = scf.for %arg2 = %c0_44 to %21 step %c1_45 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
      %58 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c1_46 = arith.constant 1 : index
      %59 = arith.addi %arg2, %c1_46 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %60 = arith.index_cast %extracted : i64 to index
      %extracted_47 = tensor.extract %22[%59] : tensor<?xi64>
      %61 = arith.index_cast %extracted_47 : i64 to index
      %c1_48 = arith.constant 1 : index
      %62:2 = scf.for %arg5 = %60 to %61 step %c1_48 iter_args(%arg6 = %arg3, %arg7 = %58) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %66 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %67 = arith.index_cast %66 : i64 to index
        %c1_51 = arith.constant 1 : index
        %68 = arith.addi %67, %c1_51 : index
        %extracted_52 = tensor.extract %46[%67] : tensor<?xi64>
        %69 = arith.index_cast %extracted_52 : i64 to index
        %extracted_53 = tensor.extract %46[%68] : tensor<?xi64>
        %70 = arith.index_cast %extracted_53 : i64 to index
        %c1_54 = arith.constant 1 : index
        %71:2 = scf.for %arg8 = %69 to %70 step %c1_54 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %72 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %73 = arith.index_cast %72 : i64 to index
          %74 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %75 = arith.index_cast %74 : i64 to index
          %76 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %77 = arith.index_cast %76 : i64 to index
          %78 = "ta.TAExtractOp"(%20, %arg5, %arg2, %73) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %79 = "ta.TAExtractOp"(%45, %arg8, %67, %75) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %80 = arith.mulf %78, %79 : f64
          %81 = "ta.TAExtractOp"(%arg10, %77, %77) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
          %82 = arith.addf %81, %80 : f64
          %83 = "ta.TAInsertOp"(%arg10, %77, %77, %82) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %83 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %71#0, %71#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %63 = "ta.SortCrdOp"(%62#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c0_49 = arith.constant 0 : index
      %64 = "ta.SpTensorGetNNZ"(%63) : (!ta.workspace<f64, i64, ?>) -> index
      %c1_50 = arith.constant 1 : index
      %65:2 = scf.for %arg5 = %c0_49 to %64 step %c1_50 iter_args(%arg6 = %62#0, %arg7 = %63) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %66 = "ta.SpTensorGetCrd"(%arg7, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %67 = arith.index_cast %66 : i64 to index
        %68 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %69 = "ta.TAExtractOp"(%arg7, %arg5, %67) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %70 = "ta.TAExtractOp"(%arg6, %68, %arg2, %67) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %71 = "ta.TAInsertOp"(%arg6, %arg2, %68, %arg2, %67, %69) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %71, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      scf.yield %65#0, %65#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
    }
    it.yield %57#0, %57#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %alloc_42 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_42[%c0] : memref<1xf64>
  %55 = "ta.SpTensorGetVals"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim_43 = tensor.dim %55, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim_43 step %c1 {
    %extracted = tensor.extract %55[%arg0] : tensor<?xf64>
    %57 = memref.load %alloc_42[%c0] : memref<1xf64>
    %58 = arith.addf %extracted, %57 : f64
    memref.store %58, %alloc_42[%c0] : memref<1xf64>
  }
  %56 = memref.load %alloc_42[%c0] : memref<1xf64>
  "ta.print"(%56) : (f64) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
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
  %46 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %47 = "it.DeclDomainOp"(%45, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %48 = "it.itree"(%47) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %54:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %55 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %54#4) -> (tensor<?xi64>) {
      %60 = builtin.unrealized_conversion_cast %arg1, %54#1, %c0, %54#3, %arg2, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %61 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %62 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %22[%61] : tensor<?xi64>
      %63 = arith.index_cast %extracted_40 : i64 to index
      %64 = scf.for %arg3 = %62 to %63 step %c1 iter_args(%arg4 = %60) -> (!it.symbolic_domain<64>) {
        %67 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %68 = arith.index_cast %67 : i64 to index
        %69 = arith.addi %68, %c1 : index
        %extracted_41 = tensor.extract %44[%68] : tensor<?xi64>
        %70 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %44[%69] : tensor<?xi64>
        %71 = arith.index_cast %extracted_42 : i64 to index
        %72 = scf.for %arg5 = %70 to %71 step %c1 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %73 = "ta.SpTensorGetCrd"(%43, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %74 = arith.index_cast %73 : i64 to index
          %75 = "it.SymbolicDomainInsertOp"(%arg6, %74) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          scf.yield %75 : !it.symbolic_domain<64>
        }
        scf.yield %72 : !it.symbolic_domain<64>
      }
      %65 = "it.SymbolicDomainEndRowOp"(%64) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %66:6 = builtin.unrealized_conversion_cast %65 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %66#4[%arg1] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%arg1] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %56:2 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %c0_i64, %arg3 = %55) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %inserted_40 = tensor.insert %arg2 into %arg3[%arg1] : tensor<?xi64>
      %60 = arith.addi %arg2, %extracted : i64
      scf.yield %60, %inserted_40 : i64, tensor<?xi64>
    }
    %inserted = tensor.insert %56#0 into %56#1[%21] : tensor<?xi64>
    %57 = arith.addi %21, %c1 : index
    %58 = arith.index_cast %56#0 : i64 to index
    %59 = builtin.unrealized_conversion_cast %57, %54#1, %58, %54#3, %inserted, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %59 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %49 = "it.IndexTreeSparseTensorOp"(%46, %48) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "ta.AllocWorkspace"(%49) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %51:2 = "it.itree"(%49, %50) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %54:2 = scf.for %arg2 = %c0 to %21 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
      %55 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %56 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %57 = arith.index_cast %extracted : i64 to index
      %extracted_40 = tensor.extract %22[%56] : tensor<?xi64>
      %58 = arith.index_cast %extracted_40 : i64 to index
      %59:2 = scf.for %arg5 = %57 to %58 step %c1 iter_args(%arg6 = %arg3, %arg7 = %55) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %63 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %64 = arith.index_cast %63 : i64 to index
        %65 = arith.addi %64, %c1 : index
        %extracted_41 = tensor.extract %44[%64] : tensor<?xi64>
        %66 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %44[%65] : tensor<?xi64>
        %67 = arith.index_cast %extracted_42 : i64 to index
        %68:2 = scf.for %arg8 = %66 to %67 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %69 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %70 = arith.index_cast %69 : i64 to index
          %71 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %72 = arith.index_cast %71 : i64 to index
          %73 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %74 = arith.index_cast %73 : i64 to index
          %75 = "ta.TAExtractOp"(%20, %arg5, %arg2, %70) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %76 = "ta.TAExtractOp"(%43, %arg8, %64, %72) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %77 = arith.mulf %75, %76 : f64
          %78 = "ta.WorkspaceAccumulateOp"(%arg10, %74, %74, %77) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %78 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %68#0, %68#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %60 = "ta.SortCrdOp"(%59#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %61 = "ta.SpTensorGetNNZ"(%60) : (!ta.workspace<f64, i64, ?>) -> index
      %62:2 = scf.for %arg5 = %c0 to %61 step %c1 iter_args(%arg6 = %59#0, %arg7 = %60) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %63 = "ta.SpTensorGetCrd"(%arg7, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %64 = arith.index_cast %63 : i64 to index
        %65 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %66 = "ta.WorkspaceReadOp"(%arg7, %arg5, %64) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %67 = "ta.TAInsertOp"(%arg6, %arg2, %65, %arg2, %64, %66) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %67, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      scf.yield %62#0, %62#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
    }
    it.yield %54#0, %54#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%51#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %alloc_39 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_39[%c0] : memref<1xf64>
  %52 = "ta.SpTensorGetVals"(%51#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim = tensor.dim %52, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %52[%arg0] : tensor<?xf64>
    %54 = memref.load %alloc_39[%c0] : memref<1xf64>
    %55 = arith.addf %extracted, %54 : f64
    memref.store %55, %alloc_39[%c0] : memref<1xf64>
  }
  %53 = memref.load %alloc_39[%c0] : memref<1xf64>
  "ta.print"(%53) : (f64) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
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
  %46 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0 = index.constant 0
  %idx1 = index.constant 1
  %47 = index.add %21, %idx1
  %48 = tensor.empty(%47) : tensor<?xi64>
  %c0_i64_39 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_39 into %48[%idx0] : tensor<?xi64>
  %49 = tensor.empty(%45) : tensor<?xi64>
  %50 = builtin.unrealized_conversion_cast %idx0, %47, %idx0, %45, %48, %49 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %51:6 = "it.itree"(%idx0, %47, %idx0, %45, %48, %49) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %68 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %69:6 = builtin.unrealized_conversion_cast %68 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %70 = scf.forall (%arg6) in (%21) shared_outs(%arg7 = %69#4) -> (tensor<?xi64>) {
      %75 = builtin.unrealized_conversion_cast %arg6, %69#1, %c0, %69#3, %arg7, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %76 = arith.addi %arg6, %c1 : index
      %extracted = tensor.extract %22[%arg6] : tensor<?xi64>
      %77 = arith.index_cast %extracted : i64 to index
      %extracted_48 = tensor.extract %22[%76] : tensor<?xi64>
      %78 = arith.index_cast %extracted_48 : i64 to index
      %79:6 = scf.for %arg8 = %77 to %78 step %c1 iter_args(%arg9 = %arg6, %arg10 = %69#1, %arg11 = %c0, %arg12 = %69#3, %arg13 = %arg7, %arg14 = %69#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %85 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %86 = arith.index_cast %85 : i64 to index
        %87 = arith.addi %86, %c1 : index
        %extracted_51 = tensor.extract %44[%86] : tensor<?xi64>
        %88 = arith.index_cast %extracted_51 : i64 to index
        %extracted_52 = tensor.extract %44[%87] : tensor<?xi64>
        %89 = arith.index_cast %extracted_52 : i64 to index
        %90:6 = scf.for %arg15 = %88 to %89 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %92 = "ta.SpTensorGetCrd"(%43, %arg15) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %93 = arith.index_cast %92 : i64 to index
          %idx1_53 = index.constant 1
          %94 = index.add %arg16, %idx1_53
          %95 = arith.index_cast %94 : index to i64
          %extracted_54 = tensor.extract %arg21[%93] : tensor<?xi64>
          %96 = arith.cmpi eq, %95, %extracted_54 : i64
          %97 = scf.if %96 -> (index) {
            scf.yield %arg18 : index
          } else {
            %inserted_55 = tensor.insert %95 into %arg21[%93] : tensor<?xi64>
            %99 = index.add %arg18, %idx1_53
            scf.yield %99 : index
          }
          %98 = builtin.unrealized_conversion_cast %arg16, %arg17, %97, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg16, %arg17, %97, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %91 = builtin.unrealized_conversion_cast %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %80 = builtin.unrealized_conversion_cast %79#0, %79#1, %79#2, %79#3, %79#4, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_49 = index.constant 1
      %81 = index.add %79#0, %idx1_49
      %82 = arith.index_cast %79#2 : index to i64

      ///

      ///

      %inserted_50 = tensor.insert %82 into %79#4[%81] : tensor<?xi64>
      /// TODO: the below should use %inserted_50 as the new pos tensor, not %79#4 anymore;
      %83 = builtin.unrealized_conversion_cast %81, %79#1, %79#2, %79#3, %79#4, %79#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %84:6 = builtin.unrealized_conversion_cast %83 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %84#4[%arg6] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%arg6] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %71:2 = scf.for %arg6 = %c0 to %21 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %70) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %inserted_48 = tensor.insert %arg7 into %arg8[%arg6] : tensor<?xi64>
      %75 = arith.addi %arg7, %extracted : i64
      scf.yield %75, %inserted_48 : i64, tensor<?xi64>
    }
    %inserted_47 = tensor.insert %71#0 into %71#1[%21] : tensor<?xi64>
    %72 = arith.addi %21, %c1 : index
    %73 = arith.index_cast %71#0 : i64 to index
    %74 = builtin.unrealized_conversion_cast %72, %69#1, %73, %69#3, %inserted_47, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %72, %69#1, %73, %69#3, %inserted_47, %69#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %52 = builtin.unrealized_conversion_cast %51#0, %51#1, %51#2, %51#3, %51#4, %51#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_40 = index.constant 0
  %idx1_41 = index.constant 1
  %53 = arith.index_cast %21 : index to i64
  %idx1_42 = index.constant 1
  %54 = tensor.empty(%idx1_42) : tensor<?xi64>
  %inserted_43 = tensor.insert %53 into %54[%idx0_40] : tensor<?xi64>
  %55 = tensor.empty() : tensor<0xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = index.mul %idx1_41, %21
  %59 = tensor.empty(%51#2) : tensor<?xi64>
  %60 = tensor.empty() : tensor<0xi64>
  %61 = tensor.empty() : tensor<0xi64>
  %62 = tensor.empty(%51#2) : tensor<?xf64>
  %cst_44 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_40 to %51#2 step %idx1_41 {
    %inserted_47 = tensor.insert %cst_44 into %62[%arg0] : tensor<?xf64>
  }
  %from_elements_45 = tensor.from_elements %21, %51#3 : tensor<2xindex>
  %63 = "ta.spTensor_construct"(%from_elements_45, %54, %51#4, %55, %59, %56, %60, %57, %61, %62) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %64 = "ta.AllocWorkspace"(%63) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %65:2 = "it.itree"(%63, %64) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %68:2 = scf.for %arg2 = %c0 to %21 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
      %69 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %70 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %71 = arith.index_cast %extracted : i64 to index
      %extracted_47 = tensor.extract %22[%70] : tensor<?xi64>
      %72 = arith.index_cast %extracted_47 : i64 to index
      %73:2 = scf.for %arg5 = %71 to %72 step %c1 iter_args(%arg6 = %arg3, %arg7 = %69) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %77 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %78 = arith.index_cast %77 : i64 to index
        %79 = arith.addi %78, %c1 : index
        %extracted_48 = tensor.extract %44[%78] : tensor<?xi64>
        %80 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %44[%79] : tensor<?xi64>
        %81 = arith.index_cast %extracted_49 : i64 to index
        %82:2 = scf.for %arg8 = %80 to %81 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %83 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %84 = arith.index_cast %83 : i64 to index
          %85 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %86 = arith.index_cast %85 : i64 to index
          %87 = "ta.SpTensorGetCrd"(%43, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %88 = arith.index_cast %87 : i64 to index
          %89 = "ta.TAExtractOp"(%20, %arg5, %arg2, %84) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %90 = "ta.TAExtractOp"(%43, %arg8, %78, %86) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %91 = arith.mulf %89, %90 : f64
          %92 = "ta.WorkspaceAccumulateOp"(%arg10, %88, %88, %91) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %92 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %82#0, %82#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %74 = "ta.SortCrdOp"(%73#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %75 = "ta.SpTensorGetNNZ"(%74) : (!ta.workspace<f64, i64, ?>) -> index
      %76:2 = scf.for %arg5 = %c0 to %75 step %c1 iter_args(%arg6 = %73#0, %arg7 = %74) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %77 = "ta.SpTensorGetCrd"(%arg7, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %78 = arith.index_cast %77 : i64 to index
        %79 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %80 = "ta.WorkspaceReadOp"(%arg7, %arg5, %78) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %81 = "ta.TAInsertOp"(%arg6, %arg2, %79, %arg2, %78, %80) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %81, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      scf.yield %76#0, %76#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
    }
    it.yield %68#0, %68#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.print"(%65#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %alloc_46 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_46[%c0] : memref<1xf64>
  %66 = "ta.SpTensorGetVals"(%65#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim = tensor.dim %66, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %66[%arg0] : tensor<?xf64>
    %68 = memref.load %alloc_46[%c0] : memref<1xf64>
    %69 = arith.addf %extracted, %68 : f64
    memref.store %69, %alloc_46[%c0] : memref<1xf64>
  }
  %67 = memref.load %alloc_46[%c0] : memref<1xf64>
  "ta.print"(%67) : (f64) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
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
  %42 = "it.DenseDomainOp"(%extracted, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_44 = index.constant 0
  %idx1_45 = index.constant 1
  %43 = index.add %extracted, %idx1_45
  %44 = tensor.empty(%43) : tensor<?xi64>
  %c0_i64_46 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_46 into %44[%idx0_44] : tensor<?xi64>
  %45 = tensor.empty(%extracted_43) : tensor<?xi64>
  %46 = builtin.unrealized_conversion_cast %idx0_44, %43, %idx0_44, %extracted_43, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %47:6 = "it.itree"(%idx0_44, %43, %idx0_44, %extracted_43, %44, %45) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %69 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %70:6 = builtin.unrealized_conversion_cast %69 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %71 = scf.forall (%arg6) in (%extracted) shared_outs(%arg7 = %70#4) -> (tensor<?xi64>) {
      %76 = builtin.unrealized_conversion_cast %arg6, %70#1, %c0, %70#3, %arg7, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %77 = arith.addi %arg6, %c1 : index
      %extracted_63 = tensor.extract %15[%arg6] : tensor<?xi64>
      %78 = arith.index_cast %extracted_63 : i64 to index
      %extracted_64 = tensor.extract %15[%77] : tensor<?xi64>
      %79 = arith.index_cast %extracted_64 : i64 to index
      %80:6 = scf.for %arg8 = %78 to %79 step %c1 iter_args(%arg9 = %arg6, %arg10 = %70#1, %arg11 = %c0, %arg12 = %70#3, %arg13 = %arg7, %arg14 = %70#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_67 = tensor.extract %16[%arg8] : tensor<?xi64>
        %86 = arith.index_cast %extracted_67 : i64 to index
        %87 = arith.addi %86, %c1 : index
        %extracted_68 = tensor.extract %36[%86] : tensor<?xi64>
        %88 = arith.index_cast %extracted_68 : i64 to index
        %extracted_69 = tensor.extract %36[%87] : tensor<?xi64>
        %89 = arith.index_cast %extracted_69 : i64 to index
        %90:6 = scf.for %arg15 = %88 to %89 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %extracted_70 = tensor.extract %37[%arg15] : tensor<?xi64>
          %92 = arith.index_cast %extracted_70 : i64 to index
          %idx1_71 = index.constant 1
          %93 = index.add %arg16, %idx1_71
          %94 = arith.index_cast %93 : index to i64
          %extracted_72 = tensor.extract %arg21[%92] : tensor<?xi64>
          %95 = arith.cmpi eq, %94, %extracted_72 : i64
          %96 = scf.if %95 -> (index) {
            scf.yield %arg18 : index
          } else {
            %inserted_73 = tensor.insert %94 into %arg21[%92] : tensor<?xi64>
            %98 = index.add %arg18, %idx1_71
            scf.yield %98 : index
          }
          %97 = builtin.unrealized_conversion_cast %arg16, %arg17, %96, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg16, %arg17, %96, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %91 = builtin.unrealized_conversion_cast %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %90#0, %90#1, %90#2, %90#3, %90#4, %90#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %81 = builtin.unrealized_conversion_cast %80#0, %80#1, %80#2, %80#3, %80#4, %80#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_65 = index.constant 1
      %82 = index.add %80#0, %idx1_65
      %83 = arith.index_cast %80#2 : index to i64
      %inserted_66 = tensor.insert %83 into %80#4[%82] : tensor<?xi64>
      %84 = builtin.unrealized_conversion_cast %82, %80#1, %80#2, %80#3, %80#4, %80#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %85:6 = builtin.unrealized_conversion_cast %84 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %85#4[%arg6] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%arg6] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %72:2 = scf.for %arg6 = %c0 to %extracted step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %71) -> (i64, tensor<?xi64>) {
      %extracted_63 = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %inserted_64 = tensor.insert %arg7 into %arg8[%arg6] : tensor<?xi64>
      %76 = arith.addi %arg7, %extracted_63 : i64
      scf.yield %76, %inserted_64 : i64, tensor<?xi64>
    }
    %inserted_62 = tensor.insert %72#0 into %72#1[%extracted] : tensor<?xi64>
    %73 = arith.addi %extracted, %c1 : index
    %74 = arith.index_cast %72#0 : i64 to index
    %75 = builtin.unrealized_conversion_cast %73, %70#1, %74, %70#3, %inserted_62, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %73, %70#1, %74, %70#3, %inserted_62, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %48 = builtin.unrealized_conversion_cast %47#0, %47#1, %47#2, %47#3, %47#4, %47#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_47 = index.constant 0
  %idx1_48 = index.constant 1
  %49 = arith.index_cast %extracted : index to i64
  %idx1_49 = index.constant 1
  %50 = tensor.empty(%idx1_49) : tensor<?xi64>
  %inserted_50 = tensor.insert %49 into %50[%idx0_47] : tensor<?xi64>
  %51 = tensor.empty() : tensor<0xi64>
  %52 = tensor.empty() : tensor<0xi64>
  %53 = tensor.empty() : tensor<0xi64>
  %54 = index.mul %idx1_48, %extracted
  %55 = tensor.empty(%47#2) : tensor<?xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = tensor.empty(%47#2) : tensor<?xf64>
  %cst_51 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_47 to %47#2 step %idx1_48 {
    %inserted_62 = tensor.insert %cst_51 into %58[%arg0] : tensor<?xf64>
  }
  %from_elements_52 = tensor.from_elements %extracted, %47#3 : tensor<2xindex>
  %idx0_53 = index.constant 0
  %idx0_54 = index.constant 0
  %59 = builtin.unrealized_conversion_cast %from_elements_52, %idx0_53, %50, %idx0_54, %47#4, %55, %58 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1_55 = index.constant 1
  %extracted_56 = tensor.extract %from_elements_52[%idx1_55] : tensor<2xindex>
  %60 = bufferization.alloc_tensor(%extracted_56) : tensor<?xf64>
  %c1_i32_57 = arith.constant 1 : i32
  %61 = bufferization.alloc_tensor(%extracted_56) : tensor<?xi32>
  %idx0_58 = index.constant 0
  %62 = bufferization.alloc_tensor(%extracted_56) : tensor<?xi64>
  %63 = builtin.unrealized_conversion_cast %60, %c1_i32_57, %61, %idx0_58, %62 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %64:12 = "it.itree"(%from_elements_52, %idx0_53, %50, %idx0_54, %47#4, %55, %58, %60, %c1_i32_57, %61, %idx0_58, %62) <{operandSegmentSizes = array<i32: 7, 5>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: tensor<?xf64>, %arg8: i32, %arg9: tensor<?xi32>, %arg10: index, %arg11: tensor<?xi64>):
    %69:12 = scf.for %arg12 = %c0 to %extracted step %c1 iter_args(%arg13 = %arg0, %arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %arg9, %arg23 = %arg10, %arg24 = %arg11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %c1_i32_62 = arith.constant 1 : i32
      %72 = arith.addi %arg21, %c1_i32_62 : i32
      %idx0_63 = index.constant 0
      %73 = builtin.unrealized_conversion_cast %arg20, %72, %arg22, %idx0_63, %arg24 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %74 = arith.addi %arg12, %c1 : index
      %extracted_64 = tensor.extract %15[%arg12] : tensor<?xi64>
      %75 = arith.index_cast %extracted_64 : i64 to index
      %extracted_65 = tensor.extract %15[%74] : tensor<?xi64>
      %76 = arith.index_cast %extracted_65 : i64 to index
      %77:12 = scf.for %arg25 = %75 to %76 step %c1 iter_args(%arg26 = %arg13, %arg27 = %arg14, %arg28 = %arg15, %arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %72, %arg35 = %arg22, %arg36 = %idx0_63, %arg37 = %arg24) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_67 = tensor.extract %16[%arg25] : tensor<?xi64>
        %85 = arith.index_cast %extracted_67 : i64 to index
        %86 = arith.addi %85, %c1 : index
        %extracted_68 = tensor.extract %36[%85] : tensor<?xi64>
        %87 = arith.index_cast %extracted_68 : i64 to index
        %extracted_69 = tensor.extract %36[%86] : tensor<?xi64>
        %88 = arith.index_cast %extracted_69 : i64 to index
        %89:12 = scf.for %arg38 = %87 to %88 step %c1 iter_args(%arg39 = %arg26, %arg40 = %arg27, %arg41 = %arg28, %arg42 = %arg29, %arg43 = %arg30, %arg44 = %arg31, %arg45 = %arg32, %arg46 = %arg33, %arg47 = %arg34, %arg48 = %arg35, %arg49 = %arg36, %arg50 = %arg37) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_70 = tensor.extract %16[%arg25] : tensor<?xi64>
          %92 = arith.index_cast %extracted_70 : i64 to index
          %extracted_71 = tensor.extract %37[%arg38] : tensor<?xi64>
          %93 = arith.index_cast %extracted_71 : i64 to index
          %extracted_72 = tensor.extract %37[%arg38] : tensor<?xi64>
          %94 = arith.index_cast %extracted_72 : i64 to index
          %extracted_73 = tensor.extract %19[%arg25] : tensor<?xf64>
          %extracted_74 = tensor.extract %40[%arg38] : tensor<?xf64>
          %95 = arith.mulf %extracted_73, %extracted_74 : f64
          %extracted_75 = tensor.extract %arg48[%94] : tensor<?xi32>
          %96 = arith.cmpi eq, %extracted_75, %arg47 : i32
          %97:4 = scf.if %96 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_76 = tensor.extract %arg46[%94] : tensor<?xf64>
            %99 = arith.addf %extracted_76, %95 : f64
            %inserted_77 = tensor.insert %99 into %arg46[%94] : tensor<?xf64>
            scf.yield %arg48, %arg49, %arg50, %inserted_77 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_76 = tensor.insert %arg47 into %arg48[%94] : tensor<?xi32>
            %99 = arith.index_cast %94 : index to i64
            %inserted_77 = tensor.insert %99 into %arg50[%arg49] : tensor<?xi64>
            %idx1_78 = index.constant 1
            %100 = index.add %arg49, %idx1_78
            %inserted_79 = tensor.insert %95 into %arg46[%94] : tensor<?xf64>
            scf.yield %inserted_76, %100, %inserted_77, %inserted_79 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          %98 = builtin.unrealized_conversion_cast %97#3, %arg47, %97#0, %97#1, %97#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
          scf.yield %arg39, %arg40, %arg41, %arg42, %arg43, %arg44, %arg45, %97#3, %arg47, %97#0, %97#1, %97#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        }
        %90 = builtin.unrealized_conversion_cast %89#0, %89#1, %89#2, %89#3, %89#4, %89#5, %89#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %91 = builtin.unrealized_conversion_cast %89#7, %89#8, %89#9, %89#10, %89#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %89#0, %89#1, %89#2, %89#3, %89#4, %89#5, %89#6, %89#7, %89#8, %89#9, %89#10, %89#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %78 = builtin.unrealized_conversion_cast %77#0, %77#1, %77#2, %77#3, %77#4, %77#5, %77#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %79 = builtin.unrealized_conversion_cast %77#7, %77#8, %77#9, %77#10, %77#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %idx0_66 = index.constant 0
      %80 = "ta.TensorSortOp"(%77#11, %idx0_66, %77#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %81 = builtin.unrealized_conversion_cast %77#7, %77#8, %77#9, %77#10, %80 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %82:12 = scf.for %arg25 = %c0 to %77#10 step %c1 iter_args(%arg26 = %77#0, %arg27 = %77#1, %arg28 = %77#2, %arg29 = %77#3, %arg30 = %77#4, %arg31 = %77#5, %arg32 = %77#6, %arg33 = %77#7, %arg34 = %77#8, %arg35 = %77#9, %arg36 = %77#10, %arg37 = %80) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_67 = tensor.extract %arg37[%arg25] : tensor<?xi64>
        %85 = arith.index_cast %extracted_67 : i64 to index
        %extracted_68 = tensor.extract %arg33[%85] : tensor<?xf64>
        %86 = arith.index_cast %85 : index to i64
        %inserted_69 = tensor.insert %86 into %arg31[%arg29] : tensor<?xi64>
        %idx1_70 = index.constant 1
        %87 = index.add %arg29, %idx1_70
        %inserted_71 = tensor.insert %extracted_68 into %arg32[%arg29] : tensor<?xf64>
        %88 = builtin.unrealized_conversion_cast %arg26, %arg27, %arg28, %87, %arg30, %inserted_69, %inserted_71 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %arg26, %arg27, %arg28, %87, %arg30, %inserted_69, %inserted_71, %arg33, %arg34, %arg35, %arg36, %arg37 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %83 = builtin.unrealized_conversion_cast %82#0, %82#1, %82#2, %82#3, %82#4, %82#5, %82#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %84 = builtin.unrealized_conversion_cast %82#7, %82#8, %82#9, %82#10, %82#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.yield %82#0, %82#1, %82#2, %82#3, %82#4, %82#5, %82#6, %82#7, %82#8, %82#9, %82#10, %82#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %70 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %69#3, %69#4, %69#5, %69#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %71 = builtin.unrealized_conversion_cast %69#7, %69#8, %69#9, %69#10, %69#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    it.yield %69#0, %69#1, %69#2, %69#3, %69#4, %69#5, %69#6, %69#7, %69#8, %69#9, %69#10, %69#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>)
  %65 = builtin.unrealized_conversion_cast %64#0, %64#1, %64#2, %64#3, %64#4, %64#5, %64#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %66 = builtin.unrealized_conversion_cast %64#7, %64#8, %64#9, %64#10, %64#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %67 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_59 = index.constant 0
  %inserted_60 = tensor.insert %idx-1 into %67[%idx0_59] : tensor<1xindex>
  "ta.print"(%64#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_60) : (tensor<1xindex>) -> ()
  "ta.print"(%64#4) : (tensor<?xi64>) -> ()
  "ta.print"(%64#5) : (tensor<?xi64>) -> ()
  "ta.print"(%64#6) : (tensor<?xf64>) -> ()
  %alloc_61 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_61[%c0] : memref<1xf64>
  %dim = tensor.dim %64#6, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted_62 = tensor.extract %64#6[%arg0] : tensor<?xf64>
    %69 = memref.load %alloc_61[%c0] : memref<1xf64>
    %70 = arith.addf %extracted_62, %69 : f64
    memref.store %70, %alloc_61[%c0] : memref<1xf64>
  }
  %68 = memref.load %alloc_61[%c0] : memref<1xf64>
  "ta.print"(%68) : (f64) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
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
  %42 = "it.DenseDomainOp"(%9, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_43 = index.constant 0
  %idx1_44 = index.constant 1
  %43 = index.add %9, %idx1_44
  %44 = tensor.empty(%43) : tensor<?xi64>
  %c0_i64_45 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_45 into %44[%idx0_43] : tensor<?xi64>
  %45 = tensor.empty(%31) : tensor<?xi64>
  %46 = builtin.unrealized_conversion_cast %idx0_43, %43, %idx0_43, %31, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %47 = builtin.unrealized_conversion_cast %idx0_43, %43, %idx0_43, %31, %44, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %48 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %44) -> (tensor<?xi64>) {
    %76 = builtin.unrealized_conversion_cast %arg0, %43, %c0, %31, %arg1, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %77 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %78 = arith.index_cast %extracted : i64 to index
    %extracted_61 = tensor.extract %15[%77] : tensor<?xi64>
    %79 = arith.index_cast %extracted_61 : i64 to index
    %80:6 = scf.for %arg2 = %78 to %79 step %c1 iter_args(%arg3 = %arg0, %arg4 = %43, %arg5 = %c0, %arg6 = %31, %arg7 = %arg1, %arg8 = %45) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %extracted_64 = tensor.extract %16[%arg2] : tensor<?xi64>
      %85 = arith.index_cast %extracted_64 : i64 to index
      %86 = arith.addi %85, %c1 : index
      %extracted_65 = tensor.extract %36[%85] : tensor<?xi64>
      %87 = arith.index_cast %extracted_65 : i64 to index
      %extracted_66 = tensor.extract %36[%86] : tensor<?xi64>
      %88 = arith.index_cast %extracted_66 : i64 to index
      %89:6 = scf.for %arg9 = %87 to %88 step %c1 iter_args(%arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6, %arg14 = %arg7, %arg15 = %arg8) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_67 = tensor.extract %37[%arg9] : tensor<?xi64>
        %91 = arith.index_cast %extracted_67 : i64 to index
        %idx1_68 = index.constant 1
        %92 = index.add %arg10, %idx1_68
        %93 = arith.index_cast %92 : index to i64
        %extracted_69 = tensor.extract %arg15[%91] : tensor<?xi64>
        %94 = arith.cmpi eq, %93, %extracted_69 : i64
        %95 = scf.if %94 -> (index) {
          scf.yield %arg12 : index
        } else {
          %inserted_70 = tensor.insert %93 into %arg15[%91] : tensor<?xi64>
          %97 = index.add %arg12, %idx1_68
          scf.yield %97 : index
        }
        %96 = builtin.unrealized_conversion_cast %arg10, %arg11, %95, %arg13, %arg14, %arg15 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %arg10, %arg11, %95, %arg13, %arg14, %arg15 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %90 = builtin.unrealized_conversion_cast %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %81 = builtin.unrealized_conversion_cast %80#0, %80#1, %80#2, %80#3, %80#4, %80#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx1_62 = index.constant 1
    %82 = index.add %80#0, %idx1_62
    %83 = arith.index_cast %80#2 : index to i64
    %inserted_63 = tensor.insert %83 into %80#4[%82] : tensor<?xi64>
    %84 = builtin.unrealized_conversion_cast %82, %80#1, %80#2, %80#3, %80#4, %80#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %extracted_slice = tensor.extract_slice %80#4[%arg0] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%arg0] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %49:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %48) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %inserted_61 = tensor.insert %arg1 into %arg2[%arg0] : tensor<?xi64>
    %76 = arith.addi %arg1, %extracted : i64
    scf.yield %76, %inserted_61 : i64, tensor<?xi64>
  }
  %inserted_46 = tensor.insert %49#0 into %49#1[%9] : tensor<?xi64>
  %50 = arith.addi %9, %c1 : index
  %51 = arith.index_cast %49#0 : i64 to index
  %52 = builtin.unrealized_conversion_cast %50, %43, %51, %31, %inserted_46, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %53 = builtin.unrealized_conversion_cast %50, %43, %51, %31, %inserted_46, %45 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
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
  %64 = builtin.unrealized_conversion_cast %from_elements_52, %idx0_53, %55, %idx0_54, %inserted_46, %60, %63 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1_55 = index.constant 1
  %65 = bufferization.alloc_tensor(%31) : tensor<?xf64>
  %c1_i32_56 = arith.constant 1 : i32
  %66 = bufferization.alloc_tensor(%31) : tensor<?xi32>
  %idx0_57 = index.constant 0
  %67 = bufferization.alloc_tensor(%31) : tensor<?xi64>
  %68 = builtin.unrealized_conversion_cast %65, %c1_i32_56, %66, %idx0_57, %67 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %69:12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %from_elements_52, %arg2 = %idx0_53, %arg3 = %55, %arg4 = %idx0_54, %arg5 = %inserted_46, %arg6 = %60, %arg7 = %63, %arg8 = %65, %arg9 = %c1_i32_56, %arg10 = %66, %arg11 = %idx0_57, %arg12 = %67) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
    %c1_i32_61 = arith.constant 1 : i32
    %76 = arith.addi %arg9, %c1_i32_61 : i32
    %idx0_62 = index.constant 0
    %77 = builtin.unrealized_conversion_cast %arg8, %76, %arg10, %idx0_62, %arg12 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %78 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %79 = arith.index_cast %extracted : i64 to index
    %extracted_63 = tensor.extract %15[%78] : tensor<?xi64>
    %80 = arith.index_cast %extracted_63 : i64 to index
    %81:12 = scf.for %arg13 = %79 to %80 step %c1 iter_args(%arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %76, %arg23 = %arg10, %arg24 = %idx0_62, %arg25 = %arg12) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_65 = tensor.extract %16[%arg13] : tensor<?xi64>
      %89 = arith.index_cast %extracted_65 : i64 to index
      %90 = arith.addi %89, %c1 : index
      %extracted_66 = tensor.extract %36[%89] : tensor<?xi64>
      %91 = arith.index_cast %extracted_66 : i64 to index
      %extracted_67 = tensor.extract %36[%90] : tensor<?xi64>
      %92 = arith.index_cast %extracted_67 : i64 to index
      %93:12 = scf.for %arg26 = %91 to %92 step %c1 iter_args(%arg27 = %arg14, %arg28 = %arg15, %arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %arg21, %arg35 = %arg22, %arg36 = %arg23, %arg37 = %arg24, %arg38 = %arg25) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_68 = tensor.extract %16[%arg13] : tensor<?xi64>
        %96 = arith.index_cast %extracted_68 : i64 to index
        %extracted_69 = tensor.extract %37[%arg26] : tensor<?xi64>
        %97 = arith.index_cast %extracted_69 : i64 to index
        %extracted_70 = tensor.extract %37[%arg26] : tensor<?xi64>
        %98 = arith.index_cast %extracted_70 : i64 to index
        %extracted_71 = tensor.extract %19[%arg13] : tensor<?xf64>
        %extracted_72 = tensor.extract %40[%arg26] : tensor<?xf64>
        %99 = arith.mulf %extracted_71, %extracted_72 : f64
        %extracted_73 = tensor.extract %arg36[%98] : tensor<?xi32>
        %100 = arith.cmpi eq, %extracted_73, %arg35 : i32
        %101:4 = scf.if %100 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_74 = tensor.extract %arg34[%98] : tensor<?xf64>
          %103 = arith.addf %extracted_74, %99 : f64
          %inserted_75 = tensor.insert %103 into %arg34[%98] : tensor<?xf64>
          scf.yield %arg36, %arg37, %arg38, %inserted_75 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_74 = tensor.insert %arg35 into %arg36[%98] : tensor<?xi32>
          %103 = arith.index_cast %98 : index to i64
          %inserted_75 = tensor.insert %103 into %arg38[%arg37] : tensor<?xi64>
          %idx1_76 = index.constant 1
          %104 = index.add %arg37, %idx1_76
          %inserted_77 = tensor.insert %99 into %arg34[%98] : tensor<?xf64>
          scf.yield %inserted_74, %104, %inserted_75, %inserted_77 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        %102 = builtin.unrealized_conversion_cast %101#3, %arg35, %101#0, %101#1, %101#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %101#3, %arg35, %101#0, %101#1, %101#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %94 = builtin.unrealized_conversion_cast %93#0, %93#1, %93#2, %93#3, %93#4, %93#5, %93#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %95 = builtin.unrealized_conversion_cast %93#7, %93#8, %93#9, %93#10, %93#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.yield %93#0, %93#1, %93#2, %93#3, %93#4, %93#5, %93#6, %93#7, %93#8, %93#9, %93#10, %93#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %82 = builtin.unrealized_conversion_cast %81#0, %81#1, %81#2, %81#3, %81#4, %81#5, %81#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %83 = builtin.unrealized_conversion_cast %81#7, %81#8, %81#9, %81#10, %81#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %idx0_64 = index.constant 0
    %84 = "ta.TensorSortOp"(%81#11, %idx0_64, %81#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %85 = builtin.unrealized_conversion_cast %81#7, %81#8, %81#9, %81#10, %84 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %86:12 = scf.for %arg13 = %c0 to %81#10 step %c1 iter_args(%arg14 = %81#0, %arg15 = %81#1, %arg16 = %81#2, %arg17 = %81#3, %arg18 = %81#4, %arg19 = %81#5, %arg20 = %81#6, %arg21 = %81#7, %arg22 = %81#8, %arg23 = %81#9, %arg24 = %81#10, %arg25 = %84) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_65 = tensor.extract %arg25[%arg13] : tensor<?xi64>
      %89 = arith.index_cast %extracted_65 : i64 to index
      %extracted_66 = tensor.extract %arg21[%89] : tensor<?xf64>
      %90 = arith.index_cast %89 : index to i64
      %inserted_67 = tensor.insert %90 into %arg19[%arg17] : tensor<?xi64>
      %idx1_68 = index.constant 1
      %91 = index.add %arg17, %idx1_68
      %inserted_69 = tensor.insert %extracted_66 into %arg20[%arg17] : tensor<?xf64>
      %92 = builtin.unrealized_conversion_cast %arg14, %arg15, %arg16, %91, %arg18, %inserted_67, %inserted_69 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %arg14, %arg15, %arg16, %91, %arg18, %inserted_67, %inserted_69, %arg21, %arg22, %arg23, %arg24, %arg25 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %87 = builtin.unrealized_conversion_cast %86#0, %86#1, %86#2, %86#3, %86#4, %86#5, %86#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %88 = builtin.unrealized_conversion_cast %86#7, %86#8, %86#9, %86#10, %86#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    scf.yield %86#0, %86#1, %86#2, %86#3, %86#4, %86#5, %86#6, %86#7, %86#8, %86#9, %86#10, %86#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
  }
  %70 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %69#3, %69#4, %69#5, %69#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %71 = builtin.unrealized_conversion_cast %69#7, %69#8, %69#9, %69#10, %69#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %72 = builtin.unrealized_conversion_cast %69#0, %69#1, %69#2, %69#3, %69#4, %69#5, %69#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %73 = builtin.unrealized_conversion_cast %69#7, %69#8, %69#9, %69#10, %69#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %74 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_58 = index.constant 0
  %inserted_59 = tensor.insert %idx-1 into %74[%idx0_58] : tensor<1xindex>
  "ta.print"(%69#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_59) : (tensor<1xindex>) -> ()
  "ta.print"(%69#4) : (tensor<?xi64>) -> ()
  "ta.print"(%69#5) : (tensor<?xi64>) -> ()
  "ta.print"(%69#6) : (tensor<?xf64>) -> ()
  %alloc_60 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_60[%c0] : memref<1xf64>
  %dim = tensor.dim %69#6, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %69#6[%arg0] : tensor<?xf64>
    %76 = memref.load %alloc_60[%c0] : memref<1xf64>
    %77 = arith.addf %extracted, %76 : f64
    memref.store %77, %alloc_60[%c0] : memref<1xf64>
  }
  %75 = memref.load %alloc_60[%c0] : memref<1xf64>
  "ta.print"(%75) : (f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx-1 = index.constant -1
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
  %28 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%arg0] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %29:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %28) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %inserted_41 = tensor.insert %arg1 into %arg2[%arg0] : tensor<?xi64>
    %40 = arith.addi %arg1, %extracted : i64
    scf.yield %40, %inserted_41 : i64, tensor<?xi64>
  }
  %inserted = tensor.insert %29#0 into %29#1[%9] : tensor<?xi64>
  %30 = arith.index_cast %29#0 : i64 to index
  %31 = tensor.empty() : tensor<1xi64>
  %cast_38 = tensor.cast %31 : tensor<1xi64> to tensor<?xi64>
  %32 = tensor.empty(%30) : tensor<?xi64>
  %33 = tensor.empty(%30) : tensor<?xf64>
  %34 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %35 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %36 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %37:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %32, %arg3 = %33, %arg4 = %34, %arg5 = %c1_i32, %arg6 = %35, %arg7 = %36) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %40 = arith.addi %arg5, %c1_i32 : i32
    %41 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %10[%41] : tensor<?xi64>
    %43 = arith.index_cast %extracted_41 : i64 to index
    %44:4 = scf.for %arg8 = %42 to %43 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_42 = tensor.extract %11[%arg8] : tensor<?xi64>
      %47 = arith.index_cast %extracted_42 : i64 to index
      %48 = arith.addi %47, %c1 : index
      %extracted_43 = tensor.extract %23[%47] : tensor<?xi64>
      %49 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%48] : tensor<?xi64>
      %50 = arith.index_cast %extracted_44 : i64 to index
      %51:4 = scf.for %arg13 = %49 to %50 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %24[%arg13] : tensor<?xi64>
        %52 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %12[%arg8] : tensor<?xf64>
        %extracted_47 = tensor.extract %25[%arg13] : tensor<?xf64>
        %53 = arith.mulf %extracted_46, %extracted_47 : f64
        %extracted_48 = tensor.extract %arg15[%52] : tensor<?xi32>
        %54 = arith.cmpi eq, %extracted_48, %40 : i32
        %55:4 = scf.if %54 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_49 = tensor.extract %arg14[%52] : tensor<?xf64>
          %56 = arith.addf %extracted_49, %53 : f64
          %inserted_50 = tensor.insert %56 into %arg14[%52] : tensor<?xf64>
          scf.yield %arg15, %arg16, %arg17, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_49 = tensor.insert %40 into %arg15[%52] : tensor<?xi32>
          %inserted_50 = tensor.insert %extracted_45 into %arg17[%arg16] : tensor<?xi64>
          %56 = index.add %arg16, %idx1
          %inserted_51 = tensor.insert %53 into %arg14[%52] : tensor<?xf64>
          scf.yield %inserted_49, %56, %inserted_50, %inserted_51 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %55#3, %55#0, %55#1, %55#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %51#0, %51#1, %51#2, %51#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %45 = "ta.TensorSortOp"(%44#3, %idx0, %44#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %46:3 = scf.for %arg8 = %c0 to %44#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_42 = tensor.extract %45[%arg8] : tensor<?xi64>
      %47 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %44#0[%47] : tensor<?xf64>
      %inserted_44 = tensor.insert %extracted_42 into %arg10[%arg9] : tensor<?xi64>
      %48 = index.add %arg9, %idx1
      %inserted_45 = tensor.insert %extracted_43 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %48, %inserted_44, %inserted_45 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %46#0, %46#1, %46#2, %44#0, %40, %44#1, %45 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %38 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %38[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%inserted) : (tensor<?xi64>) -> ()
  "ta.print"(%37#1) : (tensor<?xi64>) -> ()
  "ta.print"(%37#2) : (tensor<?xf64>) -> ()
  %alloc_40 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_40[%c0] : memref<1xf64>
  %dim = tensor.dim %37#2, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %37#2[%arg0] : tensor<?xf64>
    %40 = memref.load %alloc_40[%c0] : memref<1xf64>
    %41 = arith.addf %extracted, %40 : f64
    memref.store %41, %alloc_40[%c0] : memref<1xf64>
  }
  %39 = memref.load %alloc_40[%c0] : memref<1xf64>
  "ta.print"(%39) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx-1 = index.constant -1
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
  %28 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%arg0] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %29:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %28) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %inserted_41 = tensor.insert %arg1 into %arg2[%arg0] : tensor<?xi64>
    %40 = arith.addi %arg1, %extracted : i64
    scf.yield %40, %inserted_41 : i64, tensor<?xi64>
  }
  %inserted = tensor.insert %29#0 into %29#1[%9] : tensor<?xi64>
  %30 = arith.index_cast %29#0 : i64 to index
  %31 = tensor.empty() : tensor<1xi64>
  %cast_38 = tensor.cast %31 : tensor<1xi64> to tensor<?xi64>
  %32 = tensor.empty(%30) : tensor<?xi64>
  %33 = tensor.empty(%30) : tensor<?xf64>
  %34 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %35 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %36 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %37:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %32, %arg3 = %33, %arg4 = %34, %arg5 = %c1_i32, %arg6 = %35, %arg7 = %36) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %40 = arith.addi %arg5, %c1_i32 : i32
    %41 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %10[%41] : tensor<?xi64>
    %43 = arith.index_cast %extracted_41 : i64 to index
    %44:4 = scf.for %arg8 = %42 to %43 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_42 = tensor.extract %11[%arg8] : tensor<?xi64>
      %47 = arith.index_cast %extracted_42 : i64 to index
      %48 = arith.addi %47, %c1 : index
      %extracted_43 = tensor.extract %23[%47] : tensor<?xi64>
      %49 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%48] : tensor<?xi64>
      %50 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
      %51:4 = scf.for %arg13 = %49 to %50 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_46 = tensor.extract %24[%arg13] : tensor<?xi64>
        %52 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %25[%arg13] : tensor<?xf64>
        %53 = arith.mulf %extracted_45, %extracted_47 : f64
        %extracted_48 = tensor.extract %arg15[%52] : tensor<?xi32>
        %54 = arith.cmpi eq, %extracted_48, %40 : i32
        %55:4 = scf.if %54 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_49 = tensor.extract %arg14[%52] : tensor<?xf64>
          %56 = arith.addf %extracted_49, %53 : f64
          %inserted_50 = tensor.insert %56 into %arg14[%52] : tensor<?xf64>
          scf.yield %arg15, %arg16, %arg17, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_49 = tensor.insert %40 into %arg15[%52] : tensor<?xi32>
          %inserted_50 = tensor.insert %extracted_46 into %arg17[%arg16] : tensor<?xi64>
          %56 = index.add %arg16, %idx1
          %inserted_51 = tensor.insert %53 into %arg14[%52] : tensor<?xf64>
          scf.yield %inserted_49, %56, %inserted_50, %inserted_51 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %55#3, %55#0, %55#1, %55#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %51#0, %51#1, %51#2, %51#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %45 = "ta.TensorSortOp"(%44#3, %idx0, %44#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %46:3 = scf.for %arg8 = %c0 to %44#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_42 = tensor.extract %45[%arg8] : tensor<?xi64>
      %47 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %44#0[%47] : tensor<?xf64>
      %inserted_44 = tensor.insert %extracted_42 into %arg10[%arg9] : tensor<?xi64>
      %48 = index.add %arg9, %idx1
      %inserted_45 = tensor.insert %extracted_43 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %48, %inserted_44, %inserted_45 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %46#0, %46#1, %46#2, %44#0, %40, %44#1, %45 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %38 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %38[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%inserted) : (tensor<?xi64>) -> ()
  "ta.print"(%37#1) : (tensor<?xi64>) -> ()
  "ta.print"(%37#2) : (tensor<?xf64>) -> ()
  %alloc_40 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_40[%c0] : memref<1xf64>
  %dim = tensor.dim %37#2, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %37#2[%arg0] : tensor<?xf64>
    %40 = memref.load %alloc_40[%c0] : memref<1xf64>
    %41 = arith.addf %extracted, %40 : f64
    memref.store %41, %alloc_40[%c0] : memref<1xf64>
  }
  %39 = memref.load %alloc_40[%c0] : memref<1xf64>
  "ta.print"(%39) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx-1 = index.constant -1
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
  %28 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%arg0] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %29:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %28) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %inserted_41 = tensor.insert %arg1 into %arg2[%arg0] : tensor<?xi64>
    %40 = arith.addi %arg1, %extracted : i64
    scf.yield %40, %inserted_41 : i64, tensor<?xi64>
  }
  %inserted = tensor.insert %29#0 into %29#1[%9] : tensor<?xi64>
  %30 = arith.index_cast %29#0 : i64 to index
  %31 = tensor.empty() : tensor<1xi64>
  %cast_38 = tensor.cast %31 : tensor<1xi64> to tensor<?xi64>
  %32 = tensor.empty(%30) : tensor<?xi64>
  %33 = tensor.empty(%30) : tensor<?xf64>
  %34 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %35 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %36 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %37:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %32, %arg3 = %33, %arg4 = %34, %arg5 = %c1_i32, %arg6 = %35, %arg7 = %36) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %40 = arith.addi %arg5, %c1_i32 : i32
    %41 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted : i64 to index
    %extracted_41 = tensor.extract %10[%41] : tensor<?xi64>
    %43 = arith.index_cast %extracted_41 : i64 to index
    %44:4 = scf.for %arg8 = %42 to %43 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_42 = tensor.extract %11[%arg8] : tensor<?xi64>
      %47 = arith.index_cast %extracted_42 : i64 to index
      %48 = arith.addi %47, %c1 : index
      %extracted_43 = tensor.extract %23[%47] : tensor<?xi64>
      %49 = arith.index_cast %extracted_43 : i64 to index
      %extracted_44 = tensor.extract %23[%48] : tensor<?xi64>
      %50 = arith.index_cast %extracted_44 : i64 to index
      %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
      %51:4 = scf.for %arg13 = %49 to %50 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_46 = tensor.extract %24[%arg13] : tensor<?xi64>
        %52 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %25[%arg13] : tensor<?xf64>
        %53 = arith.mulf %extracted_45, %extracted_47 : f64
        %extracted_48 = tensor.extract %arg15[%52] : tensor<?xi32>
        %54 = arith.cmpi eq, %extracted_48, %40 : i32
        %55:4 = scf.if %54 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_49 = tensor.extract %arg14[%52] : tensor<?xf64>
          %56 = arith.addf %extracted_49, %53 : f64
          %inserted_50 = tensor.insert %56 into %arg14[%52] : tensor<?xf64>
          scf.yield %arg15, %arg16, %arg17, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_49 = tensor.insert %40 into %arg15[%52] : tensor<?xi32>
          %inserted_50 = tensor.insert %extracted_46 into %arg17[%arg16] : tensor<?xi64>
          %56 = index.add %arg16, %idx1
          %inserted_51 = tensor.insert %53 into %arg14[%52] : tensor<?xf64>
          scf.yield %inserted_49, %56, %inserted_50, %inserted_51 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %55#3, %55#0, %55#1, %55#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %51#0, %51#1, %51#2, %51#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %45 = "ta.TensorSortOp"(%44#3, %idx0, %44#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %46:3 = scf.for %arg8 = %c0 to %44#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_42 = tensor.extract %45[%arg8] : tensor<?xi64>
      %47 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %44#0[%47] : tensor<?xf64>
      %inserted_44 = tensor.insert %extracted_42 into %arg10[%arg9] : tensor<?xi64>
      %48 = index.add %arg9, %idx1
      %inserted_45 = tensor.insert %extracted_43 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %48, %inserted_44, %inserted_45 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %46#0, %46#1, %46#2, %44#0, %40, %44#1, %45 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %38 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_39 = tensor.insert %idx-1 into %38[%idx0] : tensor<1xindex>
  "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
  "ta.print"(%inserted) : (tensor<?xi64>) -> ()
  "ta.print"(%37#1) : (tensor<?xi64>) -> ()
  "ta.print"(%37#2) : (tensor<?xf64>) -> ()
  %alloc_40 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_40[%c0] : memref<1xf64>
  %dim = tensor.dim %37#2, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %37#2[%arg0] : tensor<?xf64>
    %40 = memref.load %alloc_40[%c0] : memref<1xf64>
    %41 = arith.addf %extracted, %40 : f64
    memref.store %41, %alloc_40[%c0] : memref<1xf64>
  }
  %39 = memref.load %alloc_40[%c0] : memref<1xf64>
  "ta.print"(%39) : (f64) -> ()
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
    %28 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%arg0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %29:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %28) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %inserted_41 = tensor.insert %arg1 into %arg2[%arg0] : tensor<?xi64>
      %40 = arith.addi %arg1, %extracted : i64
      scf.yield %40, %inserted_41 : i64, tensor<?xi64>
    }
    %inserted = tensor.insert %29#0 into %29#1[%9] : tensor<?xi64>
    %30 = arith.index_cast %29#0 : i64 to index
    %31 = tensor.empty() : tensor<1xi64>
    %cast_38 = tensor.cast %31 : tensor<1xi64> to tensor<?xi64>
    %32 = tensor.empty(%30) : tensor<?xi64>
    %33 = tensor.empty(%30) : tensor<?xf64>
    %34 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %35 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %36 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %37:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %32, %arg3 = %33, %arg4 = %34, %arg5 = %c1_i32, %arg6 = %35, %arg7 = %36) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %40 = arith.addi %arg5, %c1_i32 : i32
      %41 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %10[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_41 : i64 to index
      %44:4 = scf.for %arg8 = %42 to %43 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_42 = tensor.extract %11[%arg8] : tensor<?xi64>
        %47 = arith.index_cast %extracted_42 : i64 to index
        %48 = arith.addi %47, %c1 : index
        %extracted_43 = tensor.extract %23[%47] : tensor<?xi64>
        %49 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %23[%48] : tensor<?xi64>
        %50 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
        %51:4 = scf.for %arg13 = %49 to %50 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_46 = tensor.extract %24[%arg13] : tensor<?xi64>
          %52 = arith.index_cast %extracted_46 : i64 to index
          %extracted_47 = tensor.extract %25[%arg13] : tensor<?xf64>
          %53 = arith.mulf %extracted_45, %extracted_47 : f64
          %extracted_48 = tensor.extract %arg15[%52] : tensor<?xi32>
          %54 = arith.cmpi eq, %extracted_48, %40 : i32
          %55:4 = scf.if %54 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_49 = tensor.extract %arg14[%52] : tensor<?xf64>
            %56 = arith.addf %extracted_49, %53 : f64
            %inserted_50 = tensor.insert %56 into %arg14[%52] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_49 = tensor.insert %40 into %arg15[%52] : tensor<?xi32>
            %inserted_50 = tensor.insert %extracted_46 into %arg17[%arg16] : tensor<?xi64>
            %56 = index.add %arg16, %idx1
            %inserted_51 = tensor.insert %53 into %arg14[%52] : tensor<?xf64>
            scf.yield %inserted_49, %56, %inserted_50, %inserted_51 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %55#3, %55#0, %55#1, %55#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %51#0, %51#1, %51#2, %51#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %45 = "ta.TensorSortOp"(%44#3, %idx0, %44#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %46:3 = scf.for %arg8 = %c0 to %44#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_42 = tensor.extract %45[%arg8] : tensor<?xi64>
        %47 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %44#0[%47] : tensor<?xf64>
        %inserted_44 = tensor.insert %extracted_42 into %arg10[%arg9] : tensor<?xi64>
        %48 = index.add %arg9, %idx1
        %inserted_45 = tensor.insert %extracted_43 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %48, %inserted_44, %inserted_45 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %46#0, %46#1, %46#2, %44#0, %40, %44#1, %45 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %38 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %38[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%inserted) : (tensor<?xi64>) -> ()
    "ta.print"(%37#1) : (tensor<?xi64>) -> ()
    "ta.print"(%37#2) : (tensor<?xf64>) -> ()
    %alloc_40 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_40[%c0] : memref<1xf64>
    %dim = tensor.dim %37#2, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %37#2[%arg0] : tensor<?xf64>
      %40 = memref.load %alloc_40[%c0] : memref<1xf64>
      %41 = arith.addf %extracted, %40 : f64
      memref.store %41, %alloc_40[%c0] : memref<1xf64>
    }
    %39 = memref.load %alloc_40[%c0] : memref<1xf64>
    "ta.print"(%39) : (f64) -> ()
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
    %28 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%arg0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %29:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %28) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %inserted_41 = tensor.insert %arg1 into %arg2[%arg0] : tensor<?xi64>
      %40 = arith.addi %arg1, %extracted : i64
      scf.yield %40, %inserted_41 : i64, tensor<?xi64>
    }
    %inserted = tensor.insert %29#0 into %29#1[%9] : tensor<?xi64>
    %30 = arith.index_cast %29#0 : i64 to index
    %31 = tensor.empty() : tensor<1xi64>
    %cast_38 = tensor.cast %31 : tensor<1xi64> to tensor<?xi64>
    %32 = tensor.empty(%30) : tensor<?xi64>
    %33 = tensor.empty(%30) : tensor<?xf64>
    %34 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %35 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %36 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %37:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %32, %arg3 = %33, %arg4 = %34, %arg5 = %c1_i32, %arg6 = %35, %arg7 = %36) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %40 = arith.addi %arg5, %c1_i32 : i32
      %41 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %10[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_41 : i64 to index
      %44:4 = scf.for %arg8 = %42 to %43 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_42 = tensor.extract %11[%arg8] : tensor<?xi64>
        %47 = arith.index_cast %extracted_42 : i64 to index
        %48 = arith.addi %47, %c1 : index
        %extracted_43 = tensor.extract %23[%47] : tensor<?xi64>
        %49 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %23[%48] : tensor<?xi64>
        %50 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
        %51:4 = scf.for %arg13 = %49 to %50 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_46 = tensor.extract %24[%arg13] : tensor<?xi64>
          %52 = arith.index_cast %extracted_46 : i64 to index
          %extracted_47 = tensor.extract %25[%arg13] : tensor<?xf64>
          %53 = arith.mulf %extracted_45, %extracted_47 : f64
          %extracted_48 = tensor.extract %arg15[%52] : tensor<?xi32>
          %54 = arith.cmpi eq, %extracted_48, %40 : i32
          %55:4 = scf.if %54 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_49 = tensor.extract %arg14[%52] : tensor<?xf64>
            %56 = arith.addf %extracted_49, %53 : f64
            %inserted_50 = tensor.insert %56 into %arg14[%52] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_49 = tensor.insert %40 into %arg15[%52] : tensor<?xi32>
            %inserted_50 = tensor.insert %extracted_46 into %arg17[%arg16] : tensor<?xi64>
            %56 = index.add %arg16, %idx1
            %inserted_51 = tensor.insert %53 into %arg14[%52] : tensor<?xf64>
            scf.yield %inserted_49, %56, %inserted_50, %inserted_51 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %55#3, %55#0, %55#1, %55#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %51#0, %51#1, %51#2, %51#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %45 = "ta.TensorSortOp"(%44#3, %idx0, %44#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %46:3 = scf.for %arg8 = %c0 to %44#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_42 = tensor.extract %45[%arg8] : tensor<?xi64>
        %47 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %44#0[%47] : tensor<?xf64>
        %inserted_44 = tensor.insert %extracted_42 into %arg10[%arg9] : tensor<?xi64>
        %48 = index.add %arg9, %idx1
        %inserted_45 = tensor.insert %extracted_43 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %48, %inserted_44, %inserted_45 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %46#0, %46#1, %46#2, %44#0, %40, %44#1, %45 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %38 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %38[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%inserted) : (tensor<?xi64>) -> ()
    "ta.print"(%37#1) : (tensor<?xi64>) -> ()
    "ta.print"(%37#2) : (tensor<?xf64>) -> ()
    %alloc_40 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_40[%c0] : memref<1xf64>
    %dim = tensor.dim %37#2, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %37#2[%arg0] : tensor<?xf64>
      %40 = memref.load %alloc_40[%c0] : memref<1xf64>
      %41 = arith.addf %extracted, %40 : f64
      memref.store %41, %alloc_40[%c0] : memref<1xf64>
    }
    %39 = memref.load %alloc_40[%c0] : memref<1xf64>
    "ta.print"(%39) : (f64) -> ()
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
    %28 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %27) -> (tensor<?xi64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%arg0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %29:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %28) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %inserted_41 = tensor.insert %arg1 into %arg2[%arg0] : tensor<?xi64>
      %40 = arith.addi %arg1, %extracted : i64
      scf.yield %40, %inserted_41 : i64, tensor<?xi64>
    }
    %inserted = tensor.insert %29#0 into %29#1[%9] : tensor<?xi64>
    %30 = arith.index_cast %29#0 : i64 to index
    %31 = tensor.empty() : tensor<1xi64>
    %cast_38 = tensor.cast %31 : tensor<1xi64> to tensor<?xi64>
    %32 = tensor.empty(%30) : tensor<?xi64>
    %33 = tensor.empty(%30) : tensor<?xf64>
    %34 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %35 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %36 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %37:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %32, %arg3 = %33, %arg4 = %34, %arg5 = %c1_i32, %arg6 = %35, %arg7 = %36) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %40 = arith.addi %arg5, %c1_i32 : i32
      %41 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %10[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_41 : i64 to index
      %44:4 = scf.for %arg8 = %42 to %43 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_42 = tensor.extract %11[%arg8] : tensor<?xi64>
        %47 = arith.index_cast %extracted_42 : i64 to index
        %48 = arith.addi %47, %c1 : index
        %extracted_43 = tensor.extract %23[%47] : tensor<?xi64>
        %49 = arith.index_cast %extracted_43 : i64 to index
        %extracted_44 = tensor.extract %23[%48] : tensor<?xi64>
        %50 = arith.index_cast %extracted_44 : i64 to index
        %extracted_45 = tensor.extract %12[%arg8] : tensor<?xf64>
        %51:4 = scf.for %arg13 = %49 to %50 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_46 = tensor.extract %24[%arg13] : tensor<?xi64>
          %52 = arith.index_cast %extracted_46 : i64 to index
          %extracted_47 = tensor.extract %25[%arg13] : tensor<?xf64>
          %53 = arith.mulf %extracted_45, %extracted_47 : f64
          %extracted_48 = tensor.extract %arg15[%52] : tensor<?xi32>
          %54 = arith.cmpi eq, %extracted_48, %40 : i32
          %55:4 = scf.if %54 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_49 = tensor.extract %arg14[%52] : tensor<?xf64>
            %56 = arith.addf %extracted_49, %53 : f64
            %inserted_50 = tensor.insert %56 into %arg14[%52] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted_50 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_49 = tensor.insert %40 into %arg15[%52] : tensor<?xi32>
            %inserted_50 = tensor.insert %extracted_46 into %arg17[%arg16] : tensor<?xi64>
            %56 = index.add %arg16, %idx1
            %inserted_51 = tensor.insert %53 into %arg14[%52] : tensor<?xf64>
            scf.yield %inserted_49, %56, %inserted_50, %inserted_51 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %55#3, %55#0, %55#1, %55#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %51#0, %51#1, %51#2, %51#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %45 = "ta.TensorSortOp"(%44#3, %idx0, %44#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %46:3 = scf.for %arg8 = %c0 to %44#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_42 = tensor.extract %45[%arg8] : tensor<?xi64>
        %47 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %44#0[%47] : tensor<?xf64>
        %inserted_44 = tensor.insert %extracted_42 into %arg10[%arg9] : tensor<?xi64>
        %48 = index.add %arg9, %idx1
        %inserted_45 = tensor.insert %extracted_43 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %48, %inserted_44, %inserted_45 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %46#0, %46#1, %46#2, %44#0, %40, %44#1, %45 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %38 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_39 = tensor.insert %idx-1 into %38[%idx0] : tensor<1xindex>
    "ta.print"(%cast_38) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_39) : (tensor<1xindex>) -> ()
    "ta.print"(%inserted) : (tensor<?xi64>) -> ()
    "ta.print"(%37#1) : (tensor<?xi64>) -> ()
    "ta.print"(%37#2) : (tensor<?xf64>) -> ()
    %alloc_40 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_40[%c0] : memref<1xf64>
    %dim = tensor.dim %37#2, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %37#2[%arg0] : tensor<?xf64>
      %40 = memref.load %alloc_40[%c0] : memref<1xf64>
      %41 = arith.addf %extracted, %40 : f64
      memref.store %41, %alloc_40[%c0] : memref<1xf64>
    }
    %39 = memref.load %alloc_40[%c0] : memref<1xf64>
    "ta.print"(%39) : (f64) -> ()
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
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_48 = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_48 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
      %30 = memref.load %arg2[%arg0] : memref<?xi64>
      memref.store %arg1, %arg2[%arg0] : memref<?xi64>
      %31 = arith.addi %arg1, %30 : i64
      scf.yield %31, %arg2 : i64, memref<?xi64>
    }
    memref.store %21#0, %21#1[%9] : memref<?xi64>
    %22 = bufferization.to_tensor %21#1 : memref<?xi64>
    %23 = arith.index_cast %21#0 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
    %24 = bufferization.to_tensor %cast_40 : memref<?xi64>
    %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
    %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %25:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_41, %arg3 = %alloc_42, %arg4 = %alloc_43, %arg5 = %c1_i32, %arg6 = %alloc_44, %arg7 = %alloc_45) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
      %30 = arith.addi %arg5, %c1_i32 : i32
      %31 = arith.addi %arg0, %c1 : index
      %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_8[%31] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36:4 = scf.for %arg8 = %33 to %35 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %38 = memref.load %alloc_10[%arg8] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = arith.addi %39, %c1 : index
        %41 = memref.load %alloc_28[%39] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43 = memref.load %alloc_28[%40] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = memref.load %alloc_16[%arg8] : memref<?xf64>
        %46:4 = scf.for %arg13 = %42 to %44 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
          %47 = memref.load %alloc_30[%arg13] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = memref.load %alloc_36[%arg13] : memref<?xf64>
          %50 = arith.mulf %45, %49 : f64
          %51 = memref.load %arg15[%48] : memref<?xi32>
          %52 = arith.cmpi eq, %51, %30 : i32
          %53:4 = scf.if %52 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
            %54 = memref.load %arg14[%48] : memref<?xf64>
            %55 = arith.addf %54, %50 : f64
            memref.store %55, %arg14[%48] : memref<?xf64>
            scf.yield %arg15, %arg16, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          } else {
            memref.store %30, %arg15[%48] : memref<?xi32>
            memref.store %47, %arg17[%arg16] : memref<?xi64>
            %54 = index.add %arg16, %idx1
            memref.store %50, %arg14[%48] : memref<?xf64>
            scf.yield %arg15, %54, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          }
          scf.yield %53#3, %53#0, %53#1, %53#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        }
        scf.yield %46#0, %46#1, %46#2, %46#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      %cast_48 = memref.cast %36#3 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_48, %idx0, %36#2) : (memref<*xi64>, index, index) -> ()
      %37:3 = scf.for %arg8 = %c0 to %36#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
        %38 = memref.load %36#3[%arg8] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %36#0[%39] : memref<?xf64>
        memref.store %38, %arg10[%arg9] : memref<?xi64>
        %41 = index.add %arg9, %idx1
        memref.store %40, %arg11[%arg9] : memref<?xf64>
        scf.yield %41, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
      }
      scf.yield %37#0, %37#1, %37#2, %36#0, %30, %36#1, %36#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
    }
    %26 = bufferization.to_tensor %25#2 : memref<?xf64>
    %27 = bufferization.to_tensor %25#1 : memref<?xi64>
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %28 = bufferization.to_tensor %alloc_46 : memref<1xindex>
    "ta.print"(%24) : (tensor<?xi64>) -> ()
    "ta.print"(%28) : (tensor<1xindex>) -> ()
    "ta.print"(%22) : (tensor<?xi64>) -> ()
    "ta.print"(%27) : (tensor<?xi64>) -> ()
    "ta.print"(%26) : (tensor<?xf64>) -> ()
    %alloc_47 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_47[%c0] : memref<1xf64>
    %dim = memref.dim %25#2, %c0 : memref<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %30 = memref.load %25#2[%arg0] : memref<?xf64>
      %31 = memref.load %alloc_47[%c0] : memref<1xf64>
      %32 = arith.addf %30, %31 : f64
      memref.store %32, %alloc_47[%c0] : memref<1xf64>
    }
    %29 = memref.load %alloc_47[%c0] : memref<1xf64>
    "ta.print"(%29) : (f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
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
  scf.forall (%arg0) in (%9) {
    %subview = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_48 = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_48 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %30 = memref.load %arg2[%arg0] : memref<?xi64>
    memref.store %arg1, %arg2[%arg0] : memref<?xi64>
    %31 = arith.addi %arg1, %30 : i64
    scf.yield %31, %arg2 : i64, memref<?xi64>
  }
  memref.store %21#0, %21#1[%9] : memref<?xi64>
  %22 = bufferization.to_tensor %21#1 : memref<?xi64>
  %23 = arith.index_cast %21#0 : i64 to index
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
  %24 = bufferization.to_tensor %cast_40 : memref<?xi64>
  %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %25:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_41, %arg3 = %alloc_42, %arg4 = %alloc_43, %arg5 = %c1_i32, %arg6 = %alloc_44, %arg7 = %alloc_45) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
    %30 = arith.addi %arg5, %c1_i32 : i32
    %31 = arith.addi %arg0, %c1 : index
    %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = memref.load %alloc_8[%31] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %36:4 = scf.for %arg8 = %33 to %35 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %38 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = arith.addi %39, %c1 : index
      %41 = memref.load %alloc_28[%39] : memref<?xi64>
      %42 = arith.index_cast %41 : i64 to index
      %43 = memref.load %alloc_28[%40] : memref<?xi64>
      %44 = arith.index_cast %43 : i64 to index
      %45 = memref.load %alloc_16[%arg8] : memref<?xf64>
      %46:4 = scf.for %arg13 = %42 to %44 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %47 = memref.load %alloc_30[%arg13] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49 = memref.load %alloc_36[%arg13] : memref<?xf64>
        %50 = arith.mulf %45, %49 : f64
        %51 = memref.load %arg15[%48] : memref<?xi32>
        %52 = arith.cmpi eq, %51, %30 : i32
        %53:4 = scf.if %52 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %54 = memref.load %arg14[%48] : memref<?xf64>
          %55 = arith.addf %54, %50 : f64
          memref.store %55, %arg14[%48] : memref<?xf64>
          scf.yield %arg15, %arg16, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %30, %arg15[%48] : memref<?xi32>
          memref.store %47, %arg17[%arg16] : memref<?xi64>
          %54 = index.add %arg16, %idx1
          memref.store %50, %arg14[%48] : memref<?xf64>
          scf.yield %arg15, %54, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %53#3, %53#0, %53#1, %53#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %46#0, %46#1, %46#2, %46#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    %cast_48 = memref.cast %36#3 : memref<?xi64> to memref<*xi64>
    func.call @comet_sort64(%cast_48, %idx0, %36#2) : (memref<*xi64>, index, index) -> ()
    %37:3 = scf.for %arg8 = %c0 to %36#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %38 = memref.load %36#3[%arg8] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = memref.load %36#0[%39] : memref<?xf64>
      memref.store %38, %arg10[%arg9] : memref<?xi64>
      %41 = index.add %arg9, %idx1
      memref.store %40, %arg11[%arg9] : memref<?xf64>
      scf.yield %41, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %37#0, %37#1, %37#2, %36#0, %30, %36#1, %36#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
  }
  %26 = bufferization.to_tensor %25#2 : memref<?xf64>
  %27 = bufferization.to_tensor %25#1 : memref<?xi64>
  %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
  %28 = bufferization.to_tensor %alloc_46 : memref<1xindex>
  "ta.print"(%24) : (tensor<?xi64>) -> ()
  "ta.print"(%28) : (tensor<1xindex>) -> ()
  "ta.print"(%22) : (tensor<?xi64>) -> ()
  "ta.print"(%27) : (tensor<?xi64>) -> ()
  "ta.print"(%26) : (tensor<?xf64>) -> ()
  %alloc_47 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_47[%c0] : memref<1xf64>
  %dim = memref.dim %25#2, %c0 : memref<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %30 = memref.load %25#2[%arg0] : memref<?xf64>
    %31 = memref.load %alloc_47[%c0] : memref<1xf64>
    %32 = arith.addf %30, %31 : f64
    memref.store %32, %alloc_47[%c0] : memref<1xf64>
  }
  %29 = memref.load %alloc_47[%c0] : memref<1xf64>
  "ta.print"(%29) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
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
  scf.forall (%arg0) in (%9) {
    %subview = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_53 = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_53 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_38) -> (i64, memref<?xi64>) {
    %35 = memref.load %arg2[%arg0] : memref<?xi64>
    memref.store %arg1, %arg2[%arg0] : memref<?xi64>
    %36 = arith.addi %arg1, %35 : i64
    scf.yield %36, %arg2 : i64, memref<?xi64>
  }
  memref.store %21#0, %21#1[%9] : memref<?xi64>
  %22 = bufferization.to_tensor %21#1 : memref<?xi64>
  %23 = arith.index_cast %21#0 : i64 to index
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  %cast_40 = memref.cast %alloc_39 : memref<1xi64> to memref<?xi64>
  %24 = bufferization.to_tensor %cast_40 : memref<?xi64>
  %alloc_41 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xi64>
  %alloc_42 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
  %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %25:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_41, %arg3 = %alloc_42, %arg4 = %alloc_43, %arg5 = %c1_i32, %arg6 = %alloc_44, %arg7 = %alloc_45) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
    %35 = arith.addi %arg5, %c1_i32 : i32
    %36 = arith.addi %arg0, %c1 : index
    %37 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39 = memref.load %alloc_8[%36] : memref<?xi64>
    %40 = arith.index_cast %39 : i64 to index
    %41:4 = scf.for %arg8 = %38 to %40 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %43 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %44 = arith.index_cast %43 : i64 to index
      %45 = arith.addi %44, %c1 : index
      %46 = memref.load %alloc_28[%44] : memref<?xi64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = memref.load %alloc_28[%45] : memref<?xi64>
      %49 = arith.index_cast %48 : i64 to index
      %50 = memref.load %alloc_16[%arg8] : memref<?xf64>
      %51:4 = scf.for %arg13 = %47 to %49 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %52 = memref.load %alloc_30[%arg13] : memref<?xi64>
        %53 = arith.index_cast %52 : i64 to index
        %54 = memref.load %alloc_36[%arg13] : memref<?xf64>
        %55 = arith.mulf %50, %54 : f64
        %56 = memref.load %arg15[%53] : memref<?xi32>
        %57 = arith.cmpi eq, %56, %35 : i32
        %58:4 = scf.if %57 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %59 = memref.load %arg14[%53] : memref<?xf64>
          %60 = arith.addf %59, %55 : f64
          memref.store %60, %arg14[%53] : memref<?xf64>
          scf.yield %arg15, %arg16, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %35, %arg15[%53] : memref<?xi32>
          memref.store %52, %arg17[%arg16] : memref<?xi64>
          %59 = index.add %arg16, %idx1
          memref.store %55, %arg14[%53] : memref<?xf64>
          scf.yield %arg15, %59, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %58#3, %58#0, %58#1, %58#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %51#0, %51#1, %51#2, %51#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    %cast_53 = memref.cast %41#3 : memref<?xi64> to memref<*xi64>
    func.call @comet_sort64(%cast_53, %idx0, %41#2) : (memref<*xi64>, index, index) -> ()
    %42:3 = scf.for %arg8 = %c0 to %41#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %43 = memref.load %41#3[%arg8] : memref<?xi64>
      %44 = arith.index_cast %43 : i64 to index
      %45 = memref.load %41#0[%44] : memref<?xf64>
      memref.store %43, %arg10[%arg9] : memref<?xi64>
      %46 = index.add %arg9, %idx1
      memref.store %45, %arg11[%arg9] : memref<?xf64>
      scf.yield %46, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %42#0, %42#1, %42#2, %41#0, %35, %41#1, %41#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
  }
  %26 = bufferization.to_tensor %25#2 : memref<?xf64>
  %27 = bufferization.to_tensor %25#1 : memref<?xi64>
  %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
  %28 = bufferization.to_tensor %alloc_46 : memref<1xindex>
  %29 = bufferization.to_memref %24 : memref<?xi64>
  %cast_47 = memref.cast %29 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
  %30 = bufferization.to_memref %28 : memref<1xindex>
  %cast_48 = memref.cast %30 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
  %31 = bufferization.to_memref %22 : memref<?xi64>
  %cast_49 = memref.cast %31 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
  %32 = bufferization.to_memref %27 : memref<?xi64>
  %cast_50 = memref.cast %32 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
  %33 = bufferization.to_memref %26 : memref<?xf64>
  %cast_51 = memref.cast %33 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
  %alloc_52 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_52[%c0] : memref<1xf64>
  %dim = memref.dim %25#2, %c0 : memref<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %35 = memref.load %25#2[%arg0] : memref<?xf64>
    %36 = memref.load %alloc_52[%c0] : memref<1xf64>
    %37 = arith.addf %35, %36 : f64
    memref.store %37, %alloc_52[%c0] : memref<1xf64>
  }
  %34 = memref.load %alloc_52[%c0] : memref<1xf64>
  call @printF64(%34) : (f64) -> ()
  call @printNewline() : () -> ()
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
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_52 = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_52 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      %cast_52 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_52, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
    %cast_46 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_45 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_47) : (memref<*xindex>) -> ()
    %cast_48 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_50) : (memref<*xf64>) -> ()
    %alloc_51 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_51[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_51[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_51[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_51[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
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
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      %cast_52 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_52, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
    %cast_46 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_45 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_47) : (memref<*xindex>) -> ()
    %cast_48 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_50) : (memref<*xf64>) -> ()
    %alloc_51 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_51[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_51[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_51[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_51[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
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
    scf.forall (%arg0) in (%9) {
      %subview = memref.subview %alloc_38[%arg0] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      %cast_52 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_52, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
    %cast_46 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_45 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_47) : (memref<*xindex>) -> ()
    %cast_48 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_50) : (memref<*xf64>) -> ()
    %alloc_51 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_51[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_51[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_51[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_51[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
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
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      %cast_52 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_52, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
    %cast_46 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_45 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_47) : (memref<*xindex>) -> ()
    %cast_48 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_50) : (memref<*xf64>) -> ()
    %alloc_51 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_51[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_51[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_51[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_51[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_sort64(memref<*xi64>, index, index)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %idx-1 = index.constant -1
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
  %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
    memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
    %26 = arith.addi %arg1, %25 : i64
    scf.yield %26 : i64
  }
  memref.store %21, %alloc_38[%9] : memref<?xi64>
  %22 = arith.index_cast %21 : i64 to index
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
  %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
  %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
    %25 = arith.addi %arg2, %c1_i32 : i32
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %alloc_8[%26] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
      %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = arith.addi %34, %c1 : index
      %36 = memref.load %alloc_28[%34] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = memref.load %alloc_28[%35] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
      %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
        %45 = arith.mulf %40, %44 : f64
        %46 = memref.load %alloc_43[%43] : memref<?xi32>
        %47 = arith.cmpi eq, %46, %25 : i32
        %48 = scf.if %47 -> (index) {
          %49 = memref.load %alloc_42[%43] : memref<?xf64>
          %50 = arith.addf %49, %45 : f64
          memref.store %50, %alloc_42[%43] : memref<?xf64>
          scf.yield %arg6 : index
        } else {
          memref.store %25, %alloc_43[%43] : memref<?xi32>
          memref.store %42, %alloc_44[%arg6] : memref<?xi64>
          %49 = index.add %arg6, %idx1
          memref.store %45, %alloc_42[%43] : memref<?xf64>
          scf.yield %49 : index
        }
        scf.yield %48 : index
      }
      scf.yield %41 : index
    }
    %cast_52 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
    func.call @comet_sort64(%cast_52, %idx0, %31) : (memref<*xi64>, index, index) -> ()
    %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
      %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_42[%34] : memref<?xf64>
      memref.store %33, %alloc_40[%arg4] : memref<?xi64>
      %36 = index.add %arg4, %idx1
      memref.store %35, %alloc_41[%arg4] : memref<?xf64>
      scf.yield %36 : index
    }
    scf.yield %32, %25 : index, i32
  }
  %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
  %cast_46 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %cast_47 = memref.cast %alloc_45 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_47) : (memref<*xindex>) -> ()
  %cast_48 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
  %cast_49 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
  %cast_50 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_50) : (memref<*xf64>) -> ()
  %alloc_51 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_51[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %22 step %c1 {
    %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
    %26 = memref.load %alloc_51[%c0] : memref<1xf64>
    %27 = arith.addf %25, %26 : f64
    memref.store %27, %alloc_51[%c0] : memref<1xf64>
  }
  %24 = memref.load %alloc_51[%c0] : memref<1xf64>
  call @printF64(%24) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %idx-1 = index.constant -1
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
  %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
    memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
    %26 = arith.addi %arg1, %25 : i64
    scf.yield %26 : i64
  }
  memref.store %21, %alloc_38[%9] : memref<?xi64>
  %22 = arith.index_cast %21 : i64 to index
  %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
  %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
  %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
    %25 = arith.addi %arg2, %c1_i32 : i32
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %alloc_8[%26] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
      %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = arith.addi %34, %c1 : index
      %36 = memref.load %alloc_28[%34] : memref<?xi64>
      %37 = arith.index_cast %36 : i64 to index
      %38 = memref.load %alloc_28[%35] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
      %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
        %45 = arith.mulf %40, %44 : f64
        %46 = memref.load %alloc_43[%43] : memref<?xi32>
        %47 = arith.cmpi eq, %46, %25 : i32
        %48 = scf.if %47 -> (index) {
          %49 = memref.load %alloc_42[%43] : memref<?xf64>
          %50 = arith.addf %49, %45 : f64
          memref.store %50, %alloc_42[%43] : memref<?xf64>
          scf.yield %arg6 : index
        } else {
          memref.store %25, %alloc_43[%43] : memref<?xi32>
          memref.store %42, %alloc_44[%arg6] : memref<?xi64>
          %49 = index.add %arg6, %idx1
          memref.store %45, %alloc_42[%43] : memref<?xf64>
          scf.yield %49 : index
        }
        scf.yield %48 : index
      }
      scf.yield %41 : index
    }
    %cast_52 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
    func.call @comet_sort64(%cast_52, %idx0, %31) : (memref<*xi64>, index, index) -> ()
    %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
      %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_42[%34] : memref<?xf64>
      memref.store %33, %alloc_40[%arg4] : memref<?xi64>
      %36 = index.add %arg4, %idx1
      memref.store %35, %alloc_41[%arg4] : memref<?xf64>
      scf.yield %36 : index
    }
    scf.yield %32, %25 : index, i32
  }
  %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
  %cast_46 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
  %cast_47 = memref.cast %alloc_45 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_47) : (memref<*xindex>) -> ()
  %cast_48 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
  %cast_49 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
  %cast_50 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_50) : (memref<*xf64>) -> ()
  %alloc_51 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_51[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %22 step %c1 {
    %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
    %26 = memref.load %alloc_51[%c0] : memref<1xf64>
    %27 = arith.addf %25, %26 : f64
    memref.store %27, %alloc_51[%c0] : memref<1xf64>
  }
  %24 = memref.load %alloc_51[%c0] : memref<1xf64>
  call @printF64(%24) : (f64) -> ()
  call @printNewline() : () -> ()
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
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      %cast_52 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_52, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
    %cast_46 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_45 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_47) : (memref<*xindex>) -> ()
    %cast_48 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_50) : (memref<*xf64>) -> ()
    %alloc_51 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_51[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_51[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_51[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_51[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
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
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      %cast_52 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
      func.call @comet_sort64(%cast_52, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_45[%idx0] : memref<1xindex>
    %cast_46 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_46) : (memref<*xi64>) -> ()
    %cast_47 = memref.cast %alloc_45 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_47) : (memref<*xindex>) -> ()
    %cast_48 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
    %cast_49 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_50) : (memref<*xf64>) -> ()
    %alloc_51 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_51[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_51[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_51[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_51[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
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
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %cast_45 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      func.call @comet_sort64(%cast_45, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_52[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_52[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_52[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
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
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %cast_45 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      func.call @comet_sort64(%cast_45, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_52[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_52[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_52[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
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
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %cast_45 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      func.call @comet_sort64(%cast_45, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_52[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_52[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_52[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


module {
  func.func @main() {
    %idx-1 = index.constant -1
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
    %21 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %25 = memref.load %alloc_38[%arg0] : memref<?xi64>
      memref.store %arg1, %alloc_38[%arg0] : memref<?xi64>
      %26 = arith.addi %arg1, %25 : i64
      scf.yield %26 : i64
    }
    memref.store %21, %alloc_38[%9] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    %alloc_40 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xi64>
    %alloc_41 = memref.alloc(%22) {alignment = 64 : i64} : memref<?xf64>
    %alloc_42 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %cast_45 = memref.cast %alloc_44 : memref<?xi64> to memref<*xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %25 = arith.addi %arg2, %c1_i32 : i32
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_8[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = scf.for %arg3 = %28 to %30 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %33 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.addi %34, %c1 : index
        %36 = memref.load %alloc_28[%34] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_28[%35] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %41 = scf.for %arg5 = %37 to %39 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %42 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %43 = arith.index_cast %42 : i64 to index
          %44 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %45 = arith.mulf %40, %44 : f64
          %46 = memref.load %alloc_43[%43] : memref<?xi32>
          %47 = arith.cmpi eq, %46, %25 : i32
          %48 = scf.if %47 -> (index) {
            %49 = memref.load %alloc_42[%43] : memref<?xf64>
            %50 = arith.addf %49, %45 : f64
            memref.store %50, %alloc_42[%43] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %25, %alloc_43[%43] : memref<?xi32>
            memref.store %42, %alloc_44[%arg6] : memref<?xi64>
            %49 = index.add %arg6, %idx1
            memref.store %45, %alloc_42[%43] : memref<?xf64>
            scf.yield %49 : index
          }
          scf.yield %48 : index
        }
        scf.yield %41 : index
      }
      func.call @comet_sort64(%cast_45, %idx0, %31) : (memref<*xi64>, index, index) -> ()
      %32 = scf.for %arg3 = %c0 to %31 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %33 = memref.load %alloc_44[%arg3] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_42[%34] : memref<?xf64>
        memref.store %33, %alloc_40[%arg4] : memref<?xi64>
        %36 = index.add %arg4, %idx1
        memref.store %35, %alloc_41[%arg4] : memref<?xf64>
        scf.yield %36 : index
      }
      scf.yield %32, %25 : index, i32
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_39 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_40 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_41 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    %alloc_52 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_52[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %22 step %c1 {
      %25 = memref.load %alloc_41[%arg0] : memref<?xf64>
      %26 = memref.load %alloc_52[%c0] : memref<1xf64>
      %27 = arith.addf %25, %26 : f64
      memref.store %27, %alloc_52[%c0] : memref<1xf64>
    }
    %24 = memref.load %alloc_52[%c0] : memref<1xf64>
    call @printF64(%24) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort64(memref<*xi64>, index, index)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}
