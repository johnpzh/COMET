// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
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
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    %6 = "ta.mul"(%3, %3, %0, %2, %2, %1, %0, %1) <{MaskType = "none", indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %7 = "ta.elews_mul"(%6, %3, %0, %1, %0, %1, %0, %1) <{MaskType = "none", indexing_maps = [#map3, #map3, #map3], semiring = "noop_times"}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %8 = "ta.reduce"(%7) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
    "ta.print"(%8) : (f64) -> ()
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
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %c0_0 = arith.constant 0 : index
  %6 = "ta.dim"(%3, %c0_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1_1 = arith.constant 1 : index
  %7 = "ta.dim"(%3, %c1_1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %8 = "ta.spTensor_decl"(%6, %7) <{temporal_tensor = true}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %9 = "ta.mul"(%3, %3, %0, %2, %2, %1, %0, %1) <{MaskType = "none", indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%9, %8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %c0_2 = arith.constant 0 : index
  %10 = "ta.dim"(%8, %c0_2) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c0_3 = arith.constant 0 : index
  %11 = "ta.dim"(%3, %c0_3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1_4 = arith.constant 1 : index
  %12 = "ta.dim"(%8, %c1_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1_5 = arith.constant 1 : index
  %13 = "ta.dim"(%3, %c1_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %14 = "ta.spTensor_decl"(%10, %11, %12, %13) <{temporal_tensor = true}> : (index, index, index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %15 = "ta.elews_mul"(%8, %3, %0, %1, %0, %1, %0, %1) <{MaskType = "none", indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_times"}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%15, %14) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %16 = "ta.reduce"(%14) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%16) : (f64) -> ()
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
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %c0_0 = arith.constant 0 : index
  %6 = "ta.dim"(%3, %c0_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1_1 = arith.constant 1 : index
  %7 = "ta.dim"(%3, %c1_1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %8 = "ta.spTensor_decl"(%6, %7) <{temporal_tensor = true}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %9 = "it.itree"(%8) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %17 = "it.RootOp"() : () -> !it.index_tree
    %18 = "it.IndexOp"(%17) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %19 = "it.IndexOp"(%18) <{IsParallel = false}> : (!it.index) -> !it.index
    %20 = "it.IndexOp"(%19) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%arg0, %20, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_7, %crd, %crd_6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%3, %19, %pos_9) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%3, %pos_9, %pos_11, %crd_8, %crd_10) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%3, %19) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%3, %20, %pos_13) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%3, %pos_13, %pos_15, %crd_12, %crd_14) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %24 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%9, %8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %c0_2 = arith.constant 0 : index
  %10 = "ta.dim"(%8, %c0_2) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c0_3 = arith.constant 0 : index
  %11 = "ta.dim"(%3, %c0_3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1_4 = arith.constant 1 : index
  %12 = "ta.dim"(%8, %c1_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1_5 = arith.constant 1 : index
  %13 = "ta.dim"(%3, %c1_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %14 = "ta.spTensor_decl"(%10, %11, %12, %13) <{temporal_tensor = true}> : (index, index, index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %15 = "it.itree"(%14) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %17 = "it.RootOp"() : () -> !it.index_tree
    %18 = "it.IndexOp"(%17) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %19 = "it.IndexOp"(%18) <{IsParallel = true}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%arg0, %19, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg0, %pos, %pos_7, %crd, %crd_6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%8, %19, %pos_9) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%8, %pos_9, %pos_11, %crd_8, %crd_10) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%3, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%3, %19, %pos_13) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%3, %pos_13, %pos_15, %crd_12, %crd_14) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %23 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%15, %14) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %16 = "ta.reduce"(%14) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%16) : (f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.spTensor_decl"(%1, %2) <{temporal_tensor = true}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %4 = "it.itree"(%3) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %14 = "it.IndexOp"(%12, %13) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %15 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %16 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %17 = "it.DomainIntersectionOp"(%16, %15) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %18 = "it.IndexOp"(%14, %17) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %19 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %20 = "it.IndexOp"(%18, %19) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %20, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %18, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %20, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %24 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%4, %3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %5 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %8 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %9 = "ta.spTensor_decl"(%5, %6, %7, %8) <{temporal_tensor = true}> : (index, index, index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %10 = "it.itree"(%9) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %14 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %16 = "it.IndexOp"(%12, %15) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %17 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %18 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %19 = "it.DomainIntersectionOp"(%18, %17) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %20 = "it.IndexOp"(%16, %19) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %16) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %20, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %16) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %20, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %16) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %20, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %24 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%10, %9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %11 = "ta.reduce"(%9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%11) : (f64) -> ()
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
  %5 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %6 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_1 = tensor.dim %5, %c0 : tensor<?xi64>
  %dim_2 = tensor.dim %6, %c0 : tensor<?xi64>
  %7 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %8 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %9 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_3 = tensor.dim %8, %c0 : tensor<?xi64>
  %dim_4 = tensor.dim %9, %c0 : tensor<?xi64>
  %10 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %11 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %12 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %13 = "ta.spTensor_decl"(%11, %12) <{temporal_tensor = true}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %14 = "ta.SpTensorGetDimSize"(%13) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %15 = "ta.SpTensorGetDimPos"(%13) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %16 = "ta.SpTensorGetDimCrd"(%13) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_5 = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_6 = tensor.dim %16, %c0 : tensor<?xi64>
  %17 = "ta.SpTensorGetDimSize"(%13) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %18 = "it.itree"(%13) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %26 = "it.RootOp"() : () -> !it.index_tree
    %27 = "it.DenseDomainOp"(%1, %0) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %28 = "it.IndexOp"(%26, %27) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %28) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %29 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %30 = "it.IndexOp"(%28, %29) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%0, %30) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %31 = "it.SparseDomainOp"(%0, %5, %6, %dim_1, %dim_2, %7, %pos_8) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%arg0, %28) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %32, %pos_10) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %33 = "it.LHSOperandOp"(%arg0, %pos_10, %pos_12, %crd_9, %crd_11) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%0, %30, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %34 = "it.OperandOp"(%0, %pos, %pos_14, %crd, %crd_13) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_15, %pos_16 = "it.IndexToTensorDim"(%0, %32, %pos_8) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %35 = "it.OperandOp"(%0, %pos_8, %pos_16, %crd_7, %crd_15) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %36 = "it.ComputeOp"(%32, %33, %34, %35) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %36 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%18, %13) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %19 = "ta.dim"(%13, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %20 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %21 = "ta.dim"(%13, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %22 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %23 = "ta.spTensor_decl"(%19, %20, %21, %22) <{temporal_tensor = true}> : (index, index, index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %24 = "it.itree"(%23) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %26 = "it.RootOp"() : () -> !it.index_tree
    %27 = "it.DenseDomainOp"(%14, %13, %0) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %28 = "it.IndexOp"(%26, %27) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %28) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %29 = "it.SparseDomainOp"(%0, %8, %9, %dim_3, %dim_4, %10, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%13, %28) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %30 = "it.SparseDomainOp"(%13, %15, %16, %dim_5, %dim_6, %17, %pos_8) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %31 = "it.DomainIntersectionOp"(%30, %29, %17) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %32 = "it.IndexOp"(%28, %31) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%arg0, %28) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %32, %pos_10) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %33 = "it.LHSOperandOp"(%arg0, %pos_10, %pos_12, %crd_9, %crd_11) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%13, %32, %pos_8) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %34 = "it.OperandOp"(%13, %pos_8, %pos_14, %crd_7, %crd_13) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_15, %pos_16 = "it.IndexToTensorDim"(%0, %32, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %35 = "it.OperandOp"(%0, %pos, %pos_16, %crd, %crd_15) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %36 = "it.ComputeOp"(%32, %33, %34, %35) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %36 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%24, %23) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %25 = "ta.reduce"(%23) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%25) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %27 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %28 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_32 = tensor.dim %27, %c0 : tensor<?xi64>
  %dim_33 = tensor.dim %28, %c0 : tensor<?xi64>
  %29 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %30 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_34 = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_35 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %33 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %34 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %35 = "ta.temp_sparse_output_tensor_decl"(%33, %34) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = "ta.SpTensorGetDimSize"(%35) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %37 = "ta.SpTensorGetDimPos"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %38 = "ta.SpTensorGetDimCrd"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_36 = tensor.dim %37, %c0 : tensor<?xi64>
  %dim_37 = tensor.dim %38, %c0 : tensor<?xi64>
  %39 = "ta.SpTensorGetDimSize"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %40 = "it.itree"(%35) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %27, %28, %dim_32, %dim_33, %29, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %54, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %52, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %54, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%22, %pos_39, %pos_47, %crd_38, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %58 = "it.ComputeOp"(%54, %55, %56, %57) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %58 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%40, %35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %41 = "ta.dim"(%35, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %42 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%35, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %45 = "ta.temp_sparse_output_tensor_decl"(%41, %42, %43, %44) : (index, index, index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "it.itree"(%45) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%36, %35, %22) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%35, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%35, %37, %38, %dim_36, %dim_37, %39, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.DomainIntersectionOp"(%52, %51, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %54 = "it.IndexOp"(%50, %53) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %54, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%35, %54, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%35, %pos_39, %pos_45, %crd_38, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %54, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%22, %pos, %pos_47, %crd, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %58 = "it.ComputeOp"(%54, %55, %56, %57) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %58 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%46, %45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %47 = "ta.reduce"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%47) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %27 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %28 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_32 = tensor.dim %27, %c0 : tensor<?xi64>
  %dim_33 = tensor.dim %28, %c0 : tensor<?xi64>
  %29 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %30 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_34 = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_35 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %33 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %34 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %35 = "ta.temp_sparse_output_tensor_decl"(%33, %34) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = "ta.SpTensorGetDimSize"(%35) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %37 = "ta.SpTensorGetDimPos"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %38 = "ta.SpTensorGetDimCrd"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_36 = tensor.dim %37, %c0 : tensor<?xi64>
  %dim_37 = tensor.dim %38, %c0 : tensor<?xi64>
  %39 = "ta.SpTensorGetDimSize"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %40 = "it.itree"(%35) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %27, %28, %dim_32, %dim_33, %29, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %54, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %52, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %54, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%22, %pos_39, %pos_47, %crd_38, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %58 = "it.ComputeOp"(%54, %55, %56, %57) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %58 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%40, %35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %41 = "ta.dim"(%35, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %42 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%35, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %45 = "ta.temp_sparse_output_tensor_decl"(%41, %42, %43, %44) : (index, index, index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "it.itree"(%45) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%36, %35, %22) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%35, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%35, %37, %38, %dim_36, %dim_37, %39, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.DomainIntersectionOp"(%52, %51, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %54 = "it.IndexOp"(%50, %53) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %54, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%35, %54, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%35, %pos_39, %pos_45, %crd_38, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %54, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%22, %pos, %pos_47, %crd, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %58 = "it.ComputeOp"(%54, %55, %56, %57) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %58 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%46, %45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %47 = "ta.reduce"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%47) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %27 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %28 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_32 = tensor.dim %27, %c0 : tensor<?xi64>
  %dim_33 = tensor.dim %28, %c0 : tensor<?xi64>
  %29 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %30 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_34 = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_35 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %33 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %34 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %35 = "it.EmptyDomain"() : () -> !it.domain
  %36 = "it.IndexTreeSparseTensorOp"(%35, %35) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %37 = "ta.SpTensorGetDimSize"(%36) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %38 = "ta.SpTensorGetDimPos"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %39 = "ta.SpTensorGetDimCrd"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_36 = tensor.dim %38, %c0 : tensor<?xi64>
  %dim_37 = tensor.dim %39, %c0 : tensor<?xi64>
  %40 = "ta.SpTensorGetDimSize"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %41 = "it.itree"(%36) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %55 = "it.SparseDomainOp"(%22, %27, %28, %dim_32, %dim_33, %29, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %56 = "it.IndexOp"(%54, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %56, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %54, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %56, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%22, %pos_39, %pos_47, %crd_38, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %57, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%41, %36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %42 = "ta.dim"(%36, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%36, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %45 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %46 = "it.EmptyDomain"() : () -> !it.domain
  %47 = "it.IndexTreeSparseTensorOp"(%46, %46) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "it.itree"(%47) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%37, %36, %22) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%36, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%36, %38, %39, %dim_36, %dim_37, %40, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %40) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %56, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%36, %56, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%36, %pos_39, %pos_45, %crd_38, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %56, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%22, %pos, %pos_47, %crd, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %57, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%48, %47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %49 = "ta.reduce"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%49) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %27 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %28 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_32 = tensor.dim %27, %c0 : tensor<?xi64>
  %dim_33 = tensor.dim %28, %c0 : tensor<?xi64>
  %29 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %30 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_34 = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_35 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %33 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %34 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %35 = "it.EmptyDomain"() : () -> !it.domain
  %36 = "it.IndexTreeSparseTensorOp"(%35, %35) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %37 = "ta.SpTensorGetDimSize"(%36) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %38 = "ta.SpTensorGetDimPos"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %39 = "ta.SpTensorGetDimCrd"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_36 = tensor.dim %38, %c0 : tensor<?xi64>
  %dim_37 = tensor.dim %39, %c0 : tensor<?xi64>
  %40 = "ta.SpTensorGetDimSize"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %41 = "it.itree"(%36) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %55 = "it.SparseDomainOp"(%22, %27, %28, %dim_32, %dim_33, %29, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %56 = "it.IndexOp"(%54, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %56, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %54, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %56, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%22, %pos_39, %pos_47, %crd_38, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %57, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%41, %36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %42 = "ta.dim"(%36, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%36, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %45 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %46 = "it.EmptyDomain"() : () -> !it.domain
  %47 = "it.IndexTreeSparseTensorOp"(%46, %46) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "it.itree"(%47) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%37, %36, %22) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%36, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%36, %38, %39, %dim_36, %dim_37, %40, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %40) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %56, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%36, %56, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%36, %pos_39, %pos_45, %crd_38, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %56, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%22, %pos, %pos_47, %crd, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %57, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%48, %47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %49 = "ta.reduce"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%49) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %27 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %28 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_32 = tensor.dim %27, %c0 : tensor<?xi64>
  %dim_33 = tensor.dim %28, %c0 : tensor<?xi64>
  %29 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %30 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_34 = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_35 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %33 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %34 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %35 = "it.EmptyDomain"() : () -> !it.domain
  %36 = "it.IndexTreeSparseTensorOp"(%35, %35) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %37 = "ta.SpTensorGetDimSize"(%36) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %38 = "ta.SpTensorGetDimPos"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %39 = "ta.SpTensorGetDimCrd"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_36 = tensor.dim %38, %c0 : tensor<?xi64>
  %dim_37 = tensor.dim %39, %c0 : tensor<?xi64>
  %40 = "ta.SpTensorGetDimSize"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %41 = "it.itree"(%36) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %55 = "it.SparseDomainOp"(%22, %27, %28, %dim_32, %dim_33, %29, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %56 = "it.IndexOp"(%54, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %56, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %54, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %56, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%22, %pos_39, %pos_47, %crd_38, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %57, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%41, %36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %42 = "ta.dim"(%36, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %43 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %44 = "ta.dim"(%36, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %45 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %46 = "it.EmptyDomain"() : () -> !it.domain
  %47 = "it.IndexTreeSparseTensorOp"(%46, %46) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "it.itree"(%47) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%37, %36, %22) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%36, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%36, %38, %39, %dim_36, %dim_37, %40, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %40) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %56, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%36, %56, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%36, %pos_39, %pos_45, %crd_38, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %56, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%22, %pos, %pos_47, %crd, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %57, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%48, %47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %49 = "ta.reduce"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%49) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %27 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %28 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_32 = tensor.dim %27, %c0 : tensor<?xi64>
  %dim_33 = tensor.dim %28, %c0 : tensor<?xi64>
  %29 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %30 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %31 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_34 = tensor.dim %30, %c0 : tensor<?xi64>
  %dim_35 = tensor.dim %31, %c0 : tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %33 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %34 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %35 = "it.EmptyDomain"() : () -> !it.domain
  %36 = "it.IndexTreeSparseTensorOp"(%35, %35) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %37 = "ta.SpTensorGetDimSize"(%36) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %38 = "ta.SpTensorGetDimPos"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %39 = "ta.SpTensorGetDimCrd"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_36 = tensor.dim %38, %c0 : tensor<?xi64>
  %dim_37 = tensor.dim %39, %c0 : tensor<?xi64>
  %40 = "ta.SpTensorGetDimSize"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %41 = "it.itree"(%36) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %55 = "it.SparseDomainOp"(%22, %27, %28, %dim_32, %dim_33, %29, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %56 = "it.IndexOp"(%54, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %56, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %54, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %56, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%22, %pos_39, %pos_47, %crd_38, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %57, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%41, %36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %42 = "ta.SpTensorGetDimSize"(%36) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %43 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %44 = "ta.SpTensorGetDimSize"(%36) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %45 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %46 = "it.EmptyDomain"() : () -> !it.domain
  %47 = "it.IndexTreeSparseTensorOp"(%46, %46) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "it.itree"(%47) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%37, %36, %22) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%36, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%36, %38, %39, %dim_36, %dim_37, %40, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %40) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %56, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%36, %56, %pos_39) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%36, %pos_39, %pos_45, %crd_38, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %56, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%22, %pos, %pos_47, %crd, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %57, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%48, %47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %49 = "ta.reduce"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%49) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %25 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %26 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_19 = tensor.dim %25, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %26, %c0 : tensor<?xi64>
  %27 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %29 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_21 = tensor.dim %28, %c0 : tensor<?xi64>
  %dim_22 = tensor.dim %29, %c0 : tensor<?xi64>
  %30 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %31 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %32 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %33 = "it.SparseDomainOp"(%20, %25, %26, %dim_19, %dim_20, %27) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %34 = "it.NestedDomainOp"(%32, %33, %27) : (!it.domain, !it.domain, index) -> !it.domain
  %35 = "it.IndexTreeSparseTensorOp"(%31, %34) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = "ta.SpTensorGetDimSize"(%35) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %37 = "ta.SpTensorGetDimPos"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %38 = "ta.SpTensorGetDimCrd"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_23 = tensor.dim %37, %c0 : tensor<?xi64>
  %dim_24 = tensor.dim %38, %c0 : tensor<?xi64>
  %39 = "ta.SpTensorGetDimSize"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %40 = "it.itree"(%35) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%20, %25, %26, %dim_19, %dim_20, %27, %pos_26) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%arg0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%arg0, %54, %pos_28) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.LHSOperandOp"(%arg0, %pos_28, %pos_30, %crd_27, %crd_29) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%20, %52, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%20, %pos, %pos_32, %crd, %crd_31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%20, %54, %pos_26) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%20, %pos_26, %pos_34, %crd_25, %crd_33) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %58 = "it.ComputeOp"(%54, %55, %56, %57) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %58 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%40, %35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %41 = "it.DenseDomainOp"(%36, %35, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %42 = "it.SparseDomainOp"(%35, %37, %38, %dim_23, %dim_24, %39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %43 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %44 = "it.DomainIntersectionOp"(%42, %43, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
  %45 = "it.IndexTreeSparseTensorOp"(%41, %44) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "it.itree"(%45) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%36, %35, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%35, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%35, %37, %38, %dim_23, %dim_24, %39, %pos_26) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.DomainIntersectionOp"(%52, %51, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %54 = "it.IndexOp"(%50, %53) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%arg0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%arg0, %54, %pos_28) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.LHSOperandOp"(%arg0, %pos_28, %pos_30, %crd_27, %crd_29) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%35, %54, %pos_26) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%35, %pos_26, %pos_32, %crd_25, %crd_31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%20, %54, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%20, %pos, %pos_34, %crd, %crd_33) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %58 = "it.ComputeOp"(%54, %55, %56, %57) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %58 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%46, %45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %47 = "ta.reduce"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%47) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %25 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %26 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_19 = tensor.dim %25, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %26, %c0 : tensor<?xi64>
  %27 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %29 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_21 = tensor.dim %28, %c0 : tensor<?xi64>
  %dim_22 = tensor.dim %29, %c0 : tensor<?xi64>
  %30 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %31 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %32 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %33 = "it.SparseDomainOp"(%20, %25, %26, %dim_19, %dim_20, %27) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %34 = "it.NestedDomainOp"(%32, %33, %27) : (!it.domain, !it.domain, index) -> !it.domain
  %35 = "it.IndexTreeSparseTensorOp"(%31, %34) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = "ta.SpTensorGetDimSize"(%35) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %37 = "ta.SpTensorGetDimPos"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %38 = "ta.SpTensorGetDimCrd"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_23 = tensor.dim %37, %c0 : tensor<?xi64>
  %dim_24 = tensor.dim %38, %c0 : tensor<?xi64>
  %39 = "ta.SpTensorGetDimSize"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %40 = "ta.AllocWorkspace"(%35) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %41:2 = "it.itree"(%35, %40) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %49 = "it.RootOp"() : () -> !it.index_tree
    %50 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.WorkspaceStartRowOp"(%51, %arg1) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %54 = "it.IndexOp"(%51, %52) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %55 = "it.SparseDomainOp"(%20, %25, %26, %dim_19, %dim_20, %27, %pos_26) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %56 = "it.IndexOp"(%54, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%20, %54, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%20, %pos, %pos_28, %crd, %crd_27) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%20, %56, %pos_26) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%20, %pos_26, %pos_30, %crd_25, %crd_29) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%53, %56) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %59 = "it.LHSOperandOp"(%53, %pos_32, %crd_31) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %59, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, ?>
    %61 = "ta.SpTensorGetDimSize"(%60) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>) -> index
    %62 = "it.WorkspaceDomainOp"(%60, %61) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, index) -> !it.domain
    %63 = "it.IndexOp"(%51, %62) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%arg0, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %63, %pos_34) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.LHSOperandOp"(%arg0, %pos_34, %pos_36, %crd_33, %crd_35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%60, %63) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %65 = "it.OperandOp"(%60, %pos_38, %crd_37) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %66 = "it.ComputeOp"(%63, %64, %65) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %66, %40 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  "ta.set_op"(%41#0, %35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %42 = "it.DenseDomainOp"(%36, %35, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %43 = "it.SparseDomainOp"(%35, %37, %38, %dim_23, %dim_24, %39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %44 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %45 = "it.DomainIntersectionOp"(%43, %44, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
  %46 = "it.IndexTreeSparseTensorOp"(%42, %45) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %47 = "it.itree"(%46) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %49 = "it.RootOp"() : () -> !it.index_tree
    %50 = "it.DenseDomainOp"(%36, %35, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%35, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%35, %37, %38, %dim_23, %dim_24, %39, %pos_26) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.DomainIntersectionOp"(%53, %52, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %55 = "it.IndexOp"(%51, %54) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%arg0, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%arg0, %55, %pos_28) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %56 = "it.LHSOperandOp"(%arg0, %pos_28, %pos_30, %crd_27, %crd_29) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%35, %55, %pos_26) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%35, %pos_26, %pos_32, %crd_25, %crd_31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%20, %55, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%20, %pos, %pos_34, %crd, %crd_33) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %59 = "it.ComputeOp"(%55, %56, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %59 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%47, %46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %48 = "ta.reduce"(%46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> f64
  "ta.print"(%48) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %25 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %26 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_19 = tensor.dim %25, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %26, %c0 : tensor<?xi64>
  %27 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %29 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_21 = tensor.dim %28, %c0 : tensor<?xi64>
  %dim_22 = tensor.dim %29, %c0 : tensor<?xi64>
  %30 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %31 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %32 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %33 = "it.SparseDomainOp"(%20, %25, %26, %dim_19, %dim_20, %27) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %34 = "it.NestedDomainOp"(%32, %33, %27) : (!it.domain, !it.domain, index) -> !it.domain
  %35 = "it.IndexTreeSparseTensorOp"(%31, %34) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = "ta.SpTensorGetDimSize"(%35) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %37 = "ta.SpTensorGetDimPos"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %38 = "ta.SpTensorGetDimCrd"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_23 = tensor.dim %37, %c0 : tensor<?xi64>
  %dim_24 = tensor.dim %38, %c0 : tensor<?xi64>
  %39 = "ta.SpTensorGetDimSize"(%35) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %40 = "ta.AllocWorkspace"(%35) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %41:2 = "it.itree"(%35, %40) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.WorkspaceStartRowOp"(%52, %arg1) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %55 = "it.IndexOp"(%52, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%20, %55) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %56 = "it.SparseDomainOp"(%20, %25, %26, %dim_19, %dim_20, %27, %pos_33) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%20, %55, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%20, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%20, %57, %pos_33) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%20, %pos_33, %pos_37, %crd_32, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%54, %57) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %60 = "it.LHSOperandOp"(%54, %pos_39, %crd_38) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %61 = "it.ComputeOp"(%57, %60, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, ?>
    %62 = "ta.SpTensorGetDimSize"(%61) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>) -> index
    %63 = "it.WorkspaceDomainOp"(%61, %62) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, index) -> !it.domain
    %64 = "it.IndexOp"(%52, %63) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %64, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%61, %64) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %66 = "it.OperandOp"(%61, %pos_45, %crd_44) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %67 = "it.ComputeOp"(%64, %65, %66) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %67, %40 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  %42 = "it.DenseDomainOp"(%36, %41#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %43 = "it.SparseDomainOp"(%41#0, %37, %38, %dim_23, %dim_24, %39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %44 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %45 = "it.DomainIntersectionOp"(%43, %44, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
  %46 = "it.IndexTreeSparseTensorOp"(%42, %45) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %47 = "it.itree"(%46) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %50 = "it.RootOp"() : () -> !it.index_tree
    %51 = "it.DenseDomainOp"(%36, %41#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%41#0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%41#0, %37, %38, %dim_23, %dim_24, %39, %pos_33) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %56, %pos_35) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.LHSOperandOp"(%arg0, %pos_35, %pos_37, %crd_34, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%41#0, %56, %pos_33) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %58 = "it.OperandOp"(%41#0, %pos_33, %pos_39, %crd_32, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%20, %56, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %59 = "it.OperandOp"(%20, %pos, %pos_41, %crd, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %60 = "it.ComputeOp"(%56, %57, %58, %59) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0_25 = arith.constant 0 : index
  %alloc_26 = memref.alloc() : memref<1xf64>
  %cst_27 = arith.constant 0.000000e+00 : f64
  memref.store %cst_27, %alloc_26[%c0_25] : memref<1xf64>
  %48 = "ta.SpTensorGetVals"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %c0_28 = arith.constant 0 : index
  %dim_29 = tensor.dim %48, %c0_28 : tensor<?xf64>
  %c0_30 = arith.constant 0 : index
  %c1_31 = arith.constant 1 : index
  scf.for %arg0 = %c0_30 to %dim_29 step %c1_31 {
    %extracted = tensor.extract %48[%arg0] : tensor<?xf64>
    %50 = memref.load %alloc_26[%c0_25] : memref<1xf64>
    %51 = arith.addf %extracted, %50 : f64
    memref.store %51, %alloc_26[%c0_25] : memref<1xf64>
  }
  %49 = memref.load %alloc_26[%c0_25] : memref<1xf64>
  "ta.print"(%49) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %25 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %26 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_19 = tensor.dim %25, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %26, %c0 : tensor<?xi64>
  %27 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %29 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_21 = tensor.dim %28, %c0 : tensor<?xi64>
  %dim_22 = tensor.dim %29, %c0 : tensor<?xi64>
  %30 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %31 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %32 = "it.DeclDomainOp"(%27, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %33 = "it.itree"(%32) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%20, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%20, %25, %26, %dim_19, %dim_20, %27, %pos_28) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %55 = "it.ComputeSymbolicDomainOp"(%54, %arg0) <{is_unique = false}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %56 = "it.ComputeSymbolicDomainRowOp"(%50, %55) <{needs_mark = true}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    it.yield %56 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %34 = "it.IndexTreeSparseTensorOp"(%31, %33) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %35 = "ta.SpTensorGetDimSize"(%34) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%34) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%34) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_23 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_24 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%34) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %39 = "ta.AllocWorkspace"(%34) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %40:2 = "it.itree"(%34, %39) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %52 = "it.WorkspaceStartRowOp"(%50, %arg1) : (!it.index, !ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
    %53 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%20, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%20, %25, %26, %dim_19, %dim_20, %27, %pos_28) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.IndexOp"(%53, %54) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%20, %53, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%20, %pos, %pos_30, %crd, %crd_29) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%20, %55, %pos_28) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%20, %pos_28, %pos_32, %crd_27, %crd_31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%52, %55) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %58 = "it.LHSOperandOp"(%52, %pos_34, %crd_33) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %59 = "it.ComputeOp"(%55, %58, %56, %57) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, ?>
    %60 = "ta.SpTensorGetDimSize"(%59) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>) -> index
    %61 = "it.WorkspaceDomainOp"(%59, %60) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, index) -> !it.domain
    %62 = "it.IndexOp"(%50, %61) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg0, %62, %pos_36) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.LHSOperandOp"(%arg0, %pos_36, %pos_38, %crd_35, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%59, %62) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, ?>, !it.index) -> (index, index)
    %64 = "it.OperandOp"(%59, %pos_40, %crd_39) : (!ta.workspace<f64, i64, ?>, index, index) -> !it.operand
    %65 = "it.ComputeOp"(%62, %63, %64) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %65, %39 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  %41 = "it.DenseDomainOp"(%35, %40#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %42 = "it.DeclDomainOp"(%38, %35) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %43 = "it.itree"(%42) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%35, %40#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%40#0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%40#0, %36, %37, %dim_23, %dim_24, %38, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%20, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30, %pos_28) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.DomainIntersectionOp"(%51, %52, %38) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %54 = "it.IndexOp"(%50, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %55 = "it.ComputeSymbolicDomainOp"(%54, %arg0) <{is_unique = true}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %56 = "it.ComputeSymbolicDomainRowOp"(%50, %55) <{needs_mark = false}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    it.yield %56 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %44 = "it.IndexTreeSparseTensorOp"(%41, %43) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %45 = "it.itree"(%44) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %48 = "it.RootOp"() : () -> !it.index_tree
    %49 = "it.DenseDomainOp"(%35, %40#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%40#0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%40#0, %36, %37, %dim_23, %dim_24, %38, %pos_28) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.DomainIntersectionOp"(%52, %51, %38) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %54 = "it.IndexOp"(%50, %53) <{IsParallel = true}> : (!it.index, !it.domain) -> !it.index
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%arg0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%arg0, %54, %pos_30) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %55 = "it.LHSOperandOp"(%arg0, %pos_30, %pos_32, %crd_29, %crd_31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%40#0, %54, %pos_28) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %56 = "it.OperandOp"(%40#0, %pos_28, %pos_34, %crd_27, %crd_33) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%20, %54, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %57 = "it.OperandOp"(%20, %pos, %pos_36, %crd, %crd_35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %58 = "it.ComputeOp"(%54, %55, %56, %57) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %58 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_25 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_25[%c0] : memref<1xf64>
  %46 = "ta.SpTensorGetVals"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim_26 = tensor.dim %46, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim_26 step %c1 {
    %extracted = tensor.extract %46[%arg0] : tensor<?xf64>
    %48 = memref.load %alloc_25[%c0] : memref<1xf64>
    %49 = arith.addf %extracted, %48 : f64
    memref.store %49, %alloc_25[%c0] : memref<1xf64>
  }
  %47 = memref.load %alloc_25[%c0] : memref<1xf64>
  "ta.print"(%47) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %25 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %26 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_19 = tensor.dim %25, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %26, %c0 : tensor<?xi64>
  %27 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %29 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_21 = tensor.dim %28, %c0 : tensor<?xi64>
  %dim_22 = tensor.dim %29, %c0 : tensor<?xi64>
  %30 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %31 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %32 = "it.DeclDomainOp"(%27, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %33 = "it.itree"(%32) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %48:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %49 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %48#4) -> (tensor<?xi64>) {
      %c0_29 = arith.constant 0 : index
      %54 = builtin.unrealized_conversion_cast %arg1, %48#1, %c0_29, %48#3, %arg2, %48#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %c1_30 = arith.constant 1 : index
      %55 = arith.addi %arg1, %c1_30 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %56 = arith.index_cast %extracted : i64 to index
      %extracted_31 = tensor.extract %22[%55] : tensor<?xi64>
      %57 = arith.index_cast %extracted_31 : i64 to index
      %c1_32 = arith.constant 1 : index
      %58 = scf.for %arg3 = %56 to %57 step %c1_32 iter_args(%arg4 = %54) -> (!it.symbolic_domain<64>) {
        %61 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %62 = arith.index_cast %61 : i64 to index
        %c1_33 = arith.constant 1 : index
        %63 = arith.addi %62, %c1_33 : index
        %extracted_34 = tensor.extract %25[%62] : tensor<?xi64>
        %64 = arith.index_cast %extracted_34 : i64 to index
        %extracted_35 = tensor.extract %25[%63] : tensor<?xi64>
        %65 = arith.index_cast %extracted_35 : i64 to index
        %c1_36 = arith.constant 1 : index
        %66 = scf.for %arg5 = %64 to %65 step %c1_36 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %67 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %68 = arith.index_cast %67 : i64 to index
          %69 = "it.SymbolicDomainInsertOp"(%arg6, %68) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          scf.yield %69 : !it.symbolic_domain<64>
        }
        scf.yield %66 : !it.symbolic_domain<64>
      }
      %59 = "it.SymbolicDomainEndRowOp"(%58) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %60:6 = builtin.unrealized_conversion_cast %59 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %60#4[%60#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%60#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %c0_i64_27 = arith.constant 0 : i64
    %c1_28 = arith.constant 1 : index
    %50 = arith.addi %21, %c1_28 : index
    %51:2 = scf.for %arg1 = %c1_28 to %50 step %c1_28 iter_args(%arg2 = %c0_i64_27, %arg3 = %49) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %54 = arith.addi %extracted, %arg2 : i64
      %inserted = tensor.insert %54 into %arg3[%arg1] : tensor<?xi64>
      scf.yield %54, %inserted : i64, tensor<?xi64>
    }
    %52 = arith.index_cast %51#0 : i64 to index
    %53 = builtin.unrealized_conversion_cast %21, %48#1, %52, %48#3, %51#1, %48#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %53 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %34 = "it.IndexTreeSparseTensorOp"(%31, %33) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %35 = "ta.SpTensorGetDimSize"(%34) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %36 = "ta.SpTensorGetDimPos"(%34) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %37 = "ta.SpTensorGetDimCrd"(%34) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_23 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_24 = tensor.dim %37, %c0 : tensor<?xi64>
  %38 = "ta.SpTensorGetDimSize"(%34) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %39 = "ta.AllocWorkspace"(%34) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %40:2 = "it.itree"(%34, %39) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %48:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %49:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %48#5, %arg4 = %48#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %48#4[%arg2] : tensor<?xi64>
      %51 = arith.index_cast %extracted : i64 to index
      %c1_27 = arith.constant 1 : index
      %52 = arith.addi %arg2, %c1_27 : index
      %extracted_28 = tensor.extract %48#4[%52] : tensor<?xi64>
      %53 = arith.index_cast %extracted_28 : i64 to index
      %54 = arith.subi %53, %51 : index
      %extracted_slice = tensor.extract_slice %arg3[%51] [%54] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_29 = tensor.extract_slice %arg4[%51] [%54] [1] : tensor<?xf64> to tensor<?xf64>
      %c0_30 = arith.constant 0 : index
      %55 = builtin.unrealized_conversion_cast %48#0, %48#1, %48#2, %c0_30, %48#4, %extracted_slice, %extracted_slice_29 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %56 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c1_31 = arith.constant 1 : index
      %57 = arith.addi %arg2, %c1_31 : index
      %extracted_32 = tensor.extract %22[%arg2] : tensor<?xi64>
      %58 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %22[%57] : tensor<?xi64>
      %59 = arith.index_cast %extracted_33 : i64 to index
      %c1_34 = arith.constant 1 : index
      %60:2 = scf.for %arg5 = %58 to %59 step %c1_34 iter_args(%arg6 = %55, %arg7 = %56) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %66 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %67 = arith.index_cast %66 : i64 to index
        %c1_38 = arith.constant 1 : index
        %68 = arith.addi %67, %c1_38 : index
        %extracted_39 = tensor.extract %25[%67] : tensor<?xi64>
        %69 = arith.index_cast %extracted_39 : i64 to index
        %extracted_40 = tensor.extract %25[%68] : tensor<?xi64>
        %70 = arith.index_cast %extracted_40 : i64 to index
        %c1_41 = arith.constant 1 : index
        %71:2 = scf.for %arg8 = %69 to %70 step %c1_41 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %72 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %73 = arith.index_cast %72 : i64 to index
          %74 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %75 = arith.index_cast %74 : i64 to index
          %76 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %77 = arith.index_cast %76 : i64 to index
          %78 = "ta.TAExtractOp"(%20, %arg5, %arg2, %73) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %79 = "ta.TAExtractOp"(%20, %arg8, %67, %75) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %80 = arith.mulf %78, %79 : f64
          %81 = "ta.TAExtractOp"(%arg10, %77, %77) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
          %82 = arith.addf %81, %80 : f64
          %83 = "ta.TAInsertOp"(%arg10, %77, %77, %82) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %83 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %71#0, %71#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %61 = "ta.SortCrdOp"(%60#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c0_35 = arith.constant 0 : index
      %62 = "ta.SpTensorGetNNZ"(%61) : (!ta.workspace<f64, i64, ?>) -> index
      %c1_36 = arith.constant 1 : index
      %63:7 = builtin.unrealized_conversion_cast %60#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %c1_37 = arith.constant 1 : index
      %64:3 = scf.for %arg5 = %c0_35 to %62 step %c1_37 iter_args(%arg6 = %63#5, %arg7 = %63#6, %arg8 = %61) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) {
        %66 = "ta.SpTensorGetCrd"(%arg8, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %67 = arith.index_cast %66 : i64 to index
        %68 = "ta.TAExtractOp"(%arg8, %arg5, %67) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %inserted = tensor.insert %66 into %arg6[%arg5] : tensor<?xi64>
        %inserted_38 = tensor.insert %68 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %inserted, %inserted_38, %arg8 : tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>
      }
      %65 = builtin.unrealized_conversion_cast %63#0, %63#1, %63#2, %63#3, %63#4, %64#0, %64#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %64#0 into %arg3[%51] [%54] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %64#1 into %arg4[%51] [%54] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %50 = builtin.unrealized_conversion_cast %48#0, %48#1, %48#2, %48#3, %48#4, %49#0, %49#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %50, %arg1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  %41 = "it.DenseDomainOp"(%35, %40#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %42 = "it.DeclDomainOp"(%38, %35) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %43 = "it.itree"(%42) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %48:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %49 = scf.forall (%arg1) in (%35) shared_outs(%arg2 = %48#4) -> (tensor<?xi64>) {
      %c0_29 = arith.constant 0 : index
      %54 = builtin.unrealized_conversion_cast %arg1, %48#1, %c0_29, %48#3, %arg2, %48#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %c1_30 = arith.constant 1 : index
      %idx0 = index.constant 0
      %55 = arith.addi %arg1, %c1_30 : index
      %extracted = tensor.extract %36[%arg1] : tensor<?xi64>
      %56 = arith.index_cast %extracted : i64 to index
      %extracted_31 = tensor.extract %36[%55] : tensor<?xi64>
      %57 = arith.index_cast %extracted_31 : i64 to index
      %58 = arith.addi %arg1, %c1_30 : index
      %extracted_32 = tensor.extract %28[%arg1] : tensor<?xi64>
      %59 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %28[%58] : tensor<?xi64>
      %60 = arith.index_cast %extracted_33 : i64 to index
      %61:4 = scf.while (%arg3 = %54, %arg4 = %idx0, %arg5 = %56, %arg6 = %59) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index) {
        %64 = arith.cmpi ult, %arg6, %60 : index
        %65 = arith.cmpi ult, %arg5, %57 : index
        %66 = arith.andi %65, %64 : i1
        scf.condition(%66) %arg3, %arg4, %arg5, %arg6 : !it.symbolic_domain<64>, index, index, index
      } do {
      ^bb0(%arg3: !it.symbolic_domain<64>, %arg4: index, %arg5: index, %arg6: index):
        %64 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %65 = arith.index_cast %64 : i64 to index
        %66 = "ta.SpTensorGetCrd"(%40#0, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %67 = arith.index_cast %66 : i64 to index
        %68 = arith.minui %67, %65 : index
        %69 = arith.cmpi eq, %68, %67 : index
        %70 = arith.cmpi eq, %68, %65 : index
        %71 = arith.andi %69, %70 : i1
        %72:2 = scf.if %71 -> (!it.symbolic_domain<64>, index) {
          %idx1 = index.constant 1
          %77 = "it.SymbolicDomainInsertOp"(%arg3, %68) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          %78 = index.add %arg4, %idx1
          scf.yield %77, %78 : !it.symbolic_domain<64>, index
        } else {
          scf.yield %arg3, %arg4 : !it.symbolic_domain<64>, index
        }
        %73 = index.castu %69 : i1 to index
        %74 = index.add %arg5, %73
        %75 = index.castu %70 : i1 to index
        %76 = index.add %arg6, %75
        scf.yield %72#0, %72#1, %74, %76 : !it.symbolic_domain<64>, index, index, index
      }
      %62 = "it.SymbolicDomainEndRowOp"(%61#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %63:6 = builtin.unrealized_conversion_cast %62 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %63#4[%63#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%63#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %c0_i64_27 = arith.constant 0 : i64
    %c1_28 = arith.constant 1 : index
    %50 = arith.addi %35, %c1_28 : index
    %51:2 = scf.for %arg1 = %c1_28 to %50 step %c1_28 iter_args(%arg2 = %c0_i64_27, %arg3 = %49) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %54 = arith.addi %extracted, %arg2 : i64
      %inserted = tensor.insert %54 into %arg3[%arg1] : tensor<?xi64>
      scf.yield %54, %inserted : i64, tensor<?xi64>
    }
    %52 = arith.index_cast %51#0 : i64 to index
    %53 = builtin.unrealized_conversion_cast %35, %48#1, %52, %48#3, %51#1, %48#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %53 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %44 = "it.IndexTreeSparseTensorOp"(%41, %43) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %45 = "it.itree"(%44) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %48:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %49:2 = scf.forall (%arg1) in (%35) shared_outs(%arg2 = %48#5, %arg3 = %48#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %48#4[%arg1] : tensor<?xi64>
      %51 = arith.index_cast %extracted : i64 to index
      %c1_27 = arith.constant 1 : index
      %52 = arith.addi %arg1, %c1_27 : index
      %extracted_28 = tensor.extract %48#4[%52] : tensor<?xi64>
      %53 = arith.index_cast %extracted_28 : i64 to index
      %54 = arith.subi %53, %51 : index
      %extracted_slice = tensor.extract_slice %arg2[%51] [%54] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_29 = tensor.extract_slice %arg3[%51] [%54] [1] : tensor<?xf64> to tensor<?xf64>
      %c0_30 = arith.constant 0 : index
      %55 = builtin.unrealized_conversion_cast %48#0, %48#1, %48#2, %c0_30, %48#4, %extracted_slice, %extracted_slice_29 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %c1_31 = arith.constant 1 : index
      %idx0 = index.constant 0
      %56 = arith.addi %arg1, %c1_31 : index
      %extracted_32 = tensor.extract %36[%arg1] : tensor<?xi64>
      %57 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %36[%56] : tensor<?xi64>
      %58 = arith.index_cast %extracted_33 : i64 to index
      %59 = arith.addi %arg1, %c1_31 : index
      %extracted_34 = tensor.extract %28[%arg1] : tensor<?xi64>
      %60 = arith.index_cast %extracted_34 : i64 to index
      %extracted_35 = tensor.extract %28[%59] : tensor<?xi64>
      %61 = arith.index_cast %extracted_35 : i64 to index
      %62:4 = scf.while (%arg4 = %55, %arg5 = %idx0, %arg6 = %57, %arg7 = %60) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %68 = arith.cmpi ult, %arg7, %61 : index
        %69 = arith.cmpi ult, %arg6, %58 : index
        %70 = arith.andi %69, %68 : i1
        scf.condition(%70) %arg4, %arg5, %arg6, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg4: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg5: index, %arg6: index, %arg7: index):
        %68 = "ta.SpTensorGetCrd"(%20, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %69 = arith.index_cast %68 : i64 to index
        %70 = "ta.SpTensorGetCrd"(%40#0, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %71 = arith.index_cast %70 : i64 to index
        %72 = arith.minui %71, %69 : index
        %73 = arith.cmpi eq, %72, %71 : index
        %74 = arith.cmpi eq, %72, %69 : index
        %75 = arith.andi %73, %74 : i1
        %76:2 = scf.if %75 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %idx1 = index.constant 1
          %idx0_39 = index.constant 0
          %81 = "ta.TensorFindPos"(%arg4, %72) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %82 = "ta.TAExtractOp"(%40#0, %arg6, %arg1, %72) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %83 = "ta.TAExtractOp"(%20, %arg7, %arg1, %72) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %84 = arith.mulf %82, %83 : f64
          %85 = "ta.TAInsertOp"(%arg4, %arg1, %81, %arg1, %72, %84) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %86 = index.add %arg5, %idx1
          scf.yield %85, %86 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg4, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %77 = index.castu %73 : i1 to index
        %78 = index.add %arg6, %77
        %79 = index.castu %74 : i1 to index
        %80 = index.add %arg7, %79
        scf.yield %76#0, %76#1, %78, %80 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      %63:7 = builtin.unrealized_conversion_cast %62#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %extracted_36 = tensor.extract %48#4[%arg1] : tensor<?xi64>
      %64 = arith.index_cast %extracted_36 : i64 to index
      %c1_37 = arith.constant 1 : index
      %65 = arith.addi %arg1, %c1_37 : index
      %extracted_38 = tensor.extract %48#4[%65] : tensor<?xi64>
      %66 = arith.index_cast %extracted_38 : i64 to index
      %67 = arith.subi %66, %64 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %63#5 into %arg2[%64] [%67] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %63#6 into %arg3[%64] [%67] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %50 = builtin.unrealized_conversion_cast %48#0, %48#1, %48#2, %48#3, %48#4, %49#0, %49#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %50 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_25 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_25[%c0] : memref<1xf64>
  %46 = "ta.SpTensorGetVals"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim_26 = tensor.dim %46, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim_26 step %c1 {
    %extracted = tensor.extract %46[%arg0] : tensor<?xf64>
    %48 = memref.load %alloc_25[%c0] : memref<1xf64>
    %49 = arith.addf %extracted, %48 : f64
    memref.store %49, %alloc_25[%c0] : memref<1xf64>
  }
  %47 = memref.load %alloc_25[%c0] : memref<1xf64>
  "ta.print"(%47) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %23 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %26 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %27 = "it.DeclDomainOp"(%24, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %28 = "it.itree"(%27) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %42:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %43 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %42#4) -> (tensor<?xi64>) {
      %48 = builtin.unrealized_conversion_cast %arg1, %42#1, %c0, %42#3, %arg2, %42#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %49 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %50 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %22[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_19 : i64 to index
      %52 = scf.for %arg3 = %50 to %51 step %c1 iter_args(%arg4 = %48) -> (!it.symbolic_domain<64>) {
        %55 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %56 = arith.index_cast %55 : i64 to index
        %57 = arith.addi %56, %c1 : index
        %extracted_20 = tensor.extract %23[%56] : tensor<?xi64>
        %58 = arith.index_cast %extracted_20 : i64 to index
        %extracted_21 = tensor.extract %23[%57] : tensor<?xi64>
        %59 = arith.index_cast %extracted_21 : i64 to index
        %60 = scf.for %arg5 = %58 to %59 step %c1 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %61 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %62 = arith.index_cast %61 : i64 to index
          %63 = "it.SymbolicDomainInsertOp"(%arg6, %62) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          scf.yield %63 : !it.symbolic_domain<64>
        }
        scf.yield %60 : !it.symbolic_domain<64>
      }
      %53 = "it.SymbolicDomainEndRowOp"(%52) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %54:6 = builtin.unrealized_conversion_cast %53 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %54#4[%54#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%54#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %44 = arith.addi %21, %c1 : index
    %45:2 = scf.for %arg1 = %c1 to %44 step %c1 iter_args(%arg2 = %c0_i64, %arg3 = %43) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %48 = arith.addi %extracted, %arg2 : i64
      %inserted = tensor.insert %48 into %arg3[%arg1] : tensor<?xi64>
      scf.yield %48, %inserted : i64, tensor<?xi64>
    }
    %46 = arith.index_cast %45#0 : i64 to index
    %47 = builtin.unrealized_conversion_cast %21, %42#1, %46, %42#3, %45#1, %42#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %47 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %29 = "it.IndexTreeSparseTensorOp"(%26, %28) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %30 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %31 = "ta.SpTensorGetDimPos"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %33 = "ta.AllocWorkspace"(%29) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %34:2 = "it.itree"(%29, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %42:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %43:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %42#5, %arg4 = %42#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %42#4[%arg2] : tensor<?xi64>
      %45 = arith.index_cast %extracted : i64 to index
      %46 = arith.addi %arg2, %c1 : index
      %extracted_19 = tensor.extract %42#4[%46] : tensor<?xi64>
      %47 = arith.index_cast %extracted_19 : i64 to index
      %48 = arith.subi %47, %45 : index
      %extracted_slice = tensor.extract_slice %arg3[%45] [%48] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_20 = tensor.extract_slice %arg4[%45] [%48] [1] : tensor<?xf64> to tensor<?xf64>
      %49 = builtin.unrealized_conversion_cast %42#0, %42#1, %42#2, %c0, %42#4, %extracted_slice, %extracted_slice_20 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %50 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %51 = arith.addi %arg2, %c1 : index
      %extracted_21 = tensor.extract %22[%arg2] : tensor<?xi64>
      %52 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %22[%51] : tensor<?xi64>
      %53 = arith.index_cast %extracted_22 : i64 to index
      %54:2 = scf.for %arg5 = %52 to %53 step %c1 iter_args(%arg6 = %49, %arg7 = %50) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %59 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %60 = arith.index_cast %59 : i64 to index
        %61 = arith.addi %60, %c1 : index
        %extracted_23 = tensor.extract %23[%60] : tensor<?xi64>
        %62 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %23[%61] : tensor<?xi64>
        %63 = arith.index_cast %extracted_24 : i64 to index
        %64:2 = scf.for %arg8 = %62 to %63 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %65 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %66 = arith.index_cast %65 : i64 to index
          %67 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %68 = arith.index_cast %67 : i64 to index
          %69 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %70 = arith.index_cast %69 : i64 to index
          %71 = "ta.TAExtractOp"(%20, %arg5, %arg2, %66) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %72 = "ta.TAExtractOp"(%20, %arg8, %60, %68) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %73 = arith.mulf %71, %72 : f64
          %74 = "ta.WorkspaceAccumulateOp"(%arg10, %70, %70, %73) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %74 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %64#0, %64#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %55 = "ta.SortCrdOp"(%54#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %56 = "ta.SpTensorGetNNZ"(%55) : (!ta.workspace<f64, i64, ?>) -> index
      %57:7 = builtin.unrealized_conversion_cast %54#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %58:3 = scf.for %arg5 = %c0 to %56 step %c1 iter_args(%arg6 = %57#5, %arg7 = %57#6, %arg8 = %55) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) {
        %59 = "ta.SpTensorGetCrd"(%arg8, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %60 = arith.index_cast %59 : i64 to index
        %61 = "ta.WorkspaceReadOp"(%arg8, %arg5, %60) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %inserted = tensor.insert %59 into %arg6[%arg5] : tensor<?xi64>
        %inserted_23 = tensor.insert %61 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %inserted, %inserted_23, %arg8 : tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %58#0 into %arg3[%45] [%48] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %58#1 into %arg4[%45] [%48] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %44 = builtin.unrealized_conversion_cast %42#0, %42#1, %42#2, %42#3, %42#4, %43#0, %43#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %44, %arg1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  %35 = "it.DenseDomainOp"(%30, %34#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %36 = "it.DeclDomainOp"(%32, %30) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %37 = "it.itree"(%36) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %42:6 = builtin.unrealized_conversion_cast %arg0 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %43 = scf.forall (%arg1) in (%30) shared_outs(%arg2 = %42#4) -> (tensor<?xi64>) {
      %48 = builtin.unrealized_conversion_cast %arg1, %42#1, %c0, %42#3, %arg2, %42#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %49 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %31[%arg1] : tensor<?xi64>
      %50 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %31[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_19 : i64 to index
      %52 = arith.addi %arg1, %c1 : index
      %extracted_20 = tensor.extract %25[%arg1] : tensor<?xi64>
      %53 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %25[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_21 : i64 to index
      %55:4 = scf.while (%arg3 = %48, %arg4 = %idx0, %arg5 = %50, %arg6 = %53) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index) {
        %58 = arith.cmpi ult, %arg6, %54 : index
        %59 = arith.cmpi ult, %arg5, %51 : index
        %60 = arith.andi %59, %58 : i1
        scf.condition(%60) %arg3, %arg4, %arg5, %arg6 : !it.symbolic_domain<64>, index, index, index
      } do {
      ^bb0(%arg3: !it.symbolic_domain<64>, %arg4: index, %arg5: index, %arg6: index):
        %58 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %59 = arith.index_cast %58 : i64 to index
        %60 = "ta.SpTensorGetCrd"(%34#0, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %61 = arith.index_cast %60 : i64 to index
        %62 = arith.minui %61, %59 : index
        %63 = arith.cmpi eq, %62, %61 : index
        %64 = arith.cmpi eq, %62, %59 : index
        %65 = arith.andi %63, %64 : i1
        %66:2 = scf.if %65 -> (!it.symbolic_domain<64>, index) {
          %71 = "it.SymbolicDomainInsertOp"(%arg3, %62) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          %72 = index.add %arg4, %idx1
          scf.yield %71, %72 : !it.symbolic_domain<64>, index
        } else {
          scf.yield %arg3, %arg4 : !it.symbolic_domain<64>, index
        }
        %67 = index.castu %63 : i1 to index
        %68 = index.add %arg5, %67
        %69 = index.castu %64 : i1 to index
        %70 = index.add %arg6, %69
        scf.yield %66#0, %66#1, %68, %70 : !it.symbolic_domain<64>, index, index, index
      }
      %56 = "it.SymbolicDomainEndRowOp"(%55#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      %57:6 = builtin.unrealized_conversion_cast %56 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %57#4[%57#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg2[%57#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %44 = arith.addi %30, %c1 : index
    %45:2 = scf.for %arg1 = %c1 to %44 step %c1 iter_args(%arg2 = %c0_i64, %arg3 = %43) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg3[%arg1] : tensor<?xi64>
      %48 = arith.addi %extracted, %arg2 : i64
      %inserted = tensor.insert %48 into %arg3[%arg1] : tensor<?xi64>
      scf.yield %48, %inserted : i64, tensor<?xi64>
    }
    %46 = arith.index_cast %45#0 : i64 to index
    %47 = builtin.unrealized_conversion_cast %30, %42#1, %46, %42#3, %45#1, %42#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %47 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %38 = "it.IndexTreeSparseTensorOp"(%35, %37) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %39 = "it.itree"(%38) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %42:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %43:2 = scf.forall (%arg1) in (%30) shared_outs(%arg2 = %42#5, %arg3 = %42#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %42#4[%arg1] : tensor<?xi64>
      %45 = arith.index_cast %extracted : i64 to index
      %46 = arith.addi %arg1, %c1 : index
      %extracted_19 = tensor.extract %42#4[%46] : tensor<?xi64>
      %47 = arith.index_cast %extracted_19 : i64 to index
      %48 = arith.subi %47, %45 : index
      %extracted_slice = tensor.extract_slice %arg2[%45] [%48] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_20 = tensor.extract_slice %arg3[%45] [%48] [1] : tensor<?xf64> to tensor<?xf64>
      %49 = builtin.unrealized_conversion_cast %42#0, %42#1, %42#2, %c0, %42#4, %extracted_slice, %extracted_slice_20 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %50 = arith.addi %arg1, %c1 : index
      %extracted_21 = tensor.extract %31[%arg1] : tensor<?xi64>
      %51 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %31[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_22 : i64 to index
      %53 = arith.addi %arg1, %c1 : index
      %extracted_23 = tensor.extract %25[%arg1] : tensor<?xi64>
      %54 = arith.index_cast %extracted_23 : i64 to index
      %extracted_24 = tensor.extract %25[%53] : tensor<?xi64>
      %55 = arith.index_cast %extracted_24 : i64 to index
      %56:4 = scf.while (%arg4 = %49, %arg5 = %idx0, %arg6 = %51, %arg7 = %54) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %62 = arith.cmpi ult, %arg7, %55 : index
        %63 = arith.cmpi ult, %arg6, %52 : index
        %64 = arith.andi %63, %62 : i1
        scf.condition(%64) %arg4, %arg5, %arg6, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg4: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg5: index, %arg6: index, %arg7: index):
        %62 = "ta.SpTensorGetCrd"(%20, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %63 = arith.index_cast %62 : i64 to index
        %64 = "ta.SpTensorGetCrd"(%34#0, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %65 = arith.index_cast %64 : i64 to index
        %66 = arith.minui %65, %63 : index
        %67 = arith.cmpi eq, %66, %65 : index
        %68 = arith.cmpi eq, %66, %63 : index
        %69 = arith.andi %67, %68 : i1
        %70:2 = scf.if %69 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %75 = "ta.TensorFindPos"(%arg4, %66) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %76 = "ta.TAExtractOp"(%34#0, %arg6, %arg1, %66) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %77 = "ta.TAExtractOp"(%20, %arg7, %arg1, %66) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %78 = arith.mulf %76, %77 : f64
          %79 = "ta.TAInsertOp"(%arg4, %arg1, %75, %arg1, %66, %78) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %80 = index.add %arg5, %idx1
          scf.yield %79, %80 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg4, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %71 = index.castu %67 : i1 to index
        %72 = index.add %arg6, %71
        %73 = index.castu %68 : i1 to index
        %74 = index.add %arg7, %73
        scf.yield %70#0, %70#1, %72, %74 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      %57:7 = builtin.unrealized_conversion_cast %56#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %extracted_25 = tensor.extract %42#4[%arg1] : tensor<?xi64>
      %58 = arith.index_cast %extracted_25 : i64 to index
      %59 = arith.addi %arg1, %c1 : index
      %extracted_26 = tensor.extract %42#4[%59] : tensor<?xi64>
      %60 = arith.index_cast %extracted_26 : i64 to index
      %61 = arith.subi %60, %58 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %57#5 into %arg2[%58] [%61] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %57#6 into %arg3[%58] [%61] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %44 = builtin.unrealized_conversion_cast %42#0, %42#1, %42#2, %42#3, %42#4, %43#0, %43#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %44 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_18 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_18[%c0] : memref<1xf64>
  %40 = "ta.SpTensorGetVals"(%39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim = tensor.dim %40, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %40[%arg0] : tensor<?xf64>
    %42 = memref.load %alloc_18[%c0] : memref<1xf64>
    %43 = arith.addf %extracted, %42 : f64
    memref.store %43, %alloc_18[%c0] : memref<1xf64>
  }
  %41 = memref.load %alloc_18[%c0] : memref<1xf64>
  "ta.print"(%41) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %23 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %26 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_18 = index.constant 0
  %idx1_19 = index.constant 1
  %27 = index.add %21, %idx1_19
  %28 = tensor.empty(%27) : tensor<?xi64>
  %c0_i64_20 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_20 into %28[%idx0_18] : tensor<?xi64>
  %29 = tensor.empty(%24) : tensor<?xi64>
  %30 = builtin.unrealized_conversion_cast %idx0_18, %27, %idx0_18, %24, %28, %29 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %31:6 = "it.itree"(%idx0_18, %27, %idx0_18, %24, %28, %29) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %70 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %71:6 = builtin.unrealized_conversion_cast %70 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %72 = scf.forall (%arg6) in (%21) shared_outs(%arg7 = %71#4) -> (tensor<?xi64>) {
      %77 = builtin.unrealized_conversion_cast %arg6, %71#1, %c0, %71#3, %arg7, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %78 = arith.addi %arg6, %c1 : index
      %extracted = tensor.extract %22[%arg6] : tensor<?xi64>
      %79 = arith.index_cast %extracted : i64 to index
      %extracted_38 = tensor.extract %22[%78] : tensor<?xi64>
      %80 = arith.index_cast %extracted_38 : i64 to index
      %81:6 = scf.for %arg8 = %79 to %80 step %c1 iter_args(%arg9 = %arg6, %arg10 = %71#1, %arg11 = %c0, %arg12 = %71#3, %arg13 = %arg7, %arg14 = %71#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %87 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %88 = arith.index_cast %87 : i64 to index
        %89 = arith.addi %88, %c1 : index
        %extracted_41 = tensor.extract %23[%88] : tensor<?xi64>
        %90 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %23[%89] : tensor<?xi64>
        %91 = arith.index_cast %extracted_42 : i64 to index
        %92:6 = scf.for %arg15 = %90 to %91 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %94 = "ta.SpTensorGetCrd"(%20, %arg15) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %95 = arith.index_cast %94 : i64 to index
          %idx1_43 = index.constant 1
          %96 = index.add %arg16, %idx1_43
          %97 = arith.index_cast %96 : index to i64
          %extracted_44 = tensor.extract %arg21[%95] : tensor<?xi64>
          %98 = arith.cmpi eq, %97, %extracted_44 : i64
          %99:2 = scf.if %98 -> (index, tensor<?xi64>) {
            scf.yield %arg18, %arg21 : index, tensor<?xi64>
          } else {
            %inserted_45 = tensor.insert %97 into %arg21[%95] : tensor<?xi64>
            %101 = index.add %arg18, %idx1_43
            scf.yield %101, %inserted_45 : index, tensor<?xi64>
          }
          %100 = builtin.unrealized_conversion_cast %arg16, %arg17, %99#0, %arg19, %arg20, %99#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg16, %arg17, %99#0, %arg19, %arg20, %99#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %93 = builtin.unrealized_conversion_cast %92#0, %92#1, %92#2, %92#3, %92#4, %92#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %92#0, %92#1, %92#2, %92#3, %92#4, %92#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %82 = builtin.unrealized_conversion_cast %81#0, %81#1, %81#2, %81#3, %81#4, %81#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_39 = index.constant 1
      %83 = index.add %81#0, %idx1_39
      %84 = arith.index_cast %81#2 : index to i64
      %inserted_40 = tensor.insert %84 into %81#4[%83] : tensor<?xi64>
      %85 = builtin.unrealized_conversion_cast %83, %81#1, %81#2, %81#3, %inserted_40, %81#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %86:6 = builtin.unrealized_conversion_cast %85 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %86#4[%86#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%86#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %73 = arith.addi %21, %c1 : index
    %74:2 = scf.for %arg6 = %c1 to %73 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %72) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %77 = arith.addi %extracted, %arg7 : i64
      %inserted_38 = tensor.insert %77 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %77, %inserted_38 : i64, tensor<?xi64>
    }
    %75 = arith.index_cast %74#0 : i64 to index
    %76 = builtin.unrealized_conversion_cast %21, %71#1, %75, %71#3, %74#1, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %21, %71#1, %75, %71#3, %74#1, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %32 = builtin.unrealized_conversion_cast %31#0, %31#1, %31#2, %31#3, %31#4, %31#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_21 = index.constant 0
  %idx1_22 = index.constant 1
  %33 = arith.index_cast %21 : index to i64
  %idx1_23 = index.constant 1
  %34 = tensor.empty(%idx1_23) : tensor<?xi64>
  %inserted_24 = tensor.insert %33 into %34[%idx0_21] : tensor<?xi64>
  %35 = tensor.empty() : tensor<0xi64>
  %36 = tensor.empty() : tensor<0xi64>
  %37 = tensor.empty() : tensor<0xi64>
  %38 = index.mul %idx1_22, %21
  %39 = tensor.empty(%31#2) : tensor<?xi64>
  %40 = tensor.empty() : tensor<0xi64>
  %41 = tensor.empty() : tensor<0xi64>
  %42 = tensor.empty(%31#2) : tensor<?xf64>
  %cst_25 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_21 to %31#2 step %idx1_22 {
    %inserted_38 = tensor.insert %cst_25 into %42[%arg0] : tensor<?xf64>
  }
  %from_elements_26 = tensor.from_elements %21, %31#3 : tensor<2xindex>
  %43 = "ta.spTensor_construct"(%from_elements_26, %inserted_24, %31#4, %35, %39, %36, %40, %37, %41, %42) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %44 = "ta.SpTensorGetDimSize"(%43) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %45 = "ta.SpTensorGetDimPos"(%43) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %46 = "ta.SpTensorGetDimSize"(%43) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %47 = "ta.AllocWorkspace"(%43) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %48:2 = "it.itree"(%43, %47) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %70:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %71:2 = scf.forall (%arg2) in (%21) shared_outs(%arg3 = %70#5, %arg4 = %70#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %70#4[%arg2] : tensor<?xi64>
      %73 = arith.index_cast %extracted : i64 to index
      %74 = arith.addi %arg2, %c1 : index
      %extracted_38 = tensor.extract %70#4[%74] : tensor<?xi64>
      %75 = arith.index_cast %extracted_38 : i64 to index
      %76 = arith.subi %75, %73 : index
      %extracted_slice = tensor.extract_slice %arg3[%73] [%76] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_39 = tensor.extract_slice %arg4[%73] [%76] [1] : tensor<?xf64> to tensor<?xf64>
      %77 = builtin.unrealized_conversion_cast %70#0, %70#1, %70#2, %c0, %70#4, %extracted_slice, %extracted_slice_39 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %78 = "ta.WorkspaceClear"(%arg1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %79 = arith.addi %arg2, %c1 : index
      %extracted_40 = tensor.extract %22[%arg2] : tensor<?xi64>
      %80 = arith.index_cast %extracted_40 : i64 to index
      %extracted_41 = tensor.extract %22[%79] : tensor<?xi64>
      %81 = arith.index_cast %extracted_41 : i64 to index
      %82:2 = scf.for %arg5 = %80 to %81 step %c1 iter_args(%arg6 = %77, %arg7 = %78) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %87 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %88 = arith.index_cast %87 : i64 to index
        %89 = arith.addi %88, %c1 : index
        %extracted_42 = tensor.extract %23[%88] : tensor<?xi64>
        %90 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %23[%89] : tensor<?xi64>
        %91 = arith.index_cast %extracted_43 : i64 to index
        %92:2 = scf.for %arg8 = %90 to %91 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %93 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %94 = arith.index_cast %93 : i64 to index
          %95 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %96 = arith.index_cast %95 : i64 to index
          %97 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %98 = arith.index_cast %97 : i64 to index
          %99 = "ta.TAExtractOp"(%20, %arg5, %arg2, %94) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %100 = "ta.TAExtractOp"(%20, %arg8, %88, %96) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %101 = arith.mulf %99, %100 : f64
          %102 = "ta.WorkspaceAccumulateOp"(%arg10, %98, %98, %101) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %102 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %92#0, %92#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %83 = "ta.SortCrdOp"(%82#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %84 = "ta.SpTensorGetNNZ"(%83) : (!ta.workspace<f64, i64, ?>) -> index
      %85:7 = builtin.unrealized_conversion_cast %82#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %86:3 = scf.for %arg5 = %c0 to %84 step %c1 iter_args(%arg6 = %85#5, %arg7 = %85#6, %arg8 = %83) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) {
        %87 = "ta.SpTensorGetCrd"(%arg8, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %88 = arith.index_cast %87 : i64 to index
        %89 = "ta.WorkspaceReadOp"(%arg8, %arg5, %88) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %inserted_42 = tensor.insert %87 into %arg6[%arg5] : tensor<?xi64>
        %inserted_43 = tensor.insert %89 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %inserted_42, %inserted_43, %arg8 : tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %86#0 into %arg3[%73] [%76] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %86#1 into %arg4[%73] [%76] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %72 = builtin.unrealized_conversion_cast %70#0, %70#1, %70#2, %70#3, %70#4, %71#0, %71#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %72, %arg1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  %49 = "it.DenseDomainOp"(%44, %48#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_27 = index.constant 0
  %idx1_28 = index.constant 1
  %50 = index.add %44, %idx1_28
  %51 = tensor.empty(%50) : tensor<?xi64>
  %c0_i64_29 = arith.constant 0 : i64
  %inserted_30 = tensor.insert %c0_i64_29 into %51[%idx0_27] : tensor<?xi64>
  %52 = tensor.empty(%46) : tensor<?xi64>
  %53 = builtin.unrealized_conversion_cast %idx0_27, %50, %idx0_27, %46, %51, %52 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %54:6 = "it.itree"(%idx0_27, %50, %idx0_27, %46, %51, %52) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %70 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %71:6 = builtin.unrealized_conversion_cast %70 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %72 = scf.forall (%arg6) in (%44) shared_outs(%arg7 = %71#4) -> (tensor<?xi64>) {
      %77 = builtin.unrealized_conversion_cast %arg6, %71#1, %c0, %71#3, %arg7, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %78 = arith.addi %arg6, %c1 : index
      %extracted = tensor.extract %45[%arg6] : tensor<?xi64>
      %79 = arith.index_cast %extracted : i64 to index
      %extracted_38 = tensor.extract %45[%78] : tensor<?xi64>
      %80 = arith.index_cast %extracted_38 : i64 to index
      %81 = arith.addi %arg6, %c1 : index
      %extracted_39 = tensor.extract %25[%arg6] : tensor<?xi64>
      %82 = arith.index_cast %extracted_39 : i64 to index
      %extracted_40 = tensor.extract %25[%81] : tensor<?xi64>
      %83 = arith.index_cast %extracted_40 : i64 to index
      %84:9 = scf.while (%arg8 = %arg6, %arg9 = %71#1, %arg10 = %c0, %arg11 = %71#3, %arg12 = %arg7, %arg13 = %71#5, %arg14 = %idx0, %arg15 = %79, %arg16 = %82) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
        %90 = arith.cmpi ult, %arg16, %83 : index
        %91 = arith.cmpi ult, %arg15, %80 : index
        %92 = arith.andi %91, %90 : i1
        scf.condition(%92) %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg8: index, %arg9: index, %arg10: index, %arg11: index, %arg12: tensor<?xi64>, %arg13: tensor<?xi64>, %arg14: index, %arg15: index, %arg16: index):
        %90 = "ta.SpTensorGetCrd"(%20, %arg16) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %91 = arith.index_cast %90 : i64 to index
        %92 = "ta.SpTensorGetCrd"(%48#0, %arg15) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %93 = arith.index_cast %92 : i64 to index
        %94 = arith.minui %93, %91 : index
        %95 = arith.cmpi eq, %94, %93 : index
        %96 = arith.cmpi eq, %94, %91 : index
        %97 = arith.andi %95, %96 : i1
        %98:7 = scf.if %97 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
          %idx1_43 = index.constant 1
          %104 = index.add %arg10, %idx1_43
          %105 = builtin.unrealized_conversion_cast %arg8, %arg9, %104, %arg11, %arg12, %arg13 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          %106 = index.add %arg14, %idx1
          scf.yield %arg8, %arg9, %104, %arg11, %arg12, %arg13, %106 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        } else {
          scf.yield %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        }
        %99 = builtin.unrealized_conversion_cast %98#0, %98#1, %98#2, %98#3, %98#4, %98#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %100 = index.castu %95 : i1 to index
        %101 = index.add %arg15, %100
        %102 = index.castu %96 : i1 to index
        %103 = index.add %arg16, %102
        scf.yield %98#0, %98#1, %98#2, %98#3, %98#4, %98#5, %98#6, %101, %103 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      }
      %85 = builtin.unrealized_conversion_cast %84#0, %84#1, %84#2, %84#3, %84#4, %84#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_41 = index.constant 1
      %86 = index.add %84#0, %idx1_41
      %87 = arith.index_cast %84#2 : index to i64
      %inserted_42 = tensor.insert %87 into %84#4[%86] : tensor<?xi64>
      %88 = builtin.unrealized_conversion_cast %86, %84#1, %84#2, %84#3, %inserted_42, %84#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %89:6 = builtin.unrealized_conversion_cast %88 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %89#4[%89#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%89#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %73 = arith.addi %44, %c1 : index
    %74:2 = scf.for %arg6 = %c1 to %73 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %72) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %77 = arith.addi %extracted, %arg7 : i64
      %inserted_38 = tensor.insert %77 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %77, %inserted_38 : i64, tensor<?xi64>
    }
    %75 = arith.index_cast %74#0 : i64 to index
    %76 = builtin.unrealized_conversion_cast %44, %71#1, %75, %71#3, %74#1, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %44, %71#1, %75, %71#3, %74#1, %71#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %55 = builtin.unrealized_conversion_cast %54#0, %54#1, %54#2, %54#3, %54#4, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_31 = index.constant 0
  %idx1_32 = index.constant 1
  %56 = arith.index_cast %44 : index to i64
  %idx1_33 = index.constant 1
  %57 = tensor.empty(%idx1_33) : tensor<?xi64>
  %inserted_34 = tensor.insert %56 into %57[%idx0_31] : tensor<?xi64>
  %58 = tensor.empty() : tensor<0xi64>
  %59 = tensor.empty() : tensor<0xi64>
  %60 = tensor.empty() : tensor<0xi64>
  %61 = index.mul %idx1_32, %44
  %62 = tensor.empty(%54#2) : tensor<?xi64>
  %63 = tensor.empty() : tensor<0xi64>
  %64 = tensor.empty() : tensor<0xi64>
  %65 = tensor.empty(%54#2) : tensor<?xf64>
  %cst_35 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_31 to %54#2 step %idx1_32 {
    %inserted_38 = tensor.insert %cst_35 into %65[%arg0] : tensor<?xf64>
  }
  %from_elements_36 = tensor.from_elements %44, %54#3 : tensor<2xindex>
  %66 = "ta.spTensor_construct"(%from_elements_36, %inserted_34, %54#4, %58, %62, %59, %63, %60, %64, %65) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %67 = "it.itree"(%66) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %70:7 = builtin.unrealized_conversion_cast %arg0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %71:2 = scf.forall (%arg1) in (%44) shared_outs(%arg2 = %70#5, %arg3 = %70#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %70#4[%arg1] : tensor<?xi64>
      %73 = arith.index_cast %extracted : i64 to index
      %74 = arith.addi %arg1, %c1 : index
      %extracted_38 = tensor.extract %70#4[%74] : tensor<?xi64>
      %75 = arith.index_cast %extracted_38 : i64 to index
      %76 = arith.subi %75, %73 : index
      %extracted_slice = tensor.extract_slice %arg2[%73] [%76] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_39 = tensor.extract_slice %arg3[%73] [%76] [1] : tensor<?xf64> to tensor<?xf64>
      %77 = builtin.unrealized_conversion_cast %70#0, %70#1, %70#2, %c0, %70#4, %extracted_slice, %extracted_slice_39 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %78 = arith.addi %arg1, %c1 : index
      %extracted_40 = tensor.extract %45[%arg1] : tensor<?xi64>
      %79 = arith.index_cast %extracted_40 : i64 to index
      %extracted_41 = tensor.extract %45[%78] : tensor<?xi64>
      %80 = arith.index_cast %extracted_41 : i64 to index
      %81 = arith.addi %arg1, %c1 : index
      %extracted_42 = tensor.extract %25[%arg1] : tensor<?xi64>
      %82 = arith.index_cast %extracted_42 : i64 to index
      %extracted_43 = tensor.extract %25[%81] : tensor<?xi64>
      %83 = arith.index_cast %extracted_43 : i64 to index
      %84:4 = scf.while (%arg4 = %77, %arg5 = %idx0, %arg6 = %79, %arg7 = %82) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %90 = arith.cmpi ult, %arg7, %83 : index
        %91 = arith.cmpi ult, %arg6, %80 : index
        %92 = arith.andi %91, %90 : i1
        scf.condition(%92) %arg4, %arg5, %arg6, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg4: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg5: index, %arg6: index, %arg7: index):
        %90 = "ta.SpTensorGetCrd"(%20, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %91 = arith.index_cast %90 : i64 to index
        %92 = "ta.SpTensorGetCrd"(%48#0, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %93 = arith.index_cast %92 : i64 to index
        %94 = arith.minui %93, %91 : index
        %95 = arith.cmpi eq, %94, %93 : index
        %96 = arith.cmpi eq, %94, %91 : index
        %97 = arith.andi %95, %96 : i1
        %98:2 = scf.if %97 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %103 = "ta.TensorFindPos"(%arg4, %94) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %104 = "ta.TAExtractOp"(%48#0, %arg6, %arg1, %94) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %105 = "ta.TAExtractOp"(%20, %arg7, %arg1, %94) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %106 = arith.mulf %104, %105 : f64
          %107 = "ta.TAInsertOp"(%arg4, %arg1, %103, %arg1, %94, %106) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %108 = index.add %arg5, %idx1
          scf.yield %107, %108 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg4, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %99 = index.castu %95 : i1 to index
        %100 = index.add %arg6, %99
        %101 = index.castu %96 : i1 to index
        %102 = index.add %arg7, %101
        scf.yield %98#0, %98#1, %100, %102 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      %85:7 = builtin.unrealized_conversion_cast %84#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %extracted_44 = tensor.extract %70#4[%arg1] : tensor<?xi64>
      %86 = arith.index_cast %extracted_44 : i64 to index
      %87 = arith.addi %arg1, %c1 : index
      %extracted_45 = tensor.extract %70#4[%87] : tensor<?xi64>
      %88 = arith.index_cast %extracted_45 : i64 to index
      %89 = arith.subi %88, %86 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %85#5 into %arg2[%86] [%89] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %85#6 into %arg3[%86] [%89] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %72 = builtin.unrealized_conversion_cast %70#0, %70#1, %70#2, %70#3, %70#4, %71#0, %71#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %72 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_37 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_37[%c0] : memref<1xf64>
  %68 = "ta.SpTensorGetVals"(%67) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
  %dim = tensor.dim %68, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %68[%arg0] : tensor<?xf64>
    %70 = memref.load %alloc_37[%c0] : memref<1xf64>
    %71 = arith.addf %extracted, %70 : f64
    memref.store %71, %alloc_37[%c0] : memref<1xf64>
  }
  %69 = memref.load %alloc_37[%c0] : memref<1xf64>
  "ta.print"(%69) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %21 = "it.DenseDomainOp"(%extracted, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_23 = index.constant 0
  %idx1_24 = index.constant 1
  %22 = index.add %extracted, %idx1_24
  %23 = tensor.empty(%22) : tensor<?xi64>
  %c0_i64_25 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_25 into %23[%idx0_23] : tensor<?xi64>
  %24 = tensor.empty(%extracted_22) : tensor<?xi64>
  %25 = builtin.unrealized_conversion_cast %idx0_23, %22, %idx0_23, %extracted_22, %23, %24 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %26:6 = "it.itree"(%idx0_23, %22, %idx0_23, %extracted_22, %23, %24) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %67 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %68:6 = builtin.unrealized_conversion_cast %67 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %69 = scf.forall (%arg6) in (%extracted) shared_outs(%arg7 = %68#4) -> (tensor<?xi64>) {
      %74 = builtin.unrealized_conversion_cast %arg6, %68#1, %c0, %68#3, %arg7, %68#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %75 = arith.addi %arg6, %c1 : index
      %extracted_54 = tensor.extract %15[%arg6] : tensor<?xi64>
      %76 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %15[%75] : tensor<?xi64>
      %77 = arith.index_cast %extracted_55 : i64 to index
      %78:6 = scf.for %arg8 = %76 to %77 step %c1 iter_args(%arg9 = %arg6, %arg10 = %68#1, %arg11 = %c0, %arg12 = %68#3, %arg13 = %arg7, %arg14 = %68#5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_58 = tensor.extract %16[%arg8] : tensor<?xi64>
        %84 = arith.index_cast %extracted_58 : i64 to index
        %85 = arith.addi %84, %c1 : index
        %extracted_59 = tensor.extract %15[%84] : tensor<?xi64>
        %86 = arith.index_cast %extracted_59 : i64 to index
        %extracted_60 = tensor.extract %15[%85] : tensor<?xi64>
        %87 = arith.index_cast %extracted_60 : i64 to index
        %88:6 = scf.for %arg15 = %86 to %87 step %c1 iter_args(%arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %extracted_61 = tensor.extract %16[%arg15] : tensor<?xi64>
          %90 = arith.index_cast %extracted_61 : i64 to index
          %idx1_62 = index.constant 1
          %91 = index.add %arg16, %idx1_62
          %92 = arith.index_cast %91 : index to i64
          %extracted_63 = tensor.extract %arg21[%90] : tensor<?xi64>
          %93 = arith.cmpi eq, %92, %extracted_63 : i64
          %94:2 = scf.if %93 -> (index, tensor<?xi64>) {
            scf.yield %arg18, %arg21 : index, tensor<?xi64>
          } else {
            %inserted_64 = tensor.insert %92 into %arg21[%90] : tensor<?xi64>
            %96 = index.add %arg18, %idx1_62
            scf.yield %96, %inserted_64 : index, tensor<?xi64>
          }
          %95 = builtin.unrealized_conversion_cast %arg16, %arg17, %94#0, %arg19, %arg20, %94#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg16, %arg17, %94#0, %arg19, %arg20, %94#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %89 = builtin.unrealized_conversion_cast %88#0, %88#1, %88#2, %88#3, %88#4, %88#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %88#0, %88#1, %88#2, %88#3, %88#4, %88#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %79 = builtin.unrealized_conversion_cast %78#0, %78#1, %78#2, %78#3, %78#4, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_56 = index.constant 1
      %80 = index.add %78#0, %idx1_56
      %81 = arith.index_cast %78#2 : index to i64
      %inserted_57 = tensor.insert %81 into %78#4[%80] : tensor<?xi64>
      %82 = builtin.unrealized_conversion_cast %80, %78#1, %78#2, %78#3, %inserted_57, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %83:6 = builtin.unrealized_conversion_cast %82 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %83#4[%83#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%83#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %70 = arith.addi %extracted, %c1 : index
    %71:2 = scf.for %arg6 = %c1 to %70 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %69) -> (i64, tensor<?xi64>) {
      %extracted_54 = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %74 = arith.addi %extracted_54, %arg7 : i64
      %inserted_55 = tensor.insert %74 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %74, %inserted_55 : i64, tensor<?xi64>
    }
    %72 = arith.index_cast %71#0 : i64 to index
    %73 = builtin.unrealized_conversion_cast %extracted, %68#1, %72, %68#3, %71#1, %68#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %extracted, %68#1, %72, %68#3, %71#1, %68#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %27 = builtin.unrealized_conversion_cast %26#0, %26#1, %26#2, %26#3, %26#4, %26#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_26 = index.constant 0
  %idx1_27 = index.constant 1
  %28 = arith.index_cast %extracted : index to i64
  %idx1_28 = index.constant 1
  %29 = tensor.empty(%idx1_28) : tensor<?xi64>
  %inserted_29 = tensor.insert %28 into %29[%idx0_26] : tensor<?xi64>
  %30 = tensor.empty() : tensor<0xi64>
  %31 = tensor.empty() : tensor<0xi64>
  %32 = tensor.empty() : tensor<0xi64>
  %33 = index.mul %idx1_27, %extracted
  %34 = tensor.empty(%26#2) : tensor<?xi64>
  %35 = tensor.empty() : tensor<0xi64>
  %36 = tensor.empty() : tensor<0xi64>
  %37 = tensor.empty(%26#2) : tensor<?xf64>
  %cst_30 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_26 to %26#2 step %idx1_27 {
    %inserted_54 = tensor.insert %cst_30 into %37[%arg0] : tensor<?xf64>
  }
  %from_elements_31 = tensor.from_elements %extracted, %26#3 : tensor<2xindex>
  %idx0_32 = index.constant 0
  %idx0_33 = index.constant 0
  %38 = builtin.unrealized_conversion_cast %from_elements_31, %idx0_32, %inserted_29, %idx0_33, %26#4, %34, %37 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_34 = index.constant 0
  %extracted_35 = tensor.extract %from_elements_31[%idx0_34] : tensor<2xindex>
  %idx1_36 = index.constant 1
  %extracted_37 = tensor.extract %from_elements_31[%idx1_36] : tensor<2xindex>
  %idx1_38 = index.constant 1
  %extracted_39 = tensor.extract %from_elements_31[%idx1_38] : tensor<2xindex>
  %39 = bufferization.alloc_tensor(%extracted_39) : tensor<?xf64>
  %c1_i32 = arith.constant 1 : i32
  %40 = bufferization.alloc_tensor(%extracted_39) : tensor<?xi32>
  %idx0_40 = index.constant 0
  %41 = bufferization.alloc_tensor(%extracted_39) : tensor<?xi64>
  %42 = builtin.unrealized_conversion_cast %39, %c1_i32, %40, %idx0_40, %41 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %43:12 = "it.itree"(%from_elements_31, %idx0_32, %inserted_29, %idx0_33, %26#4, %34, %37, %39, %c1_i32, %40, %idx0_40, %41) <{operandSegmentSizes = array<i32: 7, 5>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: tensor<?xf64>, %arg8: i32, %arg9: tensor<?xi32>, %arg10: index, %arg11: tensor<?xi64>):
    %67 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %68:7 = builtin.unrealized_conversion_cast %67 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %69:2 = scf.forall (%arg12) in (%extracted) shared_outs(%arg13 = %68#5, %arg14 = %68#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_54 = tensor.extract %68#4[%arg12] : tensor<?xi64>
      %71 = arith.index_cast %extracted_54 : i64 to index
      %72 = arith.addi %arg12, %c1 : index
      %extracted_55 = tensor.extract %68#4[%72] : tensor<?xi64>
      %73 = arith.index_cast %extracted_55 : i64 to index
      %74 = arith.subi %73, %71 : index
      %extracted_slice = tensor.extract_slice %arg13[%71] [%74] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_56 = tensor.extract_slice %arg14[%71] [%74] [1] : tensor<?xf64> to tensor<?xf64>
      %75 = builtin.unrealized_conversion_cast %68#0, %68#1, %68#2, %c0, %68#4, %extracted_slice, %extracted_slice_56 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %c1_i32_57 = arith.constant 1 : i32
      %76 = arith.index_cast %arg12 : index to i32
      %77 = arith.addi %76, %c1_i32_57 : i32
      %idx0_58 = index.constant 0
      %78 = builtin.unrealized_conversion_cast %arg7, %77, %arg9, %idx0_58, %arg11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %79 = arith.addi %arg12, %c1 : index
      %extracted_59 = tensor.extract %15[%arg12] : tensor<?xi64>
      %80 = arith.index_cast %extracted_59 : i64 to index
      %extracted_60 = tensor.extract %15[%79] : tensor<?xi64>
      %81 = arith.index_cast %extracted_60 : i64 to index
      %82:12 = scf.for %arg15 = %80 to %81 step %c1 iter_args(%arg16 = %68#0, %arg17 = %68#1, %arg18 = %68#2, %arg19 = %c0, %arg20 = %68#4, %arg21 = %extracted_slice, %arg22 = %extracted_slice_56, %arg23 = %arg7, %arg24 = %77, %arg25 = %arg9, %arg26 = %idx0_58, %arg27 = %arg11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_62 = tensor.extract %16[%arg15] : tensor<?xi64>
        %90 = arith.index_cast %extracted_62 : i64 to index
        %91 = arith.addi %90, %c1 : index
        %extracted_63 = tensor.extract %15[%90] : tensor<?xi64>
        %92 = arith.index_cast %extracted_63 : i64 to index
        %extracted_64 = tensor.extract %15[%91] : tensor<?xi64>
        %93 = arith.index_cast %extracted_64 : i64 to index
        %94:12 = scf.for %arg28 = %92 to %93 step %c1 iter_args(%arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %arg21, %arg35 = %arg22, %arg36 = %arg23, %arg37 = %arg24, %arg38 = %arg25, %arg39 = %arg26, %arg40 = %arg27) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_65 = tensor.extract %16[%arg15] : tensor<?xi64>
          %97 = arith.index_cast %extracted_65 : i64 to index
          %extracted_66 = tensor.extract %16[%arg28] : tensor<?xi64>
          %98 = arith.index_cast %extracted_66 : i64 to index
          %extracted_67 = tensor.extract %16[%arg28] : tensor<?xi64>
          %99 = arith.index_cast %extracted_67 : i64 to index
          %extracted_68 = tensor.extract %19[%arg15] : tensor<?xf64>
          %extracted_69 = tensor.extract %19[%arg28] : tensor<?xf64>
          %100 = arith.mulf %extracted_68, %extracted_69 : f64
          %extracted_70 = tensor.extract %arg38[%99] : tensor<?xi32>
          %101 = arith.cmpi eq, %extracted_70, %arg37 : i32
          %102:4 = scf.if %101 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_71 = tensor.extract %arg36[%99] : tensor<?xf64>
            %104 = arith.addf %extracted_71, %100 : f64
            %inserted_72 = tensor.insert %104 into %arg36[%99] : tensor<?xf64>
            scf.yield %arg38, %arg39, %arg40, %inserted_72 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_71 = tensor.insert %arg37 into %arg38[%99] : tensor<?xi32>
            %104 = arith.index_cast %99 : index to i64
            %inserted_72 = tensor.insert %104 into %arg40[%arg39] : tensor<?xi64>
            %idx1_73 = index.constant 1
            %105 = index.add %arg39, %idx1_73
            %inserted_74 = tensor.insert %100 into %arg36[%99] : tensor<?xf64>
            scf.yield %inserted_71, %105, %inserted_72, %inserted_74 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          %103 = builtin.unrealized_conversion_cast %102#3, %arg37, %102#0, %102#1, %102#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
          scf.yield %arg29, %arg30, %arg31, %arg32, %arg33, %arg34, %arg35, %102#3, %arg37, %102#0, %102#1, %102#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        }
        %95 = builtin.unrealized_conversion_cast %94#0, %94#1, %94#2, %94#3, %94#4, %94#5, %94#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %96 = builtin.unrealized_conversion_cast %94#7, %94#8, %94#9, %94#10, %94#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %94#0, %94#1, %94#2, %94#3, %94#4, %94#5, %94#6, %94#7, %94#8, %94#9, %94#10, %94#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %83 = builtin.unrealized_conversion_cast %82#0, %82#1, %82#2, %82#3, %82#4, %82#5, %82#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %84 = builtin.unrealized_conversion_cast %82#7, %82#8, %82#9, %82#10, %82#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %idx0_61 = index.constant 0
      %85 = "ta.TensorSortOp"(%82#11, %idx0_61, %82#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %86 = builtin.unrealized_conversion_cast %82#7, %82#8, %82#9, %82#10, %85 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %87:7 = builtin.unrealized_conversion_cast %83 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %88:7 = scf.for %arg15 = %c0 to %82#10 step %c1 iter_args(%arg16 = %87#5, %arg17 = %87#6, %arg18 = %82#7, %arg19 = %82#8, %arg20 = %82#9, %arg21 = %82#10, %arg22 = %85) -> (tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_62 = tensor.extract %arg22[%arg15] : tensor<?xi64>
        %90 = arith.index_cast %extracted_62 : i64 to index
        %extracted_63 = tensor.extract %arg18[%90] : tensor<?xf64>
        %inserted_64 = tensor.insert %extracted_62 into %arg16[%arg15] : tensor<?xi64>
        %inserted_65 = tensor.insert %extracted_63 into %arg17[%arg15] : tensor<?xf64>
        scf.yield %inserted_64, %inserted_65, %arg18, %arg19, %arg20, %arg21, %arg22 : tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %89 = builtin.unrealized_conversion_cast %88#2, %88#3, %88#4, %88#5, %88#6 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %88#0 into %arg13[%71] [%74] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %88#1 into %arg14[%71] [%74] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %70 = builtin.unrealized_conversion_cast %68#0, %68#1, %68#2, %68#3, %68#4, %69#0, %69#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %68#0, %68#1, %68#2, %68#3, %68#4, %69#0, %69#1, %arg7, %arg8, %arg9, %arg10, %arg11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>)
  %44 = builtin.unrealized_conversion_cast %43#0, %43#1, %43#2, %43#3, %43#4, %43#5, %43#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %45 = builtin.unrealized_conversion_cast %43#7, %43#8, %43#9, %43#10, %43#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %46 = "it.DenseDomainOp"(%extracted_35, %44, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_41 = index.constant 0
  %idx1_42 = index.constant 1
  %47 = index.add %extracted_35, %idx1_42
  %48 = tensor.empty(%47) : tensor<?xi64>
  %c0_i64_43 = arith.constant 0 : i64
  %inserted_44 = tensor.insert %c0_i64_43 into %48[%idx0_41] : tensor<?xi64>
  %49 = tensor.empty(%extracted_37) : tensor<?xi64>
  %50 = builtin.unrealized_conversion_cast %idx0_41, %47, %idx0_41, %extracted_37, %48, %49 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %51:6 = "it.itree"(%idx0_41, %47, %idx0_41, %extracted_37, %48, %49) <{operandSegmentSizes = array<i32: 6, 0>}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>):
    %67 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %68:6 = builtin.unrealized_conversion_cast %67 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
    %69 = scf.forall (%arg6) in (%extracted_35) shared_outs(%arg7 = %68#4) -> (tensor<?xi64>) {
      %74 = builtin.unrealized_conversion_cast %arg6, %68#1, %c0, %68#3, %arg7, %68#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %75 = arith.addi %arg6, %c1 : index
      %extracted_54 = tensor.extract %26#4[%arg6] : tensor<?xi64>
      %76 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %26#4[%75] : tensor<?xi64>
      %77 = arith.index_cast %extracted_55 : i64 to index
      %78 = arith.addi %arg6, %c1 : index
      %extracted_56 = tensor.extract %15[%arg6] : tensor<?xi64>
      %79 = arith.index_cast %extracted_56 : i64 to index
      %extracted_57 = tensor.extract %15[%78] : tensor<?xi64>
      %80 = arith.index_cast %extracted_57 : i64 to index
      %81:9 = scf.while (%arg8 = %arg6, %arg9 = %68#1, %arg10 = %c0, %arg11 = %68#3, %arg12 = %arg7, %arg13 = %68#5, %arg14 = %idx0, %arg15 = %76, %arg16 = %79) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
        %87 = arith.cmpi ult, %arg16, %80 : index
        %88 = arith.cmpi ult, %arg15, %77 : index
        %89 = arith.andi %88, %87 : i1
        scf.condition(%89) %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg8: index, %arg9: index, %arg10: index, %arg11: index, %arg12: tensor<?xi64>, %arg13: tensor<?xi64>, %arg14: index, %arg15: index, %arg16: index):
        %extracted_60 = tensor.extract %16[%arg16] : tensor<?xi64>
        %87 = arith.index_cast %extracted_60 : i64 to index
        %extracted_61 = tensor.extract %43#5[%arg15] : tensor<?xi64>
        %88 = arith.index_cast %extracted_61 : i64 to index
        %89 = arith.minui %88, %87 : index
        %90 = arith.cmpi eq, %89, %88 : index
        %91 = arith.cmpi eq, %89, %87 : index
        %92 = arith.andi %90, %91 : i1
        %93:7 = scf.if %92 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
          %idx1_62 = index.constant 1
          %99 = index.add %arg10, %idx1_62
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
      %82 = builtin.unrealized_conversion_cast %81#0, %81#1, %81#2, %81#3, %81#4, %81#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_58 = index.constant 1
      %83 = index.add %81#0, %idx1_58
      %84 = arith.index_cast %81#2 : index to i64
      %inserted_59 = tensor.insert %84 into %81#4[%83] : tensor<?xi64>
      %85 = builtin.unrealized_conversion_cast %83, %81#1, %81#2, %81#3, %inserted_59, %81#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %86:6 = builtin.unrealized_conversion_cast %85 : !it.symbolic_domain<64> to index, index, index, index, tensor<?xi64>, tensor<?xi64>
      %extracted_slice = tensor.extract_slice %86#4[%86#0] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg7[%86#0] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %70 = arith.addi %extracted_35, %c1 : index
    %71:2 = scf.for %arg6 = %c1 to %70 step %c1 iter_args(%arg7 = %c0_i64, %arg8 = %69) -> (i64, tensor<?xi64>) {
      %extracted_54 = tensor.extract %arg8[%arg6] : tensor<?xi64>
      %74 = arith.addi %extracted_54, %arg7 : i64
      %inserted_55 = tensor.insert %74 into %arg8[%arg6] : tensor<?xi64>
      scf.yield %74, %inserted_55 : i64, tensor<?xi64>
    }
    %72 = arith.index_cast %71#0 : i64 to index
    %73 = builtin.unrealized_conversion_cast %extracted_35, %68#1, %72, %68#3, %71#1, %68#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %extracted_35, %68#1, %72, %68#3, %71#1, %68#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
  %52 = builtin.unrealized_conversion_cast %51#0, %51#1, %51#2, %51#3, %51#4, %51#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_45 = index.constant 0
  %idx1_46 = index.constant 1
  %53 = arith.index_cast %extracted_35 : index to i64
  %idx1_47 = index.constant 1
  %54 = tensor.empty(%idx1_47) : tensor<?xi64>
  %inserted_48 = tensor.insert %53 into %54[%idx0_45] : tensor<?xi64>
  %55 = tensor.empty() : tensor<0xi64>
  %56 = tensor.empty() : tensor<0xi64>
  %57 = tensor.empty() : tensor<0xi64>
  %58 = index.mul %idx1_46, %extracted_35
  %59 = tensor.empty(%51#2) : tensor<?xi64>
  %60 = tensor.empty() : tensor<0xi64>
  %61 = tensor.empty() : tensor<0xi64>
  %62 = tensor.empty(%51#2) : tensor<?xf64>
  %cst_49 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_45 to %51#2 step %idx1_46 {
    %inserted_54 = tensor.insert %cst_49 into %62[%arg0] : tensor<?xf64>
  }
  %from_elements_50 = tensor.from_elements %extracted_35, %51#3 : tensor<2xindex>
  %idx0_51 = index.constant 0
  %idx0_52 = index.constant 0
  %63 = builtin.unrealized_conversion_cast %from_elements_50, %idx0_51, %inserted_48, %idx0_52, %51#4, %59, %62 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %64:7 = "it.itree"(%from_elements_50, %idx0_51, %inserted_48, %idx0_52, %51#4, %59, %62) <{operandSegmentSizes = array<i32: 7, 0>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>):
    %67 = builtin.unrealized_conversion_cast %arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %68:7 = builtin.unrealized_conversion_cast %67 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    %69:2 = scf.forall (%arg7) in (%extracted_35) shared_outs(%arg8 = %68#5, %arg9 = %68#6) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_54 = tensor.extract %68#4[%arg7] : tensor<?xi64>
      %71 = arith.index_cast %extracted_54 : i64 to index
      %72 = arith.addi %arg7, %c1 : index
      %extracted_55 = tensor.extract %68#4[%72] : tensor<?xi64>
      %73 = arith.index_cast %extracted_55 : i64 to index
      %74 = arith.subi %73, %71 : index
      %extracted_slice = tensor.extract_slice %arg8[%71] [%74] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_56 = tensor.extract_slice %arg9[%71] [%74] [1] : tensor<?xf64> to tensor<?xf64>
      %75 = builtin.unrealized_conversion_cast %68#0, %68#1, %68#2, %c0, %68#4, %extracted_slice, %extracted_slice_56 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %76 = arith.addi %arg7, %c1 : index
      %extracted_57 = tensor.extract %26#4[%arg7] : tensor<?xi64>
      %77 = arith.index_cast %extracted_57 : i64 to index
      %extracted_58 = tensor.extract %26#4[%76] : tensor<?xi64>
      %78 = arith.index_cast %extracted_58 : i64 to index
      %79 = arith.addi %arg7, %c1 : index
      %extracted_59 = tensor.extract %15[%arg7] : tensor<?xi64>
      %80 = arith.index_cast %extracted_59 : i64 to index
      %extracted_60 = tensor.extract %15[%79] : tensor<?xi64>
      %81 = arith.index_cast %extracted_60 : i64 to index
      %82:10 = scf.while (%arg10 = %68#0, %arg11 = %68#1, %arg12 = %68#2, %arg13 = %c0, %arg14 = %68#4, %arg15 = %extracted_slice, %arg16 = %extracted_slice_56, %arg17 = %idx0, %arg18 = %77, %arg19 = %80) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %89 = arith.cmpi ult, %arg19, %81 : index
        %90 = arith.cmpi ult, %arg18, %78 : index
        %91 = arith.andi %90, %89 : i1
        scf.condition(%91) %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg10: tensor<2xindex>, %arg11: index, %arg12: tensor<?xi64>, %arg13: index, %arg14: tensor<?xi64>, %arg15: tensor<?xi64>, %arg16: tensor<?xf64>, %arg17: index, %arg18: index, %arg19: index):
        %extracted_63 = tensor.extract %16[%arg19] : tensor<?xi64>
        %89 = arith.index_cast %extracted_63 : i64 to index
        %extracted_64 = tensor.extract %43#5[%arg18] : tensor<?xi64>
        %90 = arith.index_cast %extracted_64 : i64 to index
        %91 = arith.minui %90, %89 : index
        %92 = arith.cmpi eq, %91, %90 : index
        %93 = arith.cmpi eq, %91, %89 : index
        %94 = arith.andi %92, %93 : i1
        %95:8 = scf.if %94 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_65 = tensor.extract %43#6[%arg18] : tensor<?xf64>
          %extracted_66 = tensor.extract %19[%arg19] : tensor<?xf64>
          %101 = arith.mulf %extracted_65, %extracted_66 : f64
          %102 = arith.index_cast %91 : index to i64
          %inserted_67 = tensor.insert %102 into %arg15[%arg13] : tensor<?xi64>
          %idx1_68 = index.constant 1
          %103 = index.add %arg13, %idx1_68
          %inserted_69 = tensor.insert %101 into %arg16[%arg13] : tensor<?xf64>
          %104 = builtin.unrealized_conversion_cast %arg10, %arg11, %arg12, %103, %arg14, %inserted_67, %inserted_69 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %105 = index.add %arg17, %idx1
          scf.yield %arg10, %arg11, %arg12, %103, %arg14, %inserted_67, %inserted_69, %105 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
        }
        %96 = builtin.unrealized_conversion_cast %95#0, %95#1, %95#2, %95#3, %95#4, %95#5, %95#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %97 = index.castu %92 : i1 to index
        %98 = index.add %arg18, %97
        %99 = index.castu %93 : i1 to index
        %100 = index.add %arg19, %99
        scf.yield %95#0, %95#1, %95#2, %95#3, %95#4, %95#5, %95#6, %95#7, %98, %100 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %83 = builtin.unrealized_conversion_cast %82#0, %82#1, %82#2, %82#3, %82#4, %82#5, %82#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %84:7 = builtin.unrealized_conversion_cast %83 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk> to tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      %extracted_61 = tensor.extract %68#4[%arg7] : tensor<?xi64>
      %85 = arith.index_cast %extracted_61 : i64 to index
      %86 = arith.addi %arg7, %c1 : index
      %extracted_62 = tensor.extract %68#4[%86] : tensor<?xi64>
      %87 = arith.index_cast %extracted_62 : i64 to index
      %88 = arith.subi %87, %85 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %84#5 into %arg8[%85] [%88] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %84#6 into %arg9[%85] [%88] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %70 = builtin.unrealized_conversion_cast %68#0, %68#1, %68#2, %68#3, %68#4, %69#0, %69#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %68#0, %68#1, %68#2, %68#3, %68#4, %69#0, %69#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>)
  %65 = builtin.unrealized_conversion_cast %64#0, %64#1, %64#2, %64#3, %64#4, %64#5, %64#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_53 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_53[%c0] : memref<1xf64>
  %dim = tensor.dim %64#6, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted_54 = tensor.extract %64#6[%arg0] : tensor<?xf64>
    %67 = memref.load %alloc_53[%c0] : memref<1xf64>
    %68 = arith.addf %extracted_54, %67 : f64
    memref.store %68, %alloc_53[%c0] : memref<1xf64>
  }
  %66 = memref.load %alloc_53[%c0] : memref<1xf64>
  "ta.print"(%66) : (f64) -> ()
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %21 = "it.DenseDomainOp"(%9, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_22 = index.constant 0
  %idx1_23 = index.constant 1
  %22 = index.add %9, %idx1_23
  %23 = tensor.empty(%22) : tensor<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  %inserted = tensor.insert %c0_i64_24 into %23[%idx0_22] : tensor<?xi64>
  %24 = tensor.empty(%10) : tensor<?xi64>
  %25 = builtin.unrealized_conversion_cast %idx0_22, %22, %idx0_22, %10, %23, %24 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %26 = builtin.unrealized_conversion_cast %idx0_22, %22, %idx0_22, %10, %23, %24 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %27 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %23) -> (tensor<?xi64>) {
    %81 = builtin.unrealized_conversion_cast %arg0, %22, %c0, %10, %arg1, %24 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %82 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %83 = arith.index_cast %extracted : i64 to index
    %extracted_50 = tensor.extract %15[%82] : tensor<?xi64>
    %84 = arith.index_cast %extracted_50 : i64 to index
    %85:6 = scf.for %arg2 = %83 to %84 step %c1 iter_args(%arg3 = %arg0, %arg4 = %22, %arg5 = %c0, %arg6 = %10, %arg7 = %arg1, %arg8 = %24) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %extracted_53 = tensor.extract %16[%arg2] : tensor<?xi64>
      %90 = arith.index_cast %extracted_53 : i64 to index
      %91 = arith.addi %90, %c1 : index
      %extracted_54 = tensor.extract %15[%90] : tensor<?xi64>
      %92 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %15[%91] : tensor<?xi64>
      %93 = arith.index_cast %extracted_55 : i64 to index
      %94:6 = scf.for %arg9 = %92 to %93 step %c1 iter_args(%arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6, %arg14 = %arg7, %arg15 = %arg8) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_56 = tensor.extract %16[%arg9] : tensor<?xi64>
        %96 = arith.index_cast %extracted_56 : i64 to index
        %idx1_57 = index.constant 1
        %97 = index.add %arg10, %idx1_57
        %98 = arith.index_cast %97 : index to i64
        %extracted_58 = tensor.extract %arg15[%96] : tensor<?xi64>
        %99 = arith.cmpi eq, %98, %extracted_58 : i64
        %100:2 = scf.if %99 -> (index, tensor<?xi64>) {
          scf.yield %arg12, %arg15 : index, tensor<?xi64>
        } else {
          %inserted_59 = tensor.insert %98 into %arg15[%96] : tensor<?xi64>
          %102 = index.add %arg12, %idx1_57
          scf.yield %102, %inserted_59 : index, tensor<?xi64>
        }
        %101 = builtin.unrealized_conversion_cast %arg10, %arg11, %100#0, %arg13, %arg14, %100#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %arg10, %arg11, %100#0, %arg13, %arg14, %100#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %95 = builtin.unrealized_conversion_cast %94#0, %94#1, %94#2, %94#3, %94#4, %94#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %94#0, %94#1, %94#2, %94#3, %94#4, %94#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %86 = builtin.unrealized_conversion_cast %85#0, %85#1, %85#2, %85#3, %85#4, %85#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx1_51 = index.constant 1
    %87 = index.add %85#0, %idx1_51
    %88 = arith.index_cast %85#2 : index to i64
    %inserted_52 = tensor.insert %88 into %85#4[%87] : tensor<?xi64>
    %89 = builtin.unrealized_conversion_cast %87, %85#1, %85#2, %85#3, %inserted_52, %85#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %extracted_slice = tensor.extract_slice %inserted_52[%87] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%87] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %28 = arith.addi %9, %c1 : index
  %29:2 = scf.for %arg0 = %c1 to %28 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %27) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %81 = arith.addi %extracted, %arg1 : i64
    %inserted_50 = tensor.insert %81 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %81, %inserted_50 : i64, tensor<?xi64>
  }
  %30 = arith.index_cast %29#0 : i64 to index
  %31 = builtin.unrealized_conversion_cast %9, %22, %30, %10, %29#1, %24 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %32 = builtin.unrealized_conversion_cast %9, %22, %30, %10, %29#1, %24 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_25 = index.constant 0
  %idx1_26 = index.constant 1
  %33 = arith.index_cast %9 : index to i64
  %idx1_27 = index.constant 1
  %34 = tensor.empty(%idx1_27) : tensor<?xi64>
  %inserted_28 = tensor.insert %33 into %34[%idx0_25] : tensor<?xi64>
  %35 = tensor.empty() : tensor<0xi64>
  %36 = tensor.empty() : tensor<0xi64>
  %37 = tensor.empty() : tensor<0xi64>
  %38 = index.mul %idx1_26, %9
  %39 = tensor.empty(%30) : tensor<?xi64>
  %40 = tensor.empty() : tensor<0xi64>
  %41 = tensor.empty() : tensor<0xi64>
  %42 = tensor.empty(%30) : tensor<?xf64>
  %cst_29 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_25 to %30 step %idx1_26 {
    %inserted_50 = tensor.insert %cst_29 into %42[%arg0] : tensor<?xf64>
  }
  %from_elements_30 = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_31 = index.constant 0
  %idx0_32 = index.constant 0
  %43 = builtin.unrealized_conversion_cast %from_elements_30, %idx0_31, %inserted_28, %idx0_32, %29#1, %39, %42 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_33 = index.constant 0
  %idx1_34 = index.constant 1
  %idx1_35 = index.constant 1
  %44 = bufferization.alloc_tensor(%10) : tensor<?xf64>
  %c1_i32 = arith.constant 1 : i32
  %45 = bufferization.alloc_tensor(%10) : tensor<?xi32>
  %idx0_36 = index.constant 0
  %46 = bufferization.alloc_tensor(%10) : tensor<?xi64>
  %47 = builtin.unrealized_conversion_cast %44, %c1_i32, %45, %idx0_36, %46 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %48 = builtin.unrealized_conversion_cast %from_elements_30, %idx0_31, %inserted_28, %idx0_32, %29#1, %39, %42 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %49:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %39, %arg2 = %42) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %29#1[%arg0] : tensor<?xi64>
    %81 = arith.index_cast %extracted : i64 to index
    %82 = arith.addi %arg0, %c1 : index
    %extracted_50 = tensor.extract %29#1[%82] : tensor<?xi64>
    %83 = arith.index_cast %extracted_50 : i64 to index
    %84 = arith.subi %83, %81 : index
    %extracted_slice = tensor.extract_slice %arg1[%81] [%84] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_51 = tensor.extract_slice %arg2[%81] [%84] [1] : tensor<?xf64> to tensor<?xf64>
    %85 = builtin.unrealized_conversion_cast %from_elements_30, %idx0_31, %inserted_28, %c0, %29#1, %extracted_slice, %extracted_slice_51 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c1_i32_52 = arith.constant 1 : i32
    %86 = arith.index_cast %arg0 : index to i32
    %87 = arith.addi %86, %c1_i32_52 : i32
    %idx0_53 = index.constant 0
    %88 = builtin.unrealized_conversion_cast %44, %87, %45, %idx0_53, %46 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %89 = arith.addi %arg0, %c1 : index
    %extracted_54 = tensor.extract %15[%arg0] : tensor<?xi64>
    %90 = arith.index_cast %extracted_54 : i64 to index
    %extracted_55 = tensor.extract %15[%89] : tensor<?xi64>
    %91 = arith.index_cast %extracted_55 : i64 to index
    %92:12 = scf.for %arg3 = %90 to %91 step %c1 iter_args(%arg4 = %from_elements_30, %arg5 = %idx0_31, %arg6 = %inserted_28, %arg7 = %c0, %arg8 = %29#1, %arg9 = %extracted_slice, %arg10 = %extracted_slice_51, %arg11 = %44, %arg12 = %87, %arg13 = %45, %arg14 = %idx0_53, %arg15 = %46) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_57 = tensor.extract %16[%arg3] : tensor<?xi64>
      %99 = arith.index_cast %extracted_57 : i64 to index
      %100 = arith.addi %99, %c1 : index
      %extracted_58 = tensor.extract %15[%99] : tensor<?xi64>
      %101 = arith.index_cast %extracted_58 : i64 to index
      %extracted_59 = tensor.extract %15[%100] : tensor<?xi64>
      %102 = arith.index_cast %extracted_59 : i64 to index
      %103:12 = scf.for %arg16 = %101 to %102 step %c1 iter_args(%arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %arg9, %arg23 = %arg10, %arg24 = %arg11, %arg25 = %arg12, %arg26 = %arg13, %arg27 = %arg14, %arg28 = %arg15) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_60 = tensor.extract %16[%arg3] : tensor<?xi64>
        %106 = arith.index_cast %extracted_60 : i64 to index
        %extracted_61 = tensor.extract %16[%arg16] : tensor<?xi64>
        %107 = arith.index_cast %extracted_61 : i64 to index
        %extracted_62 = tensor.extract %16[%arg16] : tensor<?xi64>
        %108 = arith.index_cast %extracted_62 : i64 to index
        %extracted_63 = tensor.extract %19[%arg3] : tensor<?xf64>
        %extracted_64 = tensor.extract %19[%arg16] : tensor<?xf64>
        %109 = arith.mulf %extracted_63, %extracted_64 : f64
        %extracted_65 = tensor.extract %arg26[%108] : tensor<?xi32>
        %110 = arith.cmpi eq, %extracted_65, %arg25 : i32
        %111:4 = scf.if %110 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_66 = tensor.extract %arg24[%108] : tensor<?xf64>
          %113 = arith.addf %extracted_66, %109 : f64
          %inserted_67 = tensor.insert %113 into %arg24[%108] : tensor<?xf64>
          scf.yield %arg26, %arg27, %arg28, %inserted_67 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_66 = tensor.insert %arg25 into %arg26[%108] : tensor<?xi32>
          %113 = arith.index_cast %108 : index to i64
          %inserted_67 = tensor.insert %113 into %arg28[%arg27] : tensor<?xi64>
          %idx1_68 = index.constant 1
          %114 = index.add %arg27, %idx1_68
          %inserted_69 = tensor.insert %109 into %arg24[%108] : tensor<?xf64>
          scf.yield %inserted_66, %114, %inserted_67, %inserted_69 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        %112 = builtin.unrealized_conversion_cast %111#3, %arg25, %111#0, %111#1, %111#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %arg17, %arg18, %arg19, %arg20, %arg21, %arg22, %arg23, %111#3, %arg25, %111#0, %111#1, %111#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %104 = builtin.unrealized_conversion_cast %103#0, %103#1, %103#2, %103#3, %103#4, %103#5, %103#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %105 = builtin.unrealized_conversion_cast %103#7, %103#8, %103#9, %103#10, %103#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.yield %103#0, %103#1, %103#2, %103#3, %103#4, %103#5, %103#6, %103#7, %103#8, %103#9, %103#10, %103#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %93 = builtin.unrealized_conversion_cast %92#0, %92#1, %92#2, %92#3, %92#4, %92#5, %92#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %94 = builtin.unrealized_conversion_cast %92#7, %92#8, %92#9, %92#10, %92#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %idx0_56 = index.constant 0
    %95 = "ta.TensorSortOp"(%92#11, %idx0_56, %92#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %96 = builtin.unrealized_conversion_cast %92#7, %92#8, %92#9, %92#10, %95 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %97:7 = scf.for %arg3 = %c0 to %92#10 step %c1 iter_args(%arg4 = %92#5, %arg5 = %92#6, %arg6 = %92#7, %arg7 = %92#8, %arg8 = %92#9, %arg9 = %92#10, %arg10 = %95) -> (tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_57 = tensor.extract %arg10[%arg3] : tensor<?xi64>
      %99 = arith.index_cast %extracted_57 : i64 to index
      %extracted_58 = tensor.extract %arg6[%99] : tensor<?xf64>
      %inserted_59 = tensor.insert %extracted_57 into %arg4[%arg3] : tensor<?xi64>
      %inserted_60 = tensor.insert %extracted_58 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted_59, %inserted_60, %arg6, %arg7, %arg8, %arg9, %arg10 : tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %98 = builtin.unrealized_conversion_cast %97#2, %97#3, %97#4, %97#5, %97#6 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %97#0 into %arg1[%81] [%84] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %97#1 into %arg2[%81] [%84] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %50 = builtin.unrealized_conversion_cast %from_elements_30, %idx0_31, %inserted_28, %idx0_32, %29#1, %49#0, %49#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %51 = builtin.unrealized_conversion_cast %from_elements_30, %idx0_31, %inserted_28, %idx0_32, %29#1, %49#0, %49#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = builtin.unrealized_conversion_cast %44, %c1_i32, %45, %idx0_36, %46 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %53 = "it.DenseDomainOp"(%9, %51, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_37 = index.constant 0
  %idx1_38 = index.constant 1
  %54 = index.add %9, %idx1_38
  %55 = tensor.empty(%54) : tensor<?xi64>
  %c0_i64_39 = arith.constant 0 : i64
  %inserted_40 = tensor.insert %c0_i64_39 into %55[%idx0_37] : tensor<?xi64>
  %56 = tensor.empty(%10) : tensor<?xi64>
  %57 = builtin.unrealized_conversion_cast %idx0_37, %54, %idx0_37, %10, %55, %56 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %58 = builtin.unrealized_conversion_cast %idx0_37, %54, %idx0_37, %10, %55, %56 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %59 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %55) -> (tensor<?xi64>) {
    %81 = builtin.unrealized_conversion_cast %arg0, %54, %c0, %10, %arg1, %56 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %82 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %29#1[%arg0] : tensor<?xi64>
    %83 = arith.index_cast %extracted : i64 to index
    %extracted_50 = tensor.extract %29#1[%82] : tensor<?xi64>
    %84 = arith.index_cast %extracted_50 : i64 to index
    %85 = arith.addi %arg0, %c1 : index
    %extracted_51 = tensor.extract %15[%arg0] : tensor<?xi64>
    %86 = arith.index_cast %extracted_51 : i64 to index
    %extracted_52 = tensor.extract %15[%85] : tensor<?xi64>
    %87 = arith.index_cast %extracted_52 : i64 to index
    %88:9 = scf.while (%arg2 = %arg0, %arg3 = %54, %arg4 = %c0, %arg5 = %10, %arg6 = %arg1, %arg7 = %56, %arg8 = %idx0, %arg9 = %83, %arg10 = %86) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
      %93 = arith.cmpi ult, %arg10, %87 : index
      %94 = arith.cmpi ult, %arg9, %84 : index
      %95 = arith.andi %94, %93 : i1
      scf.condition(%95) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: tensor<?xi64>, %arg7: tensor<?xi64>, %arg8: index, %arg9: index, %arg10: index):
      %extracted_55 = tensor.extract %16[%arg10] : tensor<?xi64>
      %93 = arith.index_cast %extracted_55 : i64 to index
      %extracted_56 = tensor.extract %49#0[%arg9] : tensor<?xi64>
      %94 = arith.index_cast %extracted_56 : i64 to index
      %95 = arith.minui %94, %93 : index
      %96 = arith.cmpi eq, %95, %94 : index
      %97 = arith.cmpi eq, %95, %93 : index
      %98 = arith.andi %96, %97 : i1
      %99:7 = scf.if %98 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
        %idx1_57 = index.constant 1
        %105 = index.add %arg4, %idx1_57
        %106 = builtin.unrealized_conversion_cast %arg2, %arg3, %105, %arg5, %arg6, %arg7 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %107 = index.add %arg8, %idx1
        scf.yield %arg2, %arg3, %105, %arg5, %arg6, %arg7, %107 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
      } else {
        scf.yield %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
      }
      %100 = builtin.unrealized_conversion_cast %99#0, %99#1, %99#2, %99#3, %99#4, %99#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %101 = index.castu %96 : i1 to index
      %102 = index.add %arg9, %101
      %103 = index.castu %97 : i1 to index
      %104 = index.add %arg10, %103
      scf.yield %99#0, %99#1, %99#2, %99#3, %99#4, %99#5, %99#6, %102, %104 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
    }
    %89 = builtin.unrealized_conversion_cast %88#0, %88#1, %88#2, %88#3, %88#4, %88#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx1_53 = index.constant 1
    %90 = index.add %88#0, %idx1_53
    %91 = arith.index_cast %88#2 : index to i64
    %inserted_54 = tensor.insert %91 into %88#4[%90] : tensor<?xi64>
    %92 = builtin.unrealized_conversion_cast %90, %88#1, %88#2, %88#3, %inserted_54, %88#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %extracted_slice = tensor.extract_slice %inserted_54[%90] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%90] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %60 = arith.addi %9, %c1 : index
  %61:2 = scf.for %arg0 = %c1 to %60 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %59) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %81 = arith.addi %extracted, %arg1 : i64
    %inserted_50 = tensor.insert %81 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %81, %inserted_50 : i64, tensor<?xi64>
  }
  %62 = arith.index_cast %61#0 : i64 to index
  %63 = builtin.unrealized_conversion_cast %9, %54, %62, %10, %61#1, %56 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %64 = builtin.unrealized_conversion_cast %9, %54, %62, %10, %61#1, %56 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_41 = index.constant 0
  %idx1_42 = index.constant 1
  %65 = arith.index_cast %9 : index to i64
  %idx1_43 = index.constant 1
  %66 = tensor.empty(%idx1_43) : tensor<?xi64>
  %inserted_44 = tensor.insert %65 into %66[%idx0_41] : tensor<?xi64>
  %67 = tensor.empty() : tensor<0xi64>
  %68 = tensor.empty() : tensor<0xi64>
  %69 = tensor.empty() : tensor<0xi64>
  %70 = index.mul %idx1_42, %9
  %71 = tensor.empty(%62) : tensor<?xi64>
  %72 = tensor.empty() : tensor<0xi64>
  %73 = tensor.empty() : tensor<0xi64>
  %74 = tensor.empty(%62) : tensor<?xf64>
  %cst_45 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_41 to %62 step %idx1_42 {
    %inserted_50 = tensor.insert %cst_45 into %74[%arg0] : tensor<?xf64>
  }
  %from_elements_46 = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_47 = index.constant 0
  %idx0_48 = index.constant 0
  %75 = builtin.unrealized_conversion_cast %from_elements_46, %idx0_47, %inserted_44, %idx0_48, %61#1, %71, %74 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %76 = builtin.unrealized_conversion_cast %from_elements_46, %idx0_47, %inserted_44, %idx0_48, %61#1, %71, %74 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %77:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %71, %arg2 = %74) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %61#1[%arg0] : tensor<?xi64>
    %81 = arith.index_cast %extracted : i64 to index
    %82 = arith.addi %arg0, %c1 : index
    %extracted_50 = tensor.extract %61#1[%82] : tensor<?xi64>
    %83 = arith.index_cast %extracted_50 : i64 to index
    %84 = arith.subi %83, %81 : index
    %extracted_slice = tensor.extract_slice %arg1[%81] [%84] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_51 = tensor.extract_slice %arg2[%81] [%84] [1] : tensor<?xf64> to tensor<?xf64>
    %85 = builtin.unrealized_conversion_cast %from_elements_46, %idx0_47, %inserted_44, %c0, %61#1, %extracted_slice, %extracted_slice_51 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %86 = arith.addi %arg0, %c1 : index
    %extracted_52 = tensor.extract %29#1[%arg0] : tensor<?xi64>
    %87 = arith.index_cast %extracted_52 : i64 to index
    %extracted_53 = tensor.extract %29#1[%86] : tensor<?xi64>
    %88 = arith.index_cast %extracted_53 : i64 to index
    %89 = arith.addi %arg0, %c1 : index
    %extracted_54 = tensor.extract %15[%arg0] : tensor<?xi64>
    %90 = arith.index_cast %extracted_54 : i64 to index
    %extracted_55 = tensor.extract %15[%89] : tensor<?xi64>
    %91 = arith.index_cast %extracted_55 : i64 to index
    %92:10 = scf.while (%arg3 = %from_elements_46, %arg4 = %idx0_47, %arg5 = %inserted_44, %arg6 = %c0, %arg7 = %61#1, %arg8 = %extracted_slice, %arg9 = %extracted_slice_51, %arg10 = %idx0, %arg11 = %87, %arg12 = %90) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %98 = arith.cmpi ult, %arg12, %91 : index
      %99 = arith.cmpi ult, %arg11, %88 : index
      %100 = arith.andi %99, %98 : i1
      scf.condition(%100) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg3: tensor<2xindex>, %arg4: index, %arg5: tensor<?xi64>, %arg6: index, %arg7: tensor<?xi64>, %arg8: tensor<?xi64>, %arg9: tensor<?xf64>, %arg10: index, %arg11: index, %arg12: index):
      %extracted_58 = tensor.extract %16[%arg12] : tensor<?xi64>
      %98 = arith.index_cast %extracted_58 : i64 to index
      %extracted_59 = tensor.extract %49#0[%arg11] : tensor<?xi64>
      %99 = arith.index_cast %extracted_59 : i64 to index
      %100 = arith.minui %99, %98 : index
      %101 = arith.cmpi eq, %100, %99 : index
      %102 = arith.cmpi eq, %100, %98 : index
      %103 = arith.andi %101, %102 : i1
      %104:8 = scf.if %103 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_60 = tensor.extract %49#1[%arg11] : tensor<?xf64>
        %extracted_61 = tensor.extract %19[%arg12] : tensor<?xf64>
        %110 = arith.mulf %extracted_60, %extracted_61 : f64
        %111 = arith.index_cast %100 : index to i64
        %inserted_62 = tensor.insert %111 into %arg8[%arg6] : tensor<?xi64>
        %idx1_63 = index.constant 1
        %112 = index.add %arg6, %idx1_63
        %inserted_64 = tensor.insert %110 into %arg9[%arg6] : tensor<?xf64>
        %113 = builtin.unrealized_conversion_cast %arg3, %arg4, %arg5, %112, %arg7, %inserted_62, %inserted_64 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %114 = index.add %arg10, %idx1
        scf.yield %arg3, %arg4, %arg5, %112, %arg7, %inserted_62, %inserted_64, %114 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
      }
      %105 = builtin.unrealized_conversion_cast %104#0, %104#1, %104#2, %104#3, %104#4, %104#5, %104#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %106 = index.castu %101 : i1 to index
      %107 = index.add %arg11, %106
      %108 = index.castu %102 : i1 to index
      %109 = index.add %arg12, %108
      scf.yield %104#0, %104#1, %104#2, %104#3, %104#4, %104#5, %104#6, %104#7, %107, %109 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %93 = builtin.unrealized_conversion_cast %92#0, %92#1, %92#2, %92#3, %92#4, %92#5, %92#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %extracted_56 = tensor.extract %61#1[%arg0] : tensor<?xi64>
    %94 = arith.index_cast %extracted_56 : i64 to index
    %95 = arith.addi %arg0, %c1 : index
    %extracted_57 = tensor.extract %61#1[%95] : tensor<?xi64>
    %96 = arith.index_cast %extracted_57 : i64 to index
    %97 = arith.subi %96, %94 : index
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %92#5 into %arg1[%94] [%97] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %92#6 into %arg2[%94] [%97] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %78 = builtin.unrealized_conversion_cast %from_elements_46, %idx0_47, %inserted_44, %idx0_48, %61#1, %77#0, %77#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %79 = builtin.unrealized_conversion_cast %from_elements_46, %idx0_47, %inserted_44, %idx0_48, %61#1, %77#0, %77#1 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_49 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_49[%c0] : memref<1xf64>
  %dim = tensor.dim %77#1, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %77#1[%arg0] : tensor<?xf64>
    %81 = memref.load %alloc_49[%c0] : memref<1xf64>
    %82 = arith.addf %extracted, %81 : f64
    memref.store %82, %alloc_49[%c0] : memref<1xf64>
  }
  %80 = memref.load %alloc_49[%c0] : memref<1xf64>
  "ta.print"(%80) : (f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c1_i32 = arith.constant 1 : i32
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %14 = index.add %9, %idx1
  %15 = tensor.empty(%14) : tensor<?xi64>
  %16 = tensor.empty(%10) : tensor<?xi64>
  %17 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?xi64>) {
    %37 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %11[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40:2 = scf.for %arg2 = %38 to %39 step %c1 iter_args(%arg3 = %c0, %arg4 = %16) -> (index, tensor<?xi64>) {
      %extracted_20 = tensor.extract %12[%arg2] : tensor<?xi64>
      %43 = arith.index_cast %extracted_20 : i64 to index
      %44 = arith.addi %43, %c1 : index
      %extracted_21 = tensor.extract %11[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_22 : i64 to index
      %47:2 = scf.for %arg5 = %45 to %46 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg5] : tensor<?xi64>
        %48 = arith.index_cast %extracted_23 : i64 to index
        %49 = index.add %arg0, %idx1
        %50 = arith.index_cast %49 : index to i64
        %extracted_24 = tensor.extract %arg7[%48] : tensor<?xi64>
        %51 = arith.cmpi eq, %50, %extracted_24 : i64
        %52:2 = scf.if %51 -> (index, tensor<?xi64>) {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        } else {
          %inserted_25 = tensor.insert %50 into %arg7[%48] : tensor<?xi64>
          %53 = index.add %arg6, %idx1
          scf.yield %53, %inserted_25 : index, tensor<?xi64>
        }
        scf.yield %52#0, %52#1 : index, tensor<?xi64>
      }
      scf.yield %47#0, %47#1 : index, tensor<?xi64>
    }
    %41 = index.add %arg0, %idx1
    %42 = arith.index_cast %40#0 : index to i64
    %inserted = tensor.insert %42 into %arg1[%41] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted[%41] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%41] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %18 = arith.addi %9, %c1 : index
  %19:2 = scf.for %arg0 = %c1 to %18 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %17) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %37 = arith.addi %extracted, %arg1 : i64
    %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %37, %inserted : i64, tensor<?xi64>
  }
  %20 = arith.index_cast %19#0 : i64 to index
  %21 = tensor.empty(%20) : tensor<?xi64>
  %22 = tensor.empty(%20) : tensor<?xf64>
  %23 = bufferization.alloc_tensor(%10) : tensor<?xf64>
  %24 = bufferization.alloc_tensor(%10) : tensor<?xi32>
  %25 = bufferization.alloc_tensor(%10) : tensor<?xi64>
  %26:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %21, %arg2 = %22) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %extracted_19 = tensor.extract %19#1[%38] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = arith.subi %39, %37 : index
    %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_20 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
    %41 = arith.index_cast %arg0 : index to i32
    %42 = arith.addi %41, %c1_i32 : i32
    %43 = arith.addi %arg0, %c1 : index
    %extracted_21 = tensor.extract %11[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted_21 : i64 to index
    %extracted_22 = tensor.extract %11[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_22 : i64 to index
    %46:4 = scf.for %arg3 = %44 to %45 step %c1 iter_args(%arg4 = %23, %arg5 = %24, %arg6 = %idx0, %arg7 = %25) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_23 = tensor.extract %12[%arg3] : tensor<?xi64>
      %49 = arith.index_cast %extracted_23 : i64 to index
      %50 = arith.addi %49, %c1 : index
      %extracted_24 = tensor.extract %11[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_24 : i64 to index
      %extracted_25 = tensor.extract %11[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_25 : i64 to index
      %53:4 = scf.for %arg8 = %51 to %52 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_26 = tensor.extract %12[%arg8] : tensor<?xi64>
        %54 = arith.index_cast %extracted_26 : i64 to index
        %extracted_27 = tensor.extract %13[%arg3] : tensor<?xf64>
        %extracted_28 = tensor.extract %13[%arg8] : tensor<?xf64>
        %55 = arith.mulf %extracted_27, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg10[%54] : tensor<?xi32>
        %56 = arith.cmpi eq, %extracted_29, %42 : i32
        %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_30 = tensor.extract %arg9[%54] : tensor<?xf64>
          %58 = arith.addf %extracted_30, %55 : f64
          %inserted = tensor.insert %58 into %arg9[%54] : tensor<?xf64>
          scf.yield %arg10, %arg11, %arg12, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted = tensor.insert %42 into %arg10[%54] : tensor<?xi32>
          %inserted_30 = tensor.insert %extracted_26 into %arg12[%arg11] : tensor<?xi64>
          %58 = index.add %arg11, %idx1
          %inserted_31 = tensor.insert %55 into %arg9[%54] : tensor<?xf64>
          scf.yield %inserted, %58, %inserted_30, %inserted_31 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %48:2 = scf.for %arg3 = %c0 to %46#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_20) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_23 = tensor.extract %47[%arg3] : tensor<?xi64>
      %49 = arith.index_cast %extracted_23 : i64 to index
      %extracted_24 = tensor.extract %46#0[%49] : tensor<?xf64>
      %inserted = tensor.insert %extracted_23 into %arg4[%arg3] : tensor<?xi64>
      %inserted_25 = tensor.insert %extracted_24 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted, %inserted_25 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %48#0 into %arg1[%37] [%40] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %48#1 into %arg2[%37] [%40] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %27 = index.add %9, %idx1
  %28 = tensor.empty(%27) : tensor<?xi64>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %28) -> (tensor<?xi64>) {
    %37 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %19#1[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = arith.addi %arg0, %c1 : index
    %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
    %41 = arith.index_cast %extracted_20 : i64 to index
    %extracted_21 = tensor.extract %11[%40] : tensor<?xi64>
    %42 = arith.index_cast %extracted_21 : i64 to index
    %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
      %46 = arith.cmpi ult, %arg5, %42 : index
      %47 = arith.cmpi ult, %arg4, %39 : index
      %48 = arith.andi %47, %46 : i1
      scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %extracted_22 = tensor.extract %12[%arg5] : tensor<?xi64>
      %46 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %26#0[%arg4] : tensor<?xi64>
      %47 = arith.index_cast %extracted_23 : i64 to index
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
    %inserted = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %37 = arith.addi %extracted, %arg1 : i64
    %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %37, %inserted : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = tensor.empty(%32) : tensor<?xi64>
  %34 = tensor.empty(%32) : tensor<?xf64>
  %35 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %34) -> (tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %extracted_19 = tensor.extract %31#1[%38] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = arith.subi %39, %37 : index
    %extracted_slice = tensor.extract_slice %33[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_20 = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
    %41 = arith.addi %arg0, %c1 : index
    %extracted_21 = tensor.extract %19#1[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted_21 : i64 to index
    %extracted_22 = tensor.extract %19#1[%41] : tensor<?xi64>
    %43 = arith.index_cast %extracted_22 : i64 to index
    %44 = arith.addi %arg0, %c1 : index
    %extracted_23 = tensor.extract %11[%arg0] : tensor<?xi64>
    %45 = arith.index_cast %extracted_23 : i64 to index
    %extracted_24 = tensor.extract %11[%44] : tensor<?xi64>
    %46 = arith.index_cast %extracted_24 : i64 to index
    %47:6 = scf.while (%arg2 = %c0, %arg3 = %extracted_slice, %arg4 = %extracted_slice_20, %arg5 = %idx0, %arg6 = %42, %arg7 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %52 = arith.cmpi ult, %arg7, %46 : index
      %53 = arith.cmpi ult, %arg6, %43 : index
      %54 = arith.andi %53, %52 : i1
      scf.condition(%54) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: tensor<?xi64>, %arg4: tensor<?xf64>, %arg5: index, %arg6: index, %arg7: index):
      %extracted_27 = tensor.extract %12[%arg7] : tensor<?xi64>
      %52 = arith.index_cast %extracted_27 : i64 to index
      %extracted_28 = tensor.extract %26#0[%arg6] : tensor<?xi64>
      %53 = arith.index_cast %extracted_28 : i64 to index
      %54 = arith.minui %53, %52 : index
      %55 = arith.cmpi eq, %54, %53 : index
      %56 = arith.cmpi eq, %54, %52 : index
      %57 = arith.andi %55, %56 : i1
      %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_29 = tensor.extract %26#1[%arg6] : tensor<?xf64>
        %extracted_30 = tensor.extract %13[%arg7] : tensor<?xf64>
        %63 = arith.mulf %extracted_29, %extracted_30 : f64
        %64 = arith.index_cast %54 : index to i64
        %inserted = tensor.insert %64 into %arg3[%arg2] : tensor<?xi64>
        %65 = index.add %arg2, %idx1
        %inserted_31 = tensor.insert %63 into %arg4[%arg2] : tensor<?xf64>
        %66 = index.add %arg5, %idx1
        scf.yield %65, %inserted, %inserted_31, %66 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg2, %arg3, %arg4, %arg5 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %59 = index.castu %55 : i1 to index
      %60 = index.add %arg6, %59
      %61 = index.castu %56 : i1 to index
      %62 = index.add %arg7, %61
      scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %extracted_25 = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %48 = arith.index_cast %extracted_25 : i64 to index
    %49 = arith.addi %arg0, %c1 : index
    %extracted_26 = tensor.extract %31#1[%49] : tensor<?xi64>
    %50 = arith.index_cast %extracted_26 : i64 to index
    %51 = arith.subi %50, %48 : index
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %47#2 into %arg1[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %alloc_18 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_18[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %32 step %c1 {
    %extracted = tensor.extract %35[%arg0] : tensor<?xf64>
    %37 = memref.load %alloc_18[%c0] : memref<1xf64>
    %38 = arith.addf %extracted, %37 : f64
    memref.store %38, %alloc_18[%c0] : memref<1xf64>
  }
  %36 = memref.load %alloc_18[%c0] : memref<1xf64>
  "ta.print"(%36) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %c1_i32 = arith.constant 1 : i32
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %14 = index.add %9, %idx1
  %15 = tensor.empty(%14) : tensor<?xi64>
  %16 = tensor.empty(%10) : tensor<?xi64>
  %17 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?xi64>) {
    %37 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %11[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = index.add %arg0, %idx1
    %41 = arith.index_cast %40 : index to i64
    %42:2 = scf.for %arg2 = %38 to %39 step %c1 iter_args(%arg3 = %c0, %arg4 = %16) -> (index, tensor<?xi64>) {
      %extracted_20 = tensor.extract %12[%arg2] : tensor<?xi64>
      %45 = arith.index_cast %extracted_20 : i64 to index
      %46 = arith.addi %45, %c1 : index
      %extracted_21 = tensor.extract %11[%45] : tensor<?xi64>
      %47 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_22 : i64 to index
      %49:2 = scf.for %arg5 = %47 to %48 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg5] : tensor<?xi64>
        %50 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %arg7[%50] : tensor<?xi64>
        %51 = arith.cmpi eq, %41, %extracted_24 : i64
        %52:2 = scf.if %51 -> (index, tensor<?xi64>) {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        } else {
          %inserted_25 = tensor.insert %41 into %arg7[%50] : tensor<?xi64>
          %53 = index.add %arg6, %idx1
          scf.yield %53, %inserted_25 : index, tensor<?xi64>
        }
        scf.yield %52#0, %52#1 : index, tensor<?xi64>
      }
      scf.yield %49#0, %49#1 : index, tensor<?xi64>
    }
    %43 = index.add %arg0, %idx1
    %44 = arith.index_cast %42#0 : index to i64
    %inserted = tensor.insert %44 into %arg1[%43] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted[%43] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%43] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %18 = arith.addi %9, %c1 : index
  %19:2 = scf.for %arg0 = %c1 to %18 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %17) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %37 = arith.addi %extracted, %arg1 : i64
    %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %37, %inserted : i64, tensor<?xi64>
  }
  %20 = arith.index_cast %19#0 : i64 to index
  %21 = tensor.empty(%20) : tensor<?xi64>
  %22 = tensor.empty(%20) : tensor<?xf64>
  %23 = bufferization.alloc_tensor(%10) : tensor<?xf64>
  %24 = bufferization.alloc_tensor(%10) : tensor<?xi32>
  %25 = bufferization.alloc_tensor(%10) : tensor<?xi64>
  %26:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %21, %arg2 = %22) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %extracted_19 = tensor.extract %19#1[%38] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = arith.subi %39, %37 : index
    %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_20 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
    %41 = arith.index_cast %arg0 : index to i32
    %42 = arith.addi %41, %c1_i32 : i32
    %43 = arith.addi %arg0, %c1 : index
    %extracted_21 = tensor.extract %11[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted_21 : i64 to index
    %extracted_22 = tensor.extract %11[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_22 : i64 to index
    %46:4 = scf.for %arg3 = %44 to %45 step %c1 iter_args(%arg4 = %23, %arg5 = %24, %arg6 = %idx0, %arg7 = %25) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_23 = tensor.extract %12[%arg3] : tensor<?xi64>
      %49 = arith.index_cast %extracted_23 : i64 to index
      %50 = arith.addi %49, %c1 : index
      %extracted_24 = tensor.extract %11[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_24 : i64 to index
      %extracted_25 = tensor.extract %11[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_25 : i64 to index
      %extracted_26 = tensor.extract %13[%arg3] : tensor<?xf64>
      %53:4 = scf.for %arg8 = %51 to %52 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_27 = tensor.extract %12[%arg8] : tensor<?xi64>
        %54 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg8] : tensor<?xf64>
        %55 = arith.mulf %extracted_26, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg10[%54] : tensor<?xi32>
        %56 = arith.cmpi eq, %extracted_29, %42 : i32
        %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_30 = tensor.extract %arg9[%54] : tensor<?xf64>
          %58 = arith.addf %extracted_30, %55 : f64
          %inserted = tensor.insert %58 into %arg9[%54] : tensor<?xf64>
          scf.yield %arg10, %arg11, %arg12, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted = tensor.insert %42 into %arg10[%54] : tensor<?xi32>
          %inserted_30 = tensor.insert %extracted_27 into %arg12[%arg11] : tensor<?xi64>
          %58 = index.add %arg11, %idx1
          %inserted_31 = tensor.insert %55 into %arg9[%54] : tensor<?xf64>
          scf.yield %inserted, %58, %inserted_30, %inserted_31 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %48:2 = scf.for %arg3 = %c0 to %46#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_20) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_23 = tensor.extract %47[%arg3] : tensor<?xi64>
      %49 = arith.index_cast %extracted_23 : i64 to index
      %extracted_24 = tensor.extract %46#0[%49] : tensor<?xf64>
      %inserted = tensor.insert %extracted_23 into %arg4[%arg3] : tensor<?xi64>
      %inserted_25 = tensor.insert %extracted_24 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted, %inserted_25 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %48#0 into %arg1[%37] [%40] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %48#1 into %arg2[%37] [%40] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %27 = index.add %9, %idx1
  %28 = tensor.empty(%27) : tensor<?xi64>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %28) -> (tensor<?xi64>) {
    %37 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %19#1[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = arith.addi %arg0, %c1 : index
    %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
    %41 = arith.index_cast %extracted_20 : i64 to index
    %extracted_21 = tensor.extract %11[%40] : tensor<?xi64>
    %42 = arith.index_cast %extracted_21 : i64 to index
    %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
      %46 = arith.cmpi ult, %arg5, %42 : index
      %47 = arith.cmpi ult, %arg4, %39 : index
      %48 = arith.andi %47, %46 : i1
      scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %extracted_22 = tensor.extract %12[%arg5] : tensor<?xi64>
      %46 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %26#0[%arg4] : tensor<?xi64>
      %47 = arith.index_cast %extracted_23 : i64 to index
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
    %inserted = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %37 = arith.addi %extracted, %arg1 : i64
    %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %37, %inserted : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = tensor.empty(%32) : tensor<?xi64>
  %34 = tensor.empty(%32) : tensor<?xf64>
  %35 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %34) -> (tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %extracted_19 = tensor.extract %31#1[%38] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = arith.subi %39, %37 : index
    %extracted_slice = tensor.extract_slice %33[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_20 = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
    %41 = arith.addi %arg0, %c1 : index
    %extracted_21 = tensor.extract %19#1[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted_21 : i64 to index
    %extracted_22 = tensor.extract %19#1[%41] : tensor<?xi64>
    %43 = arith.index_cast %extracted_22 : i64 to index
    %44 = arith.addi %arg0, %c1 : index
    %extracted_23 = tensor.extract %11[%arg0] : tensor<?xi64>
    %45 = arith.index_cast %extracted_23 : i64 to index
    %extracted_24 = tensor.extract %11[%44] : tensor<?xi64>
    %46 = arith.index_cast %extracted_24 : i64 to index
    %47:6 = scf.while (%arg2 = %c0, %arg3 = %extracted_slice, %arg4 = %extracted_slice_20, %arg5 = %idx0, %arg6 = %42, %arg7 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %52 = arith.cmpi ult, %arg7, %46 : index
      %53 = arith.cmpi ult, %arg6, %43 : index
      %54 = arith.andi %53, %52 : i1
      scf.condition(%54) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: tensor<?xi64>, %arg4: tensor<?xf64>, %arg5: index, %arg6: index, %arg7: index):
      %extracted_27 = tensor.extract %12[%arg7] : tensor<?xi64>
      %52 = arith.index_cast %extracted_27 : i64 to index
      %extracted_28 = tensor.extract %26#0[%arg6] : tensor<?xi64>
      %53 = arith.index_cast %extracted_28 : i64 to index
      %54 = arith.minui %53, %52 : index
      %55 = arith.cmpi eq, %54, %53 : index
      %56 = arith.cmpi eq, %54, %52 : index
      %57 = arith.andi %55, %56 : i1
      %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_29 = tensor.extract %26#1[%arg6] : tensor<?xf64>
        %extracted_30 = tensor.extract %13[%arg7] : tensor<?xf64>
        %63 = arith.mulf %extracted_29, %extracted_30 : f64
        %64 = arith.index_cast %54 : index to i64
        %inserted = tensor.insert %64 into %arg3[%arg2] : tensor<?xi64>
        %65 = index.add %arg2, %idx1
        %inserted_31 = tensor.insert %63 into %arg4[%arg2] : tensor<?xf64>
        %66 = index.add %arg5, %idx1
        scf.yield %65, %inserted, %inserted_31, %66 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg2, %arg3, %arg4, %arg5 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %59 = index.castu %55 : i1 to index
      %60 = index.add %arg6, %59
      %61 = index.castu %56 : i1 to index
      %62 = index.add %arg7, %61
      scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %extracted_25 = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %48 = arith.index_cast %extracted_25 : i64 to index
    %49 = arith.addi %arg0, %c1 : index
    %extracted_26 = tensor.extract %31#1[%49] : tensor<?xi64>
    %50 = arith.index_cast %extracted_26 : i64 to index
    %51 = arith.subi %50, %48 : index
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %47#2 into %arg1[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %alloc_18 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_18[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %32 step %c1 {
    %extracted = tensor.extract %35[%arg0] : tensor<?xf64>
    %37 = memref.load %alloc_18[%c0] : memref<1xf64>
    %38 = arith.addf %extracted, %37 : f64
    memref.store %38, %alloc_18[%c0] : memref<1xf64>
  }
  %36 = memref.load %alloc_18[%c0] : memref<1xf64>
  "ta.print"(%36) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %c1_i32 = arith.constant 1 : i32
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %14 = index.add %9, %idx1
  %15 = tensor.empty(%14) : tensor<?xi64>
  %16 = tensor.empty(%10) : tensor<?xi64>
  %17 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?xi64>) {
    %37 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %11[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = index.add %arg0, %idx1
    %41 = arith.index_cast %40 : index to i64
    %42:2 = scf.for %arg2 = %38 to %39 step %c1 iter_args(%arg3 = %c0, %arg4 = %16) -> (index, tensor<?xi64>) {
      %extracted_20 = tensor.extract %12[%arg2] : tensor<?xi64>
      %45 = arith.index_cast %extracted_20 : i64 to index
      %46 = arith.addi %45, %c1 : index
      %extracted_21 = tensor.extract %11[%45] : tensor<?xi64>
      %47 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_22 : i64 to index
      %49:2 = scf.for %arg5 = %47 to %48 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg5] : tensor<?xi64>
        %50 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %arg7[%50] : tensor<?xi64>
        %51 = arith.cmpi eq, %41, %extracted_24 : i64
        %52:2 = scf.if %51 -> (index, tensor<?xi64>) {
          scf.yield %arg6, %arg7 : index, tensor<?xi64>
        } else {
          %inserted_25 = tensor.insert %41 into %arg7[%50] : tensor<?xi64>
          %53 = index.add %arg6, %idx1
          scf.yield %53, %inserted_25 : index, tensor<?xi64>
        }
        scf.yield %52#0, %52#1 : index, tensor<?xi64>
      }
      scf.yield %49#0, %49#1 : index, tensor<?xi64>
    }
    %43 = index.add %arg0, %idx1
    %44 = arith.index_cast %42#0 : index to i64
    %inserted = tensor.insert %44 into %arg1[%43] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted[%43] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%43] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %18 = arith.addi %9, %c1 : index
  %19:2 = scf.for %arg0 = %c1 to %18 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %17) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %37 = arith.addi %extracted, %arg1 : i64
    %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %37, %inserted : i64, tensor<?xi64>
  }
  %20 = arith.index_cast %19#0 : i64 to index
  %21 = tensor.empty(%20) : tensor<?xi64>
  %22 = tensor.empty(%20) : tensor<?xf64>
  %23 = bufferization.alloc_tensor(%10) : tensor<?xf64>
  %24 = bufferization.alloc_tensor(%10) : tensor<?xi32>
  %25 = bufferization.alloc_tensor(%10) : tensor<?xi64>
  %26:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %21, %arg2 = %22) -> (tensor<?xi64>, tensor<?xf64>) {
    %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %extracted_19 = tensor.extract %19#1[%38] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = arith.subi %39, %37 : index
    %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_20 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
    %41 = arith.index_cast %arg0 : index to i32
    %42 = arith.addi %41, %c1_i32 : i32
    %43 = arith.addi %arg0, %c1 : index
    %extracted_21 = tensor.extract %11[%arg0] : tensor<?xi64>
    %44 = arith.index_cast %extracted_21 : i64 to index
    %extracted_22 = tensor.extract %11[%43] : tensor<?xi64>
    %45 = arith.index_cast %extracted_22 : i64 to index
    %46:4 = scf.for %arg3 = %44 to %45 step %c1 iter_args(%arg4 = %23, %arg5 = %24, %arg6 = %idx0, %arg7 = %25) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_23 = tensor.extract %12[%arg3] : tensor<?xi64>
      %49 = arith.index_cast %extracted_23 : i64 to index
      %50 = arith.addi %49, %c1 : index
      %extracted_24 = tensor.extract %11[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_24 : i64 to index
      %extracted_25 = tensor.extract %11[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_25 : i64 to index
      %extracted_26 = tensor.extract %13[%arg3] : tensor<?xf64>
      %53:4 = scf.for %arg8 = %51 to %52 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_27 = tensor.extract %12[%arg8] : tensor<?xi64>
        %54 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg8] : tensor<?xf64>
        %55 = arith.mulf %extracted_26, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg10[%54] : tensor<?xi32>
        %56 = arith.cmpi eq, %extracted_29, %42 : i32
        %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_30 = tensor.extract %arg9[%54] : tensor<?xf64>
          %58 = arith.addf %extracted_30, %55 : f64
          %inserted = tensor.insert %58 into %arg9[%54] : tensor<?xf64>
          scf.yield %arg10, %arg11, %arg12, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted = tensor.insert %42 into %arg10[%54] : tensor<?xi32>
          %inserted_30 = tensor.insert %extracted_27 into %arg12[%arg11] : tensor<?xi64>
          %58 = index.add %arg11, %idx1
          %inserted_31 = tensor.insert %55 into %arg9[%54] : tensor<?xf64>
          scf.yield %inserted, %58, %inserted_30, %inserted_31 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %48:2 = scf.for %arg3 = %c0 to %46#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_20) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted_23 = tensor.extract %47[%arg3] : tensor<?xi64>
      %49 = arith.index_cast %extracted_23 : i64 to index
      %extracted_24 = tensor.extract %46#0[%49] : tensor<?xf64>
      %inserted = tensor.insert %extracted_23 into %arg4[%arg3] : tensor<?xi64>
      %inserted_25 = tensor.insert %extracted_24 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %inserted, %inserted_25 : tensor<?xi64>, tensor<?xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %48#0 into %arg1[%37] [%40] [1] : tensor<?xi64> into tensor<?xi64>
      tensor.parallel_insert_slice %48#1 into %arg2[%37] [%40] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %27 = index.add %9, %idx1
  %28 = tensor.empty(%27) : tensor<?xi64>
  %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %28) -> (tensor<?xi64>) {
    %37 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
    %38 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %19#1[%37] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = arith.addi %arg0, %c1 : index
    %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
    %41 = arith.index_cast %extracted_20 : i64 to index
    %extracted_21 = tensor.extract %11[%40] : tensor<?xi64>
    %42 = arith.index_cast %extracted_21 : i64 to index
    %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
      %46 = arith.cmpi ult, %arg5, %42 : index
      %47 = arith.cmpi ult, %arg4, %39 : index
      %48 = arith.andi %47, %46 : i1
      scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %extracted_22 = tensor.extract %12[%arg5] : tensor<?xi64>
      %46 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %26#0[%arg4] : tensor<?xi64>
      %47 = arith.index_cast %extracted_23 : i64 to index
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
    %inserted = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
    %extracted_slice = tensor.extract_slice %inserted[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
    }
  }
  %30 = arith.addi %9, %c1 : index
  %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
    %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
    %37 = arith.addi %extracted, %arg1 : i64
    %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
    scf.yield %37, %inserted : i64, tensor<?xi64>
  }
  %32 = arith.index_cast %31#0 : i64 to index
  %33 = tensor.empty(%32) : tensor<?xi64>
  %34 = tensor.empty(%32) : tensor<?xf64>
  %35 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %34) -> (tensor<?xf64>) {
    %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %37 = arith.index_cast %extracted : i64 to index
    %38 = arith.addi %arg0, %c1 : index
    %extracted_19 = tensor.extract %31#1[%38] : tensor<?xi64>
    %39 = arith.index_cast %extracted_19 : i64 to index
    %40 = arith.subi %39, %37 : index
    %extracted_slice = tensor.extract_slice %33[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
    %extracted_slice_20 = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
    %41 = arith.addi %arg0, %c1 : index
    %extracted_21 = tensor.extract %19#1[%arg0] : tensor<?xi64>
    %42 = arith.index_cast %extracted_21 : i64 to index
    %extracted_22 = tensor.extract %19#1[%41] : tensor<?xi64>
    %43 = arith.index_cast %extracted_22 : i64 to index
    %44 = arith.addi %arg0, %c1 : index
    %extracted_23 = tensor.extract %11[%arg0] : tensor<?xi64>
    %45 = arith.index_cast %extracted_23 : i64 to index
    %extracted_24 = tensor.extract %11[%44] : tensor<?xi64>
    %46 = arith.index_cast %extracted_24 : i64 to index
    %47:6 = scf.while (%arg2 = %c0, %arg3 = %extracted_slice, %arg4 = %extracted_slice_20, %arg5 = %idx0, %arg6 = %42, %arg7 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %52 = arith.cmpi ult, %arg7, %46 : index
      %53 = arith.cmpi ult, %arg6, %43 : index
      %54 = arith.andi %53, %52 : i1
      scf.condition(%54) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: tensor<?xi64>, %arg4: tensor<?xf64>, %arg5: index, %arg6: index, %arg7: index):
      %extracted_27 = tensor.extract %12[%arg7] : tensor<?xi64>
      %52 = arith.index_cast %extracted_27 : i64 to index
      %extracted_28 = tensor.extract %26#0[%arg6] : tensor<?xi64>
      %53 = arith.index_cast %extracted_28 : i64 to index
      %54 = arith.minui %53, %52 : index
      %55 = arith.cmpi eq, %54, %53 : index
      %56 = arith.cmpi eq, %54, %52 : index
      %57 = arith.andi %55, %56 : i1
      %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_29 = tensor.extract %26#1[%arg6] : tensor<?xf64>
        %extracted_30 = tensor.extract %13[%arg7] : tensor<?xf64>
        %63 = arith.mulf %extracted_29, %extracted_30 : f64
        %64 = arith.index_cast %54 : index to i64
        %inserted = tensor.insert %64 into %arg3[%arg2] : tensor<?xi64>
        %65 = index.add %arg2, %idx1
        %inserted_31 = tensor.insert %63 into %arg4[%arg2] : tensor<?xf64>
        %66 = index.add %arg5, %idx1
        scf.yield %65, %inserted, %inserted_31, %66 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg2, %arg3, %arg4, %arg5 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %59 = index.castu %55 : i1 to index
      %60 = index.add %arg6, %59
      %61 = index.castu %56 : i1 to index
      %62 = index.add %arg7, %61
      scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %extracted_25 = tensor.extract %31#1[%arg0] : tensor<?xi64>
    %48 = arith.index_cast %extracted_25 : i64 to index
    %49 = arith.addi %arg0, %c1 : index
    %extracted_26 = tensor.extract %31#1[%49] : tensor<?xi64>
    %50 = arith.index_cast %extracted_26 : i64 to index
    %51 = arith.subi %50, %48 : index
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %47#2 into %arg1[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
    }
  }
  %alloc_18 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_18[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %32 step %c1 {
    %extracted = tensor.extract %35[%arg0] : tensor<?xf64>
    %37 = memref.load %alloc_18[%c0] : memref<1xf64>
    %38 = arith.addf %extracted, %37 : f64
    memref.store %38, %alloc_18[%c0] : memref<1xf64>
  }
  %36 = memref.load %alloc_18[%c0] : memref<1xf64>
  "ta.print"(%36) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %14 = index.add %9, %idx1
    %15 = tensor.empty(%14) : tensor<?xi64>
    %16 = tensor.empty(%10) : tensor<?xi64>
    %17 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %11[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = index.add %arg0, %idx1
      %41 = arith.index_cast %40 : index to i64
      %42:2 = scf.for %arg2 = %38 to %39 step %c1 iter_args(%arg3 = %c0, %arg4 = %16) -> (index, tensor<?xi64>) {
        %extracted_20 = tensor.extract %12[%arg2] : tensor<?xi64>
        %45 = arith.index_cast %extracted_20 : i64 to index
        %46 = arith.addi %45, %c1 : index
        %extracted_21 = tensor.extract %11[%45] : tensor<?xi64>
        %47 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %11[%46] : tensor<?xi64>
        %48 = arith.index_cast %extracted_22 : i64 to index
        %49:2 = scf.for %arg5 = %47 to %48 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
          %extracted_23 = tensor.extract %12[%arg5] : tensor<?xi64>
          %50 = arith.index_cast %extracted_23 : i64 to index
          %extracted_24 = tensor.extract %arg7[%50] : tensor<?xi64>
          %51 = arith.cmpi eq, %41, %extracted_24 : i64
          %52:2 = scf.if %51 -> (index, tensor<?xi64>) {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          } else {
            %inserted_25 = tensor.insert %41 into %arg7[%50] : tensor<?xi64>
            %53 = index.add %arg6, %idx1
            scf.yield %53, %inserted_25 : index, tensor<?xi64>
          }
          scf.yield %52#0, %52#1 : index, tensor<?xi64>
        }
        scf.yield %49#0, %49#1 : index, tensor<?xi64>
      }
      %43 = index.add %arg0, %idx1
      %44 = arith.index_cast %42#0 : index to i64
      %inserted = tensor.insert %44 into %arg1[%43] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted[%43] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%43] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %18 = arith.addi %9, %c1 : index
    %19:2 = scf.for %arg0 = %c1 to %18 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %17) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted : i64, tensor<?xi64>
    }
    %20 = arith.index_cast %19#0 : i64 to index
    %21 = tensor.empty(%20) : tensor<?xi64>
    %22 = tensor.empty(%20) : tensor<?xf64>
    %23 = bufferization.alloc_tensor(%10) : tensor<?xf64>
    %24 = bufferization.alloc_tensor(%10) : tensor<?xi32>
    %25 = bufferization.alloc_tensor(%10) : tensor<?xi64>
    %26:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %21, %arg2 = %22) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_19 = tensor.extract %19#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_20 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.index_cast %arg0 : index to i32
      %42 = arith.addi %41, %c1_i32 : i32
      %43 = arith.addi %arg0, %c1 : index
      %extracted_21 = tensor.extract %11[%arg0] : tensor<?xi64>
      %44 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_22 : i64 to index
      %46:4 = scf.for %arg3 = %44 to %45 step %c1 iter_args(%arg4 = %23, %arg5 = %24, %arg6 = %idx0, %arg7 = %25) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg3] : tensor<?xi64>
        %49 = arith.index_cast %extracted_23 : i64 to index
        %50 = arith.addi %49, %c1 : index
        %extracted_24 = tensor.extract %11[%49] : tensor<?xi64>
        %51 = arith.index_cast %extracted_24 : i64 to index
        %extracted_25 = tensor.extract %11[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_25 : i64 to index
        %extracted_26 = tensor.extract %13[%arg3] : tensor<?xf64>
        %53:4 = scf.for %arg8 = %51 to %52 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_27 = tensor.extract %12[%arg8] : tensor<?xi64>
          %54 = arith.index_cast %extracted_27 : i64 to index
          %extracted_28 = tensor.extract %13[%arg8] : tensor<?xf64>
          %55 = arith.mulf %extracted_26, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg10[%54] : tensor<?xi32>
          %56 = arith.cmpi eq, %extracted_29, %42 : i32
          %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_30 = tensor.extract %arg9[%54] : tensor<?xf64>
            %58 = arith.addf %extracted_30, %55 : f64
            %inserted = tensor.insert %58 into %arg9[%54] : tensor<?xf64>
            scf.yield %arg10, %arg11, %arg12, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted = tensor.insert %42 into %arg10[%54] : tensor<?xi32>
            %inserted_30 = tensor.insert %extracted_27 into %arg12[%arg11] : tensor<?xi64>
            %58 = index.add %arg11, %idx1
            %inserted_31 = tensor.insert %55 into %arg9[%54] : tensor<?xf64>
            scf.yield %inserted, %58, %inserted_30, %inserted_31 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %48:2 = scf.for %arg3 = %c0 to %46#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_20) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted_23 = tensor.extract %47[%arg3] : tensor<?xi64>
        %49 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %46#0[%49] : tensor<?xf64>
        %inserted = tensor.insert %extracted_23 into %arg4[%arg3] : tensor<?xi64>
        %inserted_25 = tensor.insert %extracted_24 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %inserted, %inserted_25 : tensor<?xi64>, tensor<?xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %48#0 into %arg1[%37] [%40] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %48#1 into %arg2[%37] [%40] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %27 = index.add %9, %idx1
    %28 = tensor.empty(%27) : tensor<?xi64>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %28) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %19#1[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = arith.addi %arg0, %c1 : index
      %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
      %41 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %11[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_21 : i64 to index
      %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
        %46 = arith.cmpi ult, %arg5, %42 : index
        %47 = arith.cmpi ult, %arg4, %39 : index
        %48 = arith.andi %47, %46 : i1
        scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %extracted_22 = tensor.extract %12[%arg5] : tensor<?xi64>
        %46 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %26#0[%arg4] : tensor<?xi64>
        %47 = arith.index_cast %extracted_23 : i64 to index
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
      %inserted = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = tensor.empty(%32) : tensor<?xi64>
    %34 = tensor.empty(%32) : tensor<?xf64>
    %35 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %34) -> (tensor<?xf64>) {
      %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_19 = tensor.extract %31#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %33[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_20 = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.addi %arg0, %c1 : index
      %extracted_21 = tensor.extract %19#1[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %19#1[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_22 : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_23 = tensor.extract %11[%arg0] : tensor<?xi64>
      %45 = arith.index_cast %extracted_23 : i64 to index
      %extracted_24 = tensor.extract %11[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_24 : i64 to index
      %47:6 = scf.while (%arg2 = %c0, %arg3 = %extracted_slice, %arg4 = %extracted_slice_20, %arg5 = %idx0, %arg6 = %42, %arg7 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %52 = arith.cmpi ult, %arg7, %46 : index
        %53 = arith.cmpi ult, %arg6, %43 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: tensor<?xi64>, %arg4: tensor<?xf64>, %arg5: index, %arg6: index, %arg7: index):
        %extracted_27 = tensor.extract %12[%arg7] : tensor<?xi64>
        %52 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %26#0[%arg6] : tensor<?xi64>
        %53 = arith.index_cast %extracted_28 : i64 to index
        %54 = arith.minui %53, %52 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %52 : index
        %57 = arith.andi %55, %56 : i1
        %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_29 = tensor.extract %26#1[%arg6] : tensor<?xf64>
          %extracted_30 = tensor.extract %13[%arg7] : tensor<?xf64>
          %63 = arith.mulf %extracted_29, %extracted_30 : f64
          %64 = arith.index_cast %54 : index to i64
          %inserted = tensor.insert %64 into %arg3[%arg2] : tensor<?xi64>
          %65 = index.add %arg2, %idx1
          %inserted_31 = tensor.insert %63 into %arg4[%arg2] : tensor<?xf64>
          %66 = index.add %arg5, %idx1
          scf.yield %65, %inserted, %inserted_31, %66 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg2, %arg3, %arg4, %arg5 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg6, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg7, %61
        scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %extracted_25 = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %48 = arith.index_cast %extracted_25 : i64 to index
      %49 = arith.addi %arg0, %c1 : index
      %extracted_26 = tensor.extract %31#1[%49] : tensor<?xi64>
      %50 = arith.index_cast %extracted_26 : i64 to index
      %51 = arith.subi %50, %48 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %47#2 into %arg1[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %alloc_18 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_18[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %32 step %c1 {
      %extracted = tensor.extract %35[%arg0] : tensor<?xf64>
      %37 = memref.load %alloc_18[%c0] : memref<1xf64>
      %38 = arith.addf %extracted, %37 : f64
      memref.store %38, %alloc_18[%c0] : memref<1xf64>
    }
    %36 = memref.load %alloc_18[%c0] : memref<1xf64>
    "ta.print"(%36) : (f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %14 = index.add %9, %idx1
    %15 = tensor.empty(%14) : tensor<?xi64>
    %16 = tensor.empty(%10) : tensor<?xi64>
    %17 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %11[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = index.add %arg0, %idx1
      %41 = arith.index_cast %40 : index to i64
      %42:2 = scf.for %arg2 = %38 to %39 step %c1 iter_args(%arg3 = %c0, %arg4 = %16) -> (index, tensor<?xi64>) {
        %extracted_20 = tensor.extract %12[%arg2] : tensor<?xi64>
        %45 = arith.index_cast %extracted_20 : i64 to index
        %46 = arith.addi %45, %c1 : index
        %extracted_21 = tensor.extract %11[%45] : tensor<?xi64>
        %47 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %11[%46] : tensor<?xi64>
        %48 = arith.index_cast %extracted_22 : i64 to index
        %49:2 = scf.for %arg5 = %47 to %48 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
          %extracted_23 = tensor.extract %12[%arg5] : tensor<?xi64>
          %50 = arith.index_cast %extracted_23 : i64 to index
          %extracted_24 = tensor.extract %arg7[%50] : tensor<?xi64>
          %51 = arith.cmpi eq, %41, %extracted_24 : i64
          %52:2 = scf.if %51 -> (index, tensor<?xi64>) {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          } else {
            %inserted_25 = tensor.insert %41 into %arg7[%50] : tensor<?xi64>
            %53 = index.add %arg6, %idx1
            scf.yield %53, %inserted_25 : index, tensor<?xi64>
          }
          scf.yield %52#0, %52#1 : index, tensor<?xi64>
        }
        scf.yield %49#0, %49#1 : index, tensor<?xi64>
      }
      %43 = index.add %arg0, %idx1
      %44 = arith.index_cast %42#0 : index to i64
      %inserted = tensor.insert %44 into %arg1[%43] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted[%43] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%43] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %18 = arith.addi %9, %c1 : index
    %19:2 = scf.for %arg0 = %c1 to %18 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %17) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted : i64, tensor<?xi64>
    }
    %20 = arith.index_cast %19#0 : i64 to index
    %21 = tensor.empty(%20) : tensor<?xi64>
    %22 = tensor.empty(%20) : tensor<?xf64>
    %23 = bufferization.alloc_tensor(%10) : tensor<?xf64>
    %24 = bufferization.alloc_tensor(%10) : tensor<?xi32>
    %25 = bufferization.alloc_tensor(%10) : tensor<?xi64>
    %26:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %21, %arg2 = %22) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_19 = tensor.extract %19#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_20 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.index_cast %arg0 : index to i32
      %42 = arith.addi %41, %c1_i32 : i32
      %43 = arith.addi %arg0, %c1 : index
      %extracted_21 = tensor.extract %11[%arg0] : tensor<?xi64>
      %44 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_22 : i64 to index
      %46:4 = scf.for %arg3 = %44 to %45 step %c1 iter_args(%arg4 = %23, %arg5 = %24, %arg6 = %idx0, %arg7 = %25) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg3] : tensor<?xi64>
        %49 = arith.index_cast %extracted_23 : i64 to index
        %50 = arith.addi %49, %c1 : index
        %extracted_24 = tensor.extract %11[%49] : tensor<?xi64>
        %51 = arith.index_cast %extracted_24 : i64 to index
        %extracted_25 = tensor.extract %11[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_25 : i64 to index
        %extracted_26 = tensor.extract %13[%arg3] : tensor<?xf64>
        %53:4 = scf.for %arg8 = %51 to %52 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_27 = tensor.extract %12[%arg8] : tensor<?xi64>
          %54 = arith.index_cast %extracted_27 : i64 to index
          %extracted_28 = tensor.extract %13[%arg8] : tensor<?xf64>
          %55 = arith.mulf %extracted_26, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg10[%54] : tensor<?xi32>
          %56 = arith.cmpi eq, %extracted_29, %42 : i32
          %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_30 = tensor.extract %arg9[%54] : tensor<?xf64>
            %58 = arith.addf %extracted_30, %55 : f64
            %inserted = tensor.insert %58 into %arg9[%54] : tensor<?xf64>
            scf.yield %arg10, %arg11, %arg12, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted = tensor.insert %42 into %arg10[%54] : tensor<?xi32>
            %inserted_30 = tensor.insert %extracted_27 into %arg12[%arg11] : tensor<?xi64>
            %58 = index.add %arg11, %idx1
            %inserted_31 = tensor.insert %55 into %arg9[%54] : tensor<?xf64>
            scf.yield %inserted, %58, %inserted_30, %inserted_31 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %48:2 = scf.for %arg3 = %c0 to %46#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_20) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted_23 = tensor.extract %47[%arg3] : tensor<?xi64>
        %49 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %46#0[%49] : tensor<?xf64>
        %inserted = tensor.insert %extracted_23 into %arg4[%arg3] : tensor<?xi64>
        %inserted_25 = tensor.insert %extracted_24 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %inserted, %inserted_25 : tensor<?xi64>, tensor<?xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %48#0 into %arg1[%37] [%40] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %48#1 into %arg2[%37] [%40] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %27 = index.add %9, %idx1
    %28 = tensor.empty(%27) : tensor<?xi64>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %28) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %19#1[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = arith.addi %arg0, %c1 : index
      %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
      %41 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %11[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_21 : i64 to index
      %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
        %46 = arith.cmpi ult, %arg5, %42 : index
        %47 = arith.cmpi ult, %arg4, %39 : index
        %48 = arith.andi %47, %46 : i1
        scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %extracted_22 = tensor.extract %12[%arg5] : tensor<?xi64>
        %46 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %26#0[%arg4] : tensor<?xi64>
        %47 = arith.index_cast %extracted_23 : i64 to index
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
      %inserted = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = tensor.empty(%32) : tensor<?xi64>
    %34 = tensor.empty(%32) : tensor<?xf64>
    %35 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %34) -> (tensor<?xf64>) {
      %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_19 = tensor.extract %31#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %33[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_20 = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.addi %arg0, %c1 : index
      %extracted_21 = tensor.extract %19#1[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %19#1[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_22 : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_23 = tensor.extract %11[%arg0] : tensor<?xi64>
      %45 = arith.index_cast %extracted_23 : i64 to index
      %extracted_24 = tensor.extract %11[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_24 : i64 to index
      %47:6 = scf.while (%arg2 = %c0, %arg3 = %extracted_slice, %arg4 = %extracted_slice_20, %arg5 = %idx0, %arg6 = %42, %arg7 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %52 = arith.cmpi ult, %arg7, %46 : index
        %53 = arith.cmpi ult, %arg6, %43 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: tensor<?xi64>, %arg4: tensor<?xf64>, %arg5: index, %arg6: index, %arg7: index):
        %extracted_27 = tensor.extract %12[%arg7] : tensor<?xi64>
        %52 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %26#0[%arg6] : tensor<?xi64>
        %53 = arith.index_cast %extracted_28 : i64 to index
        %54 = arith.minui %53, %52 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %52 : index
        %57 = arith.andi %55, %56 : i1
        %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_29 = tensor.extract %26#1[%arg6] : tensor<?xf64>
          %extracted_30 = tensor.extract %13[%arg7] : tensor<?xf64>
          %63 = arith.mulf %extracted_29, %extracted_30 : f64
          %64 = arith.index_cast %54 : index to i64
          %inserted = tensor.insert %64 into %arg3[%arg2] : tensor<?xi64>
          %65 = index.add %arg2, %idx1
          %inserted_31 = tensor.insert %63 into %arg4[%arg2] : tensor<?xf64>
          %66 = index.add %arg5, %idx1
          scf.yield %65, %inserted, %inserted_31, %66 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg2, %arg3, %arg4, %arg5 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg6, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg7, %61
        scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %extracted_25 = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %48 = arith.index_cast %extracted_25 : i64 to index
      %49 = arith.addi %arg0, %c1 : index
      %extracted_26 = tensor.extract %31#1[%49] : tensor<?xi64>
      %50 = arith.index_cast %extracted_26 : i64 to index
      %51 = arith.subi %50, %48 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %47#2 into %arg1[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %alloc_18 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_18[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %32 step %c1 {
      %extracted = tensor.extract %35[%arg0] : tensor<?xf64>
      %37 = memref.load %alloc_18[%c0] : memref<1xf64>
      %38 = arith.addf %extracted, %37 : f64
      memref.store %38, %alloc_18[%c0] : memref<1xf64>
    }
    %36 = memref.load %alloc_18[%c0] : memref<1xf64>
    "ta.print"(%36) : (f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %14 = index.add %9, %idx1
    %15 = tensor.empty(%14) : tensor<?xi64>
    %16 = tensor.empty(%10) : tensor<?xi64>
    %17 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %15) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %11[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = index.add %arg0, %idx1
      %41 = arith.index_cast %40 : index to i64
      %42:2 = scf.for %arg2 = %38 to %39 step %c1 iter_args(%arg3 = %c0, %arg4 = %16) -> (index, tensor<?xi64>) {
        %extracted_20 = tensor.extract %12[%arg2] : tensor<?xi64>
        %45 = arith.index_cast %extracted_20 : i64 to index
        %46 = arith.addi %45, %c1 : index
        %extracted_21 = tensor.extract %11[%45] : tensor<?xi64>
        %47 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %11[%46] : tensor<?xi64>
        %48 = arith.index_cast %extracted_22 : i64 to index
        %49:2 = scf.for %arg5 = %47 to %48 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (index, tensor<?xi64>) {
          %extracted_23 = tensor.extract %12[%arg5] : tensor<?xi64>
          %50 = arith.index_cast %extracted_23 : i64 to index
          %extracted_24 = tensor.extract %arg7[%50] : tensor<?xi64>
          %51 = arith.cmpi eq, %41, %extracted_24 : i64
          %52:2 = scf.if %51 -> (index, tensor<?xi64>) {
            scf.yield %arg6, %arg7 : index, tensor<?xi64>
          } else {
            %inserted_25 = tensor.insert %41 into %arg7[%50] : tensor<?xi64>
            %53 = index.add %arg6, %idx1
            scf.yield %53, %inserted_25 : index, tensor<?xi64>
          }
          scf.yield %52#0, %52#1 : index, tensor<?xi64>
        }
        scf.yield %49#0, %49#1 : index, tensor<?xi64>
      }
      %43 = index.add %arg0, %idx1
      %44 = arith.index_cast %42#0 : index to i64
      %inserted = tensor.insert %44 into %arg1[%43] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted[%43] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%43] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %18 = arith.addi %9, %c1 : index
    %19:2 = scf.for %arg0 = %c1 to %18 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %17) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted : i64, tensor<?xi64>
    }
    %20 = arith.index_cast %19#0 : i64 to index
    %21 = tensor.empty(%20) : tensor<?xi64>
    %22 = tensor.empty(%20) : tensor<?xf64>
    %23 = bufferization.alloc_tensor(%10) : tensor<?xf64>
    %24 = bufferization.alloc_tensor(%10) : tensor<?xi32>
    %25 = bufferization.alloc_tensor(%10) : tensor<?xi64>
    %26:2 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %21, %arg2 = %22) -> (tensor<?xi64>, tensor<?xf64>) {
      %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_19 = tensor.extract %19#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_20 = tensor.extract_slice %arg2[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.index_cast %arg0 : index to i32
      %42 = arith.addi %41, %c1_i32 : i32
      %43 = arith.addi %arg0, %c1 : index
      %extracted_21 = tensor.extract %11[%arg0] : tensor<?xi64>
      %44 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_22 : i64 to index
      %46:4 = scf.for %arg3 = %44 to %45 step %c1 iter_args(%arg4 = %23, %arg5 = %24, %arg6 = %idx0, %arg7 = %25) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg3] : tensor<?xi64>
        %49 = arith.index_cast %extracted_23 : i64 to index
        %50 = arith.addi %49, %c1 : index
        %extracted_24 = tensor.extract %11[%49] : tensor<?xi64>
        %51 = arith.index_cast %extracted_24 : i64 to index
        %extracted_25 = tensor.extract %11[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_25 : i64 to index
        %extracted_26 = tensor.extract %13[%arg3] : tensor<?xf64>
        %53:4 = scf.for %arg8 = %51 to %52 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg5, %arg11 = %arg6, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_27 = tensor.extract %12[%arg8] : tensor<?xi64>
          %54 = arith.index_cast %extracted_27 : i64 to index
          %extracted_28 = tensor.extract %13[%arg8] : tensor<?xf64>
          %55 = arith.mulf %extracted_26, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg10[%54] : tensor<?xi32>
          %56 = arith.cmpi eq, %extracted_29, %42 : i32
          %57:4 = scf.if %56 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_30 = tensor.extract %arg9[%54] : tensor<?xf64>
            %58 = arith.addf %extracted_30, %55 : f64
            %inserted = tensor.insert %58 into %arg9[%54] : tensor<?xf64>
            scf.yield %arg10, %arg11, %arg12, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted = tensor.insert %42 into %arg10[%54] : tensor<?xi32>
            %inserted_30 = tensor.insert %extracted_27 into %arg12[%arg11] : tensor<?xi64>
            %58 = index.add %arg11, %idx1
            %inserted_31 = tensor.insert %55 into %arg9[%54] : tensor<?xf64>
            scf.yield %inserted, %58, %inserted_30, %inserted_31 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %57#3, %57#0, %57#1, %57#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %53#0, %53#1, %53#2, %53#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %47 = "ta.TensorSortOp"(%46#3, %idx0, %46#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %48:2 = scf.for %arg3 = %c0 to %46#2 step %c1 iter_args(%arg4 = %extracted_slice, %arg5 = %extracted_slice_20) -> (tensor<?xi64>, tensor<?xf64>) {
        %extracted_23 = tensor.extract %47[%arg3] : tensor<?xi64>
        %49 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %46#0[%49] : tensor<?xf64>
        %inserted = tensor.insert %extracted_23 into %arg4[%arg3] : tensor<?xi64>
        %inserted_25 = tensor.insert %extracted_24 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %inserted, %inserted_25 : tensor<?xi64>, tensor<?xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %48#0 into %arg1[%37] [%40] [1] : tensor<?xi64> into tensor<?xi64>
        tensor.parallel_insert_slice %48#1 into %arg2[%37] [%40] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %27 = index.add %9, %idx1
    %28 = tensor.empty(%27) : tensor<?xi64>
    %29 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %28) -> (tensor<?xi64>) {
      %37 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %19#1[%arg0] : tensor<?xi64>
      %38 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %19#1[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = arith.addi %arg0, %c1 : index
      %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
      %41 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %11[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_21 : i64 to index
      %43:4 = scf.while (%arg2 = %c0, %arg3 = %idx0, %arg4 = %38, %arg5 = %41) : (index, index, index, index) -> (index, index, index, index) {
        %46 = arith.cmpi ult, %arg5, %42 : index
        %47 = arith.cmpi ult, %arg4, %39 : index
        %48 = arith.andi %47, %46 : i1
        scf.condition(%48) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %extracted_22 = tensor.extract %12[%arg5] : tensor<?xi64>
        %46 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %26#0[%arg4] : tensor<?xi64>
        %47 = arith.index_cast %extracted_23 : i64 to index
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
      %inserted = tensor.insert %45 into %arg1[%44] : tensor<?xi64>
      %extracted_slice = tensor.extract_slice %inserted[%44] [1] [1] : tensor<?xi64> to tensor<1xi64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %extracted_slice into %arg1[%44] [1] [1] : tensor<1xi64> into tensor<?xi64>
      }
    }
    %30 = arith.addi %9, %c1 : index
    %31:2 = scf.for %arg0 = %c1 to %30 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %29) -> (i64, tensor<?xi64>) {
      %extracted = tensor.extract %arg2[%arg0] : tensor<?xi64>
      %37 = arith.addi %extracted, %arg1 : i64
      %inserted = tensor.insert %37 into %arg2[%arg0] : tensor<?xi64>
      scf.yield %37, %inserted : i64, tensor<?xi64>
    }
    %32 = arith.index_cast %31#0 : i64 to index
    %33 = tensor.empty(%32) : tensor<?xi64>
    %34 = tensor.empty(%32) : tensor<?xf64>
    %35 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %34) -> (tensor<?xf64>) {
      %extracted = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %38 = arith.addi %arg0, %c1 : index
      %extracted_19 = tensor.extract %31#1[%38] : tensor<?xi64>
      %39 = arith.index_cast %extracted_19 : i64 to index
      %40 = arith.subi %39, %37 : index
      %extracted_slice = tensor.extract_slice %33[%37] [%40] [1] : tensor<?xi64> to tensor<?xi64>
      %extracted_slice_20 = tensor.extract_slice %arg1[%37] [%40] [1] : tensor<?xf64> to tensor<?xf64>
      %41 = arith.addi %arg0, %c1 : index
      %extracted_21 = tensor.extract %19#1[%arg0] : tensor<?xi64>
      %42 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %19#1[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_22 : i64 to index
      %44 = arith.addi %arg0, %c1 : index
      %extracted_23 = tensor.extract %11[%arg0] : tensor<?xi64>
      %45 = arith.index_cast %extracted_23 : i64 to index
      %extracted_24 = tensor.extract %11[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_24 : i64 to index
      %47:6 = scf.while (%arg2 = %c0, %arg3 = %extracted_slice, %arg4 = %extracted_slice_20, %arg5 = %idx0, %arg6 = %42, %arg7 = %45) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %52 = arith.cmpi ult, %arg7, %46 : index
        %53 = arith.cmpi ult, %arg6, %43 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: tensor<?xi64>, %arg4: tensor<?xf64>, %arg5: index, %arg6: index, %arg7: index):
        %extracted_27 = tensor.extract %12[%arg7] : tensor<?xi64>
        %52 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %26#0[%arg6] : tensor<?xi64>
        %53 = arith.index_cast %extracted_28 : i64 to index
        %54 = arith.minui %53, %52 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %52 : index
        %57 = arith.andi %55, %56 : i1
        %58:4 = scf.if %57 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_29 = tensor.extract %26#1[%arg6] : tensor<?xf64>
          %extracted_30 = tensor.extract %13[%arg7] : tensor<?xf64>
          %63 = arith.mulf %extracted_29, %extracted_30 : f64
          %64 = arith.index_cast %54 : index to i64
          %inserted = tensor.insert %64 into %arg3[%arg2] : tensor<?xi64>
          %65 = index.add %arg2, %idx1
          %inserted_31 = tensor.insert %63 into %arg4[%arg2] : tensor<?xf64>
          %66 = index.add %arg5, %idx1
          scf.yield %65, %inserted, %inserted_31, %66 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg2, %arg3, %arg4, %arg5 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg6, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg7, %61
        scf.yield %58#0, %58#1, %58#2, %58#3, %60, %62 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %extracted_25 = tensor.extract %31#1[%arg0] : tensor<?xi64>
      %48 = arith.index_cast %extracted_25 : i64 to index
      %49 = arith.addi %arg0, %c1 : index
      %extracted_26 = tensor.extract %31#1[%49] : tensor<?xi64>
      %50 = arith.index_cast %extracted_26 : i64 to index
      %51 = arith.subi %50, %48 : index
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %47#2 into %arg1[%48] [%51] [1] : tensor<?xf64> into tensor<?xf64>
      }
    }
    %alloc_18 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_18[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %32 step %c1 {
      %extracted = tensor.extract %35[%arg0] : tensor<?xf64>
      %37 = memref.load %alloc_18[%c0] : memref<1xf64>
      %38 = arith.addf %extracted, %37 : f64
      memref.store %38, %alloc_18[%c0] : memref<1xf64>
    }
    %36 = memref.load %alloc_18[%c0] : memref<1xf64>
    "ta.print"(%36) : (f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = index.add %arg0, %idx1
      %26 = arith.index_cast %25 : index to i64
      %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %27:2 = scf.for %arg1 = %22 to %24 step %c1 iter_args(%arg2 = %c0, %arg3 = %alloc_25) -> (index, memref<?xi64>) {
        %30 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.addi %31, %c1 : index
        %33 = memref.load %alloc_8[%31] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_8[%32] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37:2 = scf.for %arg4 = %34 to %36 step %c1 iter_args(%arg5 = %arg2, %arg6 = %arg3) -> (index, memref<?xi64>) {
          %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
          %39 = arith.index_cast %38 : i64 to index
          %40 = memref.load %arg6[%39] : memref<?xi64>
          %41 = arith.cmpi eq, %26, %40 : i64
          %42:2 = scf.if %41 -> (index, memref<?xi64>) {
            scf.yield %arg5, %arg6 : index, memref<?xi64>
          } else {
            memref.store %26, %arg6[%39] : memref<?xi64>
            %43 = index.add %arg5, %idx1
            scf.yield %43, %arg6 : index, memref<?xi64>
          }
          scf.yield %42#0, %42#1 : index, memref<?xi64>
        }
        scf.yield %37#0, %37#1 : index, memref<?xi64>
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %c0_26 = arith.constant 0 : index
      %dim = memref.dim %alloc_18, %c0_26 : memref<?xi64>
      %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_27 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_27[%28] : memref<?xi64>
      %subview = memref.subview %alloc_27[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_28 = memref.subview %alloc_18[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_28 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %12 = arith.addi %9, %c1 : index
    %13:2 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_18) -> (i64, memref<?xi64>) {
      %20 = memref.load %arg2[%arg0] : memref<?xi64>
      %21 = arith.addi %20, %arg1 : i64
      memref.store %21, %arg2[%arg0] : memref<?xi64>
      scf.yield %21, %arg2 : i64, memref<?xi64>
    }
    %14 = arith.index_cast %13#0 : i64 to index
    %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %20 = memref.load %13#1[%arg0] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = arith.addi %arg0, %c1 : index
      %23 = memref.load %13#1[%22] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = arith.subi %24, %21 : index
      %subview = memref.subview %alloc_19[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_20[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %26 = arith.index_cast %arg0 : index to i32
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_8[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_27 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_28 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %33:4 = scf.for %arg1 = %30 to %32 step %c1 iter_args(%arg2 = %alloc_26, %arg3 = %alloc_27, %arg4 = %idx0, %arg5 = %alloc_28) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.addi %36, %c1 : index
        %38 = memref.load %alloc_8[%36] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_8[%37] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %43:4 = scf.for %arg6 = %39 to %41 step %c1 iter_args(%arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4, %arg10 = %arg5) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
          %44 = memref.load %alloc_10[%arg6] : memref<?xi64>
          %45 = arith.index_cast %44 : i64 to index
          %46 = memref.load %alloc_16[%arg6] : memref<?xf64>
          %47 = arith.mulf %42, %46 : f64
          %48 = memref.load %arg8[%45] : memref<?xi32>
          %49 = arith.cmpi eq, %48, %27 : i32
          %50:4 = scf.if %49 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
            %51 = memref.load %arg7[%45] : memref<?xf64>
            %52 = arith.addf %51, %47 : f64
            memref.store %52, %arg7[%45] : memref<?xf64>
            scf.yield %arg8, %arg9, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          } else {
            memref.store %27, %arg8[%45] : memref<?xi32>
            memref.store %44, %arg10[%arg9] : memref<?xi64>
            %51 = index.add %arg9, %idx1
            memref.store %47, %arg7[%45] : memref<?xf64>
            scf.yield %arg8, %51, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          }
          scf.yield %50#3, %50#0, %50#1, %50#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        }
        scf.yield %43#0, %43#1, %43#2, %43#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      "ta.TensorSortOp"(%33#3, %idx0, %33#2) : (memref<?xi64>, index, index) -> ()
      %34:2 = scf.for %arg1 = %c0 to %33#2 step %c1 iter_args(%arg2 = %subview, %arg3 = %subview_25) -> (memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>) {
        %35 = memref.load %33#3[%arg1] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %33#0[%36] : memref<?xf64>
        memref.store %35, %arg2[%arg1] : memref<?xi64, strided<[1], offset: ?>>
        memref.store %37, %arg3[%arg1] : memref<?xf64, strided<[1], offset: ?>>
        scf.yield %arg2, %arg3 : memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>
      }
      %subview_29 = memref.subview %alloc_19[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %34#0, %subview_29 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      %subview_30 = memref.subview %alloc_20[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %34#1, %subview_30 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %15 = index.add %9, %idx1
    %alloc_21 = memref.alloc(%15) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %13#1[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %13#1[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %22, %arg4 = %27) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg4, %29 : index
        %34 = arith.cmpi ult, %arg3, %24 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %33 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = index.add %arg1, %idx1
          %47 = index.add %arg2, %idx1
          scf.yield %46, %47 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg3, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg4, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %30#0 : index to i64
      %c0_25 = arith.constant 0 : index
      %dim = memref.dim %alloc_21, %c0_25 : memref<?xi64>
      %alloc_26 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_21, %alloc_26 : memref<?xi64> to memref<?xi64>
      memref.store %32, %alloc_26[%31] : memref<?xi64>
      %subview = memref.subview %alloc_26[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_27 = memref.subview %alloc_21[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_27 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %16 = arith.addi %9, %c1 : index
    %17:2 = scf.for %arg0 = %c1 to %16 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_21) -> (i64, memref<?xi64>) {
      %20 = memref.load %arg2[%arg0] : memref<?xi64>
      %21 = arith.addi %20, %arg1 : i64
      memref.store %21, %arg2[%arg0] : memref<?xi64>
      scf.yield %21, %arg2 : i64, memref<?xi64>
    }
    %18 = arith.index_cast %17#0 : i64 to index
    %alloc_22 = memref.alloc(%18) {alignment = 64 : i64} : memref<?xi64>
    %alloc_23 = memref.alloc(%18) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %20 = memref.load %17#1[%arg0] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = arith.addi %arg0, %c1 : index
      %23 = memref.load %17#1[%22] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = arith.subi %24, %21 : index
      %subview = memref.subview %alloc_22[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_23[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %c0_26 = arith.constant 0 : index
      %dim = memref.dim %subview_25, %c0_26 : memref<?xf64, strided<[1], offset: ?>>
      %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview_25, %alloc_27 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %13#1[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %13#1[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = arith.addi %arg0, %c1 : index
      %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_8[%31] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %alloc_28 = memref.alloc(%25) {alignment = 64 : i64} : memref<?xi64>
      %36:6 = scf.while (%arg1 = %c0, %arg2 = %alloc_28, %arg3 = %alloc_27, %arg4 = %idx0, %arg5 = %28, %arg6 = %33) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
        %43 = arith.cmpi ult, %arg6, %35 : index
        %44 = arith.cmpi ult, %arg5, %30 : index
        %45 = arith.andi %44, %43 : i1
        scf.condition(%45) %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : index, memref<?xi64>, memref<?xf64>, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: memref<?xi64>, %arg3: memref<?xf64>, %arg4: index, %arg5: index, %arg6: index):
        %43 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = memref.load %alloc_19[%arg5] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = arith.minui %46, %44 : index
        %48 = arith.cmpi eq, %47, %46 : index
        %49 = arith.cmpi eq, %47, %44 : index
        %50 = arith.andi %48, %49 : i1
        %51:4 = scf.if %50 -> (index, memref<?xi64>, memref<?xf64>, index) {
          %56 = memref.load %alloc_20[%arg5] : memref<?xf64>
          %57 = memref.load %alloc_16[%arg6] : memref<?xf64>
          %58 = arith.mulf %56, %57 : f64
          %59 = arith.index_cast %47 : index to i64
          memref.store %59, %arg2[%arg1] : memref<?xi64>
          %60 = index.add %arg1, %idx1
          memref.store %58, %arg3[%arg1] : memref<?xf64>
          %61 = index.add %arg4, %idx1
          scf.yield %60, %arg2, %arg3, %61 : index, memref<?xi64>, memref<?xf64>, index
        } else {
          scf.yield %arg1, %arg2, %arg3, %arg4 : index, memref<?xi64>, memref<?xf64>, index
        }
        %52 = index.castu %48 : i1 to index
        %53 = index.add %arg5, %52
        %54 = index.castu %49 : i1 to index
        %55 = index.add %arg6, %54
        scf.yield %51#0, %51#1, %51#2, %51#3, %53, %55 : index, memref<?xi64>, memref<?xf64>, index, index, index
      }
      %37 = memref.load %17#1[%arg0] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = arith.addi %arg0, %c1 : index
      %40 = memref.load %17#1[%39] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = arith.subi %41, %38 : index
      %subview_29 = memref.subview %alloc_23[%38] [%42] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %36#2, %subview_29 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_24 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_24[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      %20 = memref.load %alloc_23[%arg0] : memref<?xf64>
      %21 = memref.load %alloc_24[%c0] : memref<1xf64>
      %22 = arith.addf %20, %21 : f64
      memref.store %22, %alloc_24[%c0] : memref<1xf64>
    }
    %19 = memref.load %alloc_24[%c0] : memref<1xf64>
    "ta.print"(%19) : (f64) -> ()
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
  %c1_i32 = arith.constant 1 : i32
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = index.add %9, %idx1
  %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %20 = arith.addi %arg0, %c1 : index
    %21 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = memref.load %alloc_8[%20] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = index.add %arg0, %idx1
    %26 = arith.index_cast %25 : index to i64
    %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %27:2 = scf.for %arg1 = %22 to %24 step %c1 iter_args(%arg2 = %c0, %arg3 = %alloc_25) -> (index, memref<?xi64>) {
      %30 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = arith.addi %31, %c1 : index
      %33 = memref.load %alloc_8[%31] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_8[%32] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37:2 = scf.for %arg4 = %34 to %36 step %c1 iter_args(%arg5 = %arg2, %arg6 = %arg3) -> (index, memref<?xi64>) {
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %arg6[%39] : memref<?xi64>
        %41 = arith.cmpi eq, %26, %40 : i64
        %42:2 = scf.if %41 -> (index, memref<?xi64>) {
          scf.yield %arg5, %arg6 : index, memref<?xi64>
        } else {
          memref.store %26, %arg6[%39] : memref<?xi64>
          %43 = index.add %arg5, %idx1
          scf.yield %43, %arg6 : index, memref<?xi64>
        }
        scf.yield %42#0, %42#1 : index, memref<?xi64>
      }
      scf.yield %37#0, %37#1 : index, memref<?xi64>
    }
    %28 = index.add %arg0, %idx1
    %29 = arith.index_cast %27#0 : index to i64
    %c0_26 = arith.constant 0 : index
    %dim = memref.dim %alloc_18, %c0_26 : memref<?xi64>
    %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_18, %alloc_27 : memref<?xi64> to memref<?xi64>
    memref.store %29, %alloc_27[%28] : memref<?xi64>
    %subview = memref.subview %alloc_27[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_28 = memref.subview %alloc_18[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_28 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %12 = arith.addi %9, %c1 : index
  %13:2 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_18) -> (i64, memref<?xi64>) {
    %20 = memref.load %arg2[%arg0] : memref<?xi64>
    %21 = arith.addi %20, %arg1 : i64
    memref.store %21, %arg2[%arg0] : memref<?xi64>
    scf.yield %21, %arg2 : i64, memref<?xi64>
  }
  %14 = arith.index_cast %13#0 : i64 to index
  %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
  %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %20 = memref.load %13#1[%arg0] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = arith.addi %arg0, %c1 : index
    %23 = memref.load %13#1[%22] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = arith.subi %24, %21 : index
    %subview = memref.subview %alloc_19[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_25 = memref.subview %alloc_20[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %26 = arith.index_cast %arg0 : index to i32
    %27 = arith.addi %26, %c1_i32 : i32
    %28 = arith.addi %arg0, %c1 : index
    %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = memref.load %alloc_8[%28] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_27 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_28 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %33:4 = scf.for %arg1 = %30 to %32 step %c1 iter_args(%arg2 = %alloc_26, %arg3 = %alloc_27, %arg4 = %idx0, %arg5 = %alloc_28) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.addi %36, %c1 : index
      %38 = memref.load %alloc_8[%36] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = memref.load %alloc_8[%37] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = memref.load %alloc_16[%arg1] : memref<?xf64>
      %43:4 = scf.for %arg6 = %39 to %41 step %c1 iter_args(%arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4, %arg10 = %arg5) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %44 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_16[%arg6] : memref<?xf64>
        %47 = arith.mulf %42, %46 : f64
        %48 = memref.load %arg8[%45] : memref<?xi32>
        %49 = arith.cmpi eq, %48, %27 : i32
        %50:4 = scf.if %49 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %51 = memref.load %arg7[%45] : memref<?xf64>
          %52 = arith.addf %51, %47 : f64
          memref.store %52, %arg7[%45] : memref<?xf64>
          scf.yield %arg8, %arg9, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %27, %arg8[%45] : memref<?xi32>
          memref.store %44, %arg10[%arg9] : memref<?xi64>
          %51 = index.add %arg9, %idx1
          memref.store %47, %arg7[%45] : memref<?xf64>
          scf.yield %arg8, %51, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %50#3, %50#0, %50#1, %50#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %43#0, %43#1, %43#2, %43#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    "ta.TensorSortOp"(%33#3, %idx0, %33#2) : (memref<?xi64>, index, index) -> ()
    %34:2 = scf.for %arg1 = %c0 to %33#2 step %c1 iter_args(%arg2 = %subview, %arg3 = %subview_25) -> (memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>) {
      %35 = memref.load %33#3[%arg1] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = memref.load %33#0[%36] : memref<?xf64>
      memref.store %35, %arg2[%arg1] : memref<?xi64, strided<[1], offset: ?>>
      memref.store %37, %arg3[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      scf.yield %arg2, %arg3 : memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>
    }
    %subview_29 = memref.subview %alloc_19[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %34#0, %subview_29 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
    %subview_30 = memref.subview %alloc_20[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %34#1, %subview_30 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
  }
  %15 = index.add %9, %idx1
  %alloc_21 = memref.alloc(%15) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %20 = arith.addi %arg0, %c1 : index
    %21 = memref.load %13#1[%arg0] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = memref.load %13#1[%20] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = arith.addi %arg0, %c1 : index
    %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_8[%25] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %22, %arg4 = %27) : (index, index, index, index) -> (index, index, index, index) {
      %33 = arith.cmpi ult, %arg4, %29 : index
      %34 = arith.cmpi ult, %arg3, %24 : index
      %35 = arith.andi %34, %33 : i1
      scf.condition(%35) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %33 = memref.load %alloc_10[%arg4] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_19[%arg3] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.minui %36, %34 : index
      %38 = arith.cmpi eq, %37, %36 : index
      %39 = arith.cmpi eq, %37, %34 : index
      %40 = arith.andi %38, %39 : i1
      %41:2 = scf.if %40 -> (index, index) {
        %46 = index.add %arg1, %idx1
        %47 = index.add %arg2, %idx1
        scf.yield %46, %47 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %42 = index.castu %38 : i1 to index
      %43 = index.add %arg3, %42
      %44 = index.castu %39 : i1 to index
      %45 = index.add %arg4, %44
      scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
    }
    %31 = index.add %arg0, %idx1
    %32 = arith.index_cast %30#0 : index to i64
    %c0_25 = arith.constant 0 : index
    %dim = memref.dim %alloc_21, %c0_25 : memref<?xi64>
    %alloc_26 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_21, %alloc_26 : memref<?xi64> to memref<?xi64>
    memref.store %32, %alloc_26[%31] : memref<?xi64>
    %subview = memref.subview %alloc_26[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_27 = memref.subview %alloc_21[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_27 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %16 = arith.addi %9, %c1 : index
  %17:2 = scf.for %arg0 = %c1 to %16 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_21) -> (i64, memref<?xi64>) {
    %20 = memref.load %arg2[%arg0] : memref<?xi64>
    %21 = arith.addi %20, %arg1 : i64
    memref.store %21, %arg2[%arg0] : memref<?xi64>
    scf.yield %21, %arg2 : i64, memref<?xi64>
  }
  %18 = arith.index_cast %17#0 : i64 to index
  %alloc_22 = memref.alloc(%18) {alignment = 64 : i64} : memref<?xi64>
  %alloc_23 = memref.alloc(%18) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %20 = memref.load %17#1[%arg0] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = arith.addi %arg0, %c1 : index
    %23 = memref.load %17#1[%22] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = arith.subi %24, %21 : index
    %subview = memref.subview %alloc_22[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_25 = memref.subview %alloc_23[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %c0_26 = arith.constant 0 : index
    %dim = memref.dim %subview_25, %c0_26 : memref<?xf64, strided<[1], offset: ?>>
    %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xf64>
    memref.copy %subview_25, %alloc_27 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %13#1[%arg0] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %13#1[%26] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = arith.addi %arg0, %c1 : index
    %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = memref.load %alloc_8[%31] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %alloc_28 = memref.alloc(%25) {alignment = 64 : i64} : memref<?xi64>
    %36:6 = scf.while (%arg1 = %c0, %arg2 = %alloc_28, %arg3 = %alloc_27, %arg4 = %idx0, %arg5 = %28, %arg6 = %33) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
      %43 = arith.cmpi ult, %arg6, %35 : index
      %44 = arith.cmpi ult, %arg5, %30 : index
      %45 = arith.andi %44, %43 : i1
      scf.condition(%45) %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : index, memref<?xi64>, memref<?xf64>, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: memref<?xi64>, %arg3: memref<?xf64>, %arg4: index, %arg5: index, %arg6: index):
      %43 = memref.load %alloc_10[%arg6] : memref<?xi64>
      %44 = arith.index_cast %43 : i64 to index
      %45 = memref.load %alloc_19[%arg5] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = arith.minui %46, %44 : index
      %48 = arith.cmpi eq, %47, %46 : index
      %49 = arith.cmpi eq, %47, %44 : index
      %50 = arith.andi %48, %49 : i1
      %51:4 = scf.if %50 -> (index, memref<?xi64>, memref<?xf64>, index) {
        %56 = memref.load %alloc_20[%arg5] : memref<?xf64>
        %57 = memref.load %alloc_16[%arg6] : memref<?xf64>
        %58 = arith.mulf %56, %57 : f64
        %59 = arith.index_cast %47 : index to i64
        memref.store %59, %arg2[%arg1] : memref<?xi64>
        %60 = index.add %arg1, %idx1
        memref.store %58, %arg3[%arg1] : memref<?xf64>
        %61 = index.add %arg4, %idx1
        scf.yield %60, %arg2, %arg3, %61 : index, memref<?xi64>, memref<?xf64>, index
      } else {
        scf.yield %arg1, %arg2, %arg3, %arg4 : index, memref<?xi64>, memref<?xf64>, index
      }
      %52 = index.castu %48 : i1 to index
      %53 = index.add %arg5, %52
      %54 = index.castu %49 : i1 to index
      %55 = index.add %arg6, %54
      scf.yield %51#0, %51#1, %51#2, %51#3, %53, %55 : index, memref<?xi64>, memref<?xf64>, index, index, index
    }
    %37 = memref.load %17#1[%arg0] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39 = arith.addi %arg0, %c1 : index
    %40 = memref.load %17#1[%39] : memref<?xi64>
    %41 = arith.index_cast %40 : i64 to index
    %42 = arith.subi %41, %38 : index
    %subview_29 = memref.subview %alloc_23[%38] [%42] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %36#2, %subview_29 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
  }
  %alloc_24 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_24[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %18 step %c1 {
    %20 = memref.load %alloc_23[%arg0] : memref<?xf64>
    %21 = memref.load %alloc_24[%c0] : memref<1xf64>
    %22 = arith.addf %20, %21 : f64
    memref.store %22, %alloc_24[%c0] : memref<1xf64>
  }
  %19 = memref.load %alloc_24[%c0] : memref<1xf64>
  "ta.print"(%19) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %c1_i32 = arith.constant 1 : i32
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = index.add %9, %idx1
  %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %20 = arith.addi %arg0, %c1 : index
    %21 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = memref.load %alloc_8[%20] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = index.add %arg0, %idx1
    %26 = arith.index_cast %25 : index to i64
    %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %27:2 = scf.for %arg1 = %22 to %24 step %c1 iter_args(%arg2 = %c0, %arg3 = %alloc_25) -> (index, memref<?xi64>) {
      %30 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = arith.addi %31, %c1 : index
      %33 = memref.load %alloc_8[%31] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_8[%32] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37:2 = scf.for %arg4 = %34 to %36 step %c1 iter_args(%arg5 = %arg2, %arg6 = %arg3) -> (index, memref<?xi64>) {
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %arg6[%39] : memref<?xi64>
        %41 = arith.cmpi eq, %26, %40 : i64
        %42:2 = scf.if %41 -> (index, memref<?xi64>) {
          scf.yield %arg5, %arg6 : index, memref<?xi64>
        } else {
          memref.store %26, %arg6[%39] : memref<?xi64>
          %43 = index.add %arg5, %idx1
          scf.yield %43, %arg6 : index, memref<?xi64>
        }
        scf.yield %42#0, %42#1 : index, memref<?xi64>
      }
      scf.yield %37#0, %37#1 : index, memref<?xi64>
    }
    %28 = index.add %arg0, %idx1
    %29 = arith.index_cast %27#0 : index to i64
    %c0_26 = arith.constant 0 : index
    %dim = memref.dim %alloc_18, %c0_26 : memref<?xi64>
    %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_18, %alloc_27 : memref<?xi64> to memref<?xi64>
    memref.store %29, %alloc_27[%28] : memref<?xi64>
    %subview = memref.subview %alloc_27[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_28 = memref.subview %alloc_18[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_28 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %12 = arith.addi %9, %c1 : index
  %13:2 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_18) -> (i64, memref<?xi64>) {
    %20 = memref.load %arg2[%arg0] : memref<?xi64>
    %21 = arith.addi %20, %arg1 : i64
    memref.store %21, %arg2[%arg0] : memref<?xi64>
    scf.yield %21, %arg2 : i64, memref<?xi64>
  }
  %14 = arith.index_cast %13#0 : i64 to index
  %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
  %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %20 = memref.load %13#1[%arg0] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = arith.addi %arg0, %c1 : index
    %23 = memref.load %13#1[%22] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = arith.subi %24, %21 : index
    %subview = memref.subview %alloc_19[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_25 = memref.subview %alloc_20[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %26 = arith.index_cast %arg0 : index to i32
    %27 = arith.addi %26, %c1_i32 : i32
    %28 = arith.addi %arg0, %c1 : index
    %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = memref.load %alloc_8[%28] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_27 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_28 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %33:4 = scf.for %arg1 = %30 to %32 step %c1 iter_args(%arg2 = %alloc_26, %arg3 = %alloc_27, %arg4 = %idx0, %arg5 = %alloc_28) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %35 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.addi %36, %c1 : index
      %38 = memref.load %alloc_8[%36] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = memref.load %alloc_8[%37] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = memref.load %alloc_16[%arg1] : memref<?xf64>
      %43:4 = scf.for %arg6 = %39 to %41 step %c1 iter_args(%arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4, %arg10 = %arg5) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %44 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %45 = arith.index_cast %44 : i64 to index
        %46 = memref.load %alloc_16[%arg6] : memref<?xf64>
        %47 = arith.mulf %42, %46 : f64
        %48 = memref.load %arg8[%45] : memref<?xi32>
        %49 = arith.cmpi eq, %48, %27 : i32
        %50:4 = scf.if %49 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %51 = memref.load %arg7[%45] : memref<?xf64>
          %52 = arith.addf %51, %47 : f64
          memref.store %52, %arg7[%45] : memref<?xf64>
          scf.yield %arg8, %arg9, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %27, %arg8[%45] : memref<?xi32>
          memref.store %44, %arg10[%arg9] : memref<?xi64>
          %51 = index.add %arg9, %idx1
          memref.store %47, %arg7[%45] : memref<?xf64>
          scf.yield %arg8, %51, %arg10, %arg7 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %50#3, %50#0, %50#1, %50#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %43#0, %43#1, %43#2, %43#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    "ta.TensorSortOp"(%33#3, %idx0, %33#2) : (memref<?xi64>, index, index) -> ()
    %34:2 = scf.for %arg1 = %c0 to %33#2 step %c1 iter_args(%arg2 = %subview, %arg3 = %subview_25) -> (memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>) {
      %35 = memref.load %33#3[%arg1] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = memref.load %33#0[%36] : memref<?xf64>
      memref.store %35, %arg2[%arg1] : memref<?xi64, strided<[1], offset: ?>>
      memref.store %37, %arg3[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      scf.yield %arg2, %arg3 : memref<?xi64, strided<[1], offset: ?>>, memref<?xf64, strided<[1], offset: ?>>
    }
    %subview_29 = memref.subview %alloc_19[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    memref.copy %34#0, %subview_29 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
    %subview_30 = memref.subview %alloc_20[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %34#1, %subview_30 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
  }
  %15 = index.add %9, %idx1
  %alloc_21 = memref.alloc(%15) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %20 = arith.addi %arg0, %c1 : index
    %21 = memref.load %13#1[%arg0] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = memref.load %13#1[%20] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = arith.addi %arg0, %c1 : index
    %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_8[%25] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %22, %arg4 = %27) : (index, index, index, index) -> (index, index, index, index) {
      %33 = arith.cmpi ult, %arg4, %29 : index
      %34 = arith.cmpi ult, %arg3, %24 : index
      %35 = arith.andi %34, %33 : i1
      scf.condition(%35) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %33 = memref.load %alloc_10[%arg4] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_19[%arg3] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.minui %36, %34 : index
      %38 = arith.cmpi eq, %37, %36 : index
      %39 = arith.cmpi eq, %37, %34 : index
      %40 = arith.andi %38, %39 : i1
      %41:2 = scf.if %40 -> (index, index) {
        %46 = index.add %arg1, %idx1
        %47 = index.add %arg2, %idx1
        scf.yield %46, %47 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %42 = index.castu %38 : i1 to index
      %43 = index.add %arg3, %42
      %44 = index.castu %39 : i1 to index
      %45 = index.add %arg4, %44
      scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
    }
    %31 = index.add %arg0, %idx1
    %32 = arith.index_cast %30#0 : index to i64
    %c0_25 = arith.constant 0 : index
    %dim = memref.dim %alloc_21, %c0_25 : memref<?xi64>
    %alloc_26 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_21, %alloc_26 : memref<?xi64> to memref<?xi64>
    memref.store %32, %alloc_26[%31] : memref<?xi64>
    %subview = memref.subview %alloc_26[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_27 = memref.subview %alloc_21[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_27 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %16 = arith.addi %9, %c1 : index
  %17:2 = scf.for %arg0 = %c1 to %16 step %c1 iter_args(%arg1 = %c0_i64, %arg2 = %alloc_21) -> (i64, memref<?xi64>) {
    %20 = memref.load %arg2[%arg0] : memref<?xi64>
    %21 = arith.addi %20, %arg1 : i64
    memref.store %21, %arg2[%arg0] : memref<?xi64>
    scf.yield %21, %arg2 : i64, memref<?xi64>
  }
  %18 = arith.index_cast %17#0 : i64 to index
  %alloc_22 = memref.alloc(%18) {alignment = 64 : i64} : memref<?xi64>
  %alloc_23 = memref.alloc(%18) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %20 = memref.load %17#1[%arg0] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = arith.addi %arg0, %c1 : index
    %23 = memref.load %17#1[%22] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = arith.subi %24, %21 : index
    %subview = memref.subview %alloc_22[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
    %subview_25 = memref.subview %alloc_23[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %c0_26 = arith.constant 0 : index
    %dim = memref.dim %subview_25, %c0_26 : memref<?xf64, strided<[1], offset: ?>>
    %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xf64>
    memref.copy %subview_25, %alloc_27 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
    %26 = arith.addi %arg0, %c1 : index
    %27 = memref.load %13#1[%arg0] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29 = memref.load %13#1[%26] : memref<?xi64>
    %30 = arith.index_cast %29 : i64 to index
    %31 = arith.addi %arg0, %c1 : index
    %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = memref.load %alloc_8[%31] : memref<?xi64>
    %35 = arith.index_cast %34 : i64 to index
    %alloc_28 = memref.alloc(%25) {alignment = 64 : i64} : memref<?xi64>
    %36:6 = scf.while (%arg1 = %c0, %arg2 = %alloc_28, %arg3 = %alloc_27, %arg4 = %idx0, %arg5 = %28, %arg6 = %33) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
      %43 = arith.cmpi ult, %arg6, %35 : index
      %44 = arith.cmpi ult, %arg5, %30 : index
      %45 = arith.andi %44, %43 : i1
      scf.condition(%45) %arg1, %arg2, %arg3, %arg4, %arg5, %arg6 : index, memref<?xi64>, memref<?xf64>, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: memref<?xi64>, %arg3: memref<?xf64>, %arg4: index, %arg5: index, %arg6: index):
      %43 = memref.load %alloc_10[%arg6] : memref<?xi64>
      %44 = arith.index_cast %43 : i64 to index
      %45 = memref.load %alloc_19[%arg5] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = arith.minui %46, %44 : index
      %48 = arith.cmpi eq, %47, %46 : index
      %49 = arith.cmpi eq, %47, %44 : index
      %50 = arith.andi %48, %49 : i1
      %51:4 = scf.if %50 -> (index, memref<?xi64>, memref<?xf64>, index) {
        %56 = memref.load %alloc_20[%arg5] : memref<?xf64>
        %57 = memref.load %alloc_16[%arg6] : memref<?xf64>
        %58 = arith.mulf %56, %57 : f64
        %59 = arith.index_cast %47 : index to i64
        memref.store %59, %arg2[%arg1] : memref<?xi64>
        %60 = index.add %arg1, %idx1
        memref.store %58, %arg3[%arg1] : memref<?xf64>
        %61 = index.add %arg4, %idx1
        scf.yield %60, %arg2, %arg3, %61 : index, memref<?xi64>, memref<?xf64>, index
      } else {
        scf.yield %arg1, %arg2, %arg3, %arg4 : index, memref<?xi64>, memref<?xf64>, index
      }
      %52 = index.castu %48 : i1 to index
      %53 = index.add %arg5, %52
      %54 = index.castu %49 : i1 to index
      %55 = index.add %arg6, %54
      scf.yield %51#0, %51#1, %51#2, %51#3, %53, %55 : index, memref<?xi64>, memref<?xf64>, index, index, index
    }
    %37 = memref.load %17#1[%arg0] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39 = arith.addi %arg0, %c1 : index
    %40 = memref.load %17#1[%39] : memref<?xi64>
    %41 = arith.index_cast %40 : i64 to index
    %42 = arith.subi %41, %38 : index
    %subview_29 = memref.subview %alloc_23[%38] [%42] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %36#2, %subview_29 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
  }
  %alloc_24 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_24[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %18 step %c1 {
    %20 = memref.load %alloc_23[%arg0] : memref<?xf64>
    %21 = memref.load %alloc_24[%c0] : memref<1xf64>
    %22 = arith.addf %20, %21 : f64
    memref.store %22, %alloc_24[%c0] : memref<1xf64>
  }
  %19 = memref.load %alloc_24[%c0] : memref<1xf64>
  call @printF64(%19) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = index.add %arg0, %idx1
      %26 = arith.index_cast %25 : index to i64
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %27 = scf.for %arg1 = %22 to %24 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %30 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.addi %31, %c1 : index
        %33 = memref.load %alloc_8[%31] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_8[%32] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = scf.for %arg3 = %34 to %36 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %38 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %39 = arith.index_cast %38 : i64 to index
          %40 = memref.load %alloc_24[%39] : memref<?xi64>
          %41 = arith.cmpi eq, %26, %40 : i64
          %42 = scf.if %41 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %26, %alloc_24[%39] : memref<?xi64>
            %43 = index.add %arg4, %idx1
            scf.yield %43 : index
          }
          scf.yield %42 : index
        }
        scf.yield %37 : index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27 : index to i64
      %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_25[%28] : memref<?xi64>
      %subview = memref.subview %alloc_25[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_26 = memref.subview %alloc_18[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %20 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %21 = arith.addi %20, %arg1 : i64
      memref.store %21, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %21 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %20 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = arith.addi %arg0, %c1 : index
      %23 = memref.load %alloc_18[%22] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = arith.subi %24, %21 : index
      %subview = memref.subview %alloc_19[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_24 = memref.subview %alloc_20[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %26 = arith.index_cast %arg0 : index to i32
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.addi %arg0, %c1 : index
      %29 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_8[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_27 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %33 = scf.for %arg1 = %30 to %32 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %34 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = arith.addi %35, %c1 : index
        %37 = memref.load %alloc_8[%35] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_8[%36] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %42 = scf.for %arg3 = %38 to %40 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %43 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %44 = arith.index_cast %43 : i64 to index
          %45 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %46 = arith.mulf %41, %45 : f64
          %47 = memref.load %alloc_26[%44] : memref<?xi32>
          %48 = arith.cmpi eq, %47, %27 : i32
          %49 = scf.if %48 -> (index) {
            %50 = memref.load %alloc_25[%44] : memref<?xf64>
            %51 = arith.addf %50, %46 : f64
            memref.store %51, %alloc_25[%44] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %27, %alloc_26[%44] : memref<?xi32>
            memref.store %43, %alloc_27[%arg4] : memref<?xi64>
            %50 = index.add %arg4, %idx1
            memref.store %46, %alloc_25[%44] : memref<?xf64>
            scf.yield %50 : index
          }
          scf.yield %49 : index
        }
        scf.yield %42 : index
      }
      "ta.TensorSortOp"(%alloc_27, %idx0, %33) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %33 step %c1 {
        %34 = memref.load %alloc_27[%arg1] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_25[%35] : memref<?xf64>
        memref.store %34, %subview[%arg1] : memref<?xi64, strided<[1], offset: ?>>
        memref.store %36, %subview_24[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      }
      %subview_28 = memref.subview %alloc_19[%21] [%25] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_28 : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      %subview_29 = memref.subview %alloc_20[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %subview_24, %subview_29 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %15 = index.add %9, %idx1
    %alloc_21 = memref.alloc(%15) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_18[%20] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %22, %arg4 = %27) : (index, index, index, index) -> (index, index, index, index) {
        %33 = arith.cmpi ult, %arg4, %29 : index
        %34 = arith.cmpi ult, %arg3, %24 : index
        %35 = arith.andi %34, %33 : i1
        scf.condition(%35) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %33 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = arith.minui %36, %34 : index
        %38 = arith.cmpi eq, %37, %36 : index
        %39 = arith.cmpi eq, %37, %34 : index
        %40 = arith.andi %38, %39 : i1
        %41:2 = scf.if %40 -> (index, index) {
          %46 = index.add %arg1, %idx1
          %47 = index.add %arg2, %idx1
          scf.yield %46, %47 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %42 = index.castu %38 : i1 to index
        %43 = index.add %arg3, %42
        %44 = index.castu %39 : i1 to index
        %45 = index.add %arg4, %44
        scf.yield %41#0, %41#1, %43, %45 : index, index, index, index
      }
      %31 = index.add %arg0, %idx1
      %32 = arith.index_cast %30#0 : index to i64
      %alloc_24 = memref.alloc(%15) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
      memref.store %32, %alloc_24[%31] : memref<?xi64>
      %subview = memref.subview %alloc_24[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_21[%31] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %16 = arith.addi %9, %c1 : index
    %17 = scf.for %arg0 = %c1 to %16 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %20 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %21 = arith.addi %20, %arg1 : i64
      memref.store %21, %alloc_21[%arg0] : memref<?xi64>
      scf.yield %21 : i64
    }
    %18 = arith.index_cast %17 : i64 to index
    %alloc_22 = memref.alloc(%18) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %20 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = arith.addi %arg0, %c1 : index
      %23 = memref.load %alloc_21[%22] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = arith.subi %24, %21 : index
      %subview = memref.subview %alloc_22[%21] [%25] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_24 = memref.alloc(%25) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %26 = arith.addi %arg0, %c1 : index
      %27 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_18[%26] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = arith.addi %arg0, %c1 : index
      %32 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = memref.load %alloc_8[%31] : memref<?xi64>
      %35 = arith.index_cast %34 : i64 to index
      %36:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %28, %arg4 = %33) : (index, index, index, index) -> (index, index, index, index) {
        %43 = arith.cmpi ult, %arg4, %35 : index
        %44 = arith.cmpi ult, %arg3, %30 : index
        %45 = arith.andi %44, %43 : i1
        scf.condition(%45) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %43 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %44 = arith.index_cast %43 : i64 to index
        %45 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = arith.minui %46, %44 : index
        %48 = arith.cmpi eq, %47, %46 : index
        %49 = arith.cmpi eq, %47, %44 : index
        %50 = arith.andi %48, %49 : i1
        %51:2 = scf.if %50 -> (index, index) {
          %56 = memref.load %alloc_20[%arg3] : memref<?xf64>
          %57 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %58 = arith.mulf %56, %57 : f64
          %59 = index.add %arg1, %idx1
          memref.store %58, %alloc_24[%arg1] : memref<?xf64>
          %60 = index.add %arg2, %idx1
          scf.yield %59, %60 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %52 = index.castu %48 : i1 to index
        %53 = index.add %arg3, %52
        %54 = index.castu %49 : i1 to index
        %55 = index.add %arg4, %54
        scf.yield %51#0, %51#1, %53, %55 : index, index, index, index
      }
      %37 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = arith.addi %arg0, %c1 : index
      %40 = memref.load %alloc_21[%39] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = arith.subi %41, %38 : index
      %subview_25 = memref.subview %alloc_22[%38] [%42] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_23 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_23[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      %20 = memref.load %alloc_22[%arg0] : memref<?xf64>
      %21 = memref.load %alloc_23[%c0] : memref<1xf64>
      %22 = arith.addf %20, %21 : f64
      memref.store %22, %alloc_23[%c0] : memref<1xf64>
    }
    %19 = memref.load %alloc_23[%c0] : memref<1xf64>
    call @printF64(%19) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg0, %idx1
      %24 = arith.index_cast %23 : index to i64
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_24[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %24, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %24, %alloc_24[%36] : memref<?xi64>
            %40 = index.add %arg4, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %26 = arith.index_cast %25 : index to i64
      %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
      memref.store %26, %alloc_25[%23] : memref<?xi64>
      %subview = memref.subview %alloc_25[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_26 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_18[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_19[%19] [%23] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_24 = memref.subview %alloc_20[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %24 = arith.index_cast %arg0 : index to i32
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%20] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_27 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %30 = scf.for %arg1 = %27 to %29 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %31 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = arith.addi %32, %c1 : index
        %34 = memref.load %alloc_8[%32] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_8[%33] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %39 = scf.for %arg3 = %35 to %37 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %40 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %43 = arith.mulf %38, %42 : f64
          %44 = memref.load %alloc_26[%41] : memref<?xi32>
          %45 = arith.cmpi eq, %44, %25 : i32
          %46 = scf.if %45 -> (index) {
            %47 = memref.load %alloc_25[%41] : memref<?xf64>
            %48 = arith.addf %47, %43 : f64
            memref.store %48, %alloc_25[%41] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %25, %alloc_26[%41] : memref<?xi32>
            memref.store %40, %alloc_27[%arg4] : memref<?xi64>
            %47 = index.add %arg4, %idx1
            memref.store %43, %alloc_25[%41] : memref<?xf64>
            scf.yield %47 : index
          }
          scf.yield %46 : index
        }
        scf.yield %39 : index
      }
      "ta.TensorSortOp"(%alloc_27, %idx0, %30) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %30 step %c1 {
        %31 = memref.load %alloc_27[%arg1] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_25[%32] : memref<?xf64>
        memref.store %31, %subview[%arg1] : memref<?xi64, strided<[1], offset: ?>>
        memref.store %33, %subview_24[%arg1] : memref<?xf64, strided<[1], offset: ?>>
      }
      memref.copy %subview, %subview : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview_24, %subview_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_21 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%18] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %30 = arith.cmpi ult, %arg4, %26 : index
        %31 = arith.cmpi ult, %arg3, %22 : index
        %32 = arith.andi %31, %30 : i1
        scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.minui %33, %31 : index
        %35 = arith.cmpi eq, %34, %33 : index
        %36 = arith.cmpi eq, %34, %31 : index
        %37 = arith.andi %35, %36 : i1
        %38:2 = scf.if %37 -> (index, index) {
          %43 = index.add %arg1, %idx1
          %44 = index.add %arg2, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %39 = index.castu %35 : i1 to index
        %40 = index.add %arg3, %39
        %41 = index.castu %36 : i1 to index
        %42 = index.add %arg4, %41
        scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %alloc_24 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_24[%28] : memref<?xi64>
      %subview = memref.subview %alloc_24[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_21[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_21[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %16 = arith.index_cast %15 : i64 to index
    %alloc_22 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_21[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_22[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_24 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_18[%20] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%20] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %38 = arith.cmpi ult, %arg4, %31 : index
        %39 = arith.cmpi ult, %arg3, %27 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.minui %41, %39 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %39 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = memref.load %alloc_20[%arg3] : memref<?xf64>
          %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = index.add %arg1, %idx1
          memref.store %53, %alloc_24[%arg1] : memref<?xf64>
          %55 = index.add %arg2, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg3, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg4, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %33 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_21[%20] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.subi %36, %34 : index
      %subview_25 = memref.subview %alloc_22[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_23 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_23[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %18 = memref.load %alloc_22[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_23[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_23[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_23[%c0] : memref<1xf64>
    call @printF64(%17) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg0, %idx1
      %24 = arith.index_cast %23 : index to i64
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_24[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %24, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %24, %alloc_24[%36] : memref<?xi64>
            %40 = index.add %arg4, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %26 = arith.index_cast %25 : index to i64
      %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
      memref.store %26, %alloc_25[%23] : memref<?xi64>
      %subview = memref.subview %alloc_25[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_26 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_18[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_19[%19] [%23] [1] : memref<?xi64> to memref<?xi64, strided<[1], offset: ?>>
      %subview_24 = memref.subview %alloc_20[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %24 = arith.index_cast %arg0 : index to i32
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%20] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_27 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %30 = scf.for %arg1 = %27 to %29 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %31 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = arith.addi %32, %c1 : index
        %34 = memref.load %alloc_8[%32] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_8[%33] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %39 = scf.for %arg3 = %35 to %37 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %40 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %43 = arith.mulf %38, %42 : f64
          %44 = memref.load %alloc_26[%41] : memref<?xi32>
          %45 = arith.cmpi eq, %44, %25 : i32
          %46 = scf.if %45 -> (index) {
            %47 = memref.load %alloc_25[%41] : memref<?xf64>
            %48 = arith.addf %47, %43 : f64
            memref.store %48, %alloc_25[%41] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %25, %alloc_26[%41] : memref<?xi32>
            memref.store %40, %alloc_27[%arg4] : memref<?xi64>
            %47 = index.add %arg4, %idx1
            memref.store %43, %alloc_25[%41] : memref<?xf64>
            scf.yield %47 : index
          }
          scf.yield %46 : index
        }
        scf.yield %39 : index
      }
      "ta.TensorSortOp"(%alloc_27, %idx0, %30) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %30 step %c1 {
        %31 = memref.load %alloc_27[%arg1] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_25[%32] : memref<?xf64>
        %34 = affine.apply #map()[%19, %arg1]
        memref.store %31, %alloc_19[%34] : memref<?xi64>
        %35 = affine.apply #map()[%19, %arg1]
        memref.store %33, %alloc_20[%35] : memref<?xf64>
      }
      memref.copy %subview, %subview : memref<?xi64, strided<[1], offset: ?>> to memref<?xi64, strided<[1], offset: ?>>
      memref.copy %subview_24, %subview_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_21 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%18] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %30 = arith.cmpi ult, %arg4, %26 : index
        %31 = arith.cmpi ult, %arg3, %22 : index
        %32 = arith.andi %31, %30 : i1
        scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.minui %33, %31 : index
        %35 = arith.cmpi eq, %34, %33 : index
        %36 = arith.cmpi eq, %34, %31 : index
        %37 = arith.andi %35, %36 : i1
        %38:2 = scf.if %37 -> (index, index) {
          %43 = index.add %arg1, %idx1
          %44 = index.add %arg2, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %39 = index.castu %35 : i1 to index
        %40 = index.add %arg3, %39
        %41 = index.castu %36 : i1 to index
        %42 = index.add %arg4, %41
        scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %alloc_24 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_24[%28] : memref<?xi64>
      %subview = memref.subview %alloc_24[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_21[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_21[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %16 = arith.index_cast %15 : i64 to index
    %alloc_22 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_21[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_22[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_24 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_18[%20] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%20] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %38 = arith.cmpi ult, %arg4, %31 : index
        %39 = arith.cmpi ult, %arg3, %27 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.minui %41, %39 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %39 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = memref.load %alloc_20[%arg3] : memref<?xf64>
          %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = index.add %arg1, %idx1
          memref.store %53, %alloc_24[%arg1] : memref<?xf64>
          %55 = index.add %arg2, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg3, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg4, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %33 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_21[%20] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.subi %36, %34 : index
      %subview_25 = memref.subview %alloc_22[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_23 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_23[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %18 = memref.load %alloc_22[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_23[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_23[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_23[%c0] : memref<1xf64>
    call @printF64(%17) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg0, %idx1
      %24 = arith.index_cast %23 : index to i64
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_24[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %24, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %24, %alloc_24[%36] : memref<?xi64>
            %40 = index.add %arg4, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %26 = arith.index_cast %25 : index to i64
      %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
      memref.store %26, %alloc_25[%23] : memref<?xi64>
      %subview = memref.subview %alloc_25[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_26 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = arith.index_cast %arg0 : index to i32
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%20] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %27 = scf.for %arg1 = %24 to %26 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %28 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = arith.addi %29, %c1 : index
        %31 = memref.load %alloc_8[%29] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_8[%30] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %36 = scf.for %arg3 = %32 to %34 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %38 = arith.index_cast %37 : i64 to index
          %39 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %40 = arith.mulf %35, %39 : f64
          %41 = memref.load %alloc_25[%38] : memref<?xi32>
          %42 = arith.cmpi eq, %41, %22 : i32
          %43 = scf.if %42 -> (index) {
            %44 = memref.load %alloc_24[%38] : memref<?xf64>
            %45 = arith.addf %44, %40 : f64
            memref.store %45, %alloc_24[%38] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %22, %alloc_25[%38] : memref<?xi32>
            memref.store %37, %alloc_26[%arg4] : memref<?xi64>
            %44 = index.add %arg4, %idx1
            memref.store %40, %alloc_24[%38] : memref<?xf64>
            scf.yield %44 : index
          }
          scf.yield %43 : index
        }
        scf.yield %36 : index
      }
      "ta.TensorSortOp"(%alloc_26, %idx0, %27) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %27 step %c1 {
        %28 = memref.load %alloc_26[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_24[%29] : memref<?xf64>
        %31 = affine.apply #map()[%19, %arg1]
        memref.store %28, %alloc_19[%31] : memref<?xi64>
        %32 = affine.apply #map()[%19, %arg1]
        memref.store %30, %alloc_20[%32] : memref<?xf64>
      }
    }
    %alloc_21 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%18] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %30 = arith.cmpi ult, %arg4, %26 : index
        %31 = arith.cmpi ult, %arg3, %22 : index
        %32 = arith.andi %31, %30 : i1
        scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.minui %33, %31 : index
        %35 = arith.cmpi eq, %34, %33 : index
        %36 = arith.cmpi eq, %34, %31 : index
        %37 = arith.andi %35, %36 : i1
        %38:2 = scf.if %37 -> (index, index) {
          %43 = index.add %arg1, %idx1
          %44 = index.add %arg2, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %39 = index.castu %35 : i1 to index
        %40 = index.add %arg3, %39
        %41 = index.castu %36 : i1 to index
        %42 = index.add %arg4, %41
        scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %alloc_24 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_24[%28] : memref<?xi64>
      %subview = memref.subview %alloc_24[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_21[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_21[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %16 = arith.index_cast %15 : i64 to index
    %alloc_22 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_21[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_22[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_24 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_18[%20] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%20] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %38 = arith.cmpi ult, %arg4, %31 : index
        %39 = arith.cmpi ult, %arg3, %27 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.minui %41, %39 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %39 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = memref.load %alloc_20[%arg3] : memref<?xf64>
          %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = index.add %arg1, %idx1
          memref.store %53, %alloc_24[%arg1] : memref<?xf64>
          %55 = index.add %arg2, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg3, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg4, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %33 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_21[%20] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.subi %36, %34 : index
      %subview_25 = memref.subview %alloc_22[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_23 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_23[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %18 = memref.load %alloc_22[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_23[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_23[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_23[%c0] : memref<1xf64>
    call @printF64(%17) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c1_i32 = arith.constant 1 : i32
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = index.add %9, %idx1
  %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_8[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = index.add %arg0, %idx1
    %24 = arith.index_cast %23 : index to i64
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
      %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.addi %28, %c1 : index
      %30 = memref.load %alloc_8[%28] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%29] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_24[%36] : memref<?xi64>
        %38 = arith.cmpi eq, %24, %37 : i64
        %39 = scf.if %38 -> (index) {
          scf.yield %arg4 : index
        } else {
          memref.store %24, %alloc_24[%36] : memref<?xi64>
          %40 = index.add %arg4, %idx1
          scf.yield %40 : index
        }
        scf.yield %39 : index
      }
      scf.yield %34 : index
    }
    %26 = arith.index_cast %25 : index to i64
    %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
    memref.store %26, %alloc_25[%23] : memref<?xi64>
    %subview = memref.subview %alloc_25[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_26 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %12 = arith.addi %9, %c1 : index
  %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %19 = arith.addi %18, %arg1 : i64
    memref.store %19, %alloc_18[%arg0] : memref<?xi64>
    scf.yield %19 : i64
  }
  %14 = arith.index_cast %13 : i64 to index
  %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
  %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = arith.addi %arg0, %c1 : index
    %21 = arith.index_cast %arg0 : index to i32
    %22 = arith.addi %21, %c1_i32 : i32
    %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = memref.load %alloc_8[%20] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %27 = scf.for %arg1 = %24 to %26 step %c1 iter_args(%arg2 = %idx0) -> (index) {
      %28 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = arith.addi %29, %c1 : index
      %31 = memref.load %alloc_8[%29] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%30] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_16[%arg1] : memref<?xf64>
      %36 = scf.for %arg3 = %32 to %34 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %40 = arith.mulf %35, %39 : f64
        %41 = memref.load %alloc_25[%38] : memref<?xi32>
        %42 = arith.cmpi eq, %41, %22 : i32
        %43 = scf.if %42 -> (index) {
          %44 = memref.load %alloc_24[%38] : memref<?xf64>
          %45 = arith.addf %44, %40 : f64
          memref.store %45, %alloc_24[%38] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %22, %alloc_25[%38] : memref<?xi32>
          memref.store %37, %alloc_26[%arg4] : memref<?xi64>
          %44 = index.add %arg4, %idx1
          memref.store %40, %alloc_24[%38] : memref<?xf64>
          scf.yield %44 : index
        }
        scf.yield %43 : index
      }
      scf.yield %36 : index
    }
    "ta.TensorSortOp"(%alloc_26, %idx0, %27) : (memref<?xi64>, index, index) -> ()
    scf.for %arg1 = %c0 to %27 step %c1 {
      %28 = memref.load %alloc_26[%arg1] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_24[%29] : memref<?xf64>
      %31 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%19, %arg1]
      memref.store %28, %alloc_19[%31] : memref<?xi64>
      %32 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%19, %arg1]
      memref.store %30, %alloc_20[%32] : memref<?xf64>
    }
  }
  %alloc_21 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_18[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = memref.load %alloc_8[%18] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
      %30 = arith.cmpi ult, %arg4, %26 : index
      %31 = arith.cmpi ult, %arg3, %22 : index
      %32 = arith.andi %31, %30 : i1
      scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_19[%arg3] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = arith.minui %33, %31 : index
      %35 = arith.cmpi eq, %34, %33 : index
      %36 = arith.cmpi eq, %34, %31 : index
      %37 = arith.andi %35, %36 : i1
      %38:2 = scf.if %37 -> (index, index) {
        %43 = index.add %arg1, %idx1
        %44 = index.add %arg2, %idx1
        scf.yield %43, %44 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %39 = index.castu %35 : i1 to index
      %40 = index.add %arg3, %39
      %41 = index.castu %36 : i1 to index
      %42 = index.add %arg4, %41
      scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
    }
    %28 = index.add %arg0, %idx1
    %29 = arith.index_cast %27#0 : index to i64
    %alloc_24 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
    memref.store %29, %alloc_24[%28] : memref<?xi64>
    %subview = memref.subview %alloc_24[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_25 = memref.subview %alloc_21[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
    %19 = arith.addi %18, %arg1 : i64
    memref.store %19, %alloc_21[%arg0] : memref<?xi64>
    scf.yield %19 : i64
  }
  %16 = arith.index_cast %15 : i64 to index
  %alloc_22 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = arith.addi %arg0, %c1 : index
    %21 = memref.load %alloc_21[%20] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.subi %22, %19 : index
    %subview = memref.subview %alloc_22[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %alloc_24 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
    %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_18[%20] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_8[%20] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
      %38 = arith.cmpi ult, %arg4, %31 : index
      %39 = arith.cmpi ult, %arg3, %27 : index
      %40 = arith.andi %39, %38 : i1
      scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = memref.load %alloc_19[%arg3] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = arith.minui %41, %39 : index
      %43 = arith.cmpi eq, %42, %41 : index
      %44 = arith.cmpi eq, %42, %39 : index
      %45 = arith.andi %43, %44 : i1
      %46:2 = scf.if %45 -> (index, index) {
        %51 = memref.load %alloc_20[%arg3] : memref<?xf64>
        %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
        %53 = arith.mulf %51, %52 : f64
        %54 = index.add %arg1, %idx1
        memref.store %53, %alloc_24[%arg1] : memref<?xf64>
        %55 = index.add %arg2, %idx1
        scf.yield %54, %55 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %47 = index.castu %43 : i1 to index
      %48 = index.add %arg3, %47
      %49 = index.castu %44 : i1 to index
      %50 = index.add %arg4, %49
      scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
    }
    %33 = memref.load %alloc_21[%arg0] : memref<?xi64>
    %34 = arith.index_cast %33 : i64 to index
    %35 = memref.load %alloc_21[%20] : memref<?xi64>
    %36 = arith.index_cast %35 : i64 to index
    %37 = arith.subi %36, %34 : index
    %subview_25 = memref.subview %alloc_22[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
  }
  %alloc_23 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_23[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %16 step %c1 {
    %18 = memref.load %alloc_22[%arg0] : memref<?xf64>
    %19 = memref.load %alloc_23[%c0] : memref<1xf64>
    %20 = arith.addf %18, %19 : f64
    memref.store %20, %alloc_23[%c0] : memref<1xf64>
  }
  %17 = memref.load %alloc_23[%c0] : memref<1xf64>
  call @printF64(%17) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %c1_i32 = arith.constant 1 : i32
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
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = index.add %9, %idx1
  %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_8[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = index.add %arg0, %idx1
    %24 = arith.index_cast %23 : index to i64
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
      %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = arith.addi %28, %c1 : index
      %30 = memref.load %alloc_8[%28] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%29] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_24[%36] : memref<?xi64>
        %38 = arith.cmpi eq, %24, %37 : i64
        %39 = scf.if %38 -> (index) {
          scf.yield %arg4 : index
        } else {
          memref.store %24, %alloc_24[%36] : memref<?xi64>
          %40 = index.add %arg4, %idx1
          scf.yield %40 : index
        }
        scf.yield %39 : index
      }
      scf.yield %34 : index
    }
    %26 = arith.index_cast %25 : index to i64
    %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
    memref.store %26, %alloc_25[%23] : memref<?xi64>
    %subview = memref.subview %alloc_25[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_26 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %12 = arith.addi %9, %c1 : index
  %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %19 = arith.addi %18, %arg1 : i64
    memref.store %19, %alloc_18[%arg0] : memref<?xi64>
    scf.yield %19 : i64
  }
  %14 = arith.index_cast %13 : i64 to index
  %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
  %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = arith.addi %arg0, %c1 : index
    %21 = arith.index_cast %arg0 : index to i32
    %22 = arith.addi %21, %c1_i32 : i32
    %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = memref.load %alloc_8[%20] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %27 = scf.for %arg1 = %24 to %26 step %c1 iter_args(%arg2 = %idx0) -> (index) {
      %28 = memref.load %alloc_10[%arg1] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = arith.addi %29, %c1 : index
      %31 = memref.load %alloc_8[%29] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%30] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_16[%arg1] : memref<?xf64>
      %36 = scf.for %arg3 = %32 to %34 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %40 = arith.mulf %35, %39 : f64
        %41 = memref.load %alloc_25[%38] : memref<?xi32>
        %42 = arith.cmpi eq, %41, %22 : i32
        %43 = scf.if %42 -> (index) {
          %44 = memref.load %alloc_24[%38] : memref<?xf64>
          %45 = arith.addf %44, %40 : f64
          memref.store %45, %alloc_24[%38] : memref<?xf64>
          scf.yield %arg4 : index
        } else {
          memref.store %22, %alloc_25[%38] : memref<?xi32>
          memref.store %37, %alloc_26[%arg4] : memref<?xi64>
          %44 = index.add %arg4, %idx1
          memref.store %40, %alloc_24[%38] : memref<?xf64>
          scf.yield %44 : index
        }
        scf.yield %43 : index
      }
      scf.yield %36 : index
    }
    "ta.TensorSortOp"(%alloc_26, %idx0, %27) : (memref<?xi64>, index, index) -> ()
    scf.for %arg1 = %c0 to %27 step %c1 {
      %28 = memref.load %alloc_26[%arg1] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_24[%29] : memref<?xf64>
      %31 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%19, %arg1]
      memref.store %28, %alloc_19[%31] : memref<?xi64>
      %32 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%19, %arg1]
      memref.store %30, %alloc_20[%32] : memref<?xf64>
    }
  }
  %alloc_21 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
  scf.forall (%arg0) in (%9) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_18[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %24 = arith.index_cast %23 : i64 to index
    %25 = memref.load %alloc_8[%18] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
      %30 = arith.cmpi ult, %arg4, %26 : index
      %31 = arith.cmpi ult, %arg3, %22 : index
      %32 = arith.andi %31, %30 : i1
      scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_19[%arg3] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = arith.minui %33, %31 : index
      %35 = arith.cmpi eq, %34, %33 : index
      %36 = arith.cmpi eq, %34, %31 : index
      %37 = arith.andi %35, %36 : i1
      %38:2 = scf.if %37 -> (index, index) {
        %43 = index.add %arg1, %idx1
        %44 = index.add %arg2, %idx1
        scf.yield %43, %44 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %39 = index.castu %35 : i1 to index
      %40 = index.add %arg3, %39
      %41 = index.castu %36 : i1 to index
      %42 = index.add %arg4, %41
      scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
    }
    %28 = index.add %arg0, %idx1
    %29 = arith.index_cast %27#0 : index to i64
    %alloc_24 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
    memref.store %29, %alloc_24[%28] : memref<?xi64>
    %subview = memref.subview %alloc_24[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    %subview_25 = memref.subview %alloc_21[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
    memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
  }
  %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
    %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
    %19 = arith.addi %18, %arg1 : i64
    memref.store %19, %alloc_21[%arg0] : memref<?xi64>
    scf.yield %19 : i64
  }
  %16 = arith.index_cast %15 : i64 to index
  %alloc_22 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
  scf.forall (%arg0) in (%9) {
    %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = arith.addi %arg0, %c1 : index
    %21 = memref.load %alloc_21[%20] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.subi %22, %19 : index
    %subview = memref.subview %alloc_22[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    %alloc_24 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
    memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
    %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_18[%20] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %29 = arith.index_cast %28 : i64 to index
    %30 = memref.load %alloc_8[%20] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
      %38 = arith.cmpi ult, %arg4, %31 : index
      %39 = arith.cmpi ult, %arg3, %27 : index
      %40 = arith.andi %39, %38 : i1
      scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
    } do {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
      %39 = arith.index_cast %38 : i64 to index
      %40 = memref.load %alloc_19[%arg3] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = arith.minui %41, %39 : index
      %43 = arith.cmpi eq, %42, %41 : index
      %44 = arith.cmpi eq, %42, %39 : index
      %45 = arith.andi %43, %44 : i1
      %46:2 = scf.if %45 -> (index, index) {
        %51 = memref.load %alloc_20[%arg3] : memref<?xf64>
        %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
        %53 = arith.mulf %51, %52 : f64
        %54 = index.add %arg1, %idx1
        memref.store %53, %alloc_24[%arg1] : memref<?xf64>
        %55 = index.add %arg2, %idx1
        scf.yield %54, %55 : index, index
      } else {
        scf.yield %arg1, %arg2 : index, index
      }
      %47 = index.castu %43 : i1 to index
      %48 = index.add %arg3, %47
      %49 = index.castu %44 : i1 to index
      %50 = index.add %arg4, %49
      scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
    }
    %33 = memref.load %alloc_21[%arg0] : memref<?xi64>
    %34 = arith.index_cast %33 : i64 to index
    %35 = memref.load %alloc_21[%20] : memref<?xi64>
    %36 = arith.index_cast %35 : i64 to index
    %37 = arith.subi %36, %34 : index
    %subview_25 = memref.subview %alloc_22[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
  }
  %alloc_23 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_23[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %16 step %c1 {
    %18 = memref.load %alloc_22[%arg0] : memref<?xf64>
    %19 = memref.load %alloc_23[%c0] : memref<1xf64>
    %20 = arith.addf %18, %19 : f64
    memref.store %20, %alloc_23[%c0] : memref<1xf64>
  }
  %17 = memref.load %alloc_23[%c0] : memref<1xf64>
  call @printF64(%17) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg0, %idx1
      %24 = arith.index_cast %23 : index to i64
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_24[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %24, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %24, %alloc_24[%36] : memref<?xi64>
            %40 = index.add %arg4, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %26 = arith.index_cast %25 : index to i64
      %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
      memref.store %26, %alloc_25[%23] : memref<?xi64>
      %subview = memref.subview %alloc_25[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_26 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = arith.index_cast %arg0 : index to i32
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%20] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %27 = scf.for %arg1 = %24 to %26 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %28 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = arith.addi %29, %c1 : index
        %31 = memref.load %alloc_8[%29] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_8[%30] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %36 = scf.for %arg3 = %32 to %34 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %38 = arith.index_cast %37 : i64 to index
          %39 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %40 = arith.mulf %35, %39 : f64
          %41 = memref.load %alloc_25[%38] : memref<?xi32>
          %42 = arith.cmpi eq, %41, %22 : i32
          %43 = scf.if %42 -> (index) {
            %44 = memref.load %alloc_24[%38] : memref<?xf64>
            %45 = arith.addf %44, %40 : f64
            memref.store %45, %alloc_24[%38] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %22, %alloc_25[%38] : memref<?xi32>
            memref.store %37, %alloc_26[%arg4] : memref<?xi64>
            %44 = index.add %arg4, %idx1
            memref.store %40, %alloc_24[%38] : memref<?xf64>
            scf.yield %44 : index
          }
          scf.yield %43 : index
        }
        scf.yield %36 : index
      }
      "ta.TensorSortOp"(%alloc_26, %idx0, %27) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %27 step %c1 {
        %28 = memref.load %alloc_26[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_24[%29] : memref<?xf64>
        %31 = arith.addi %19, %arg1 : index
        memref.store %28, %alloc_19[%31] : memref<?xi64>
        %32 = arith.addi %19, %arg1 : index
        memref.store %30, %alloc_20[%32] : memref<?xf64>
      }
    }
    %alloc_21 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.forall (%arg0) in (%9) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%18] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %30 = arith.cmpi ult, %arg4, %26 : index
        %31 = arith.cmpi ult, %arg3, %22 : index
        %32 = arith.andi %31, %30 : i1
        scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.minui %33, %31 : index
        %35 = arith.cmpi eq, %34, %33 : index
        %36 = arith.cmpi eq, %34, %31 : index
        %37 = arith.andi %35, %36 : i1
        %38:2 = scf.if %37 -> (index, index) {
          %43 = index.add %arg1, %idx1
          %44 = index.add %arg2, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %39 = index.castu %35 : i1 to index
        %40 = index.add %arg3, %39
        %41 = index.castu %36 : i1 to index
        %42 = index.add %arg4, %41
        scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %alloc_24 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_24[%28] : memref<?xi64>
      %subview = memref.subview %alloc_24[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_21[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
    }
    %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_21[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %16 = arith.index_cast %15 : i64 to index
    %alloc_22 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
    scf.forall (%arg0) in (%9) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_21[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_22[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_24 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_18[%20] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%20] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %38 = arith.cmpi ult, %arg4, %31 : index
        %39 = arith.cmpi ult, %arg3, %27 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.minui %41, %39 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %39 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = memref.load %alloc_20[%arg3] : memref<?xf64>
          %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = index.add %arg1, %idx1
          memref.store %53, %alloc_24[%arg1] : memref<?xf64>
          %55 = index.add %arg2, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg3, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg4, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %33 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_21[%20] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.subi %36, %34 : index
      %subview_25 = memref.subview %alloc_22[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
    }
    %alloc_23 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_23[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %18 = memref.load %alloc_22[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_23[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_23[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_23[%c0] : memref<1xf64>
    call @printF64(%17) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    %c0_19 = arith.constant 0 : index
    %c1_20 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_19) to (%9) step (%c1_20) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg0, %idx1
      %24 = arith.index_cast %23 : index to i64
      %alloc_32 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_32[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %24, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %24, %alloc_32[%36] : memref<?xi64>
            %40 = index.add %arg4, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %26 = arith.index_cast %25 : index to i64
      %alloc_33 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_33 : memref<?xi64> to memref<?xi64>
      memref.store %26, %alloc_33[%23] : memref<?xi64>
      %subview = memref.subview %alloc_33[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_34 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_34 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_21 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_22 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    %c0_23 = arith.constant 0 : index
    %c1_24 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_23) to (%9) step (%c1_24) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = arith.index_cast %arg0 : index to i32
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%20] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %alloc_32 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_33 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_34 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %27 = scf.for %arg1 = %24 to %26 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %28 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = arith.addi %29, %c1 : index
        %31 = memref.load %alloc_8[%29] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_8[%30] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %36 = scf.for %arg3 = %32 to %34 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %38 = arith.index_cast %37 : i64 to index
          %39 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %40 = arith.mulf %35, %39 : f64
          %41 = memref.load %alloc_33[%38] : memref<?xi32>
          %42 = arith.cmpi eq, %41, %22 : i32
          %43 = scf.if %42 -> (index) {
            %44 = memref.load %alloc_32[%38] : memref<?xf64>
            %45 = arith.addf %44, %40 : f64
            memref.store %45, %alloc_32[%38] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %22, %alloc_33[%38] : memref<?xi32>
            memref.store %37, %alloc_34[%arg4] : memref<?xi64>
            %44 = index.add %arg4, %idx1
            memref.store %40, %alloc_32[%38] : memref<?xf64>
            scf.yield %44 : index
          }
          scf.yield %43 : index
        }
        scf.yield %36 : index
      }
      "ta.TensorSortOp"(%alloc_34, %idx0, %27) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %27 step %c1 {
        %28 = memref.load %alloc_34[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_32[%29] : memref<?xf64>
        %31 = arith.addi %19, %arg1 : index
        memref.store %28, %alloc_21[%31] : memref<?xi64>
        %32 = arith.addi %19, %arg1 : index
        memref.store %30, %alloc_22[%32] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_26) to (%9) step (%c1_27) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%18] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %30 = arith.cmpi ult, %arg4, %26 : index
        %31 = arith.cmpi ult, %arg3, %22 : index
        %32 = arith.andi %31, %30 : i1
        scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_21[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.minui %33, %31 : index
        %35 = arith.cmpi eq, %34, %33 : index
        %36 = arith.cmpi eq, %34, %31 : index
        %37 = arith.andi %35, %36 : i1
        %38:2 = scf.if %37 -> (index, index) {
          %43 = index.add %arg1, %idx1
          %44 = index.add %arg2, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %39 = index.castu %35 : i1 to index
        %40 = index.add %arg3, %39
        %41 = index.castu %36 : i1 to index
        %42 = index.add %arg4, %41
        scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %alloc_32 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_25, %alloc_32 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_32[%28] : memref<?xi64>
      %subview = memref.subview %alloc_32[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_33 = memref.subview %alloc_25[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_33 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_25[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_25[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %16 = arith.index_cast %15 : i64 to index
    %alloc_28 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
    %c0_29 = arith.constant 0 : index
    %c1_30 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_29) to (%9) step (%c1_30) {
      %18 = memref.load %alloc_25[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_25[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_28[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_32 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_32 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_18[%20] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%20] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %38 = arith.cmpi ult, %arg4, %31 : index
        %39 = arith.cmpi ult, %arg3, %27 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_21[%arg3] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.minui %41, %39 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %39 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = memref.load %alloc_22[%arg3] : memref<?xf64>
          %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = index.add %arg1, %idx1
          memref.store %53, %alloc_32[%arg1] : memref<?xf64>
          %55 = index.add %arg2, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg3, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg4, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %33 = memref.load %alloc_25[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_25[%20] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.subi %36, %34 : index
      %subview_33 = memref.subview %alloc_28[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_32, %subview_33 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %alloc_31 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_31[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %18 = memref.load %alloc_28[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_31[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_31[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_31[%c0] : memref<1xf64>
    call @printF64(%17) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    %c0_19 = arith.constant 0 : index
    %c1_20 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_19) to (%9) step (%c1_20) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg0, %idx1
      %24 = arith.index_cast %23 : index to i64
      %alloc_32 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_32[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %24, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %24, %alloc_32[%36] : memref<?xi64>
            %40 = index.add %arg4, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %26 = arith.index_cast %25 : index to i64
      %alloc_33 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_33 : memref<?xi64> to memref<?xi64>
      memref.store %26, %alloc_33[%23] : memref<?xi64>
      %subview = memref.subview %alloc_33[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_34 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_34 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_21 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_22 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    %c0_23 = arith.constant 0 : index
    %c1_24 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_23) to (%9) step (%c1_24) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = arith.index_cast %arg0 : index to i32
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%20] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %alloc_32 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_33 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_34 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %27 = scf.for %arg1 = %24 to %26 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %28 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = arith.addi %29, %c1 : index
        %31 = memref.load %alloc_8[%29] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_8[%30] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %36 = scf.for %arg3 = %32 to %34 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %38 = arith.index_cast %37 : i64 to index
          %39 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %40 = arith.mulf %35, %39 : f64
          %41 = memref.load %alloc_33[%38] : memref<?xi32>
          %42 = arith.cmpi eq, %41, %22 : i32
          %43 = scf.if %42 -> (index) {
            %44 = memref.load %alloc_32[%38] : memref<?xf64>
            %45 = arith.addf %44, %40 : f64
            memref.store %45, %alloc_32[%38] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %22, %alloc_33[%38] : memref<?xi32>
            memref.store %37, %alloc_34[%arg4] : memref<?xi64>
            %44 = index.add %arg4, %idx1
            memref.store %40, %alloc_32[%38] : memref<?xf64>
            scf.yield %44 : index
          }
          scf.yield %43 : index
        }
        scf.yield %36 : index
      }
      "ta.TensorSortOp"(%alloc_34, %idx0, %27) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %27 step %c1 {
        %28 = memref.load %alloc_34[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_32[%29] : memref<?xf64>
        %31 = arith.addi %19, %arg1 : index
        memref.store %28, %alloc_21[%31] : memref<?xi64>
        %32 = arith.addi %19, %arg1 : index
        memref.store %30, %alloc_22[%32] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_26) to (%9) step (%c1_27) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%18] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %30 = arith.cmpi ult, %arg4, %26 : index
        %31 = arith.cmpi ult, %arg3, %22 : index
        %32 = arith.andi %31, %30 : i1
        scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_21[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.minui %33, %31 : index
        %35 = arith.cmpi eq, %34, %33 : index
        %36 = arith.cmpi eq, %34, %31 : index
        %37 = arith.andi %35, %36 : i1
        %38:2 = scf.if %37 -> (index, index) {
          %43 = index.add %arg1, %idx1
          %44 = index.add %arg2, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %39 = index.castu %35 : i1 to index
        %40 = index.add %arg3, %39
        %41 = index.castu %36 : i1 to index
        %42 = index.add %arg4, %41
        scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %alloc_32 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_25, %alloc_32 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_32[%28] : memref<?xi64>
      %subview = memref.subview %alloc_32[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_33 = memref.subview %alloc_25[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_33 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_25[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_25[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %16 = arith.index_cast %15 : i64 to index
    %alloc_28 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
    %c0_29 = arith.constant 0 : index
    %c1_30 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_29) to (%9) step (%c1_30) {
      %18 = memref.load %alloc_25[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_25[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_28[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_32 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_32 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_18[%20] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%20] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %38 = arith.cmpi ult, %arg4, %31 : index
        %39 = arith.cmpi ult, %arg3, %27 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_21[%arg3] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.minui %41, %39 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %39 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = memref.load %alloc_22[%arg3] : memref<?xf64>
          %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = index.add %arg1, %idx1
          memref.store %53, %alloc_32[%arg1] : memref<?xf64>
          %55 = index.add %arg2, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg3, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg4, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %33 = memref.load %alloc_25[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_25[%20] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.subi %36, %34 : index
      %subview_33 = memref.subview %alloc_28[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_32, %subview_33 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %alloc_31 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_31[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %18 = memref.load %alloc_28[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_31[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_31[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_31[%c0] : memref<1xf64>
    call @printF64(%17) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg0, %idx1
      %24 = arith.index_cast %23 : index to i64
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_24[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %24, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %24, %alloc_24[%36] : memref<?xi64>
            %40 = index.add %arg4, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %26 = arith.index_cast %25 : index to i64
      %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
      memref.store %26, %alloc_25[%23] : memref<?xi64>
      %subview = memref.subview %alloc_25[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_26 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = arith.index_cast %arg0 : index to i32
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%20] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %27 = scf.for %arg1 = %24 to %26 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %28 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = arith.addi %29, %c1 : index
        %31 = memref.load %alloc_8[%29] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_8[%30] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %36 = scf.for %arg3 = %32 to %34 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %38 = arith.index_cast %37 : i64 to index
          %39 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %40 = arith.mulf %35, %39 : f64
          %41 = memref.load %alloc_25[%38] : memref<?xi32>
          %42 = arith.cmpi eq, %41, %22 : i32
          %43 = scf.if %42 -> (index) {
            %44 = memref.load %alloc_24[%38] : memref<?xf64>
            %45 = arith.addf %44, %40 : f64
            memref.store %45, %alloc_24[%38] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %22, %alloc_25[%38] : memref<?xi32>
            memref.store %37, %alloc_26[%arg4] : memref<?xi64>
            %44 = index.add %arg4, %idx1
            memref.store %40, %alloc_24[%38] : memref<?xf64>
            scf.yield %44 : index
          }
          scf.yield %43 : index
        }
        scf.yield %36 : index
      }
      "ta.TensorSortOp"(%alloc_26, %idx0, %27) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %27 step %c1 {
        %28 = memref.load %alloc_26[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_24[%29] : memref<?xf64>
        %31 = arith.addi %19, %arg1 : index
        memref.store %28, %alloc_19[%31] : memref<?xi64>
        %32 = arith.addi %19, %arg1 : index
        memref.store %30, %alloc_20[%32] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_21 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%18] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %30 = arith.cmpi ult, %arg4, %26 : index
        %31 = arith.cmpi ult, %arg3, %22 : index
        %32 = arith.andi %31, %30 : i1
        scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.minui %33, %31 : index
        %35 = arith.cmpi eq, %34, %33 : index
        %36 = arith.cmpi eq, %34, %31 : index
        %37 = arith.andi %35, %36 : i1
        %38:2 = scf.if %37 -> (index, index) {
          %43 = index.add %arg1, %idx1
          %44 = index.add %arg2, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %39 = index.castu %35 : i1 to index
        %40 = index.add %arg3, %39
        %41 = index.castu %36 : i1 to index
        %42 = index.add %arg4, %41
        scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %alloc_24 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_24[%28] : memref<?xi64>
      %subview = memref.subview %alloc_24[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_21[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_21[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %16 = arith.index_cast %15 : i64 to index
    %alloc_22 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_21[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_22[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_24 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_18[%20] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%20] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %38 = arith.cmpi ult, %arg4, %31 : index
        %39 = arith.cmpi ult, %arg3, %27 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.minui %41, %39 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %39 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = memref.load %alloc_20[%arg3] : memref<?xf64>
          %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = index.add %arg1, %idx1
          memref.store %53, %alloc_24[%arg1] : memref<?xf64>
          %55 = index.add %arg2, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg3, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg4, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %33 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_21[%20] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.subi %36, %34 : index
      %subview_25 = memref.subview %alloc_22[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %alloc_23 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_23[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %18 = memref.load %alloc_22[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_23[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_23[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_23[%c0] : memref<1xf64>
    call @printF64(%17) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg0, %idx1
      %24 = arith.index_cast %23 : index to i64
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_24[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %24, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %24, %alloc_24[%36] : memref<?xi64>
            %40 = index.add %arg4, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %26 = arith.index_cast %25 : index to i64
      %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
      memref.store %26, %alloc_25[%23] : memref<?xi64>
      %subview = memref.subview %alloc_25[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_26 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = arith.index_cast %arg0 : index to i32
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%20] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %27 = scf.for %arg1 = %24 to %26 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %28 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = arith.addi %29, %c1 : index
        %31 = memref.load %alloc_8[%29] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_8[%30] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %36 = scf.for %arg3 = %32 to %34 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %38 = arith.index_cast %37 : i64 to index
          %39 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %40 = arith.mulf %35, %39 : f64
          %41 = memref.load %alloc_25[%38] : memref<?xi32>
          %42 = arith.cmpi eq, %41, %22 : i32
          %43 = scf.if %42 -> (index) {
            %44 = memref.load %alloc_24[%38] : memref<?xf64>
            %45 = arith.addf %44, %40 : f64
            memref.store %45, %alloc_24[%38] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %22, %alloc_25[%38] : memref<?xi32>
            memref.store %37, %alloc_26[%arg4] : memref<?xi64>
            %44 = index.add %arg4, %idx1
            memref.store %40, %alloc_24[%38] : memref<?xf64>
            scf.yield %44 : index
          }
          scf.yield %43 : index
        }
        scf.yield %36 : index
      }
      "ta.TensorSortOp"(%alloc_26, %idx0, %27) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %27 step %c1 {
        %28 = memref.load %alloc_26[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_24[%29] : memref<?xf64>
        %31 = arith.addi %19, %arg1 : index
        memref.store %28, %alloc_19[%31] : memref<?xi64>
        %32 = arith.addi %19, %arg1 : index
        memref.store %30, %alloc_20[%32] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_21 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%18] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %30 = arith.cmpi ult, %arg4, %26 : index
        %31 = arith.cmpi ult, %arg3, %22 : index
        %32 = arith.andi %31, %30 : i1
        scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.minui %33, %31 : index
        %35 = arith.cmpi eq, %34, %33 : index
        %36 = arith.cmpi eq, %34, %31 : index
        %37 = arith.andi %35, %36 : i1
        %38:2 = scf.if %37 -> (index, index) {
          %43 = index.add %arg1, %idx1
          %44 = index.add %arg2, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %39 = index.castu %35 : i1 to index
        %40 = index.add %arg3, %39
        %41 = index.castu %36 : i1 to index
        %42 = index.add %arg4, %41
        scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %alloc_24 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_24[%28] : memref<?xi64>
      %subview = memref.subview %alloc_24[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_21[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_21[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %16 = arith.index_cast %15 : i64 to index
    %alloc_22 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_21[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_22[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_24 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_18[%20] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%20] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %38 = arith.cmpi ult, %arg4, %31 : index
        %39 = arith.cmpi ult, %arg3, %27 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.minui %41, %39 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %39 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = memref.load %alloc_20[%arg3] : memref<?xf64>
          %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = index.add %arg1, %idx1
          memref.store %53, %alloc_24[%arg1] : memref<?xf64>
          %55 = index.add %arg2, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg3, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg4, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %33 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_21[%20] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.subi %36, %34 : index
      %subview_25 = memref.subview %alloc_22[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %alloc_23 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_23[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %18 = memref.load %alloc_22[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_23[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_23[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_23[%c0] : memref<1xf64>
    call @printF64(%17) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


module {
  func.func @main() {
    %c1_i32 = arith.constant 1 : i32
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
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
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
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c2_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = index.add %9, %idx1
    %alloc_18 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg0, %idx1
      %24 = arith.index_cast %23 : index to i64
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %25 = scf.for %arg1 = %20 to %22 step %c1 iter_args(%arg2 = %c0) -> (index) {
        %27 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %35 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_24[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %24, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg4 : index
          } else {
            memref.store %24, %alloc_24[%36] : memref<?xi64>
            %40 = index.add %arg4, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %26 = arith.index_cast %25 : index to i64
      %alloc_25 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_18, %alloc_25 : memref<?xi64> to memref<?xi64>
      memref.store %26, %alloc_25[%23] : memref<?xi64>
      %subview = memref.subview %alloc_25[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_26 = memref.subview %alloc_18[%23] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_26 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %12 = arith.addi %9, %c1 : index
    %13 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_18[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %14 = arith.index_cast %13 : i64 to index
    %alloc_19 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %alloc_20 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = arith.index_cast %arg0 : index to i32
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%20] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
      %alloc_25 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
      %alloc_26 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
      %27 = scf.for %arg1 = %24 to %26 step %c1 iter_args(%arg2 = %idx0) -> (index) {
        %28 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = arith.addi %29, %c1 : index
        %31 = memref.load %alloc_8[%29] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_8[%30] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %36 = scf.for %arg3 = %32 to %34 step %c1 iter_args(%arg4 = %arg2) -> (index) {
          %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
          %38 = arith.index_cast %37 : i64 to index
          %39 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %40 = arith.mulf %35, %39 : f64
          %41 = memref.load %alloc_25[%38] : memref<?xi32>
          %42 = arith.cmpi eq, %41, %22 : i32
          %43 = scf.if %42 -> (index) {
            %44 = memref.load %alloc_24[%38] : memref<?xf64>
            %45 = arith.addf %44, %40 : f64
            memref.store %45, %alloc_24[%38] : memref<?xf64>
            scf.yield %arg4 : index
          } else {
            memref.store %22, %alloc_25[%38] : memref<?xi32>
            memref.store %37, %alloc_26[%arg4] : memref<?xi64>
            %44 = index.add %arg4, %idx1
            memref.store %40, %alloc_24[%38] : memref<?xf64>
            scf.yield %44 : index
          }
          scf.yield %43 : index
        }
        scf.yield %36 : index
      }
      "ta.TensorSortOp"(%alloc_26, %idx0, %27) : (memref<?xi64>, index, index) -> ()
      scf.for %arg1 = %c0 to %27 step %c1 {
        %28 = memref.load %alloc_26[%arg1] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_24[%29] : memref<?xf64>
        %31 = arith.addi %19, %arg1 : index
        memref.store %28, %alloc_19[%31] : memref<?xi64>
        %32 = arith.addi %19, %arg1 : index
        memref.store %30, %alloc_20[%32] : memref<?xf64>
      }
      scf.reduce 
    }
    %alloc_21 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_18[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%18] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %20, %arg4 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %30 = arith.cmpi ult, %arg4, %26 : index
        %31 = arith.cmpi ult, %arg3, %22 : index
        %32 = arith.andi %31, %30 : i1
        scf.condition(%32) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %30 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.minui %33, %31 : index
        %35 = arith.cmpi eq, %34, %33 : index
        %36 = arith.cmpi eq, %34, %31 : index
        %37 = arith.andi %35, %36 : i1
        %38:2 = scf.if %37 -> (index, index) {
          %43 = index.add %arg1, %idx1
          %44 = index.add %arg2, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %39 = index.castu %35 : i1 to index
        %40 = index.add %arg3, %39
        %41 = index.castu %36 : i1 to index
        %42 = index.add %arg4, %41
        scf.yield %38#0, %38#1, %40, %42 : index, index, index, index
      }
      %28 = index.add %arg0, %idx1
      %29 = arith.index_cast %27#0 : index to i64
      %alloc_24 = memref.alloc(%11) {alignment = 64 : i64} : memref<?xi64>
      memref.copy %alloc_21, %alloc_24 : memref<?xi64> to memref<?xi64>
      memref.store %29, %alloc_24[%28] : memref<?xi64>
      %subview = memref.subview %alloc_24[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      %subview_25 = memref.subview %alloc_21[%28] [1] [1] : memref<?xi64> to memref<1xi64, strided<[1], offset: ?>>
      memref.copy %subview, %subview_25 : memref<1xi64, strided<[1], offset: ?>> to memref<1xi64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %15 = scf.for %arg0 = %c1 to %12 step %c1 iter_args(%arg1 = %c0_i64) -> (i64) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.addi %18, %arg1 : i64
      memref.store %19, %alloc_21[%arg0] : memref<?xi64>
      scf.yield %19 : i64
    }
    %16 = arith.index_cast %15 : i64 to index
    %alloc_22 = memref.alloc(%16) {alignment = 64 : i64} : memref<?xf64>
    scf.parallel (%arg0) = (%c0) to (%9) step (%c1) {
      %18 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.addi %arg0, %c1 : index
      %21 = memref.load %alloc_21[%20] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.subi %22, %19 : index
      %subview = memref.subview %alloc_22[%19] [%23] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      %alloc_24 = memref.alloc(%23) {alignment = 64 : i64} : memref<?xf64>
      memref.copy %subview, %alloc_24 : memref<?xf64, strided<[1], offset: ?>> to memref<?xf64>
      %24 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_18[%20] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%20] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32:4 = scf.while (%arg1 = %c0, %arg2 = %idx0, %arg3 = %25, %arg4 = %29) : (index, index, index, index) -> (index, index, index, index) {
        %38 = arith.cmpi ult, %arg4, %31 : index
        %39 = arith.cmpi ult, %arg3, %27 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg1, %arg2, %arg3, %arg4 : index, index, index, index
      } do {
      ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
        %38 = memref.load %alloc_10[%arg4] : memref<?xi64>
        %39 = arith.index_cast %38 : i64 to index
        %40 = memref.load %alloc_19[%arg3] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = arith.minui %41, %39 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %39 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = memref.load %alloc_20[%arg3] : memref<?xf64>
          %52 = memref.load %alloc_16[%arg4] : memref<?xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = index.add %arg1, %idx1
          memref.store %53, %alloc_24[%arg1] : memref<?xf64>
          %55 = index.add %arg2, %idx1
          scf.yield %54, %55 : index, index
        } else {
          scf.yield %arg1, %arg2 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg3, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg4, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %33 = memref.load %alloc_21[%arg0] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = memref.load %alloc_21[%20] : memref<?xi64>
      %36 = arith.index_cast %35 : i64 to index
      %37 = arith.subi %36, %34 : index
      %subview_25 = memref.subview %alloc_22[%34] [%37] [1] : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      memref.copy %alloc_24, %subview_25 : memref<?xf64> to memref<?xf64, strided<[1], offset: ?>>
      scf.reduce 
    }
    %alloc_23 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_23[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      %18 = memref.load %alloc_22[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_23[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_23[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_23[%c0] : memref<1xf64>
    call @printF64(%17) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}
