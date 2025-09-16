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
    %18 = "it.IndexOp"(%17) <{IsParallel = false}> : (!it.index_tree) -> !it.index
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
    %18 = "it.IndexOp"(%17) <{IsParallel = false}> : (!it.index_tree) -> !it.index
    %19 = "it.IndexOp"(%18) <{IsParallel = false}> : (!it.index) -> !it.index
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
    %14 = "it.IndexOp"(%12, %13) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %16 = "it.IndexOp"(%12, %15) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %17 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %18 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %19 = "it.DomainIntersectionOp"(%18, %17) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %20 = "it.IndexOp"(%16, %19) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %28 = "it.IndexOp"(%26, %27) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %28 = "it.IndexOp"(%26, %27) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %28) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %29 = "it.SparseDomainOp"(%0, %8, %9, %dim_3, %dim_4, %10, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%13, %28) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %30 = "it.SparseDomainOp"(%13, %15, %16, %dim_5, %dim_6, %17, %pos_8) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %31 = "it.DomainIntersectionOp"(%30, %29, %17) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %32 = "it.IndexOp"(%28, %31) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%35, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%35, %37, %38, %dim_36, %dim_37, %39, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.DomainIntersectionOp"(%52, %51, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %54 = "it.IndexOp"(%50, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%35, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%35, %37, %38, %dim_36, %dim_37, %39, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.DomainIntersectionOp"(%52, %51, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %54 = "it.IndexOp"(%50, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%36, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%36, %38, %39, %dim_36, %dim_37, %40, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %40) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%36, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%36, %38, %39, %dim_36, %dim_37, %40, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %40) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%36, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%36, %38, %39, %dim_36, %dim_37, %40, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %40) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%22, %30, %31, %dim_34, %dim_35, %32, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%36, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%36, %38, %39, %dim_36, %dim_37, %40, %pos_39) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %40) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%35, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%35, %37, %38, %dim_23, %dim_24, %39, %pos_26) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.DomainIntersectionOp"(%52, %51, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %54 = "it.IndexOp"(%50, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %51 = "it.IndexOp"(%49, %50) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%35, %51) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%35, %37, %38, %dim_23, %dim_24, %39, %pos_26) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %54 = "it.DomainIntersectionOp"(%53, %52, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %55 = "it.IndexOp"(%51, %54) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %52 = "it.IndexOp"(%50, %51) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %53 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%41#0, %52) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %54 = "it.SparseDomainOp"(%41#0, %37, %38, %dim_23, %dim_24, %39, %pos_33) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%54, %53, %39) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
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
    %50 = "it.IndexOp"(%48, %49) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %51 = "it.SparseDomainOp"(%20, %28, %29, %dim_21, %dim_22, %30, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%40#0, %50) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %52 = "it.SparseDomainOp"(%40#0, %36, %37, %dim_23, %dim_24, %38, %pos_28) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %53 = "it.DomainIntersectionOp"(%52, %51, %38) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %54 = "it.IndexOp"(%50, %53) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
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
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %48 = scf.for %arg1 = %c0_27 to %21 step %c1_28 iter_args(%arg2 = %arg0) -> (!it.symbolic_domain<64>) {
      %c1_29 = arith.constant 1 : index
      %49 = arith.addi %arg1, %c1_29 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %50 = arith.index_cast %extracted : i64 to index
      %extracted_30 = tensor.extract %22[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_30 : i64 to index
      %c1_31 = arith.constant 1 : index
      %52 = scf.for %arg3 = %50 to %51 step %c1_31 iter_args(%arg4 = %arg2) -> (!it.symbolic_domain<64>) {
        %54 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %55 = arith.index_cast %54 : i64 to index
        %c1_32 = arith.constant 1 : index
        %56 = arith.addi %55, %c1_32 : index
        %extracted_33 = tensor.extract %25[%55] : tensor<?xi64>
        %57 = arith.index_cast %extracted_33 : i64 to index
        %extracted_34 = tensor.extract %25[%56] : tensor<?xi64>
        %58 = arith.index_cast %extracted_34 : i64 to index
        %c1_35 = arith.constant 1 : index
        %59 = scf.for %arg5 = %57 to %58 step %c1_35 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %60 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %61 = arith.index_cast %60 : i64 to index
          %62 = "it.SymbolicDomainInsertOp"(%arg6, %61) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          scf.yield %62 : !it.symbolic_domain<64>
        }
        scf.yield %59 : !it.symbolic_domain<64>
      }
      %53 = "it.SymbolicDomainEndRowOp"(%52) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      scf.yield %53 : !it.symbolic_domain<64>
    }
    it.yield %48 : !it.symbolic_domain<64>
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
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %48:2 = scf.for %arg2 = %c0_27 to %21 step %c1_28 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
      %49 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c1_29 = arith.constant 1 : index
      %50 = arith.addi %arg2, %c1_29 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %51 = arith.index_cast %extracted : i64 to index
      %extracted_30 = tensor.extract %22[%50] : tensor<?xi64>
      %52 = arith.index_cast %extracted_30 : i64 to index
      %c1_31 = arith.constant 1 : index
      %53:2 = scf.for %arg5 = %51 to %52 step %c1_31 iter_args(%arg6 = %arg3, %arg7 = %49) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %57 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %58 = arith.index_cast %57 : i64 to index
        %c1_34 = arith.constant 1 : index
        %59 = arith.addi %58, %c1_34 : index
        %extracted_35 = tensor.extract %25[%58] : tensor<?xi64>
        %60 = arith.index_cast %extracted_35 : i64 to index
        %extracted_36 = tensor.extract %25[%59] : tensor<?xi64>
        %61 = arith.index_cast %extracted_36 : i64 to index
        %c1_37 = arith.constant 1 : index
        %62:2 = scf.for %arg8 = %60 to %61 step %c1_37 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %63 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %64 = arith.index_cast %63 : i64 to index
          %65 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %66 = arith.index_cast %65 : i64 to index
          %67 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %68 = arith.index_cast %67 : i64 to index
          %69 = "ta.TAExtractOp"(%20, %arg5, %arg2, %64) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %70 = "ta.TAExtractOp"(%20, %arg8, %58, %66) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %71 = arith.mulf %69, %70 : f64
          %72 = "ta.TAExtractOp"(%arg10, %68, %68) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
          %73 = arith.addf %72, %71 : f64
          %74 = "ta.TAInsertOp"(%arg10, %68, %68, %73) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %74 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %62#0, %62#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %54 = "ta.SortCrdOp"(%53#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %c0_32 = arith.constant 0 : index
      %55 = "ta.SpTensorGetNNZ"(%54) : (!ta.workspace<f64, i64, ?>) -> index
      %c1_33 = arith.constant 1 : index
      %56:2 = scf.for %arg5 = %c0_32 to %55 step %c1_33 iter_args(%arg6 = %53#0, %arg7 = %54) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %57 = "ta.SpTensorGetCrd"(%arg7, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %58 = arith.index_cast %57 : i64 to index
        %59 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %60 = "ta.TAExtractOp"(%arg7, %arg5, %58) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %61 = "ta.TAExtractOp"(%arg6, %59, %arg2, %58) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %62 = "ta.TAInsertOp"(%arg6, %arg2, %59, %arg2, %58, %60) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %62, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      scf.yield %56#0, %56#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
    }
    it.yield %48#0, %48#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  %41 = "it.DenseDomainOp"(%35, %40#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %42 = "it.DeclDomainOp"(%38, %35) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %43 = "it.itree"(%42) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %48 = scf.for %arg1 = %c0_27 to %35 step %c1_28 iter_args(%arg2 = %arg0) -> (!it.symbolic_domain<64>) {
      %c1_29 = arith.constant 1 : index
      %idx0 = index.constant 0
      %49 = arith.addi %arg1, %c1_29 : index
      %extracted = tensor.extract %36[%arg1] : tensor<?xi64>
      %50 = arith.index_cast %extracted : i64 to index
      %extracted_30 = tensor.extract %36[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_30 : i64 to index
      %52 = arith.addi %arg1, %c1_29 : index
      %extracted_31 = tensor.extract %28[%arg1] : tensor<?xi64>
      %53 = arith.index_cast %extracted_31 : i64 to index
      %extracted_32 = tensor.extract %28[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_32 : i64 to index
      %55:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %50, %arg6 = %53) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index) {
        %57 = arith.cmpi ult, %arg6, %54 : index
        %58 = arith.cmpi ult, %arg5, %51 : index
        %59 = arith.andi %58, %57 : i1
        scf.condition(%59) %arg3, %arg4, %arg5, %arg6 : !it.symbolic_domain<64>, index, index, index
      } do {
      ^bb0(%arg3: !it.symbolic_domain<64>, %arg4: index, %arg5: index, %arg6: index):
        %57 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %58 = arith.index_cast %57 : i64 to index
        %59 = "ta.SpTensorGetCrd"(%40#0, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %60 = arith.index_cast %59 : i64 to index
        %61 = arith.minui %60, %58 : index
        %62 = arith.cmpi eq, %61, %60 : index
        %63 = arith.cmpi eq, %61, %58 : index
        %64 = arith.andi %62, %63 : i1
        %65:2 = scf.if %64 -> (!it.symbolic_domain<64>, index) {
          %idx1 = index.constant 1
          %70 = "it.SymbolicDomainInsertOp"(%arg3, %61) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          %71 = index.add %arg4, %idx1
          scf.yield %70, %71 : !it.symbolic_domain<64>, index
        } else {
          scf.yield %arg3, %arg4 : !it.symbolic_domain<64>, index
        }
        %66 = index.castu %62 : i1 to index
        %67 = index.add %arg5, %66
        %68 = index.castu %63 : i1 to index
        %69 = index.add %arg6, %68
        scf.yield %65#0, %65#1, %67, %69 : !it.symbolic_domain<64>, index, index, index
      }
      %56 = "it.SymbolicDomainEndRowOp"(%55#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      scf.yield %56 : !it.symbolic_domain<64>
    }
    it.yield %48 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %44 = "it.IndexTreeSparseTensorOp"(%41, %43) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %45 = "it.itree"(%44) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %48 = scf.for %arg1 = %c0_27 to %35 step %c1_28 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %c1_29 = arith.constant 1 : index
      %idx0 = index.constant 0
      %49 = arith.addi %arg1, %c1_29 : index
      %extracted = tensor.extract %36[%arg1] : tensor<?xi64>
      %50 = arith.index_cast %extracted : i64 to index
      %extracted_30 = tensor.extract %36[%49] : tensor<?xi64>
      %51 = arith.index_cast %extracted_30 : i64 to index
      %52 = arith.addi %arg1, %c1_29 : index
      %extracted_31 = tensor.extract %28[%arg1] : tensor<?xi64>
      %53 = arith.index_cast %extracted_31 : i64 to index
      %extracted_32 = tensor.extract %28[%52] : tensor<?xi64>
      %54 = arith.index_cast %extracted_32 : i64 to index
      %55:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %50, %arg6 = %53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %56 = arith.cmpi ult, %arg6, %54 : index
        %57 = arith.cmpi ult, %arg5, %51 : index
        %58 = arith.andi %57, %56 : i1
        scf.condition(%58) %arg3, %arg4, %arg5, %arg6 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg3: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg4: index, %arg5: index, %arg6: index):
        %56 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %57 = arith.index_cast %56 : i64 to index
        %58 = "ta.SpTensorGetCrd"(%40#0, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %59 = arith.index_cast %58 : i64 to index
        %60 = arith.minui %59, %57 : index
        %61 = arith.cmpi eq, %60, %59 : index
        %62 = arith.cmpi eq, %60, %57 : index
        %63 = arith.andi %61, %62 : i1
        %64:2 = scf.if %63 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %idx1 = index.constant 1
          %69 = "ta.TensorFindPos"(%arg3, %60) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %70 = "ta.TAExtractOp"(%40#0, %arg5, %arg1, %60) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %71 = "ta.TAExtractOp"(%20, %arg6, %arg1, %60) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %72 = arith.mulf %70, %71 : f64
          %73 = "ta.TAExtractOp"(%arg3, %69, %arg1, %60) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %74 = "ta.TAInsertOp"(%arg3, %arg1, %69, %arg1, %60, %72) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %75 = index.add %arg4, %idx1
          scf.yield %74, %75 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg3, %arg4 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %65 = index.castu %61 : i1 to index
        %66 = index.add %arg5, %65
        %67 = index.castu %62 : i1 to index
        %68 = index.add %arg6, %67
        scf.yield %64#0, %64#1, %66, %68 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      scf.yield %55#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %48 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
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
    %42 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %arg0) -> (!it.symbolic_domain<64>) {
      %43 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %22[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_19 : i64 to index
      %46 = scf.for %arg3 = %44 to %45 step %c1 iter_args(%arg4 = %arg2) -> (!it.symbolic_domain<64>) {
        %48 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %49 = arith.index_cast %48 : i64 to index
        %50 = arith.addi %49, %c1 : index
        %extracted_20 = tensor.extract %23[%49] : tensor<?xi64>
        %51 = arith.index_cast %extracted_20 : i64 to index
        %extracted_21 = tensor.extract %23[%50] : tensor<?xi64>
        %52 = arith.index_cast %extracted_21 : i64 to index
        %53 = scf.for %arg5 = %51 to %52 step %c1 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %54 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %55 = arith.index_cast %54 : i64 to index
          %56 = "it.SymbolicDomainInsertOp"(%arg6, %55) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          scf.yield %56 : !it.symbolic_domain<64>
        }
        scf.yield %53 : !it.symbolic_domain<64>
      }
      %47 = "it.SymbolicDomainEndRowOp"(%46) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      scf.yield %47 : !it.symbolic_domain<64>
    }
    it.yield %42 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %29 = "it.IndexTreeSparseTensorOp"(%26, %28) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %30 = "ta.SpTensorGetDimSize"(%29) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %31 = "ta.SpTensorGetDimPos"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %32 = "ta.SpTensorGetDimSize"(%29) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %33 = "ta.AllocWorkspace"(%29) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
  %34:2 = "it.itree"(%29, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, ?>):
    %42:2 = scf.for %arg2 = %c0 to %21 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
      %43 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %44 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %45 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %22[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_19 : i64 to index
      %47:2 = scf.for %arg5 = %45 to %46 step %c1 iter_args(%arg6 = %arg3, %arg7 = %43) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %51 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %52 = arith.index_cast %51 : i64 to index
        %53 = arith.addi %52, %c1 : index
        %extracted_20 = tensor.extract %23[%52] : tensor<?xi64>
        %54 = arith.index_cast %extracted_20 : i64 to index
        %extracted_21 = tensor.extract %23[%53] : tensor<?xi64>
        %55 = arith.index_cast %extracted_21 : i64 to index
        %56:2 = scf.for %arg8 = %54 to %55 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %57 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %58 = arith.index_cast %57 : i64 to index
          %59 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %60 = arith.index_cast %59 : i64 to index
          %61 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %62 = arith.index_cast %61 : i64 to index
          %63 = "ta.TAExtractOp"(%20, %arg5, %arg2, %58) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %64 = "ta.TAExtractOp"(%20, %arg8, %52, %60) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %65 = arith.mulf %63, %64 : f64
          %66 = "ta.WorkspaceAccumulateOp"(%arg10, %62, %62, %65) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %66 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %56#0, %56#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %48 = "ta.SortCrdOp"(%47#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %49 = "ta.SpTensorGetNNZ"(%48) : (!ta.workspace<f64, i64, ?>) -> index
      %50:2 = scf.for %arg5 = %c0 to %49 step %c1 iter_args(%arg6 = %47#0, %arg7 = %48) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %51 = "ta.SpTensorGetCrd"(%arg7, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %52 = arith.index_cast %51 : i64 to index
        %53 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %54 = "ta.WorkspaceReadOp"(%arg7, %arg5, %52) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %55 = "ta.TAInsertOp"(%arg6, %arg2, %53, %arg2, %52, %54) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %55, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      scf.yield %50#0, %50#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
    }
    it.yield %42#0, %42#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
  %35 = "it.DenseDomainOp"(%30, %34#0, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %36 = "it.DeclDomainOp"(%32, %30) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %37 = "it.itree"(%36) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %42 = scf.for %arg1 = %c0 to %30 step %c1 iter_args(%arg2 = %arg0) -> (!it.symbolic_domain<64>) {
      %43 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %31[%arg1] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %31[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_19 : i64 to index
      %46 = arith.addi %arg1, %c1 : index
      %extracted_20 = tensor.extract %25[%arg1] : tensor<?xi64>
      %47 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %25[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_21 : i64 to index
      %49:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %44, %arg6 = %47) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index) {
        %51 = arith.cmpi ult, %arg6, %48 : index
        %52 = arith.cmpi ult, %arg5, %45 : index
        %53 = arith.andi %52, %51 : i1
        scf.condition(%53) %arg3, %arg4, %arg5, %arg6 : !it.symbolic_domain<64>, index, index, index
      } do {
      ^bb0(%arg3: !it.symbolic_domain<64>, %arg4: index, %arg5: index, %arg6: index):
        %51 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %52 = arith.index_cast %51 : i64 to index
        %53 = "ta.SpTensorGetCrd"(%34#0, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %54 = arith.index_cast %53 : i64 to index
        %55 = arith.minui %54, %52 : index
        %56 = arith.cmpi eq, %55, %54 : index
        %57 = arith.cmpi eq, %55, %52 : index
        %58 = arith.andi %56, %57 : i1
        %59:2 = scf.if %58 -> (!it.symbolic_domain<64>, index) {
          %64 = "it.SymbolicDomainInsertOp"(%arg3, %55) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          %65 = index.add %arg4, %idx1
          scf.yield %64, %65 : !it.symbolic_domain<64>, index
        } else {
          scf.yield %arg3, %arg4 : !it.symbolic_domain<64>, index
        }
        %60 = index.castu %56 : i1 to index
        %61 = index.add %arg5, %60
        %62 = index.castu %57 : i1 to index
        %63 = index.add %arg6, %62
        scf.yield %59#0, %59#1, %61, %63 : !it.symbolic_domain<64>, index, index, index
      }
      %50 = "it.SymbolicDomainEndRowOp"(%49#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      scf.yield %50 : !it.symbolic_domain<64>
    }
    it.yield %42 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %38 = "it.IndexTreeSparseTensorOp"(%35, %37) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %39 = "it.itree"(%38) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %42 = scf.for %arg1 = %c0 to %30 step %c1 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %43 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %31[%arg1] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %31[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_19 : i64 to index
      %46 = arith.addi %arg1, %c1 : index
      %extracted_20 = tensor.extract %25[%arg1] : tensor<?xi64>
      %47 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %25[%46] : tensor<?xi64>
      %48 = arith.index_cast %extracted_21 : i64 to index
      %49:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %44, %arg6 = %47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %50 = arith.cmpi ult, %arg6, %48 : index
        %51 = arith.cmpi ult, %arg5, %45 : index
        %52 = arith.andi %51, %50 : i1
        scf.condition(%52) %arg3, %arg4, %arg5, %arg6 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg3: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg4: index, %arg5: index, %arg6: index):
        %50 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %51 = arith.index_cast %50 : i64 to index
        %52 = "ta.SpTensorGetCrd"(%34#0, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %53 = arith.index_cast %52 : i64 to index
        %54 = arith.minui %53, %51 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %51 : index
        %57 = arith.andi %55, %56 : i1
        %58:2 = scf.if %57 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %63 = "ta.TensorFindPos"(%arg3, %54) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %64 = "ta.TAExtractOp"(%34#0, %arg5, %arg1, %54) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %65 = "ta.TAExtractOp"(%20, %arg6, %arg1, %54) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %66 = arith.mulf %64, %65 : f64
          %67 = "ta.TAInsertOp"(%arg3, %arg1, %63, %arg1, %54, %66) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %68 = index.add %arg4, %idx1
          scf.yield %67, %68 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg3, %arg4 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg5, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg6, %61
        scf.yield %58#0, %58#1, %60, %62 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      scf.yield %49#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %42 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
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
    %70:6 = scf.for %arg6 = %c0 to %21 step %c1 iter_args(%arg7 = %arg0, %arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %72 = arith.addi %arg6, %c1 : index
      %extracted = tensor.extract %22[%arg6] : tensor<?xi64>
      %73 = arith.index_cast %extracted : i64 to index
      %extracted_38 = tensor.extract %22[%72] : tensor<?xi64>
      %74 = arith.index_cast %extracted_38 : i64 to index
      %75:6 = scf.for %arg13 = %73 to %74 step %c1 iter_args(%arg14 = %arg7, %arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %80 = "ta.SpTensorGetCrd"(%20, %arg13) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %81 = arith.index_cast %80 : i64 to index
        %82 = arith.addi %81, %c1 : index
        %extracted_41 = tensor.extract %23[%81] : tensor<?xi64>
        %83 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %23[%82] : tensor<?xi64>
        %84 = arith.index_cast %extracted_42 : i64 to index
        %85:6 = scf.for %arg20 = %83 to %84 step %c1 iter_args(%arg21 = %arg14, %arg22 = %arg15, %arg23 = %arg16, %arg24 = %arg17, %arg25 = %arg18, %arg26 = %arg19) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %87 = "ta.SpTensorGetCrd"(%20, %arg20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %88 = arith.index_cast %87 : i64 to index
          %idx1_43 = index.constant 1
          %89 = index.add %arg21, %idx1_43
          %90 = arith.index_cast %89 : index to i64
          %extracted_44 = tensor.extract %arg26[%88] : tensor<?xi64>
          %91 = arith.cmpi eq, %90, %extracted_44 : i64
          %92:2 = scf.if %91 -> (index, tensor<?xi64>) {
            scf.yield %arg23, %arg26 : index, tensor<?xi64>
          } else {
            %inserted_45 = tensor.insert %90 into %arg26[%88] : tensor<?xi64>
            %94 = index.add %arg23, %idx1_43
            scf.yield %94, %inserted_45 : index, tensor<?xi64>
          }
          %93 = builtin.unrealized_conversion_cast %arg21, %arg22, %92#0, %arg24, %arg25, %92#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg21, %arg22, %92#0, %arg24, %arg25, %92#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %86 = builtin.unrealized_conversion_cast %85#0, %85#1, %85#2, %85#3, %85#4, %85#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %85#0, %85#1, %85#2, %85#3, %85#4, %85#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %76 = builtin.unrealized_conversion_cast %75#0, %75#1, %75#2, %75#3, %75#4, %75#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_39 = index.constant 1
      %77 = index.add %75#0, %idx1_39
      %78 = arith.index_cast %75#2 : index to i64
      %inserted_40 = tensor.insert %78 into %75#4[%77] : tensor<?xi64>
      %79 = builtin.unrealized_conversion_cast %77, %75#1, %75#2, %75#3, %inserted_40, %75#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %77, %75#1, %75#2, %75#3, %inserted_40, %75#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %71 = builtin.unrealized_conversion_cast %70#0, %70#1, %70#2, %70#3, %70#4, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %70#0, %70#1, %70#2, %70#3, %70#4, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
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
    %70:2 = scf.for %arg2 = %c0 to %21 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
      %71 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %72 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %73 = arith.index_cast %extracted : i64 to index
      %extracted_38 = tensor.extract %22[%72] : tensor<?xi64>
      %74 = arith.index_cast %extracted_38 : i64 to index
      %75:2 = scf.for %arg5 = %73 to %74 step %c1 iter_args(%arg6 = %arg3, %arg7 = %71) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %79 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %80 = arith.index_cast %79 : i64 to index
        %81 = arith.addi %80, %c1 : index
        %extracted_39 = tensor.extract %23[%80] : tensor<?xi64>
        %82 = arith.index_cast %extracted_39 : i64 to index
        %extracted_40 = tensor.extract %23[%81] : tensor<?xi64>
        %83 = arith.index_cast %extracted_40 : i64 to index
        %84:2 = scf.for %arg8 = %82 to %83 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
          %85 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %86 = arith.index_cast %85 : i64 to index
          %87 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %88 = arith.index_cast %87 : i64 to index
          %89 = "ta.SpTensorGetCrd"(%20, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %90 = arith.index_cast %89 : i64 to index
          %91 = "ta.TAExtractOp"(%20, %arg5, %arg2, %86) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %92 = "ta.TAExtractOp"(%20, %arg8, %80, %88) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %93 = arith.mulf %91, %92 : f64
          %94 = "ta.WorkspaceAccumulateOp"(%arg10, %90, %90, %93) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
          scf.yield %arg9, %94 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
        }
        scf.yield %84#0, %84#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      %76 = "ta.SortCrdOp"(%75#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
      %77 = "ta.SpTensorGetNNZ"(%76) : (!ta.workspace<f64, i64, ?>) -> index
      %78:2 = scf.for %arg5 = %c0 to %77 step %c1 iter_args(%arg6 = %75#0, %arg7 = %76) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) {
        %79 = "ta.SpTensorGetCrd"(%arg7, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
        %80 = arith.index_cast %79 : i64 to index
        %81 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %82 = "ta.WorkspaceReadOp"(%arg7, %arg5, %80) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
        %83 = "ta.TAInsertOp"(%arg6, %arg2, %81, %arg2, %80, %82) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %83, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
      }
      scf.yield %78#0, %78#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
    }
    it.yield %70#0, %70#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>
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
    %70:6 = scf.for %arg6 = %c0 to %44 step %c1 iter_args(%arg7 = %arg0, %arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %72 = arith.addi %arg6, %c1 : index
      %extracted = tensor.extract %45[%arg6] : tensor<?xi64>
      %73 = arith.index_cast %extracted : i64 to index
      %extracted_38 = tensor.extract %45[%72] : tensor<?xi64>
      %74 = arith.index_cast %extracted_38 : i64 to index
      %75 = arith.addi %arg6, %c1 : index
      %extracted_39 = tensor.extract %25[%arg6] : tensor<?xi64>
      %76 = arith.index_cast %extracted_39 : i64 to index
      %extracted_40 = tensor.extract %25[%75] : tensor<?xi64>
      %77 = arith.index_cast %extracted_40 : i64 to index
      %78:9 = scf.while (%arg13 = %arg7, %arg14 = %arg8, %arg15 = %arg9, %arg16 = %arg10, %arg17 = %arg11, %arg18 = %arg12, %arg19 = %idx0, %arg20 = %73, %arg21 = %76) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
        %83 = arith.cmpi ult, %arg21, %77 : index
        %84 = arith.cmpi ult, %arg20, %74 : index
        %85 = arith.andi %84, %83 : i1
        scf.condition(%85) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg13: index, %arg14: index, %arg15: index, %arg16: index, %arg17: tensor<?xi64>, %arg18: tensor<?xi64>, %arg19: index, %arg20: index, %arg21: index):
        %83 = "ta.SpTensorGetCrd"(%20, %arg21) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %84 = arith.index_cast %83 : i64 to index
        %85 = "ta.SpTensorGetCrd"(%48#0, %arg20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %86 = arith.index_cast %85 : i64 to index
        %87 = arith.minui %86, %84 : index
        %88 = arith.cmpi eq, %87, %86 : index
        %89 = arith.cmpi eq, %87, %84 : index
        %90 = arith.andi %88, %89 : i1
        %91:7 = scf.if %90 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
          %idx1_43 = index.constant 1
          %97 = index.add %arg15, %idx1_43
          %98 = builtin.unrealized_conversion_cast %arg13, %arg14, %97, %arg16, %arg17, %arg18 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          %99 = index.add %arg19, %idx1
          scf.yield %arg13, %arg14, %97, %arg16, %arg17, %arg18, %99 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        } else {
          scf.yield %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
        }
        %92 = builtin.unrealized_conversion_cast %91#0, %91#1, %91#2, %91#3, %91#4, %91#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %93 = index.castu %88 : i1 to index
        %94 = index.add %arg20, %93
        %95 = index.castu %89 : i1 to index
        %96 = index.add %arg21, %95
        scf.yield %91#0, %91#1, %91#2, %91#3, %91#4, %91#5, %91#6, %94, %96 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      }
      %79 = builtin.unrealized_conversion_cast %78#0, %78#1, %78#2, %78#3, %78#4, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_41 = index.constant 1
      %80 = index.add %78#0, %idx1_41
      %81 = arith.index_cast %78#2 : index to i64
      %inserted_42 = tensor.insert %81 into %78#4[%80] : tensor<?xi64>
      %82 = builtin.unrealized_conversion_cast %80, %78#1, %78#2, %78#3, %inserted_42, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %80, %78#1, %78#2, %78#3, %inserted_42, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %71 = builtin.unrealized_conversion_cast %70#0, %70#1, %70#2, %70#3, %70#4, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %70#0, %70#1, %70#2, %70#3, %70#4, %70#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
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
    %70 = scf.for %arg1 = %c0 to %44 step %c1 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %71 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %45[%arg1] : tensor<?xi64>
      %72 = arith.index_cast %extracted : i64 to index
      %extracted_38 = tensor.extract %45[%71] : tensor<?xi64>
      %73 = arith.index_cast %extracted_38 : i64 to index
      %74 = arith.addi %arg1, %c1 : index
      %extracted_39 = tensor.extract %25[%arg1] : tensor<?xi64>
      %75 = arith.index_cast %extracted_39 : i64 to index
      %extracted_40 = tensor.extract %25[%74] : tensor<?xi64>
      %76 = arith.index_cast %extracted_40 : i64 to index
      %77:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %72, %arg6 = %75) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) {
        %78 = arith.cmpi ult, %arg6, %76 : index
        %79 = arith.cmpi ult, %arg5, %73 : index
        %80 = arith.andi %79, %78 : i1
        scf.condition(%80) %arg3, %arg4, %arg5, %arg6 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      } do {
      ^bb0(%arg3: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg4: index, %arg5: index, %arg6: index):
        %78 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %79 = arith.index_cast %78 : i64 to index
        %80 = "ta.SpTensorGetCrd"(%48#0, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %81 = arith.index_cast %80 : i64 to index
        %82 = arith.minui %81, %79 : index
        %83 = arith.cmpi eq, %82, %81 : index
        %84 = arith.cmpi eq, %82, %79 : index
        %85 = arith.andi %83, %84 : i1
        %86:2 = scf.if %85 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) {
          %91 = "ta.TensorFindPos"(%arg3, %82) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
          %92 = "ta.TAExtractOp"(%48#0, %arg5, %arg1, %82) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %93 = "ta.TAExtractOp"(%20, %arg6, %arg1, %82) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %94 = arith.mulf %92, %93 : f64
          %95 = "ta.TAInsertOp"(%arg3, %arg1, %91, %arg1, %82, %94) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %96 = index.add %arg4, %idx1
          scf.yield %95, %96 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        } else {
          scf.yield %arg3, %arg4 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index
        }
        %87 = index.castu %83 : i1 to index
        %88 = index.add %arg5, %87
        %89 = index.castu %84 : i1 to index
        %90 = index.add %arg6, %89
        scf.yield %86#0, %86#1, %88, %90 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index
      }
      scf.yield %77#0 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %70 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
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
    %67:6 = scf.for %arg6 = %c0 to %extracted step %c1 iter_args(%arg7 = %arg0, %arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %69 = arith.addi %arg6, %c1 : index
      %extracted_54 = tensor.extract %15[%arg6] : tensor<?xi64>
      %70 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %15[%69] : tensor<?xi64>
      %71 = arith.index_cast %extracted_55 : i64 to index
      %72:6 = scf.for %arg13 = %70 to %71 step %c1 iter_args(%arg14 = %arg7, %arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_58 = tensor.extract %16[%arg13] : tensor<?xi64>
        %77 = arith.index_cast %extracted_58 : i64 to index
        %78 = arith.addi %77, %c1 : index
        %extracted_59 = tensor.extract %15[%77] : tensor<?xi64>
        %79 = arith.index_cast %extracted_59 : i64 to index
        %extracted_60 = tensor.extract %15[%78] : tensor<?xi64>
        %80 = arith.index_cast %extracted_60 : i64 to index
        %81:6 = scf.for %arg20 = %79 to %80 step %c1 iter_args(%arg21 = %arg14, %arg22 = %arg15, %arg23 = %arg16, %arg24 = %arg17, %arg25 = %arg18, %arg26 = %arg19) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
          %extracted_61 = tensor.extract %16[%arg20] : tensor<?xi64>
          %83 = arith.index_cast %extracted_61 : i64 to index
          %idx1_62 = index.constant 1
          %84 = index.add %arg21, %idx1_62
          %85 = arith.index_cast %84 : index to i64
          %extracted_63 = tensor.extract %arg26[%83] : tensor<?xi64>
          %86 = arith.cmpi eq, %85, %extracted_63 : i64
          %87:2 = scf.if %86 -> (index, tensor<?xi64>) {
            scf.yield %arg23, %arg26 : index, tensor<?xi64>
          } else {
            %inserted_64 = tensor.insert %85 into %arg26[%83] : tensor<?xi64>
            %89 = index.add %arg23, %idx1_62
            scf.yield %89, %inserted_64 : index, tensor<?xi64>
          }
          %88 = builtin.unrealized_conversion_cast %arg21, %arg22, %87#0, %arg24, %arg25, %87#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg21, %arg22, %87#0, %arg24, %arg25, %87#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
        }
        %82 = builtin.unrealized_conversion_cast %81#0, %81#1, %81#2, %81#3, %81#4, %81#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %81#0, %81#1, %81#2, %81#3, %81#4, %81#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %73 = builtin.unrealized_conversion_cast %72#0, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_56 = index.constant 1
      %74 = index.add %72#0, %idx1_56
      %75 = arith.index_cast %72#2 : index to i64
      %inserted_57 = tensor.insert %75 into %72#4[%74] : tensor<?xi64>
      %76 = builtin.unrealized_conversion_cast %74, %72#1, %72#2, %72#3, %inserted_57, %72#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %74, %72#1, %72#2, %72#3, %inserted_57, %72#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %68 = builtin.unrealized_conversion_cast %67#0, %67#1, %67#2, %67#3, %67#4, %67#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %67#0, %67#1, %67#2, %67#3, %67#4, %67#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
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
    %67:12 = scf.for %arg12 = %c0 to %extracted step %c1 iter_args(%arg13 = %arg0, %arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %arg9, %arg23 = %arg10, %arg24 = %arg11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %c1_i32_54 = arith.constant 1 : i32
      %70 = arith.addi %arg21, %c1_i32_54 : i32
      %idx0_55 = index.constant 0
      %71 = builtin.unrealized_conversion_cast %arg20, %70, %arg22, %idx0_55, %arg24 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %72 = arith.addi %arg12, %c1 : index
      %extracted_56 = tensor.extract %15[%arg12] : tensor<?xi64>
      %73 = arith.index_cast %extracted_56 : i64 to index
      %extracted_57 = tensor.extract %15[%72] : tensor<?xi64>
      %74 = arith.index_cast %extracted_57 : i64 to index
      %75:12 = scf.for %arg25 = %73 to %74 step %c1 iter_args(%arg26 = %arg13, %arg27 = %arg14, %arg28 = %arg15, %arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %70, %arg35 = %arg22, %arg36 = %idx0_55, %arg37 = %arg24) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_59 = tensor.extract %16[%arg25] : tensor<?xi64>
        %83 = arith.index_cast %extracted_59 : i64 to index
        %84 = arith.addi %83, %c1 : index
        %extracted_60 = tensor.extract %15[%83] : tensor<?xi64>
        %85 = arith.index_cast %extracted_60 : i64 to index
        %extracted_61 = tensor.extract %15[%84] : tensor<?xi64>
        %86 = arith.index_cast %extracted_61 : i64 to index
        %87:12 = scf.for %arg38 = %85 to %86 step %c1 iter_args(%arg39 = %arg26, %arg40 = %arg27, %arg41 = %arg28, %arg42 = %arg29, %arg43 = %arg30, %arg44 = %arg31, %arg45 = %arg32, %arg46 = %arg33, %arg47 = %arg34, %arg48 = %arg35, %arg49 = %arg36, %arg50 = %arg37) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_62 = tensor.extract %16[%arg25] : tensor<?xi64>
          %90 = arith.index_cast %extracted_62 : i64 to index
          %extracted_63 = tensor.extract %16[%arg38] : tensor<?xi64>
          %91 = arith.index_cast %extracted_63 : i64 to index
          %extracted_64 = tensor.extract %16[%arg38] : tensor<?xi64>
          %92 = arith.index_cast %extracted_64 : i64 to index
          %extracted_65 = tensor.extract %19[%arg25] : tensor<?xf64>
          %extracted_66 = tensor.extract %19[%arg38] : tensor<?xf64>
          %93 = arith.mulf %extracted_65, %extracted_66 : f64
          %extracted_67 = tensor.extract %arg48[%92] : tensor<?xi32>
          %94 = arith.cmpi eq, %extracted_67, %arg47 : i32
          %95:4 = scf.if %94 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_68 = tensor.extract %arg46[%92] : tensor<?xf64>
            %97 = arith.addf %extracted_68, %93 : f64
            %inserted_69 = tensor.insert %97 into %arg46[%92] : tensor<?xf64>
            scf.yield %arg48, %arg49, %arg50, %inserted_69 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted_68 = tensor.insert %arg47 into %arg48[%92] : tensor<?xi32>
            %97 = arith.index_cast %92 : index to i64
            %inserted_69 = tensor.insert %97 into %arg50[%arg49] : tensor<?xi64>
            %idx1_70 = index.constant 1
            %98 = index.add %arg49, %idx1_70
            %inserted_71 = tensor.insert %93 into %arg46[%92] : tensor<?xf64>
            scf.yield %inserted_68, %98, %inserted_69, %inserted_71 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          %96 = builtin.unrealized_conversion_cast %95#3, %arg47, %95#0, %95#1, %95#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
          scf.yield %arg39, %arg40, %arg41, %arg42, %arg43, %arg44, %arg45, %95#3, %arg47, %95#0, %95#1, %95#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        }
        %88 = builtin.unrealized_conversion_cast %87#0, %87#1, %87#2, %87#3, %87#4, %87#5, %87#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %89 = builtin.unrealized_conversion_cast %87#7, %87#8, %87#9, %87#10, %87#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %87#0, %87#1, %87#2, %87#3, %87#4, %87#5, %87#6, %87#7, %87#8, %87#9, %87#10, %87#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %76 = builtin.unrealized_conversion_cast %75#0, %75#1, %75#2, %75#3, %75#4, %75#5, %75#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %77 = builtin.unrealized_conversion_cast %75#7, %75#8, %75#9, %75#10, %75#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %idx0_58 = index.constant 0
      %78 = "ta.TensorSortOp"(%75#11, %idx0_58, %75#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %79 = builtin.unrealized_conversion_cast %75#7, %75#8, %75#9, %75#10, %78 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      %80:12 = scf.for %arg25 = %c0 to %75#10 step %c1 iter_args(%arg26 = %75#0, %arg27 = %75#1, %arg28 = %75#2, %arg29 = %75#3, %arg30 = %75#4, %arg31 = %75#5, %arg32 = %75#6, %arg33 = %75#7, %arg34 = %75#8, %arg35 = %75#9, %arg36 = %75#10, %arg37 = %78) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_59 = tensor.extract %arg37[%arg25] : tensor<?xi64>
        %83 = arith.index_cast %extracted_59 : i64 to index
        %extracted_60 = tensor.extract %arg33[%83] : tensor<?xf64>
        %84 = arith.index_cast %83 : index to i64
        %inserted_61 = tensor.insert %84 into %arg31[%arg29] : tensor<?xi64>
        %idx1_62 = index.constant 1
        %85 = index.add %arg29, %idx1_62
        %inserted_63 = tensor.insert %extracted_60 into %arg32[%arg29] : tensor<?xf64>
        %86 = builtin.unrealized_conversion_cast %arg26, %arg27, %arg28, %85, %arg30, %inserted_61, %inserted_63 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %arg26, %arg27, %arg28, %85, %arg30, %inserted_61, %inserted_63, %arg33, %arg34, %arg35, %arg36, %arg37 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %81 = builtin.unrealized_conversion_cast %80#0, %80#1, %80#2, %80#3, %80#4, %80#5, %80#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %82 = builtin.unrealized_conversion_cast %80#7, %80#8, %80#9, %80#10, %80#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.yield %80#0, %80#1, %80#2, %80#3, %80#4, %80#5, %80#6, %80#7, %80#8, %80#9, %80#10, %80#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %68 = builtin.unrealized_conversion_cast %67#0, %67#1, %67#2, %67#3, %67#4, %67#5, %67#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %69 = builtin.unrealized_conversion_cast %67#7, %67#8, %67#9, %67#10, %67#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    it.yield %67#0, %67#1, %67#2, %67#3, %67#4, %67#5, %67#6, %67#7, %67#8, %67#9, %67#10, %67#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
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
    %67:6 = scf.for %arg6 = %c0 to %extracted_35 step %c1 iter_args(%arg7 = %arg0, %arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %69 = arith.addi %arg6, %c1 : index
      %extracted_54 = tensor.extract %26#4[%arg6] : tensor<?xi64>
      %70 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %26#4[%69] : tensor<?xi64>
      %71 = arith.index_cast %extracted_55 : i64 to index
      %72 = arith.addi %arg6, %c1 : index
      %extracted_56 = tensor.extract %15[%arg6] : tensor<?xi64>
      %73 = arith.index_cast %extracted_56 : i64 to index
      %extracted_57 = tensor.extract %15[%72] : tensor<?xi64>
      %74 = arith.index_cast %extracted_57 : i64 to index
      %75:9 = scf.while (%arg13 = %arg7, %arg14 = %arg8, %arg15 = %arg9, %arg16 = %arg10, %arg17 = %arg11, %arg18 = %arg12, %arg19 = %idx0, %arg20 = %70, %arg21 = %73) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
        %80 = arith.cmpi ult, %arg21, %74 : index
        %81 = arith.cmpi ult, %arg20, %71 : index
        %82 = arith.andi %81, %80 : i1
        scf.condition(%82) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg13: index, %arg14: index, %arg15: index, %arg16: index, %arg17: tensor<?xi64>, %arg18: tensor<?xi64>, %arg19: index, %arg20: index, %arg21: index):
        %extracted_60 = tensor.extract %16[%arg21] : tensor<?xi64>
        %80 = arith.index_cast %extracted_60 : i64 to index
        %extracted_61 = tensor.extract %43#5[%arg20] : tensor<?xi64>
        %81 = arith.index_cast %extracted_61 : i64 to index
        %82 = arith.minui %81, %80 : index
        %83 = arith.cmpi eq, %82, %81 : index
        %84 = arith.cmpi eq, %82, %80 : index
        %85 = arith.andi %83, %84 : i1
        %86:7 = scf.if %85 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
          %idx1_62 = index.constant 1
          %92 = index.add %arg15, %idx1_62
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
      %76 = builtin.unrealized_conversion_cast %75#0, %75#1, %75#2, %75#3, %75#4, %75#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %idx1_58 = index.constant 1
      %77 = index.add %75#0, %idx1_58
      %78 = arith.index_cast %75#2 : index to i64
      %inserted_59 = tensor.insert %78 into %75#4[%77] : tensor<?xi64>
      %79 = builtin.unrealized_conversion_cast %77, %75#1, %75#2, %75#3, %inserted_59, %75#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %77, %75#1, %75#2, %75#3, %inserted_59, %75#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %68 = builtin.unrealized_conversion_cast %67#0, %67#1, %67#2, %67#3, %67#4, %67#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    it.yield %67#0, %67#1, %67#2, %67#3, %67#4, %67#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
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
    %67:7 = scf.for %arg7 = %c0 to %extracted_35 step %c1 iter_args(%arg8 = %arg0, %arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3, %arg12 = %arg4, %arg13 = %arg5, %arg14 = %arg6) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
      %69 = arith.addi %arg7, %c1 : index
      %extracted_54 = tensor.extract %26#4[%arg7] : tensor<?xi64>
      %70 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %26#4[%69] : tensor<?xi64>
      %71 = arith.index_cast %extracted_55 : i64 to index
      %72 = arith.addi %arg7, %c1 : index
      %extracted_56 = tensor.extract %15[%arg7] : tensor<?xi64>
      %73 = arith.index_cast %extracted_56 : i64 to index
      %extracted_57 = tensor.extract %15[%72] : tensor<?xi64>
      %74 = arith.index_cast %extracted_57 : i64 to index
      %75:10 = scf.while (%arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13, %arg21 = %arg14, %arg22 = %idx0, %arg23 = %70, %arg24 = %73) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %77 = arith.cmpi ult, %arg24, %74 : index
        %78 = arith.cmpi ult, %arg23, %71 : index
        %79 = arith.andi %78, %77 : i1
        scf.condition(%79) %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22, %arg23, %arg24 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg15: tensor<2xindex>, %arg16: index, %arg17: tensor<?xi64>, %arg18: index, %arg19: tensor<?xi64>, %arg20: tensor<?xi64>, %arg21: tensor<?xf64>, %arg22: index, %arg23: index, %arg24: index):
        %extracted_58 = tensor.extract %16[%arg24] : tensor<?xi64>
        %77 = arith.index_cast %extracted_58 : i64 to index
        %extracted_59 = tensor.extract %43#5[%arg23] : tensor<?xi64>
        %78 = arith.index_cast %extracted_59 : i64 to index
        %79 = arith.minui %78, %77 : index
        %80 = arith.cmpi eq, %79, %78 : index
        %81 = arith.cmpi eq, %79, %77 : index
        %82 = arith.andi %80, %81 : i1
        %83:8 = scf.if %82 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_60 = tensor.extract %43#6[%arg23] : tensor<?xf64>
          %extracted_61 = tensor.extract %19[%arg24] : tensor<?xf64>
          %89 = arith.mulf %extracted_60, %extracted_61 : f64
          %90 = arith.index_cast %79 : index to i64
          %inserted_62 = tensor.insert %90 into %arg20[%arg18] : tensor<?xi64>
          %idx1_63 = index.constant 1
          %91 = index.add %arg18, %idx1_63
          %inserted_64 = tensor.insert %89 into %arg21[%arg18] : tensor<?xf64>
          %92 = builtin.unrealized_conversion_cast %arg15, %arg16, %arg17, %91, %arg19, %inserted_62, %inserted_64 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %93 = index.add %arg22, %idx1
          scf.yield %arg15, %arg16, %arg17, %91, %arg19, %inserted_62, %inserted_64, %93 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
        }
        %84 = builtin.unrealized_conversion_cast %83#0, %83#1, %83#2, %83#3, %83#4, %83#5, %83#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %85 = index.castu %80 : i1 to index
        %86 = index.add %arg23, %85
        %87 = index.castu %81 : i1 to index
        %88 = index.add %arg24, %87
        scf.yield %83#0, %83#1, %83#2, %83#3, %83#4, %83#5, %83#6, %83#7, %86, %88 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      %76 = builtin.unrealized_conversion_cast %75#0, %75#1, %75#2, %75#3, %75#4, %75#5, %75#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %75#0, %75#1, %75#2, %75#3, %75#4, %75#5, %75#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    }
    %68 = builtin.unrealized_conversion_cast %67#0, %67#1, %67#2, %67#3, %67#4, %67#5, %67#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %67#0, %67#1, %67#2, %67#3, %67#4, %67#5, %67#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
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
  %26:6 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0_22, %arg2 = %22, %arg3 = %idx0_22, %arg4 = %10, %arg5 = %23, %arg6 = %24) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
    %72 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %73 = arith.index_cast %extracted : i64 to index
    %extracted_50 = tensor.extract %15[%72] : tensor<?xi64>
    %74 = arith.index_cast %extracted_50 : i64 to index
    %75:6 = scf.for %arg7 = %73 to %74 step %c1 iter_args(%arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
      %extracted_53 = tensor.extract %16[%arg7] : tensor<?xi64>
      %80 = arith.index_cast %extracted_53 : i64 to index
      %81 = arith.addi %80, %c1 : index
      %extracted_54 = tensor.extract %15[%80] : tensor<?xi64>
      %82 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %15[%81] : tensor<?xi64>
      %83 = arith.index_cast %extracted_55 : i64 to index
      %84:6 = scf.for %arg14 = %82 to %83 step %c1 iter_args(%arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
        %extracted_56 = tensor.extract %16[%arg14] : tensor<?xi64>
        %86 = arith.index_cast %extracted_56 : i64 to index
        %idx1_57 = index.constant 1
        %87 = index.add %arg15, %idx1_57
        %88 = arith.index_cast %87 : index to i64
        %extracted_58 = tensor.extract %arg20[%86] : tensor<?xi64>
        %89 = arith.cmpi eq, %88, %extracted_58 : i64
        %90:2 = scf.if %89 -> (index, tensor<?xi64>) {
          scf.yield %arg17, %arg20 : index, tensor<?xi64>
        } else {
          %inserted_59 = tensor.insert %88 into %arg20[%86] : tensor<?xi64>
          %92 = index.add %arg17, %idx1_57
          scf.yield %92, %inserted_59 : index, tensor<?xi64>
        }
        %91 = builtin.unrealized_conversion_cast %arg15, %arg16, %90#0, %arg18, %arg19, %90#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        scf.yield %arg15, %arg16, %90#0, %arg18, %arg19, %90#1 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
      }
      %85 = builtin.unrealized_conversion_cast %84#0, %84#1, %84#2, %84#3, %84#4, %84#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      scf.yield %84#0, %84#1, %84#2, %84#3, %84#4, %84#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
    }
    %76 = builtin.unrealized_conversion_cast %75#0, %75#1, %75#2, %75#3, %75#4, %75#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx1_51 = index.constant 1
    %77 = index.add %75#0, %idx1_51
    %78 = arith.index_cast %75#2 : index to i64
    %inserted_52 = tensor.insert %78 into %75#4[%77] : tensor<?xi64>
    %79 = builtin.unrealized_conversion_cast %77, %75#1, %75#2, %75#3, %inserted_52, %75#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    scf.yield %77, %75#1, %75#2, %75#3, %inserted_52, %75#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }
  %27 = builtin.unrealized_conversion_cast %26#0, %26#1, %26#2, %26#3, %26#4, %26#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %28 = builtin.unrealized_conversion_cast %26#0, %26#1, %26#2, %26#3, %26#4, %26#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_25 = index.constant 0
  %idx1_26 = index.constant 1
  %29 = arith.index_cast %9 : index to i64
  %idx1_27 = index.constant 1
  %30 = tensor.empty(%idx1_27) : tensor<?xi64>
  %inserted_28 = tensor.insert %29 into %30[%idx0_25] : tensor<?xi64>
  %31 = tensor.empty() : tensor<0xi64>
  %32 = tensor.empty() : tensor<0xi64>
  %33 = tensor.empty() : tensor<0xi64>
  %34 = index.mul %idx1_26, %9
  %35 = tensor.empty(%26#2) : tensor<?xi64>
  %36 = tensor.empty() : tensor<0xi64>
  %37 = tensor.empty() : tensor<0xi64>
  %38 = tensor.empty(%26#2) : tensor<?xf64>
  %cst_29 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_25 to %26#2 step %idx1_26 {
    %inserted_50 = tensor.insert %cst_29 into %38[%arg0] : tensor<?xf64>
  }
  %from_elements_30 = tensor.from_elements %9, %26#3 : tensor<2xindex>
  %idx0_31 = index.constant 0
  %idx0_32 = index.constant 0
  %39 = builtin.unrealized_conversion_cast %from_elements_30, %idx0_31, %inserted_28, %idx0_32, %26#4, %35, %38 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_33 = index.constant 0
  %idx1_34 = index.constant 1
  %idx1_35 = index.constant 1
  %40 = bufferization.alloc_tensor(%26#3) : tensor<?xf64>
  %c1_i32 = arith.constant 1 : i32
  %41 = bufferization.alloc_tensor(%26#3) : tensor<?xi32>
  %idx0_36 = index.constant 0
  %42 = bufferization.alloc_tensor(%26#3) : tensor<?xi64>
  %43 = builtin.unrealized_conversion_cast %40, %c1_i32, %41, %idx0_36, %42 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %44:12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %from_elements_30, %arg2 = %idx0_31, %arg3 = %inserted_28, %arg4 = %idx0_32, %arg5 = %26#4, %arg6 = %35, %arg7 = %38, %arg8 = %40, %arg9 = %c1_i32, %arg10 = %41, %arg11 = %idx0_36, %arg12 = %42) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
    %c1_i32_50 = arith.constant 1 : i32
    %72 = arith.addi %arg9, %c1_i32_50 : i32
    %idx0_51 = index.constant 0
    %73 = builtin.unrealized_conversion_cast %arg8, %72, %arg10, %idx0_51, %arg12 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %74 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %75 = arith.index_cast %extracted : i64 to index
    %extracted_52 = tensor.extract %15[%74] : tensor<?xi64>
    %76 = arith.index_cast %extracted_52 : i64 to index
    %77:12 = scf.for %arg13 = %75 to %76 step %c1 iter_args(%arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %72, %arg23 = %arg10, %arg24 = %idx0_51, %arg25 = %arg12) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_54 = tensor.extract %16[%arg13] : tensor<?xi64>
      %85 = arith.index_cast %extracted_54 : i64 to index
      %86 = arith.addi %85, %c1 : index
      %extracted_55 = tensor.extract %15[%85] : tensor<?xi64>
      %87 = arith.index_cast %extracted_55 : i64 to index
      %extracted_56 = tensor.extract %15[%86] : tensor<?xi64>
      %88 = arith.index_cast %extracted_56 : i64 to index
      %89:12 = scf.for %arg26 = %87 to %88 step %c1 iter_args(%arg27 = %arg14, %arg28 = %arg15, %arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %arg21, %arg35 = %arg22, %arg36 = %arg23, %arg37 = %arg24, %arg38 = %arg25) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_57 = tensor.extract %16[%arg13] : tensor<?xi64>
        %92 = arith.index_cast %extracted_57 : i64 to index
        %extracted_58 = tensor.extract %16[%arg26] : tensor<?xi64>
        %93 = arith.index_cast %extracted_58 : i64 to index
        %extracted_59 = tensor.extract %16[%arg26] : tensor<?xi64>
        %94 = arith.index_cast %extracted_59 : i64 to index
        %extracted_60 = tensor.extract %19[%arg13] : tensor<?xf64>
        %extracted_61 = tensor.extract %19[%arg26] : tensor<?xf64>
        %95 = arith.mulf %extracted_60, %extracted_61 : f64
        %extracted_62 = tensor.extract %arg36[%94] : tensor<?xi32>
        %96 = arith.cmpi eq, %extracted_62, %arg35 : i32
        %97:4 = scf.if %96 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_63 = tensor.extract %arg34[%94] : tensor<?xf64>
          %99 = arith.addf %extracted_63, %95 : f64
          %inserted_64 = tensor.insert %99 into %arg34[%94] : tensor<?xf64>
          scf.yield %arg36, %arg37, %arg38, %inserted_64 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted_63 = tensor.insert %arg35 into %arg36[%94] : tensor<?xi32>
          %99 = arith.index_cast %94 : index to i64
          %inserted_64 = tensor.insert %99 into %arg38[%arg37] : tensor<?xi64>
          %idx1_65 = index.constant 1
          %100 = index.add %arg37, %idx1_65
          %inserted_66 = tensor.insert %95 into %arg34[%94] : tensor<?xf64>
          scf.yield %inserted_63, %100, %inserted_64, %inserted_66 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        %98 = builtin.unrealized_conversion_cast %97#3, %arg35, %97#0, %97#1, %97#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
        scf.yield %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %97#3, %arg35, %97#0, %97#1, %97#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %90 = builtin.unrealized_conversion_cast %89#0, %89#1, %89#2, %89#3, %89#4, %89#5, %89#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %91 = builtin.unrealized_conversion_cast %89#7, %89#8, %89#9, %89#10, %89#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
      scf.yield %89#0, %89#1, %89#2, %89#3, %89#4, %89#5, %89#6, %89#7, %89#8, %89#9, %89#10, %89#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %78 = builtin.unrealized_conversion_cast %77#0, %77#1, %77#2, %77#3, %77#4, %77#5, %77#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %79 = builtin.unrealized_conversion_cast %77#7, %77#8, %77#9, %77#10, %77#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %idx0_53 = index.constant 0
    %80 = "ta.TensorSortOp"(%77#11, %idx0_53, %77#10) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %81 = builtin.unrealized_conversion_cast %77#7, %77#8, %77#9, %77#10, %80 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    %82:12 = scf.for %arg13 = %c0 to %77#10 step %c1 iter_args(%arg14 = %77#0, %arg15 = %77#1, %arg16 = %77#2, %arg17 = %77#3, %arg18 = %77#4, %arg19 = %77#5, %arg20 = %77#6, %arg21 = %77#7, %arg22 = %77#8, %arg23 = %77#9, %arg24 = %77#10, %arg25 = %80) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_54 = tensor.extract %arg25[%arg13] : tensor<?xi64>
      %85 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %arg21[%85] : tensor<?xf64>
      %86 = arith.index_cast %85 : index to i64
      %inserted_56 = tensor.insert %86 into %arg19[%arg17] : tensor<?xi64>
      %idx1_57 = index.constant 1
      %87 = index.add %arg17, %idx1_57
      %inserted_58 = tensor.insert %extracted_55 into %arg20[%arg17] : tensor<?xf64>
      %88 = builtin.unrealized_conversion_cast %arg14, %arg15, %arg16, %87, %arg18, %inserted_56, %inserted_58 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %arg14, %arg15, %arg16, %87, %arg18, %inserted_56, %inserted_58, %arg21, %arg22, %arg23, %arg24, %arg25 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %83 = builtin.unrealized_conversion_cast %82#0, %82#1, %82#2, %82#3, %82#4, %82#5, %82#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %84 = builtin.unrealized_conversion_cast %82#7, %82#8, %82#9, %82#10, %82#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
    scf.yield %82#0, %82#1, %82#2, %82#3, %82#4, %82#5, %82#6, %82#7, %82#8, %82#9, %82#10, %82#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
  }
  %45 = builtin.unrealized_conversion_cast %44#0, %44#1, %44#2, %44#3, %44#4, %44#5, %44#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = builtin.unrealized_conversion_cast %44#7, %44#8, %44#9, %44#10, %44#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %47 = builtin.unrealized_conversion_cast %44#0, %44#1, %44#2, %44#3, %44#4, %44#5, %44#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = builtin.unrealized_conversion_cast %44#7, %44#8, %44#9, %44#10, %44#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, ?>
  %49 = "it.DenseDomainOp"(%9, %47, %20) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %idx0_37 = index.constant 0
  %idx1_38 = index.constant 1
  %50 = index.add %9, %idx1_38
  %51 = tensor.empty(%50) : tensor<?xi64>
  %c0_i64_39 = arith.constant 0 : i64
  %inserted_40 = tensor.insert %c0_i64_39 into %51[%idx0_37] : tensor<?xi64>
  %52 = tensor.empty(%26#3) : tensor<?xi64>
  %53 = builtin.unrealized_conversion_cast %idx0_37, %50, %idx0_37, %26#3, %51, %52 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %54:6 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0_37, %arg2 = %50, %arg3 = %idx0_37, %arg4 = %26#3, %arg5 = %51, %arg6 = %52) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>) {
    %72 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %26#4[%arg0] : tensor<?xi64>
    %73 = arith.index_cast %extracted : i64 to index
    %extracted_50 = tensor.extract %26#4[%72] : tensor<?xi64>
    %74 = arith.index_cast %extracted_50 : i64 to index
    %75 = arith.addi %arg0, %c1 : index
    %extracted_51 = tensor.extract %15[%arg0] : tensor<?xi64>
    %76 = arith.index_cast %extracted_51 : i64 to index
    %extracted_52 = tensor.extract %15[%75] : tensor<?xi64>
    %77 = arith.index_cast %extracted_52 : i64 to index
    %78:9 = scf.while (%arg7 = %arg1, %arg8 = %arg2, %arg9 = %arg3, %arg10 = %arg4, %arg11 = %arg5, %arg12 = %arg6, %arg13 = %idx0, %arg14 = %73, %arg15 = %76) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index) {
      %83 = arith.cmpi ult, %arg15, %77 : index
      %84 = arith.cmpi ult, %arg14, %74 : index
      %85 = arith.andi %84, %83 : i1
      scf.condition(%85) %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
    } do {
    ^bb0(%arg7: index, %arg8: index, %arg9: index, %arg10: index, %arg11: tensor<?xi64>, %arg12: tensor<?xi64>, %arg13: index, %arg14: index, %arg15: index):
      %extracted_55 = tensor.extract %16[%arg15] : tensor<?xi64>
      %83 = arith.index_cast %extracted_55 : i64 to index
      %extracted_56 = tensor.extract %44#5[%arg14] : tensor<?xi64>
      %84 = arith.index_cast %extracted_56 : i64 to index
      %85 = arith.minui %84, %83 : index
      %86 = arith.cmpi eq, %85, %84 : index
      %87 = arith.cmpi eq, %85, %83 : index
      %88 = arith.andi %86, %87 : i1
      %89:7 = scf.if %88 -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>, index) {
        %idx1_57 = index.constant 1
        %95 = index.add %arg9, %idx1_57
        %96 = builtin.unrealized_conversion_cast %arg7, %arg8, %95, %arg10, %arg11, %arg12 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
        %97 = index.add %arg13, %idx1
        scf.yield %arg7, %arg8, %95, %arg10, %arg11, %arg12, %97 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
      } else {
        scf.yield %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index
      }
      %90 = builtin.unrealized_conversion_cast %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
      %91 = index.castu %86 : i1 to index
      %92 = index.add %arg14, %91
      %93 = index.castu %87 : i1 to index
      %94 = index.add %arg15, %93
      scf.yield %89#0, %89#1, %89#2, %89#3, %89#4, %89#5, %89#6, %92, %94 : index, index, index, index, tensor<?xi64>, tensor<?xi64>, index, index, index
    }
    %79 = builtin.unrealized_conversion_cast %78#0, %78#1, %78#2, %78#3, %78#4, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    %idx1_53 = index.constant 1
    %80 = index.add %78#0, %idx1_53
    %81 = arith.index_cast %78#2 : index to i64
    %inserted_54 = tensor.insert %81 into %78#4[%80] : tensor<?xi64>
    %82 = builtin.unrealized_conversion_cast %80, %78#1, %78#2, %78#3, %inserted_54, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
    scf.yield %80, %78#1, %78#2, %78#3, %inserted_54, %78#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64>
  }
  %55 = builtin.unrealized_conversion_cast %54#0, %54#1, %54#2, %54#3, %54#4, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %56 = builtin.unrealized_conversion_cast %54#0, %54#1, %54#2, %54#3, %54#4, %54#5 : index, index, index, index, tensor<?xi64>, tensor<?xi64> to !it.symbolic_domain<64>
  %idx0_41 = index.constant 0
  %idx1_42 = index.constant 1
  %57 = arith.index_cast %9 : index to i64
  %idx1_43 = index.constant 1
  %58 = tensor.empty(%idx1_43) : tensor<?xi64>
  %inserted_44 = tensor.insert %57 into %58[%idx0_41] : tensor<?xi64>
  %59 = tensor.empty() : tensor<0xi64>
  %60 = tensor.empty() : tensor<0xi64>
  %61 = tensor.empty() : tensor<0xi64>
  %62 = index.mul %idx1_42, %9
  %63 = tensor.empty(%54#2) : tensor<?xi64>
  %64 = tensor.empty() : tensor<0xi64>
  %65 = tensor.empty() : tensor<0xi64>
  %66 = tensor.empty(%54#2) : tensor<?xf64>
  %cst_45 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_41 to %54#2 step %idx1_42 {
    %inserted_50 = tensor.insert %cst_45 into %66[%arg0] : tensor<?xf64>
  }
  %from_elements_46 = tensor.from_elements %9, %54#3 : tensor<2xindex>
  %idx0_47 = index.constant 0
  %idx0_48 = index.constant 0
  %67 = builtin.unrealized_conversion_cast %from_elements_46, %idx0_47, %inserted_44, %idx0_48, %54#4, %63, %66 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %68:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %from_elements_46, %arg2 = %idx0_47, %arg3 = %inserted_44, %arg4 = %idx0_48, %arg5 = %54#4, %arg6 = %63, %arg7 = %66) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
    %72 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %26#4[%arg0] : tensor<?xi64>
    %73 = arith.index_cast %extracted : i64 to index
    %extracted_50 = tensor.extract %26#4[%72] : tensor<?xi64>
    %74 = arith.index_cast %extracted_50 : i64 to index
    %75 = arith.addi %arg0, %c1 : index
    %extracted_51 = tensor.extract %15[%arg0] : tensor<?xi64>
    %76 = arith.index_cast %extracted_51 : i64 to index
    %extracted_52 = tensor.extract %15[%75] : tensor<?xi64>
    %77 = arith.index_cast %extracted_52 : i64 to index
    %78:10 = scf.while (%arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6, %arg14 = %arg7, %arg15 = %idx0, %arg16 = %73, %arg17 = %76) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %80 = arith.cmpi ult, %arg17, %77 : index
      %81 = arith.cmpi ult, %arg16, %74 : index
      %82 = arith.andi %81, %80 : i1
      scf.condition(%82) %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg8: tensor<2xindex>, %arg9: index, %arg10: tensor<?xi64>, %arg11: index, %arg12: tensor<?xi64>, %arg13: tensor<?xi64>, %arg14: tensor<?xf64>, %arg15: index, %arg16: index, %arg17: index):
      %extracted_53 = tensor.extract %16[%arg17] : tensor<?xi64>
      %80 = arith.index_cast %extracted_53 : i64 to index
      %extracted_54 = tensor.extract %44#5[%arg16] : tensor<?xi64>
      %81 = arith.index_cast %extracted_54 : i64 to index
      %82 = arith.minui %81, %80 : index
      %83 = arith.cmpi eq, %82, %81 : index
      %84 = arith.cmpi eq, %82, %80 : index
      %85 = arith.andi %83, %84 : i1
      %86:8 = scf.if %85 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_55 = tensor.extract %44#6[%arg16] : tensor<?xf64>
        %extracted_56 = tensor.extract %19[%arg17] : tensor<?xf64>
        %92 = arith.mulf %extracted_55, %extracted_56 : f64
        %93 = arith.index_cast %82 : index to i64
        %inserted_57 = tensor.insert %93 into %arg13[%arg11] : tensor<?xi64>
        %idx1_58 = index.constant 1
        %94 = index.add %arg11, %idx1_58
        %inserted_59 = tensor.insert %92 into %arg14[%arg11] : tensor<?xf64>
        %95 = builtin.unrealized_conversion_cast %arg8, %arg9, %arg10, %94, %arg12, %inserted_57, %inserted_59 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %96 = index.add %arg15, %idx1
        scf.yield %arg8, %arg9, %arg10, %94, %arg12, %inserted_57, %inserted_59, %96 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index
      }
      %87 = builtin.unrealized_conversion_cast %86#0, %86#1, %86#2, %86#3, %86#4, %86#5, %86#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %88 = index.castu %83 : i1 to index
      %89 = index.add %arg16, %88
      %90 = index.castu %84 : i1 to index
      %91 = index.add %arg17, %90
      scf.yield %86#0, %86#1, %86#2, %86#3, %86#4, %86#5, %86#6, %86#7, %89, %91 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    %79 = builtin.unrealized_conversion_cast %78#0, %78#1, %78#2, %78#3, %78#4, %78#5, %78#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    scf.yield %78#0, %78#1, %78#2, %78#3, %78#4, %78#5, %78#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
  }
  %69 = builtin.unrealized_conversion_cast %68#0, %68#1, %68#2, %68#3, %68#4, %68#5, %68#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %70 = builtin.unrealized_conversion_cast %68#0, %68#1, %68#2, %68#3, %68#4, %68#5, %68#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_49 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_49[%c0] : memref<1xf64>
  %dim = tensor.dim %68#6, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %68#6[%arg0] : tensor<?xf64>
    %72 = memref.load %alloc_49[%c0] : memref<1xf64>
    %73 = arith.addf %extracted, %72 : f64
    memref.store %73, %alloc_49[%c0] : memref<1xf64>
  }
  %71 = memref.load %alloc_49[%c0] : memref<1xf64>
  "ta.print"(%71) : (f64) -> ()
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
  %17:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %15, %arg4 = %16) -> (index, index, tensor<?xi64>, tensor<?xi64>) {
    %31 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %32 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %11[%31] : tensor<?xi64>
    %33 = arith.index_cast %extracted_19 : i64 to index
    %34:2 = scf.for %arg5 = %32 to %33 step %c1 iter_args(%arg6 = %arg2, %arg7 = %arg4) -> (index, tensor<?xi64>) {
      %extracted_20 = tensor.extract %12[%arg5] : tensor<?xi64>
      %37 = arith.index_cast %extracted_20 : i64 to index
      %38 = arith.addi %37, %c1 : index
      %extracted_21 = tensor.extract %11[%37] : tensor<?xi64>
      %39 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%38] : tensor<?xi64>
      %40 = arith.index_cast %extracted_22 : i64 to index
      %41:2 = scf.for %arg8 = %39 to %40 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg8] : tensor<?xi64>
        %42 = arith.index_cast %extracted_23 : i64 to index
        %43 = index.add %arg1, %idx1
        %44 = arith.index_cast %43 : index to i64
        %extracted_24 = tensor.extract %arg10[%42] : tensor<?xi64>
        %45 = arith.cmpi eq, %44, %extracted_24 : i64
        %46:2 = scf.if %45 -> (index, tensor<?xi64>) {
          scf.yield %arg9, %arg10 : index, tensor<?xi64>
        } else {
          %inserted_25 = tensor.insert %44 into %arg10[%42] : tensor<?xi64>
          %47 = index.add %arg9, %idx1
          scf.yield %47, %inserted_25 : index, tensor<?xi64>
        }
        scf.yield %46#0, %46#1 : index, tensor<?xi64>
      }
      scf.yield %41#0, %41#1 : index, tensor<?xi64>
    }
    %35 = index.add %arg1, %idx1
    %36 = arith.index_cast %34#0 : index to i64
    %inserted = tensor.insert %36 into %arg3[%35] : tensor<?xi64>
    scf.yield %35, %34#0, %inserted, %34#1 : index, index, tensor<?xi64>, tensor<?xi64>
  }
  %18 = tensor.empty(%17#1) : tensor<?xi64>
  %19 = tensor.empty(%17#1) : tensor<?xf64>
  %20 = bufferization.alloc_tensor(%10) : tensor<?xf64>
  %21 = bufferization.alloc_tensor(%10) : tensor<?xi32>
  %22 = bufferization.alloc_tensor(%10) : tensor<?xi64>
  %23:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %18, %arg3 = %19, %arg4 = %20, %arg5 = %c1_i32, %arg6 = %21, %arg7 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %31 = arith.addi %arg5, %c1_i32 : i32
    %32 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %33 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %11[%32] : tensor<?xi64>
    %34 = arith.index_cast %extracted_19 : i64 to index
    %35:4 = scf.for %arg8 = %33 to %34 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_20 = tensor.extract %12[%arg8] : tensor<?xi64>
      %38 = arith.index_cast %extracted_20 : i64 to index
      %39 = arith.addi %38, %c1 : index
      %extracted_21 = tensor.extract %11[%38] : tensor<?xi64>
      %40 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%39] : tensor<?xi64>
      %41 = arith.index_cast %extracted_22 : i64 to index
      %42:4 = scf.for %arg13 = %40 to %41 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg13] : tensor<?xi64>
        %43 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %13[%arg8] : tensor<?xf64>
        %extracted_25 = tensor.extract %13[%arg13] : tensor<?xf64>
        %44 = arith.mulf %extracted_24, %extracted_25 : f64
        %extracted_26 = tensor.extract %arg15[%43] : tensor<?xi32>
        %45 = arith.cmpi eq, %extracted_26, %31 : i32
        %46:4 = scf.if %45 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_27 = tensor.extract %arg14[%43] : tensor<?xf64>
          %47 = arith.addf %extracted_27, %44 : f64
          %inserted = tensor.insert %47 into %arg14[%43] : tensor<?xf64>
          scf.yield %arg15, %arg16, %arg17, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted = tensor.insert %31 into %arg15[%43] : tensor<?xi32>
          %inserted_27 = tensor.insert %extracted_23 into %arg17[%arg16] : tensor<?xi64>
          %47 = index.add %arg16, %idx1
          %inserted_28 = tensor.insert %44 into %arg14[%43] : tensor<?xf64>
          scf.yield %inserted, %47, %inserted_27, %inserted_28 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %46#3, %46#0, %46#1, %46#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %42#0, %42#1, %42#2, %42#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %36 = "ta.TensorSortOp"(%35#3, %idx0, %35#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %37:3 = scf.for %arg8 = %c0 to %35#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_20 = tensor.extract %36[%arg8] : tensor<?xi64>
      %38 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %35#0[%38] : tensor<?xf64>
      %inserted = tensor.insert %extracted_20 into %arg10[%arg9] : tensor<?xi64>
      %39 = index.add %arg9, %idx1
      %inserted_22 = tensor.insert %extracted_21 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %39, %inserted, %inserted_22 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %37#0, %37#1, %37#2, %35#0, %31, %35#1, %36 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %24 = index.add %9, %idx1
  %25 = tensor.empty(%24) : tensor<?xi64>
  %26:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %25) -> (index, index, tensor<?xi64>) {
    %31 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
    %32 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
    %33 = arith.index_cast %extracted_19 : i64 to index
    %34 = arith.addi %arg0, %c1 : index
    %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted_20 : i64 to index
    %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_21 : i64 to index
    %37:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %32, %arg7 = %35) : (index, index, index, index) -> (index, index, index, index) {
      %40 = arith.cmpi ult, %arg7, %36 : index
      %41 = arith.cmpi ult, %arg6, %33 : index
      %42 = arith.andi %41, %40 : i1
      scf.condition(%42) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %extracted_22 = tensor.extract %12[%arg7] : tensor<?xi64>
      %40 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %23#1[%arg6] : tensor<?xi64>
      %41 = arith.index_cast %extracted_23 : i64 to index
      %42 = arith.minui %41, %40 : index
      %43 = arith.cmpi eq, %42, %41 : index
      %44 = arith.cmpi eq, %42, %40 : index
      %45 = arith.andi %43, %44 : i1
      %46:2 = scf.if %45 -> (index, index) {
        %51 = index.add %arg4, %idx1
        %52 = index.add %arg5, %idx1
        scf.yield %51, %52 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %47 = index.castu %43 : i1 to index
      %48 = index.add %arg6, %47
      %49 = index.castu %44 : i1 to index
      %50 = index.add %arg7, %49
      scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
    }
    %38 = index.add %arg1, %idx1
    %39 = arith.index_cast %37#0 : index to i64
    %inserted = tensor.insert %39 into %arg3[%38] : tensor<?xi64>
    scf.yield %38, %37#0, %inserted : index, index, tensor<?xi64>
  }
  %27 = tensor.empty(%26#1) : tensor<?xi64>
  %28 = tensor.empty(%26#1) : tensor<?xf64>
  %29:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %27, %arg3 = %28) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %31 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
    %32 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
    %33 = arith.index_cast %extracted_19 : i64 to index
    %34 = arith.addi %arg0, %c1 : index
    %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted_20 : i64 to index
    %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_21 : i64 to index
    %37:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %32, %arg9 = %35) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %38 = arith.cmpi ult, %arg9, %36 : index
      %39 = arith.cmpi ult, %arg8, %33 : index
      %40 = arith.andi %39, %38 : i1
      scf.condition(%40) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %extracted_22 = tensor.extract %12[%arg9] : tensor<?xi64>
      %38 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %23#1[%arg8] : tensor<?xi64>
      %39 = arith.index_cast %extracted_23 : i64 to index
      %40 = arith.minui %39, %38 : index
      %41 = arith.cmpi eq, %40, %39 : index
      %42 = arith.cmpi eq, %40, %38 : index
      %43 = arith.andi %41, %42 : i1
      %44:4 = scf.if %43 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_24 = tensor.extract %23#2[%arg8] : tensor<?xf64>
        %extracted_25 = tensor.extract %13[%arg9] : tensor<?xf64>
        %49 = arith.mulf %extracted_24, %extracted_25 : f64
        %50 = arith.index_cast %40 : index to i64
        %inserted = tensor.insert %50 into %arg5[%arg4] : tensor<?xi64>
        %51 = index.add %arg4, %idx1
        %inserted_26 = tensor.insert %49 into %arg6[%arg4] : tensor<?xf64>
        %52 = index.add %arg7, %idx1
        scf.yield %51, %inserted, %inserted_26, %52 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %45 = index.castu %41 : i1 to index
      %46 = index.add %arg8, %45
      %47 = index.castu %42 : i1 to index
      %48 = index.add %arg9, %47
      scf.yield %44#0, %44#1, %44#2, %44#3, %46, %48 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    scf.yield %37#0, %37#1, %37#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %alloc_18 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_18[%c0] : memref<1xf64>
  %dim = tensor.dim %29#2, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %29#2[%arg0] : tensor<?xf64>
    %31 = memref.load %alloc_18[%c0] : memref<1xf64>
    %32 = arith.addf %extracted, %31 : f64
    memref.store %32, %alloc_18[%c0] : memref<1xf64>
  }
  %30 = memref.load %alloc_18[%c0] : memref<1xf64>
  "ta.print"(%30) : (f64) -> ()
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
  %17:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %15, %arg4 = %16) -> (index, index, tensor<?xi64>, tensor<?xi64>) {
    %31 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %32 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %11[%31] : tensor<?xi64>
    %33 = arith.index_cast %extracted_19 : i64 to index
    %34 = index.add %arg1, %idx1
    %35 = arith.index_cast %34 : index to i64
    %36:2 = scf.for %arg5 = %32 to %33 step %c1 iter_args(%arg6 = %arg2, %arg7 = %arg4) -> (index, tensor<?xi64>) {
      %extracted_20 = tensor.extract %12[%arg5] : tensor<?xi64>
      %39 = arith.index_cast %extracted_20 : i64 to index
      %40 = arith.addi %39, %c1 : index
      %extracted_21 = tensor.extract %11[%39] : tensor<?xi64>
      %41 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_22 : i64 to index
      %43:2 = scf.for %arg8 = %41 to %42 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg8] : tensor<?xi64>
        %44 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %arg10[%44] : tensor<?xi64>
        %45 = arith.cmpi eq, %35, %extracted_24 : i64
        %46:2 = scf.if %45 -> (index, tensor<?xi64>) {
          scf.yield %arg9, %arg10 : index, tensor<?xi64>
        } else {
          %inserted_25 = tensor.insert %35 into %arg10[%44] : tensor<?xi64>
          %47 = index.add %arg9, %idx1
          scf.yield %47, %inserted_25 : index, tensor<?xi64>
        }
        scf.yield %46#0, %46#1 : index, tensor<?xi64>
      }
      scf.yield %43#0, %43#1 : index, tensor<?xi64>
    }
    %37 = index.add %arg1, %idx1
    %38 = arith.index_cast %36#0 : index to i64
    %inserted = tensor.insert %38 into %arg3[%37] : tensor<?xi64>
    scf.yield %37, %36#0, %inserted, %36#1 : index, index, tensor<?xi64>, tensor<?xi64>
  }
  %18 = tensor.empty(%17#1) : tensor<?xi64>
  %19 = tensor.empty(%17#1) : tensor<?xf64>
  %20 = bufferization.alloc_tensor(%10) : tensor<?xf64>
  %21 = bufferization.alloc_tensor(%10) : tensor<?xi32>
  %22 = bufferization.alloc_tensor(%10) : tensor<?xi64>
  %23:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %18, %arg3 = %19, %arg4 = %20, %arg5 = %c1_i32, %arg6 = %21, %arg7 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %31 = arith.addi %arg5, %c1_i32 : i32
    %32 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %33 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %11[%32] : tensor<?xi64>
    %34 = arith.index_cast %extracted_19 : i64 to index
    %35:4 = scf.for %arg8 = %33 to %34 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_20 = tensor.extract %12[%arg8] : tensor<?xi64>
      %38 = arith.index_cast %extracted_20 : i64 to index
      %39 = arith.addi %38, %c1 : index
      %extracted_21 = tensor.extract %11[%38] : tensor<?xi64>
      %40 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%39] : tensor<?xi64>
      %41 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %13[%arg8] : tensor<?xf64>
      %42:4 = scf.for %arg13 = %40 to %41 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_24 = tensor.extract %12[%arg13] : tensor<?xi64>
        %43 = arith.index_cast %extracted_24 : i64 to index
        %extracted_25 = tensor.extract %13[%arg13] : tensor<?xf64>
        %44 = arith.mulf %extracted_23, %extracted_25 : f64
        %extracted_26 = tensor.extract %arg15[%43] : tensor<?xi32>
        %45 = arith.cmpi eq, %extracted_26, %31 : i32
        %46:4 = scf.if %45 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_27 = tensor.extract %arg14[%43] : tensor<?xf64>
          %47 = arith.addf %extracted_27, %44 : f64
          %inserted = tensor.insert %47 into %arg14[%43] : tensor<?xf64>
          scf.yield %arg15, %arg16, %arg17, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted = tensor.insert %31 into %arg15[%43] : tensor<?xi32>
          %inserted_27 = tensor.insert %extracted_24 into %arg17[%arg16] : tensor<?xi64>
          %47 = index.add %arg16, %idx1
          %inserted_28 = tensor.insert %44 into %arg14[%43] : tensor<?xf64>
          scf.yield %inserted, %47, %inserted_27, %inserted_28 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %46#3, %46#0, %46#1, %46#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %42#0, %42#1, %42#2, %42#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %36 = "ta.TensorSortOp"(%35#3, %idx0, %35#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %37:3 = scf.for %arg8 = %c0 to %35#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_20 = tensor.extract %36[%arg8] : tensor<?xi64>
      %38 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %35#0[%38] : tensor<?xf64>
      %inserted = tensor.insert %extracted_20 into %arg10[%arg9] : tensor<?xi64>
      %39 = index.add %arg9, %idx1
      %inserted_22 = tensor.insert %extracted_21 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %39, %inserted, %inserted_22 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %37#0, %37#1, %37#2, %35#0, %31, %35#1, %36 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %24 = index.add %9, %idx1
  %25 = tensor.empty(%24) : tensor<?xi64>
  %26:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %25) -> (index, index, tensor<?xi64>) {
    %31 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
    %32 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
    %33 = arith.index_cast %extracted_19 : i64 to index
    %34 = arith.addi %arg0, %c1 : index
    %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted_20 : i64 to index
    %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_21 : i64 to index
    %37:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %32, %arg7 = %35) : (index, index, index, index) -> (index, index, index, index) {
      %40 = arith.cmpi ult, %arg7, %36 : index
      %41 = arith.cmpi ult, %arg6, %33 : index
      %42 = arith.andi %41, %40 : i1
      scf.condition(%42) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %extracted_22 = tensor.extract %12[%arg7] : tensor<?xi64>
      %40 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %23#1[%arg6] : tensor<?xi64>
      %41 = arith.index_cast %extracted_23 : i64 to index
      %42 = arith.minui %41, %40 : index
      %43 = arith.cmpi eq, %42, %41 : index
      %44 = arith.cmpi eq, %42, %40 : index
      %45 = arith.andi %43, %44 : i1
      %46:2 = scf.if %45 -> (index, index) {
        %51 = index.add %arg4, %idx1
        %52 = index.add %arg5, %idx1
        scf.yield %51, %52 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %47 = index.castu %43 : i1 to index
      %48 = index.add %arg6, %47
      %49 = index.castu %44 : i1 to index
      %50 = index.add %arg7, %49
      scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
    }
    %38 = index.add %arg1, %idx1
    %39 = arith.index_cast %37#0 : index to i64
    %inserted = tensor.insert %39 into %arg3[%38] : tensor<?xi64>
    scf.yield %38, %37#0, %inserted : index, index, tensor<?xi64>
  }
  %27 = tensor.empty(%26#1) : tensor<?xi64>
  %28 = tensor.empty(%26#1) : tensor<?xf64>
  %29:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %27, %arg3 = %28) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %31 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
    %32 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
    %33 = arith.index_cast %extracted_19 : i64 to index
    %34 = arith.addi %arg0, %c1 : index
    %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted_20 : i64 to index
    %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_21 : i64 to index
    %37:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %32, %arg9 = %35) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %38 = arith.cmpi ult, %arg9, %36 : index
      %39 = arith.cmpi ult, %arg8, %33 : index
      %40 = arith.andi %39, %38 : i1
      scf.condition(%40) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %extracted_22 = tensor.extract %12[%arg9] : tensor<?xi64>
      %38 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %23#1[%arg8] : tensor<?xi64>
      %39 = arith.index_cast %extracted_23 : i64 to index
      %40 = arith.minui %39, %38 : index
      %41 = arith.cmpi eq, %40, %39 : index
      %42 = arith.cmpi eq, %40, %38 : index
      %43 = arith.andi %41, %42 : i1
      %44:4 = scf.if %43 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_24 = tensor.extract %23#2[%arg8] : tensor<?xf64>
        %extracted_25 = tensor.extract %13[%arg9] : tensor<?xf64>
        %49 = arith.mulf %extracted_24, %extracted_25 : f64
        %50 = arith.index_cast %40 : index to i64
        %inserted = tensor.insert %50 into %arg5[%arg4] : tensor<?xi64>
        %51 = index.add %arg4, %idx1
        %inserted_26 = tensor.insert %49 into %arg6[%arg4] : tensor<?xf64>
        %52 = index.add %arg7, %idx1
        scf.yield %51, %inserted, %inserted_26, %52 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %45 = index.castu %41 : i1 to index
      %46 = index.add %arg8, %45
      %47 = index.castu %42 : i1 to index
      %48 = index.add %arg9, %47
      scf.yield %44#0, %44#1, %44#2, %44#3, %46, %48 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    scf.yield %37#0, %37#1, %37#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %alloc_18 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_18[%c0] : memref<1xf64>
  %dim = tensor.dim %29#2, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %29#2[%arg0] : tensor<?xf64>
    %31 = memref.load %alloc_18[%c0] : memref<1xf64>
    %32 = arith.addf %extracted, %31 : f64
    memref.store %32, %alloc_18[%c0] : memref<1xf64>
  }
  %30 = memref.load %alloc_18[%c0] : memref<1xf64>
  "ta.print"(%30) : (f64) -> ()
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
  %17:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %15, %arg4 = %16) -> (index, index, tensor<?xi64>, tensor<?xi64>) {
    %31 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %32 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %11[%31] : tensor<?xi64>
    %33 = arith.index_cast %extracted_19 : i64 to index
    %34 = index.add %arg1, %idx1
    %35 = arith.index_cast %34 : index to i64
    %36:2 = scf.for %arg5 = %32 to %33 step %c1 iter_args(%arg6 = %arg2, %arg7 = %arg4) -> (index, tensor<?xi64>) {
      %extracted_20 = tensor.extract %12[%arg5] : tensor<?xi64>
      %39 = arith.index_cast %extracted_20 : i64 to index
      %40 = arith.addi %39, %c1 : index
      %extracted_21 = tensor.extract %11[%39] : tensor<?xi64>
      %41 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_22 : i64 to index
      %43:2 = scf.for %arg8 = %41 to %42 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (index, tensor<?xi64>) {
        %extracted_23 = tensor.extract %12[%arg8] : tensor<?xi64>
        %44 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %arg10[%44] : tensor<?xi64>
        %45 = arith.cmpi eq, %35, %extracted_24 : i64
        %46:2 = scf.if %45 -> (index, tensor<?xi64>) {
          scf.yield %arg9, %arg10 : index, tensor<?xi64>
        } else {
          %inserted_25 = tensor.insert %35 into %arg10[%44] : tensor<?xi64>
          %47 = index.add %arg9, %idx1
          scf.yield %47, %inserted_25 : index, tensor<?xi64>
        }
        scf.yield %46#0, %46#1 : index, tensor<?xi64>
      }
      scf.yield %43#0, %43#1 : index, tensor<?xi64>
    }
    %37 = index.add %arg1, %idx1
    %38 = arith.index_cast %36#0 : index to i64
    %inserted = tensor.insert %38 into %arg3[%37] : tensor<?xi64>
    scf.yield %37, %36#0, %inserted, %36#1 : index, index, tensor<?xi64>, tensor<?xi64>
  }
  %18 = tensor.empty(%17#1) : tensor<?xi64>
  %19 = tensor.empty(%17#1) : tensor<?xf64>
  %20 = bufferization.alloc_tensor(%10) : tensor<?xf64>
  %21 = bufferization.alloc_tensor(%10) : tensor<?xi32>
  %22 = bufferization.alloc_tensor(%10) : tensor<?xi64>
  %23:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %18, %arg3 = %19, %arg4 = %20, %arg5 = %c1_i32, %arg6 = %21, %arg7 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %31 = arith.addi %arg5, %c1_i32 : i32
    %32 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %33 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %11[%32] : tensor<?xi64>
    %34 = arith.index_cast %extracted_19 : i64 to index
    %35:4 = scf.for %arg8 = %33 to %34 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_20 = tensor.extract %12[%arg8] : tensor<?xi64>
      %38 = arith.index_cast %extracted_20 : i64 to index
      %39 = arith.addi %38, %c1 : index
      %extracted_21 = tensor.extract %11[%38] : tensor<?xi64>
      %40 = arith.index_cast %extracted_21 : i64 to index
      %extracted_22 = tensor.extract %11[%39] : tensor<?xi64>
      %41 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %13[%arg8] : tensor<?xf64>
      %42:4 = scf.for %arg13 = %40 to %41 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_24 = tensor.extract %12[%arg13] : tensor<?xi64>
        %43 = arith.index_cast %extracted_24 : i64 to index
        %extracted_25 = tensor.extract %13[%arg13] : tensor<?xf64>
        %44 = arith.mulf %extracted_23, %extracted_25 : f64
        %extracted_26 = tensor.extract %arg15[%43] : tensor<?xi32>
        %45 = arith.cmpi eq, %extracted_26, %31 : i32
        %46:4 = scf.if %45 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
          %extracted_27 = tensor.extract %arg14[%43] : tensor<?xf64>
          %47 = arith.addf %extracted_27, %44 : f64
          %inserted = tensor.insert %47 into %arg14[%43] : tensor<?xf64>
          scf.yield %arg15, %arg16, %arg17, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        } else {
          %inserted = tensor.insert %31 into %arg15[%43] : tensor<?xi32>
          %inserted_27 = tensor.insert %extracted_24 into %arg17[%arg16] : tensor<?xi64>
          %47 = index.add %arg16, %idx1
          %inserted_28 = tensor.insert %44 into %arg14[%43] : tensor<?xf64>
          scf.yield %inserted, %47, %inserted_27, %inserted_28 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
        }
        scf.yield %46#3, %46#0, %46#1, %46#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %42#0, %42#1, %42#2, %42#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %36 = "ta.TensorSortOp"(%35#3, %idx0, %35#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
    %37:3 = scf.for %arg8 = %c0 to %35#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_20 = tensor.extract %36[%arg8] : tensor<?xi64>
      %38 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %35#0[%38] : tensor<?xf64>
      %inserted = tensor.insert %extracted_20 into %arg10[%arg9] : tensor<?xi64>
      %39 = index.add %arg9, %idx1
      %inserted_22 = tensor.insert %extracted_21 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %39, %inserted, %inserted_22 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %37#0, %37#1, %37#2, %35#0, %31, %35#1, %36 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %24 = index.add %9, %idx1
  %25 = tensor.empty(%24) : tensor<?xi64>
  %26:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %25) -> (index, index, tensor<?xi64>) {
    %31 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
    %32 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
    %33 = arith.index_cast %extracted_19 : i64 to index
    %34 = arith.addi %arg0, %c1 : index
    %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted_20 : i64 to index
    %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_21 : i64 to index
    %37:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %32, %arg7 = %35) : (index, index, index, index) -> (index, index, index, index) {
      %40 = arith.cmpi ult, %arg7, %36 : index
      %41 = arith.cmpi ult, %arg6, %33 : index
      %42 = arith.andi %41, %40 : i1
      scf.condition(%42) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %extracted_22 = tensor.extract %12[%arg7] : tensor<?xi64>
      %40 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %23#1[%arg6] : tensor<?xi64>
      %41 = arith.index_cast %extracted_23 : i64 to index
      %42 = arith.minui %41, %40 : index
      %43 = arith.cmpi eq, %42, %41 : index
      %44 = arith.cmpi eq, %42, %40 : index
      %45 = arith.andi %43, %44 : i1
      %46:2 = scf.if %45 -> (index, index) {
        %51 = index.add %arg4, %idx1
        %52 = index.add %arg5, %idx1
        scf.yield %51, %52 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %47 = index.castu %43 : i1 to index
      %48 = index.add %arg6, %47
      %49 = index.castu %44 : i1 to index
      %50 = index.add %arg7, %49
      scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
    }
    %38 = index.add %arg1, %idx1
    %39 = arith.index_cast %37#0 : index to i64
    %inserted = tensor.insert %39 into %arg3[%38] : tensor<?xi64>
    scf.yield %38, %37#0, %inserted : index, index, tensor<?xi64>
  }
  %27 = tensor.empty(%26#1) : tensor<?xi64>
  %28 = tensor.empty(%26#1) : tensor<?xf64>
  %29:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %27, %arg3 = %28) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %31 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
    %32 = arith.index_cast %extracted : i64 to index
    %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
    %33 = arith.index_cast %extracted_19 : i64 to index
    %34 = arith.addi %arg0, %c1 : index
    %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
    %35 = arith.index_cast %extracted_20 : i64 to index
    %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
    %36 = arith.index_cast %extracted_21 : i64 to index
    %37:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %32, %arg9 = %35) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
      %38 = arith.cmpi ult, %arg9, %36 : index
      %39 = arith.cmpi ult, %arg8, %33 : index
      %40 = arith.andi %39, %38 : i1
      scf.condition(%40) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %extracted_22 = tensor.extract %12[%arg9] : tensor<?xi64>
      %38 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %23#1[%arg8] : tensor<?xi64>
      %39 = arith.index_cast %extracted_23 : i64 to index
      %40 = arith.minui %39, %38 : index
      %41 = arith.cmpi eq, %40, %39 : index
      %42 = arith.cmpi eq, %40, %38 : index
      %43 = arith.andi %41, %42 : i1
      %44:4 = scf.if %43 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
        %extracted_24 = tensor.extract %23#2[%arg8] : tensor<?xf64>
        %extracted_25 = tensor.extract %13[%arg9] : tensor<?xf64>
        %49 = arith.mulf %extracted_24, %extracted_25 : f64
        %50 = arith.index_cast %40 : index to i64
        %inserted = tensor.insert %50 into %arg5[%arg4] : tensor<?xi64>
        %51 = index.add %arg4, %idx1
        %inserted_26 = tensor.insert %49 into %arg6[%arg4] : tensor<?xf64>
        %52 = index.add %arg7, %idx1
        scf.yield %51, %inserted, %inserted_26, %52 : index, tensor<?xi64>, tensor<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
      }
      %45 = index.castu %41 : i1 to index
      %46 = index.add %arg8, %45
      %47 = index.castu %42 : i1 to index
      %48 = index.add %arg9, %47
      scf.yield %44#0, %44#1, %44#2, %44#3, %46, %48 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
    }
    scf.yield %37#0, %37#1, %37#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %alloc_18 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_18[%c0] : memref<1xf64>
  %dim = tensor.dim %29#2, %c0 : tensor<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %extracted = tensor.extract %29#2[%arg0] : tensor<?xf64>
    %31 = memref.load %alloc_18[%c0] : memref<1xf64>
    %32 = arith.addf %extracted, %31 : f64
    memref.store %32, %alloc_18[%c0] : memref<1xf64>
  }
  %30 = memref.load %alloc_18[%c0] : memref<1xf64>
  "ta.print"(%30) : (f64) -> ()
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
    %17:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %15, %arg4 = %16) -> (index, index, tensor<?xi64>, tensor<?xi64>) {
      %31 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %11[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_19 : i64 to index
      %34 = index.add %arg1, %idx1
      %35 = arith.index_cast %34 : index to i64
      %36:2 = scf.for %arg5 = %32 to %33 step %c1 iter_args(%arg6 = %arg2, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_20 = tensor.extract %12[%arg5] : tensor<?xi64>
        %39 = arith.index_cast %extracted_20 : i64 to index
        %40 = arith.addi %39, %c1 : index
        %extracted_21 = tensor.extract %11[%39] : tensor<?xi64>
        %41 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %11[%40] : tensor<?xi64>
        %42 = arith.index_cast %extracted_22 : i64 to index
        %43:2 = scf.for %arg8 = %41 to %42 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (index, tensor<?xi64>) {
          %extracted_23 = tensor.extract %12[%arg8] : tensor<?xi64>
          %44 = arith.index_cast %extracted_23 : i64 to index
          %extracted_24 = tensor.extract %arg10[%44] : tensor<?xi64>
          %45 = arith.cmpi eq, %35, %extracted_24 : i64
          %46:2 = scf.if %45 -> (index, tensor<?xi64>) {
            scf.yield %arg9, %arg10 : index, tensor<?xi64>
          } else {
            %inserted_25 = tensor.insert %35 into %arg10[%44] : tensor<?xi64>
            %47 = index.add %arg9, %idx1
            scf.yield %47, %inserted_25 : index, tensor<?xi64>
          }
          scf.yield %46#0, %46#1 : index, tensor<?xi64>
        }
        scf.yield %43#0, %43#1 : index, tensor<?xi64>
      }
      %37 = index.add %arg1, %idx1
      %38 = arith.index_cast %36#0 : index to i64
      %inserted = tensor.insert %38 into %arg3[%37] : tensor<?xi64>
      scf.yield %37, %36#0, %inserted, %36#1 : index, index, tensor<?xi64>, tensor<?xi64>
    }
    %18 = tensor.empty(%17#1) : tensor<?xi64>
    %19 = tensor.empty(%17#1) : tensor<?xf64>
    %20 = bufferization.alloc_tensor(%10) : tensor<?xf64>
    %21 = bufferization.alloc_tensor(%10) : tensor<?xi32>
    %22 = bufferization.alloc_tensor(%10) : tensor<?xi64>
    %23:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %18, %arg3 = %19, %arg4 = %20, %arg5 = %c1_i32, %arg6 = %21, %arg7 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %31 = arith.addi %arg5, %c1_i32 : i32
      %32 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %33 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %11[%32] : tensor<?xi64>
      %34 = arith.index_cast %extracted_19 : i64 to index
      %35:4 = scf.for %arg8 = %33 to %34 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_20 = tensor.extract %12[%arg8] : tensor<?xi64>
        %38 = arith.index_cast %extracted_20 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %extracted_21 = tensor.extract %11[%38] : tensor<?xi64>
        %40 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %11[%39] : tensor<?xi64>
        %41 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %13[%arg8] : tensor<?xf64>
        %42:4 = scf.for %arg13 = %40 to %41 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_24 = tensor.extract %12[%arg13] : tensor<?xi64>
          %43 = arith.index_cast %extracted_24 : i64 to index
          %extracted_25 = tensor.extract %13[%arg13] : tensor<?xf64>
          %44 = arith.mulf %extracted_23, %extracted_25 : f64
          %extracted_26 = tensor.extract %arg15[%43] : tensor<?xi32>
          %45 = arith.cmpi eq, %extracted_26, %31 : i32
          %46:4 = scf.if %45 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_27 = tensor.extract %arg14[%43] : tensor<?xf64>
            %47 = arith.addf %extracted_27, %44 : f64
            %inserted = tensor.insert %47 into %arg14[%43] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted = tensor.insert %31 into %arg15[%43] : tensor<?xi32>
            %inserted_27 = tensor.insert %extracted_24 into %arg17[%arg16] : tensor<?xi64>
            %47 = index.add %arg16, %idx1
            %inserted_28 = tensor.insert %44 into %arg14[%43] : tensor<?xf64>
            scf.yield %inserted, %47, %inserted_27, %inserted_28 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %46#3, %46#0, %46#1, %46#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %42#0, %42#1, %42#2, %42#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %36 = "ta.TensorSortOp"(%35#3, %idx0, %35#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %37:3 = scf.for %arg8 = %c0 to %35#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_20 = tensor.extract %36[%arg8] : tensor<?xi64>
        %38 = arith.index_cast %extracted_20 : i64 to index
        %extracted_21 = tensor.extract %35#0[%38] : tensor<?xf64>
        %inserted = tensor.insert %extracted_20 into %arg10[%arg9] : tensor<?xi64>
        %39 = index.add %arg9, %idx1
        %inserted_22 = tensor.insert %extracted_21 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %39, %inserted, %inserted_22 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %37#0, %37#1, %37#2, %35#0, %31, %35#1, %36 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %24 = index.add %9, %idx1
    %25 = tensor.empty(%24) : tensor<?xi64>
    %26:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %25) -> (index, index, tensor<?xi64>) {
      %31 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_19 : i64 to index
      %34 = arith.addi %arg0, %c1 : index
      %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_21 : i64 to index
      %37:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %32, %arg7 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %40 = arith.cmpi ult, %arg7, %36 : index
        %41 = arith.cmpi ult, %arg6, %33 : index
        %42 = arith.andi %41, %40 : i1
        scf.condition(%42) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
        %extracted_22 = tensor.extract %12[%arg7] : tensor<?xi64>
        %40 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %23#1[%arg6] : tensor<?xi64>
        %41 = arith.index_cast %extracted_23 : i64 to index
        %42 = arith.minui %41, %40 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %40 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = index.add %arg4, %idx1
          %52 = index.add %arg5, %idx1
          scf.yield %51, %52 : index, index
        } else {
          scf.yield %arg4, %arg5 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg6, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg7, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %38 = index.add %arg1, %idx1
      %39 = arith.index_cast %37#0 : index to i64
      %inserted = tensor.insert %39 into %arg3[%38] : tensor<?xi64>
      scf.yield %38, %37#0, %inserted : index, index, tensor<?xi64>
    }
    %27 = tensor.empty(%26#1) : tensor<?xi64>
    %28 = tensor.empty(%26#1) : tensor<?xf64>
    %29:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %27, %arg3 = %28) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %31 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_19 : i64 to index
      %34 = arith.addi %arg0, %c1 : index
      %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_21 : i64 to index
      %37:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %32, %arg9 = %35) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %38 = arith.cmpi ult, %arg9, %36 : index
        %39 = arith.cmpi ult, %arg8, %33 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
        %extracted_22 = tensor.extract %12[%arg9] : tensor<?xi64>
        %38 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %23#1[%arg8] : tensor<?xi64>
        %39 = arith.index_cast %extracted_23 : i64 to index
        %40 = arith.minui %39, %38 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %38 : index
        %43 = arith.andi %41, %42 : i1
        %44:4 = scf.if %43 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_24 = tensor.extract %23#2[%arg8] : tensor<?xf64>
          %extracted_25 = tensor.extract %13[%arg9] : tensor<?xf64>
          %49 = arith.mulf %extracted_24, %extracted_25 : f64
          %50 = arith.index_cast %40 : index to i64
          %inserted = tensor.insert %50 into %arg5[%arg4] : tensor<?xi64>
          %51 = index.add %arg4, %idx1
          %inserted_26 = tensor.insert %49 into %arg6[%arg4] : tensor<?xf64>
          %52 = index.add %arg7, %idx1
          scf.yield %51, %inserted, %inserted_26, %52 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg8, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg9, %47
        scf.yield %44#0, %44#1, %44#2, %44#3, %46, %48 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      scf.yield %37#0, %37#1, %37#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %alloc_18 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_18[%c0] : memref<1xf64>
    %dim = tensor.dim %29#2, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %29#2[%arg0] : tensor<?xf64>
      %31 = memref.load %alloc_18[%c0] : memref<1xf64>
      %32 = arith.addf %extracted, %31 : f64
      memref.store %32, %alloc_18[%c0] : memref<1xf64>
    }
    %30 = memref.load %alloc_18[%c0] : memref<1xf64>
    "ta.print"(%30) : (f64) -> ()
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
    %17:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %15, %arg4 = %16) -> (index, index, tensor<?xi64>, tensor<?xi64>) {
      %31 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %11[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_19 : i64 to index
      %34 = index.add %arg1, %idx1
      %35 = arith.index_cast %34 : index to i64
      %36:2 = scf.for %arg5 = %32 to %33 step %c1 iter_args(%arg6 = %arg2, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_20 = tensor.extract %12[%arg5] : tensor<?xi64>
        %39 = arith.index_cast %extracted_20 : i64 to index
        %40 = arith.addi %39, %c1 : index
        %extracted_21 = tensor.extract %11[%39] : tensor<?xi64>
        %41 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %11[%40] : tensor<?xi64>
        %42 = arith.index_cast %extracted_22 : i64 to index
        %43:2 = scf.for %arg8 = %41 to %42 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (index, tensor<?xi64>) {
          %extracted_23 = tensor.extract %12[%arg8] : tensor<?xi64>
          %44 = arith.index_cast %extracted_23 : i64 to index
          %extracted_24 = tensor.extract %arg10[%44] : tensor<?xi64>
          %45 = arith.cmpi eq, %35, %extracted_24 : i64
          %46:2 = scf.if %45 -> (index, tensor<?xi64>) {
            scf.yield %arg9, %arg10 : index, tensor<?xi64>
          } else {
            %inserted_25 = tensor.insert %35 into %arg10[%44] : tensor<?xi64>
            %47 = index.add %arg9, %idx1
            scf.yield %47, %inserted_25 : index, tensor<?xi64>
          }
          scf.yield %46#0, %46#1 : index, tensor<?xi64>
        }
        scf.yield %43#0, %43#1 : index, tensor<?xi64>
      }
      %37 = index.add %arg1, %idx1
      %38 = arith.index_cast %36#0 : index to i64
      %inserted = tensor.insert %38 into %arg3[%37] : tensor<?xi64>
      scf.yield %37, %36#0, %inserted, %36#1 : index, index, tensor<?xi64>, tensor<?xi64>
    }
    %18 = tensor.empty(%17#1) : tensor<?xi64>
    %19 = tensor.empty(%17#1) : tensor<?xf64>
    %20 = bufferization.alloc_tensor(%10) : tensor<?xf64>
    %21 = bufferization.alloc_tensor(%10) : tensor<?xi32>
    %22 = bufferization.alloc_tensor(%10) : tensor<?xi64>
    %23:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %18, %arg3 = %19, %arg4 = %20, %arg5 = %c1_i32, %arg6 = %21, %arg7 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %31 = arith.addi %arg5, %c1_i32 : i32
      %32 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %33 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %11[%32] : tensor<?xi64>
      %34 = arith.index_cast %extracted_19 : i64 to index
      %35:4 = scf.for %arg8 = %33 to %34 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_20 = tensor.extract %12[%arg8] : tensor<?xi64>
        %38 = arith.index_cast %extracted_20 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %extracted_21 = tensor.extract %11[%38] : tensor<?xi64>
        %40 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %11[%39] : tensor<?xi64>
        %41 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %13[%arg8] : tensor<?xf64>
        %42:4 = scf.for %arg13 = %40 to %41 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_24 = tensor.extract %12[%arg13] : tensor<?xi64>
          %43 = arith.index_cast %extracted_24 : i64 to index
          %extracted_25 = tensor.extract %13[%arg13] : tensor<?xf64>
          %44 = arith.mulf %extracted_23, %extracted_25 : f64
          %extracted_26 = tensor.extract %arg15[%43] : tensor<?xi32>
          %45 = arith.cmpi eq, %extracted_26, %31 : i32
          %46:4 = scf.if %45 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_27 = tensor.extract %arg14[%43] : tensor<?xf64>
            %47 = arith.addf %extracted_27, %44 : f64
            %inserted = tensor.insert %47 into %arg14[%43] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted = tensor.insert %31 into %arg15[%43] : tensor<?xi32>
            %inserted_27 = tensor.insert %extracted_24 into %arg17[%arg16] : tensor<?xi64>
            %47 = index.add %arg16, %idx1
            %inserted_28 = tensor.insert %44 into %arg14[%43] : tensor<?xf64>
            scf.yield %inserted, %47, %inserted_27, %inserted_28 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %46#3, %46#0, %46#1, %46#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %42#0, %42#1, %42#2, %42#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %36 = "ta.TensorSortOp"(%35#3, %idx0, %35#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %37:3 = scf.for %arg8 = %c0 to %35#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_20 = tensor.extract %36[%arg8] : tensor<?xi64>
        %38 = arith.index_cast %extracted_20 : i64 to index
        %extracted_21 = tensor.extract %35#0[%38] : tensor<?xf64>
        %inserted = tensor.insert %extracted_20 into %arg10[%arg9] : tensor<?xi64>
        %39 = index.add %arg9, %idx1
        %inserted_22 = tensor.insert %extracted_21 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %39, %inserted, %inserted_22 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %37#0, %37#1, %37#2, %35#0, %31, %35#1, %36 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %24 = index.add %9, %idx1
    %25 = tensor.empty(%24) : tensor<?xi64>
    %26:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %25) -> (index, index, tensor<?xi64>) {
      %31 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_19 : i64 to index
      %34 = arith.addi %arg0, %c1 : index
      %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_21 : i64 to index
      %37:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %32, %arg7 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %40 = arith.cmpi ult, %arg7, %36 : index
        %41 = arith.cmpi ult, %arg6, %33 : index
        %42 = arith.andi %41, %40 : i1
        scf.condition(%42) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
        %extracted_22 = tensor.extract %12[%arg7] : tensor<?xi64>
        %40 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %23#1[%arg6] : tensor<?xi64>
        %41 = arith.index_cast %extracted_23 : i64 to index
        %42 = arith.minui %41, %40 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %40 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = index.add %arg4, %idx1
          %52 = index.add %arg5, %idx1
          scf.yield %51, %52 : index, index
        } else {
          scf.yield %arg4, %arg5 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg6, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg7, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %38 = index.add %arg1, %idx1
      %39 = arith.index_cast %37#0 : index to i64
      %inserted = tensor.insert %39 into %arg3[%38] : tensor<?xi64>
      scf.yield %38, %37#0, %inserted : index, index, tensor<?xi64>
    }
    %27 = tensor.empty(%26#1) : tensor<?xi64>
    %28 = tensor.empty(%26#1) : tensor<?xf64>
    %29:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %27, %arg3 = %28) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %31 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_19 : i64 to index
      %34 = arith.addi %arg0, %c1 : index
      %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_21 : i64 to index
      %37:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %32, %arg9 = %35) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %38 = arith.cmpi ult, %arg9, %36 : index
        %39 = arith.cmpi ult, %arg8, %33 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
        %extracted_22 = tensor.extract %12[%arg9] : tensor<?xi64>
        %38 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %23#1[%arg8] : tensor<?xi64>
        %39 = arith.index_cast %extracted_23 : i64 to index
        %40 = arith.minui %39, %38 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %38 : index
        %43 = arith.andi %41, %42 : i1
        %44:4 = scf.if %43 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_24 = tensor.extract %23#2[%arg8] : tensor<?xf64>
          %extracted_25 = tensor.extract %13[%arg9] : tensor<?xf64>
          %49 = arith.mulf %extracted_24, %extracted_25 : f64
          %50 = arith.index_cast %40 : index to i64
          %inserted = tensor.insert %50 into %arg5[%arg4] : tensor<?xi64>
          %51 = index.add %arg4, %idx1
          %inserted_26 = tensor.insert %49 into %arg6[%arg4] : tensor<?xf64>
          %52 = index.add %arg7, %idx1
          scf.yield %51, %inserted, %inserted_26, %52 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg8, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg9, %47
        scf.yield %44#0, %44#1, %44#2, %44#3, %46, %48 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      scf.yield %37#0, %37#1, %37#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %alloc_18 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_18[%c0] : memref<1xf64>
    %dim = tensor.dim %29#2, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %29#2[%arg0] : tensor<?xf64>
      %31 = memref.load %alloc_18[%c0] : memref<1xf64>
      %32 = arith.addf %extracted, %31 : f64
      memref.store %32, %alloc_18[%c0] : memref<1xf64>
    }
    %30 = memref.load %alloc_18[%c0] : memref<1xf64>
    "ta.print"(%30) : (f64) -> ()
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
    %17:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %15, %arg4 = %16) -> (index, index, tensor<?xi64>, tensor<?xi64>) {
      %31 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %11[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_19 : i64 to index
      %34 = index.add %arg1, %idx1
      %35 = arith.index_cast %34 : index to i64
      %36:2 = scf.for %arg5 = %32 to %33 step %c1 iter_args(%arg6 = %arg2, %arg7 = %arg4) -> (index, tensor<?xi64>) {
        %extracted_20 = tensor.extract %12[%arg5] : tensor<?xi64>
        %39 = arith.index_cast %extracted_20 : i64 to index
        %40 = arith.addi %39, %c1 : index
        %extracted_21 = tensor.extract %11[%39] : tensor<?xi64>
        %41 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %11[%40] : tensor<?xi64>
        %42 = arith.index_cast %extracted_22 : i64 to index
        %43:2 = scf.for %arg8 = %41 to %42 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (index, tensor<?xi64>) {
          %extracted_23 = tensor.extract %12[%arg8] : tensor<?xi64>
          %44 = arith.index_cast %extracted_23 : i64 to index
          %extracted_24 = tensor.extract %arg10[%44] : tensor<?xi64>
          %45 = arith.cmpi eq, %35, %extracted_24 : i64
          %46:2 = scf.if %45 -> (index, tensor<?xi64>) {
            scf.yield %arg9, %arg10 : index, tensor<?xi64>
          } else {
            %inserted_25 = tensor.insert %35 into %arg10[%44] : tensor<?xi64>
            %47 = index.add %arg9, %idx1
            scf.yield %47, %inserted_25 : index, tensor<?xi64>
          }
          scf.yield %46#0, %46#1 : index, tensor<?xi64>
        }
        scf.yield %43#0, %43#1 : index, tensor<?xi64>
      }
      %37 = index.add %arg1, %idx1
      %38 = arith.index_cast %36#0 : index to i64
      %inserted = tensor.insert %38 into %arg3[%37] : tensor<?xi64>
      scf.yield %37, %36#0, %inserted, %36#1 : index, index, tensor<?xi64>, tensor<?xi64>
    }
    %18 = tensor.empty(%17#1) : tensor<?xi64>
    %19 = tensor.empty(%17#1) : tensor<?xf64>
    %20 = bufferization.alloc_tensor(%10) : tensor<?xf64>
    %21 = bufferization.alloc_tensor(%10) : tensor<?xi32>
    %22 = bufferization.alloc_tensor(%10) : tensor<?xi64>
    %23:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %18, %arg3 = %19, %arg4 = %20, %arg5 = %c1_i32, %arg6 = %21, %arg7 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %31 = arith.addi %arg5, %c1_i32 : i32
      %32 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %33 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %11[%32] : tensor<?xi64>
      %34 = arith.index_cast %extracted_19 : i64 to index
      %35:4 = scf.for %arg8 = %33 to %34 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_20 = tensor.extract %12[%arg8] : tensor<?xi64>
        %38 = arith.index_cast %extracted_20 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %extracted_21 = tensor.extract %11[%38] : tensor<?xi64>
        %40 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %11[%39] : tensor<?xi64>
        %41 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %13[%arg8] : tensor<?xf64>
        %42:4 = scf.for %arg13 = %40 to %41 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_24 = tensor.extract %12[%arg13] : tensor<?xi64>
          %43 = arith.index_cast %extracted_24 : i64 to index
          %extracted_25 = tensor.extract %13[%arg13] : tensor<?xf64>
          %44 = arith.mulf %extracted_23, %extracted_25 : f64
          %extracted_26 = tensor.extract %arg15[%43] : tensor<?xi32>
          %45 = arith.cmpi eq, %extracted_26, %31 : i32
          %46:4 = scf.if %45 -> (tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>) {
            %extracted_27 = tensor.extract %arg14[%43] : tensor<?xf64>
            %47 = arith.addf %extracted_27, %44 : f64
            %inserted = tensor.insert %47 into %arg14[%43] : tensor<?xf64>
            scf.yield %arg15, %arg16, %arg17, %inserted : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          } else {
            %inserted = tensor.insert %31 into %arg15[%43] : tensor<?xi32>
            %inserted_27 = tensor.insert %extracted_24 into %arg17[%arg16] : tensor<?xi64>
            %47 = index.add %arg16, %idx1
            %inserted_28 = tensor.insert %44 into %arg14[%43] : tensor<?xf64>
            scf.yield %inserted, %47, %inserted_27, %inserted_28 : tensor<?xi32>, index, tensor<?xi64>, tensor<?xf64>
          }
          scf.yield %46#3, %46#0, %46#1, %46#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %42#0, %42#1, %42#2, %42#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %36 = "ta.TensorSortOp"(%35#3, %idx0, %35#2) : (tensor<?xi64>, index, index) -> tensor<?xi64>
      %37:3 = scf.for %arg8 = %c0 to %35#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_20 = tensor.extract %36[%arg8] : tensor<?xi64>
        %38 = arith.index_cast %extracted_20 : i64 to index
        %extracted_21 = tensor.extract %35#0[%38] : tensor<?xf64>
        %inserted = tensor.insert %extracted_20 into %arg10[%arg9] : tensor<?xi64>
        %39 = index.add %arg9, %idx1
        %inserted_22 = tensor.insert %extracted_21 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %39, %inserted, %inserted_22 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %37#0, %37#1, %37#2, %35#0, %31, %35#1, %36 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %24 = index.add %9, %idx1
    %25 = tensor.empty(%24) : tensor<?xi64>
    %26:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %25) -> (index, index, tensor<?xi64>) {
      %31 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_19 : i64 to index
      %34 = arith.addi %arg0, %c1 : index
      %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_21 : i64 to index
      %37:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %32, %arg7 = %35) : (index, index, index, index) -> (index, index, index, index) {
        %40 = arith.cmpi ult, %arg7, %36 : index
        %41 = arith.cmpi ult, %arg6, %33 : index
        %42 = arith.andi %41, %40 : i1
        scf.condition(%42) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
        %extracted_22 = tensor.extract %12[%arg7] : tensor<?xi64>
        %40 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %23#1[%arg6] : tensor<?xi64>
        %41 = arith.index_cast %extracted_23 : i64 to index
        %42 = arith.minui %41, %40 : index
        %43 = arith.cmpi eq, %42, %41 : index
        %44 = arith.cmpi eq, %42, %40 : index
        %45 = arith.andi %43, %44 : i1
        %46:2 = scf.if %45 -> (index, index) {
          %51 = index.add %arg4, %idx1
          %52 = index.add %arg5, %idx1
          scf.yield %51, %52 : index, index
        } else {
          scf.yield %arg4, %arg5 : index, index
        }
        %47 = index.castu %43 : i1 to index
        %48 = index.add %arg6, %47
        %49 = index.castu %44 : i1 to index
        %50 = index.add %arg7, %49
        scf.yield %46#0, %46#1, %48, %50 : index, index, index, index
      }
      %38 = index.add %arg1, %idx1
      %39 = arith.index_cast %37#0 : index to i64
      %inserted = tensor.insert %39 into %arg3[%38] : tensor<?xi64>
      scf.yield %38, %37#0, %inserted : index, index, tensor<?xi64>
    }
    %27 = tensor.empty(%26#1) : tensor<?xi64>
    %28 = tensor.empty(%26#1) : tensor<?xf64>
    %29:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %27, %arg3 = %28) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %31 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %17#2[%arg0] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_19 = tensor.extract %17#2[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_19 : i64 to index
      %34 = arith.addi %arg0, %c1 : index
      %extracted_20 = tensor.extract %11[%arg0] : tensor<?xi64>
      %35 = arith.index_cast %extracted_20 : i64 to index
      %extracted_21 = tensor.extract %11[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_21 : i64 to index
      %37:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %32, %arg9 = %35) : (index, tensor<?xi64>, tensor<?xf64>, index, index, index) -> (index, tensor<?xi64>, tensor<?xf64>, index, index, index) {
        %38 = arith.cmpi ult, %arg9, %36 : index
        %39 = arith.cmpi ult, %arg8, %33 : index
        %40 = arith.andi %39, %38 : i1
        scf.condition(%40) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: index, %arg8: index, %arg9: index):
        %extracted_22 = tensor.extract %12[%arg9] : tensor<?xi64>
        %38 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %23#1[%arg8] : tensor<?xi64>
        %39 = arith.index_cast %extracted_23 : i64 to index
        %40 = arith.minui %39, %38 : index
        %41 = arith.cmpi eq, %40, %39 : index
        %42 = arith.cmpi eq, %40, %38 : index
        %43 = arith.andi %41, %42 : i1
        %44:4 = scf.if %43 -> (index, tensor<?xi64>, tensor<?xf64>, index) {
          %extracted_24 = tensor.extract %23#2[%arg8] : tensor<?xf64>
          %extracted_25 = tensor.extract %13[%arg9] : tensor<?xf64>
          %49 = arith.mulf %extracted_24, %extracted_25 : f64
          %50 = arith.index_cast %40 : index to i64
          %inserted = tensor.insert %50 into %arg5[%arg4] : tensor<?xi64>
          %51 = index.add %arg4, %idx1
          %inserted_26 = tensor.insert %49 into %arg6[%arg4] : tensor<?xf64>
          %52 = index.add %arg7, %idx1
          scf.yield %51, %inserted, %inserted_26, %52 : index, tensor<?xi64>, tensor<?xf64>, index
        } else {
          scf.yield %arg4, %arg5, %arg6, %arg7 : index, tensor<?xi64>, tensor<?xf64>, index
        }
        %45 = index.castu %41 : i1 to index
        %46 = index.add %arg8, %45
        %47 = index.castu %42 : i1 to index
        %48 = index.add %arg9, %47
        scf.yield %44#0, %44#1, %44#2, %44#3, %46, %48 : index, tensor<?xi64>, tensor<?xf64>, index, index, index
      }
      scf.yield %37#0, %37#1, %37#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %alloc_18 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_18[%c0] : memref<1xf64>
    %dim = tensor.dim %29#2, %c0 : tensor<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %extracted = tensor.extract %29#2[%arg0] : tensor<?xf64>
      %31 = memref.load %alloc_18[%c0] : memref<1xf64>
      %32 = arith.addf %extracted, %31 : f64
      memref.store %32, %alloc_18[%c0] : memref<1xf64>
    }
    %30 = memref.load %alloc_18[%c0] : memref<1xf64>
    "ta.print"(%30) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %alloc_18, %arg4 = %alloc_19) -> (index, index, memref<?xi64>, memref<?xi64>) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = index.add %arg1, %idx1
      %24 = arith.index_cast %23 : index to i64
      %25:2 = scf.for %arg5 = %20 to %22 step %c1 iter_args(%arg6 = %arg2, %arg7 = %arg4) -> (index, memref<?xi64>) {
        %28 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = arith.addi %29, %c1 : index
        %31 = memref.load %alloc_8[%29] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_8[%30] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35:2 = scf.for %arg8 = %32 to %34 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (index, memref<?xi64>) {
          %36 = memref.load %alloc_10[%arg8] : memref<?xi64>
          %37 = arith.index_cast %36 : i64 to index
          %38 = memref.load %arg10[%37] : memref<?xi64>
          %39 = arith.cmpi eq, %24, %38 : i64
          %40:2 = scf.if %39 -> (index, memref<?xi64>) {
            scf.yield %arg9, %arg10 : index, memref<?xi64>
          } else {
            memref.store %24, %arg10[%37] : memref<?xi64>
            %41 = index.add %arg9, %idx1
            scf.yield %41, %arg10 : index, memref<?xi64>
          }
          scf.yield %40#0, %40#1 : index, memref<?xi64>
        }
        scf.yield %35#0, %35#1 : index, memref<?xi64>
      }
      %26 = index.add %arg1, %idx1
      %27 = arith.index_cast %25#0 : index to i64
      memref.store %27, %arg3[%26] : memref<?xi64>
      scf.yield %26, %25#0, %arg3, %25#1 : index, index, memref<?xi64>, memref<?xi64>
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_20, %arg3 = %alloc_21, %arg4 = %alloc_22, %arg5 = %c1_i32, %arg6 = %alloc_23, %arg7 = %alloc_24) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
      %18 = arith.addi %arg5, %c1_i32 : i32
      %19 = arith.addi %arg0, %c1 : index
      %20 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%19] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24:4 = scf.for %arg8 = %21 to %23 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %26 = memref.load %alloc_10[%arg8] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %alloc_16[%arg8] : memref<?xf64>
        %34:4 = scf.for %arg13 = %30 to %32 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
          %35 = memref.load %alloc_10[%arg13] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_16[%arg13] : memref<?xf64>
          %38 = arith.mulf %33, %37 : f64
          %39 = memref.load %arg15[%36] : memref<?xi32>
          %40 = arith.cmpi eq, %39, %18 : i32
          %41:4 = scf.if %40 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
            %42 = memref.load %arg14[%36] : memref<?xf64>
            %43 = arith.addf %42, %38 : f64
            memref.store %43, %arg14[%36] : memref<?xf64>
            scf.yield %arg15, %arg16, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          } else {
            memref.store %18, %arg15[%36] : memref<?xi32>
            memref.store %35, %arg17[%arg16] : memref<?xi64>
            %42 = index.add %arg16, %idx1
            memref.store %38, %arg14[%36] : memref<?xf64>
            scf.yield %arg15, %42, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
          }
          scf.yield %41#3, %41#0, %41#1, %41#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        }
        scf.yield %34#0, %34#1, %34#2, %34#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      "ta.TensorSortOp"(%24#3, %idx0, %24#2) : (memref<?xi64>, index, index) -> ()
      %25:3 = scf.for %arg8 = %c0 to %24#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
        %26 = memref.load %24#3[%arg8] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = memref.load %24#0[%27] : memref<?xf64>
        memref.store %26, %arg10[%arg9] : memref<?xi64>
        %29 = index.add %arg9, %idx1
        memref.store %28, %arg11[%arg9] : memref<?xf64>
        scf.yield %29, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
      }
      scf.yield %25#0, %25#1, %25#2, %24#0, %18, %24#1, %24#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
    }
    %14 = index.add %9, %idx1
    %alloc_25 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
    %15:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %alloc_25) -> (index, index, memref<?xi64>) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %12#2[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %12#2[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %20, %arg7 = %25) : (index, index, index, index) -> (index, index, index, index) {
        %31 = arith.cmpi ult, %arg7, %27 : index
        %32 = arith.cmpi ult, %arg6, %22 : index
        %33 = arith.andi %32, %31 : i1
        scf.condition(%33) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
        %31 = memref.load %alloc_10[%arg7] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = memref.load %13#1[%arg6] : memref<?xi64>
        %34 = arith.index_cast %33 : i64 to index
        %35 = arith.minui %34, %32 : index
        %36 = arith.cmpi eq, %35, %34 : index
        %37 = arith.cmpi eq, %35, %32 : index
        %38 = arith.andi %36, %37 : i1
        %39:2 = scf.if %38 -> (index, index) {
          %44 = index.add %arg4, %idx1
          %45 = index.add %arg5, %idx1
          scf.yield %44, %45 : index, index
        } else {
          scf.yield %arg4, %arg5 : index, index
        }
        %40 = index.castu %36 : i1 to index
        %41 = index.add %arg6, %40
        %42 = index.castu %37 : i1 to index
        %43 = index.add %arg7, %42
        scf.yield %39#0, %39#1, %41, %43 : index, index, index, index
      }
      %29 = index.add %arg1, %idx1
      %30 = arith.index_cast %28#0 : index to i64
      memref.store %30, %arg3[%29] : memref<?xi64>
      scf.yield %29, %28#0, %arg3 : index, index, memref<?xi64>
    }
    %alloc_26 = memref.alloc(%15#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_27 = memref.alloc(%15#1) {alignment = 64 : i64} : memref<?xf64>
    %16:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_26, %arg3 = %alloc_27) -> (index, memref<?xi64>, memref<?xf64>) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %12#2[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %12#2[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.addi %arg0, %c1 : index
      %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26 = memref.load %alloc_8[%23] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %20, %arg9 = %25) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
        %29 = arith.cmpi ult, %arg9, %27 : index
        %30 = arith.cmpi ult, %arg8, %22 : index
        %31 = arith.andi %30, %29 : i1
        scf.condition(%31) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, memref<?xi64>, memref<?xf64>, index, index, index
      } do {
      ^bb0(%arg4: index, %arg5: memref<?xi64>, %arg6: memref<?xf64>, %arg7: index, %arg8: index, %arg9: index):
        %29 = memref.load %alloc_10[%arg9] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %13#1[%arg8] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = arith.minui %32, %30 : index
        %34 = arith.cmpi eq, %33, %32 : index
        %35 = arith.cmpi eq, %33, %30 : index
        %36 = arith.andi %34, %35 : i1
        %37:4 = scf.if %36 -> (index, memref<?xi64>, memref<?xf64>, index) {
          %42 = memref.load %13#2[%arg8] : memref<?xf64>
          %43 = memref.load %alloc_16[%arg9] : memref<?xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = arith.index_cast %33 : index to i64
          memref.store %45, %arg5[%arg4] : memref<?xi64>
          %46 = index.add %arg4, %idx1
          memref.store %44, %arg6[%arg4] : memref<?xf64>
          %47 = index.add %arg7, %idx1
          scf.yield %46, %arg5, %arg6, %47 : index, memref<?xi64>, memref<?xf64>, index
        } else {
          scf.yield %arg4, %arg5, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>, index
        }
        %38 = index.castu %34 : i1 to index
        %39 = index.add %arg8, %38
        %40 = index.castu %35 : i1 to index
        %41 = index.add %arg9, %40
        scf.yield %37#0, %37#1, %37#2, %37#3, %39, %41 : index, memref<?xi64>, memref<?xf64>, index, index, index
      }
      scf.yield %28#0, %28#1, %28#2 : index, memref<?xi64>, memref<?xf64>
    }
    %alloc_28 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_28[%c0] : memref<1xf64>
    %dim = memref.dim %16#2, %c0 : memref<?xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      %18 = memref.load %16#2[%arg0] : memref<?xf64>
      %19 = memref.load %alloc_28[%c0] : memref<1xf64>
      %20 = arith.addf %18, %19 : f64
      memref.store %20, %alloc_28[%c0] : memref<1xf64>
    }
    %17 = memref.load %alloc_28[%c0] : memref<1xf64>
    "ta.print"(%17) : (f64) -> ()
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
  %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
  %12:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %alloc_18, %arg4 = %alloc_19) -> (index, index, memref<?xi64>, memref<?xi64>) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_8[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = index.add %arg1, %idx1
    %24 = arith.index_cast %23 : index to i64
    %25:2 = scf.for %arg5 = %20 to %22 step %c1 iter_args(%arg6 = %arg2, %arg7 = %arg4) -> (index, memref<?xi64>) {
      %28 = memref.load %alloc_10[%arg5] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = arith.addi %29, %c1 : index
      %31 = memref.load %alloc_8[%29] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%30] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35:2 = scf.for %arg8 = %32 to %34 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (index, memref<?xi64>) {
        %36 = memref.load %alloc_10[%arg8] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %arg10[%37] : memref<?xi64>
        %39 = arith.cmpi eq, %24, %38 : i64
        %40:2 = scf.if %39 -> (index, memref<?xi64>) {
          scf.yield %arg9, %arg10 : index, memref<?xi64>
        } else {
          memref.store %24, %arg10[%37] : memref<?xi64>
          %41 = index.add %arg9, %idx1
          scf.yield %41, %arg10 : index, memref<?xi64>
        }
        scf.yield %40#0, %40#1 : index, memref<?xi64>
      }
      scf.yield %35#0, %35#1 : index, memref<?xi64>
    }
    %26 = index.add %arg1, %idx1
    %27 = arith.index_cast %25#0 : index to i64
    memref.store %27, %arg3[%26] : memref<?xi64>
    scf.yield %26, %25#0, %arg3, %25#1 : index, index, memref<?xi64>, memref<?xi64>
  }
  %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
  %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
  %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
  %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
  %13:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_20, %arg3 = %alloc_21, %arg4 = %alloc_22, %arg5 = %c1_i32, %arg6 = %alloc_23, %arg7 = %alloc_24) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
    %18 = arith.addi %arg5, %c1_i32 : i32
    %19 = arith.addi %arg0, %c1 : index
    %20 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = memref.load %alloc_8[%19] : memref<?xi64>
    %23 = arith.index_cast %22 : i64 to index
    %24:4 = scf.for %arg8 = %21 to %23 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %26 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %27, %c1 : index
      %29 = memref.load %alloc_8[%27] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_8[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_16[%arg8] : memref<?xf64>
      %34:4 = scf.for %arg13 = %30 to %32 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %35 = memref.load %alloc_10[%arg13] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_16[%arg13] : memref<?xf64>
        %38 = arith.mulf %33, %37 : f64
        %39 = memref.load %arg15[%36] : memref<?xi32>
        %40 = arith.cmpi eq, %39, %18 : i32
        %41:4 = scf.if %40 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %42 = memref.load %arg14[%36] : memref<?xf64>
          %43 = arith.addf %42, %38 : f64
          memref.store %43, %arg14[%36] : memref<?xf64>
          scf.yield %arg15, %arg16, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %18, %arg15[%36] : memref<?xi32>
          memref.store %35, %arg17[%arg16] : memref<?xi64>
          %42 = index.add %arg16, %idx1
          memref.store %38, %arg14[%36] : memref<?xf64>
          scf.yield %arg15, %42, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %41#3, %41#0, %41#1, %41#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %34#0, %34#1, %34#2, %34#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    "ta.TensorSortOp"(%24#3, %idx0, %24#2) : (memref<?xi64>, index, index) -> ()
    %25:3 = scf.for %arg8 = %c0 to %24#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %26 = memref.load %24#3[%arg8] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %24#0[%27] : memref<?xf64>
      memref.store %26, %arg10[%arg9] : memref<?xi64>
      %29 = index.add %arg9, %idx1
      memref.store %28, %arg11[%arg9] : memref<?xf64>
      scf.yield %29, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %25#0, %25#1, %25#2, %24#0, %18, %24#1, %24#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
  }
  %14 = index.add %9, %idx1
  %alloc_25 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
  %15:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %alloc_25) -> (index, index, memref<?xi64>) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %12#2[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %12#2[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_8[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %20, %arg7 = %25) : (index, index, index, index) -> (index, index, index, index) {
      %31 = arith.cmpi ult, %arg7, %27 : index
      %32 = arith.cmpi ult, %arg6, %22 : index
      %33 = arith.andi %32, %31 : i1
      scf.condition(%33) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %31 = memref.load %alloc_10[%arg7] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %13#1[%arg6] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = arith.minui %34, %32 : index
      %36 = arith.cmpi eq, %35, %34 : index
      %37 = arith.cmpi eq, %35, %32 : index
      %38 = arith.andi %36, %37 : i1
      %39:2 = scf.if %38 -> (index, index) {
        %44 = index.add %arg4, %idx1
        %45 = index.add %arg5, %idx1
        scf.yield %44, %45 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %40 = index.castu %36 : i1 to index
      %41 = index.add %arg6, %40
      %42 = index.castu %37 : i1 to index
      %43 = index.add %arg7, %42
      scf.yield %39#0, %39#1, %41, %43 : index, index, index, index
    }
    %29 = index.add %arg1, %idx1
    %30 = arith.index_cast %28#0 : index to i64
    memref.store %30, %arg3[%29] : memref<?xi64>
    scf.yield %29, %28#0, %arg3 : index, index, memref<?xi64>
  }
  %alloc_26 = memref.alloc(%15#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_27 = memref.alloc(%15#1) {alignment = 64 : i64} : memref<?xf64>
  %16:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_26, %arg3 = %alloc_27) -> (index, memref<?xi64>, memref<?xf64>) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %12#2[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %12#2[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_8[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %20, %arg9 = %25) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
      %29 = arith.cmpi ult, %arg9, %27 : index
      %30 = arith.cmpi ult, %arg8, %22 : index
      %31 = arith.andi %30, %29 : i1
      scf.condition(%31) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, memref<?xi64>, memref<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: memref<?xi64>, %arg6: memref<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %29 = memref.load %alloc_10[%arg9] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %13#1[%arg8] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = arith.minui %32, %30 : index
      %34 = arith.cmpi eq, %33, %32 : index
      %35 = arith.cmpi eq, %33, %30 : index
      %36 = arith.andi %34, %35 : i1
      %37:4 = scf.if %36 -> (index, memref<?xi64>, memref<?xf64>, index) {
        %42 = memref.load %13#2[%arg8] : memref<?xf64>
        %43 = memref.load %alloc_16[%arg9] : memref<?xf64>
        %44 = arith.mulf %42, %43 : f64
        %45 = arith.index_cast %33 : index to i64
        memref.store %45, %arg5[%arg4] : memref<?xi64>
        %46 = index.add %arg4, %idx1
        memref.store %44, %arg6[%arg4] : memref<?xf64>
        %47 = index.add %arg7, %idx1
        scf.yield %46, %arg5, %arg6, %47 : index, memref<?xi64>, memref<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>, index
      }
      %38 = index.castu %34 : i1 to index
      %39 = index.add %arg8, %38
      %40 = index.castu %35 : i1 to index
      %41 = index.add %arg9, %40
      scf.yield %37#0, %37#1, %37#2, %37#3, %39, %41 : index, memref<?xi64>, memref<?xf64>, index, index, index
    }
    scf.yield %28#0, %28#1, %28#2 : index, memref<?xi64>, memref<?xf64>
  }
  %alloc_28 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_28[%c0] : memref<1xf64>
  %dim = memref.dim %16#2, %c0 : memref<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %18 = memref.load %16#2[%arg0] : memref<?xf64>
    %19 = memref.load %alloc_28[%c0] : memref<1xf64>
    %20 = arith.addf %18, %19 : f64
    memref.store %20, %alloc_28[%c0] : memref<1xf64>
  }
  %17 = memref.load %alloc_28[%c0] : memref<1xf64>
  "ta.print"(%17) : (f64) -> ()
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
  %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
  %12:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %alloc_18, %arg4 = %alloc_19) -> (index, index, memref<?xi64>, memref<?xi64>) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_8[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = index.add %arg1, %idx1
    %24 = arith.index_cast %23 : index to i64
    %25:2 = scf.for %arg5 = %20 to %22 step %c1 iter_args(%arg6 = %arg2, %arg7 = %arg4) -> (index, memref<?xi64>) {
      %28 = memref.load %alloc_10[%arg5] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = arith.addi %29, %c1 : index
      %31 = memref.load %alloc_8[%29] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%30] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35:2 = scf.for %arg8 = %32 to %34 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (index, memref<?xi64>) {
        %36 = memref.load %alloc_10[%arg8] : memref<?xi64>
        %37 = arith.index_cast %36 : i64 to index
        %38 = memref.load %arg10[%37] : memref<?xi64>
        %39 = arith.cmpi eq, %24, %38 : i64
        %40:2 = scf.if %39 -> (index, memref<?xi64>) {
          scf.yield %arg9, %arg10 : index, memref<?xi64>
        } else {
          memref.store %24, %arg10[%37] : memref<?xi64>
          %41 = index.add %arg9, %idx1
          scf.yield %41, %arg10 : index, memref<?xi64>
        }
        scf.yield %40#0, %40#1 : index, memref<?xi64>
      }
      scf.yield %35#0, %35#1 : index, memref<?xi64>
    }
    %26 = index.add %arg1, %idx1
    %27 = arith.index_cast %25#0 : index to i64
    memref.store %27, %arg3[%26] : memref<?xi64>
    scf.yield %26, %25#0, %arg3, %25#1 : index, index, memref<?xi64>, memref<?xi64>
  }
  %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
  %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
  %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
  %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
  %13:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_20, %arg3 = %alloc_21, %arg4 = %alloc_22, %arg5 = %c1_i32, %arg6 = %alloc_23, %arg7 = %alloc_24) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
    %18 = arith.addi %arg5, %c1_i32 : i32
    %19 = arith.addi %arg0, %c1 : index
    %20 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = memref.load %alloc_8[%19] : memref<?xi64>
    %23 = arith.index_cast %22 : i64 to index
    %24:4 = scf.for %arg8 = %21 to %23 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %26 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %27, %c1 : index
      %29 = memref.load %alloc_8[%27] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_8[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_16[%arg8] : memref<?xf64>
      %34:4 = scf.for %arg13 = %30 to %32 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %35 = memref.load %alloc_10[%arg13] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_16[%arg13] : memref<?xf64>
        %38 = arith.mulf %33, %37 : f64
        %39 = memref.load %arg15[%36] : memref<?xi32>
        %40 = arith.cmpi eq, %39, %18 : i32
        %41:4 = scf.if %40 -> (memref<?xi32>, index, memref<?xi64>, memref<?xf64>) {
          %42 = memref.load %arg14[%36] : memref<?xf64>
          %43 = arith.addf %42, %38 : f64
          memref.store %43, %arg14[%36] : memref<?xf64>
          scf.yield %arg15, %arg16, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        } else {
          memref.store %18, %arg15[%36] : memref<?xi32>
          memref.store %35, %arg17[%arg16] : memref<?xi64>
          %42 = index.add %arg16, %idx1
          memref.store %38, %arg14[%36] : memref<?xf64>
          scf.yield %arg15, %42, %arg17, %arg14 : memref<?xi32>, index, memref<?xi64>, memref<?xf64>
        }
        scf.yield %41#3, %41#0, %41#1, %41#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %34#0, %34#1, %34#2, %34#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    "ta.TensorSortOp"(%24#3, %idx0, %24#2) : (memref<?xi64>, index, index) -> ()
    %25:3 = scf.for %arg8 = %c0 to %24#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %26 = memref.load %24#3[%arg8] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %24#0[%27] : memref<?xf64>
      memref.store %26, %arg10[%arg9] : memref<?xi64>
      %29 = index.add %arg9, %idx1
      memref.store %28, %arg11[%arg9] : memref<?xf64>
      scf.yield %29, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %25#0, %25#1, %25#2, %24#0, %18, %24#1, %24#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
  }
  %14 = index.add %9, %idx1
  %alloc_25 = memref.alloc(%14) {alignment = 64 : i64} : memref<?xi64>
  %15:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0, %arg3 = %alloc_25) -> (index, index, memref<?xi64>) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %12#2[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %12#2[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_8[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28:4 = scf.while (%arg4 = %arg2, %arg5 = %idx0, %arg6 = %20, %arg7 = %25) : (index, index, index, index) -> (index, index, index, index) {
      %31 = arith.cmpi ult, %arg7, %27 : index
      %32 = arith.cmpi ult, %arg6, %22 : index
      %33 = arith.andi %32, %31 : i1
      scf.condition(%33) %arg4, %arg5, %arg6, %arg7 : index, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: index):
      %31 = memref.load %alloc_10[%arg7] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %13#1[%arg6] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35 = arith.minui %34, %32 : index
      %36 = arith.cmpi eq, %35, %34 : index
      %37 = arith.cmpi eq, %35, %32 : index
      %38 = arith.andi %36, %37 : i1
      %39:2 = scf.if %38 -> (index, index) {
        %44 = index.add %arg4, %idx1
        %45 = index.add %arg5, %idx1
        scf.yield %44, %45 : index, index
      } else {
        scf.yield %arg4, %arg5 : index, index
      }
      %40 = index.castu %36 : i1 to index
      %41 = index.add %arg6, %40
      %42 = index.castu %37 : i1 to index
      %43 = index.add %arg7, %42
      scf.yield %39#0, %39#1, %41, %43 : index, index, index, index
    }
    %29 = index.add %arg1, %idx1
    %30 = arith.index_cast %28#0 : index to i64
    memref.store %30, %arg3[%29] : memref<?xi64>
    scf.yield %29, %28#0, %arg3 : index, index, memref<?xi64>
  }
  %alloc_26 = memref.alloc(%15#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_27 = memref.alloc(%15#1) {alignment = 64 : i64} : memref<?xf64>
  %16:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_26, %arg3 = %alloc_27) -> (index, memref<?xi64>, memref<?xf64>) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %12#2[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %12#2[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_8[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28:6 = scf.while (%arg4 = %arg1, %arg5 = %arg2, %arg6 = %arg3, %arg7 = %idx0, %arg8 = %20, %arg9 = %25) : (index, memref<?xi64>, memref<?xf64>, index, index, index) -> (index, memref<?xi64>, memref<?xf64>, index, index, index) {
      %29 = arith.cmpi ult, %arg9, %27 : index
      %30 = arith.cmpi ult, %arg8, %22 : index
      %31 = arith.andi %30, %29 : i1
      scf.condition(%31) %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : index, memref<?xi64>, memref<?xf64>, index, index, index
    } do {
    ^bb0(%arg4: index, %arg5: memref<?xi64>, %arg6: memref<?xf64>, %arg7: index, %arg8: index, %arg9: index):
      %29 = memref.load %alloc_10[%arg9] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %13#1[%arg8] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = arith.minui %32, %30 : index
      %34 = arith.cmpi eq, %33, %32 : index
      %35 = arith.cmpi eq, %33, %30 : index
      %36 = arith.andi %34, %35 : i1
      %37:4 = scf.if %36 -> (index, memref<?xi64>, memref<?xf64>, index) {
        %42 = memref.load %13#2[%arg8] : memref<?xf64>
        %43 = memref.load %alloc_16[%arg9] : memref<?xf64>
        %44 = arith.mulf %42, %43 : f64
        %45 = arith.index_cast %33 : index to i64
        memref.store %45, %arg5[%arg4] : memref<?xi64>
        %46 = index.add %arg4, %idx1
        memref.store %44, %arg6[%arg4] : memref<?xf64>
        %47 = index.add %arg7, %idx1
        scf.yield %46, %arg5, %arg6, %47 : index, memref<?xi64>, memref<?xf64>, index
      } else {
        scf.yield %arg4, %arg5, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>, index
      }
      %38 = index.castu %34 : i1 to index
      %39 = index.add %arg8, %38
      %40 = index.castu %35 : i1 to index
      %41 = index.add %arg9, %40
      scf.yield %37#0, %37#1, %37#2, %37#3, %39, %41 : index, memref<?xi64>, memref<?xf64>, index, index, index
    }
    scf.yield %28#0, %28#1, %28#2 : index, memref<?xi64>, memref<?xf64>
  }
  %alloc_28 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_28[%c0] : memref<1xf64>
  %dim = memref.dim %16#2, %c0 : memref<?xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %18 = memref.load %16#2[%arg0] : memref<?xf64>
    %19 = memref.load %alloc_28[%c0] : memref<1xf64>
    %20 = arith.addf %18, %19 : f64
    memref.store %20, %alloc_28[%c0] : memref<1xf64>
  }
  %17 = memref.load %alloc_28[%c0] : memref<1xf64>
  call @printF64(%17) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %27 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = arith.addi %28, %c1 : index
        %30 = memref.load %alloc_8[%28] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_8[%29] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = scf.for %arg5 = %31 to %33 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %35 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %36 = arith.index_cast %35 : i64 to index
          %37 = memref.load %alloc_19[%36] : memref<?xi64>
          %38 = arith.cmpi eq, %23, %37 : i64
          %39 = scf.if %38 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%36] : memref<?xi64>
            %40 = index.add %arg6, %idx1
            scf.yield %40 : index
          }
          scf.yield %39 : index
        }
        scf.yield %34 : index
      }
      %25 = index.add %arg1, %idx1
      %26 = arith.index_cast %24 : index to i64
      memref.store %26, %alloc_18[%25] : memref<?xi64>
      scf.yield %25, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = arith.addi %arg0, %c1 : index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%22] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %29 = arith.cmpi ult, %arg6, %26 : index
        %30 = arith.cmpi ult, %arg5, %21 : index
        %31 = arith.andi %30, %29 : i1
        scf.condition(%31) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %29 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = arith.minui %32, %30 : index
        %34 = arith.cmpi eq, %33, %32 : index
        %35 = arith.cmpi eq, %33, %30 : index
        %36 = arith.andi %34, %35 : i1
        %37:2 = scf.if %36 -> (index, index) {
          %42 = index.add %arg3, %idx1
          %43 = index.add %arg4, %idx1
          scf.yield %42, %43 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %38 = index.castu %34 : i1 to index
        %39 = index.add %arg5, %38
        %40 = index.castu %35 : i1 to index
        %41 = index.add %arg6, %40
        scf.yield %37#0, %37#1, %39, %41 : index, index, index, index
      }
      %28 = index.add %arg1, %idx1
      scf.yield %28, %27#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = arith.addi %arg0, %c1 : index
      %23 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %24 = arith.index_cast %23 : i64 to index
      %25 = memref.load %alloc_8[%22] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %24) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg5, %26 : index
        %29 = arith.cmpi ult, %arg4, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %28 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %42 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %43 = arith.mulf %41, %42 : f64
          %44 = index.add %arg2, %idx1
          memref.store %43, %alloc_25[%arg2] : memref<?xf64>
          %45 = index.add %arg3, %idx1
          scf.yield %44, %45 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg4, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg5, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      scf.yield %27#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_19[%35] : memref<?xi64>
          %37 = arith.cmpi eq, %23, %36 : i64
          %38 = scf.if %37 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%35] : memref<?xi64>
            %39 = index.add %arg6, %idx1
            scf.yield %39 : index
          }
          scf.yield %38 : index
        }
        scf.yield %33 : index
      }
      %25 = arith.index_cast %24 : index to i64
      memref.store %25, %alloc_18[%22] : memref<?xi64>
      scf.yield %22, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg6, %25 : index
        %29 = arith.cmpi ult, %arg5, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = index.add %arg3, %idx1
          %42 = index.add %arg4, %idx1
          scf.yield %41, %42 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg5, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg6, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      %27 = index.add %arg1, %idx1
      scf.yield %27, %26#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %27 = arith.cmpi ult, %arg5, %25 : index
        %28 = arith.cmpi ult, %arg4, %21 : index
        %29 = arith.andi %28, %27 : i1
        scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = arith.minui %30, %28 : index
        %32 = arith.cmpi eq, %31, %30 : index
        %33 = arith.cmpi eq, %31, %28 : index
        %34 = arith.andi %32, %33 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = index.add %arg2, %idx1
          memref.store %42, %alloc_25[%arg2] : memref<?xf64>
          %44 = index.add %arg3, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %36 = index.castu %32 : i1 to index
        %37 = index.add %arg4, %36
        %38 = index.castu %33 : i1 to index
        %39 = index.add %arg5, %38
        scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
      }
      scf.yield %26#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_19[%35] : memref<?xi64>
          %37 = arith.cmpi eq, %23, %36 : i64
          %38 = scf.if %37 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%35] : memref<?xi64>
            %39 = index.add %arg6, %idx1
            scf.yield %39 : index
          }
          scf.yield %38 : index
        }
        scf.yield %33 : index
      }
      %25 = arith.index_cast %24 : index to i64
      memref.store %25, %alloc_18[%22] : memref<?xi64>
      scf.yield %22, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg6, %25 : index
        %29 = arith.cmpi ult, %arg5, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = index.add %arg3, %idx1
          %42 = index.add %arg4, %idx1
          scf.yield %41, %42 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg5, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg6, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      %27 = index.add %arg1, %idx1
      scf.yield %27, %26#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %27 = arith.cmpi ult, %arg5, %25 : index
        %28 = arith.cmpi ult, %arg4, %21 : index
        %29 = arith.andi %28, %27 : i1
        scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = arith.minui %30, %28 : index
        %32 = arith.cmpi eq, %31, %30 : index
        %33 = arith.cmpi eq, %31, %28 : index
        %34 = arith.andi %32, %33 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = index.add %arg2, %idx1
          memref.store %42, %alloc_25[%arg2] : memref<?xf64>
          %44 = index.add %arg3, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %36 = index.castu %32 : i1 to index
        %37 = index.add %arg4, %36
        %38 = index.castu %33 : i1 to index
        %39 = index.add %arg5, %38
        scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
      }
      scf.yield %26#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_19[%35] : memref<?xi64>
          %37 = arith.cmpi eq, %23, %36 : i64
          %38 = scf.if %37 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%35] : memref<?xi64>
            %39 = index.add %arg6, %idx1
            scf.yield %39 : index
          }
          scf.yield %38 : index
        }
        scf.yield %33 : index
      }
      %25 = arith.index_cast %24 : index to i64
      memref.store %25, %alloc_18[%22] : memref<?xi64>
      scf.yield %22, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg6, %25 : index
        %29 = arith.cmpi ult, %arg5, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = index.add %arg3, %idx1
          %42 = index.add %arg4, %idx1
          scf.yield %41, %42 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg5, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg6, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      %27 = index.add %arg1, %idx1
      scf.yield %27, %26#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %27 = arith.cmpi ult, %arg5, %25 : index
        %28 = arith.cmpi ult, %arg4, %21 : index
        %29 = arith.andi %28, %27 : i1
        scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = arith.minui %30, %28 : index
        %32 = arith.cmpi eq, %31, %30 : index
        %33 = arith.cmpi eq, %31, %28 : index
        %34 = arith.andi %32, %33 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = index.add %arg2, %idx1
          memref.store %42, %alloc_25[%arg2] : memref<?xf64>
          %44 = index.add %arg3, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %36 = index.castu %32 : i1 to index
        %37 = index.add %arg4, %36
        %38 = index.castu %33 : i1 to index
        %39 = index.add %arg5, %38
        scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
      }
      scf.yield %26#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

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
  %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
  %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
    %17 = arith.addi %arg0, %c1 : index
    %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = memref.load %alloc_8[%17] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = index.add %arg1, %idx1
    %23 = arith.index_cast %22 : index to i64
    %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
      %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %27, %c1 : index
      %29 = memref.load %alloc_8[%27] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_8[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_19[%35] : memref<?xi64>
        %37 = arith.cmpi eq, %23, %36 : i64
        %38 = scf.if %37 -> (index) {
          scf.yield %arg6 : index
        } else {
          memref.store %23, %alloc_19[%35] : memref<?xi64>
          %39 = index.add %arg6, %idx1
          scf.yield %39 : index
        }
        scf.yield %38 : index
      }
      scf.yield %33 : index
    }
    %25 = arith.index_cast %24 : index to i64
    memref.store %25, %alloc_18[%22] : memref<?xi64>
    scf.yield %22, %24 : index, index
  }
  %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
  %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
  %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
  %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
  %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
    %17 = arith.addi %arg2, %c1_i32 : i32
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_8[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
      %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %26, %c1 : index
      %28 = memref.load %alloc_8[%26] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
      %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
        %37 = arith.mulf %32, %36 : f64
        %38 = memref.load %alloc_23[%35] : memref<?xi32>
        %39 = arith.cmpi eq, %38, %17 : i32
        %40 = scf.if %39 -> (index) {
          %41 = memref.load %alloc_22[%35] : memref<?xf64>
          %42 = arith.addf %41, %37 : f64
          memref.store %42, %alloc_22[%35] : memref<?xf64>
          scf.yield %arg6 : index
        } else {
          memref.store %17, %alloc_23[%35] : memref<?xi32>
          memref.store %34, %alloc_24[%arg6] : memref<?xi64>
          %41 = index.add %arg6, %idx1
          memref.store %37, %alloc_22[%35] : memref<?xf64>
          scf.yield %41 : index
        }
        scf.yield %40 : index
      }
      scf.yield %33 : index
    }
    "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
    %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
      %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_22[%26] : memref<?xf64>
      memref.store %25, %alloc_20[%arg4] : memref<?xi64>
      %28 = index.add %arg4, %idx1
      memref.store %27, %alloc_21[%arg4] : memref<?xf64>
      scf.yield %28 : index
    }
    scf.yield %24, %17 : index, i32
  }
  %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
    %17 = arith.addi %arg0, %c1 : index
    %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = memref.load %alloc_18[%17] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %23 = arith.index_cast %22 : i64 to index
    %24 = memref.load %alloc_8[%17] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
      %28 = arith.cmpi ult, %arg6, %25 : index
      %29 = arith.cmpi ult, %arg5, %21 : index
      %30 = arith.andi %29, %28 : i1
      scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
    } do {
    ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
      %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = arith.minui %31, %29 : index
      %33 = arith.cmpi eq, %32, %31 : index
      %34 = arith.cmpi eq, %32, %29 : index
      %35 = arith.andi %33, %34 : i1
      %36:2 = scf.if %35 -> (index, index) {
        %41 = index.add %arg3, %idx1
        %42 = index.add %arg4, %idx1
        scf.yield %41, %42 : index, index
      } else {
        scf.yield %arg3, %arg4 : index, index
      }
      %37 = index.castu %33 : i1 to index
      %38 = index.add %arg5, %37
      %39 = index.castu %34 : i1 to index
      %40 = index.add %arg6, %39
      scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
    }
    %27 = index.add %arg1, %idx1
    scf.yield %27, %26#0 : index, index
  }
  %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
  %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
    %17 = arith.addi %arg0, %c1 : index
    %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = memref.load %alloc_18[%17] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %23 = arith.index_cast %22 : i64 to index
    %24 = memref.load %alloc_8[%17] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
      %27 = arith.cmpi ult, %arg5, %25 : index
      %28 = arith.cmpi ult, %arg4, %21 : index
      %29 = arith.andi %28, %27 : i1
      scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = arith.minui %30, %28 : index
      %32 = arith.cmpi eq, %31, %30 : index
      %33 = arith.cmpi eq, %31, %28 : index
      %34 = arith.andi %32, %33 : i1
      %35:2 = scf.if %34 -> (index, index) {
        %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
        %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
        %42 = arith.mulf %40, %41 : f64
        %43 = index.add %arg2, %idx1
        memref.store %42, %alloc_25[%arg2] : memref<?xf64>
        %44 = index.add %arg3, %idx1
        scf.yield %43, %44 : index, index
      } else {
        scf.yield %arg2, %arg3 : index, index
      }
      %36 = index.castu %32 : i1 to index
      %37 = index.add %arg4, %36
      %38 = index.castu %33 : i1 to index
      %39 = index.add %arg5, %38
      scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
    }
    scf.yield %26#0 : index
  }
  %alloc_26 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_26[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %14#1 step %c1 {
    %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
    %18 = memref.load %alloc_26[%c0] : memref<1xf64>
    %19 = arith.addf %17, %18 : f64
    memref.store %19, %alloc_26[%c0] : memref<1xf64>
  }
  %16 = memref.load %alloc_26[%c0] : memref<1xf64>
  call @printF64(%16) : (f64) -> ()
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
  %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
  %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
    %17 = arith.addi %arg0, %c1 : index
    %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = memref.load %alloc_8[%17] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = index.add %arg1, %idx1
    %23 = arith.index_cast %22 : index to i64
    %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
      %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.addi %27, %c1 : index
      %29 = memref.load %alloc_8[%27] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = memref.load %alloc_8[%28] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_19[%35] : memref<?xi64>
        %37 = arith.cmpi eq, %23, %36 : i64
        %38 = scf.if %37 -> (index) {
          scf.yield %arg6 : index
        } else {
          memref.store %23, %alloc_19[%35] : memref<?xi64>
          %39 = index.add %arg6, %idx1
          scf.yield %39 : index
        }
        scf.yield %38 : index
      }
      scf.yield %33 : index
    }
    %25 = arith.index_cast %24 : index to i64
    memref.store %25, %alloc_18[%22] : memref<?xi64>
    scf.yield %22, %24 : index, index
  }
  %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
  %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
  %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
  %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
  %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
  %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
    %17 = arith.addi %arg2, %c1_i32 : i32
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_8[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
      %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = arith.addi %26, %c1 : index
      %28 = memref.load %alloc_8[%26] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_8[%27] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
      %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %35 = arith.index_cast %34 : i64 to index
        %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
        %37 = arith.mulf %32, %36 : f64
        %38 = memref.load %alloc_23[%35] : memref<?xi32>
        %39 = arith.cmpi eq, %38, %17 : i32
        %40 = scf.if %39 -> (index) {
          %41 = memref.load %alloc_22[%35] : memref<?xf64>
          %42 = arith.addf %41, %37 : f64
          memref.store %42, %alloc_22[%35] : memref<?xf64>
          scf.yield %arg6 : index
        } else {
          memref.store %17, %alloc_23[%35] : memref<?xi32>
          memref.store %34, %alloc_24[%arg6] : memref<?xi64>
          %41 = index.add %arg6, %idx1
          memref.store %37, %alloc_22[%35] : memref<?xf64>
          scf.yield %41 : index
        }
        scf.yield %40 : index
      }
      scf.yield %33 : index
    }
    "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
    %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
      %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_22[%26] : memref<?xf64>
      memref.store %25, %alloc_20[%arg4] : memref<?xi64>
      %28 = index.add %arg4, %idx1
      memref.store %27, %alloc_21[%arg4] : memref<?xf64>
      scf.yield %28 : index
    }
    scf.yield %24, %17 : index, i32
  }
  %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
    %17 = arith.addi %arg0, %c1 : index
    %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = memref.load %alloc_18[%17] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %23 = arith.index_cast %22 : i64 to index
    %24 = memref.load %alloc_8[%17] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
      %28 = arith.cmpi ult, %arg6, %25 : index
      %29 = arith.cmpi ult, %arg5, %21 : index
      %30 = arith.andi %29, %28 : i1
      scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
    } do {
    ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
      %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = arith.minui %31, %29 : index
      %33 = arith.cmpi eq, %32, %31 : index
      %34 = arith.cmpi eq, %32, %29 : index
      %35 = arith.andi %33, %34 : i1
      %36:2 = scf.if %35 -> (index, index) {
        %41 = index.add %arg3, %idx1
        %42 = index.add %arg4, %idx1
        scf.yield %41, %42 : index, index
      } else {
        scf.yield %arg3, %arg4 : index, index
      }
      %37 = index.castu %33 : i1 to index
      %38 = index.add %arg5, %37
      %39 = index.castu %34 : i1 to index
      %40 = index.add %arg6, %39
      scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
    }
    %27 = index.add %arg1, %idx1
    scf.yield %27, %26#0 : index, index
  }
  %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
  %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
    %17 = arith.addi %arg0, %c1 : index
    %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = memref.load %alloc_18[%17] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %23 = arith.index_cast %22 : i64 to index
    %24 = memref.load %alloc_8[%17] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
      %27 = arith.cmpi ult, %arg5, %25 : index
      %28 = arith.cmpi ult, %arg4, %21 : index
      %29 = arith.andi %28, %27 : i1
      scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
    } do {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
      %30 = arith.index_cast %29 : i64 to index
      %31 = arith.minui %30, %28 : index
      %32 = arith.cmpi eq, %31, %30 : index
      %33 = arith.cmpi eq, %31, %28 : index
      %34 = arith.andi %32, %33 : i1
      %35:2 = scf.if %34 -> (index, index) {
        %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
        %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
        %42 = arith.mulf %40, %41 : f64
        %43 = index.add %arg2, %idx1
        memref.store %42, %alloc_25[%arg2] : memref<?xf64>
        %44 = index.add %arg3, %idx1
        scf.yield %43, %44 : index, index
      } else {
        scf.yield %arg2, %arg3 : index, index
      }
      %36 = index.castu %32 : i1 to index
      %37 = index.add %arg4, %36
      %38 = index.castu %33 : i1 to index
      %39 = index.add %arg5, %38
      scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
    }
    scf.yield %26#0 : index
  }
  %alloc_26 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_26[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %14#1 step %c1 {
    %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
    %18 = memref.load %alloc_26[%c0] : memref<1xf64>
    %19 = arith.addf %17, %18 : f64
    memref.store %19, %alloc_26[%c0] : memref<1xf64>
  }
  %16 = memref.load %alloc_26[%c0] : memref<1xf64>
  call @printF64(%16) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_19[%35] : memref<?xi64>
          %37 = arith.cmpi eq, %23, %36 : i64
          %38 = scf.if %37 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%35] : memref<?xi64>
            %39 = index.add %arg6, %idx1
            scf.yield %39 : index
          }
          scf.yield %38 : index
        }
        scf.yield %33 : index
      }
      %25 = arith.index_cast %24 : index to i64
      memref.store %25, %alloc_18[%22] : memref<?xi64>
      scf.yield %22, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg6, %25 : index
        %29 = arith.cmpi ult, %arg5, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = index.add %arg3, %idx1
          %42 = index.add %arg4, %idx1
          scf.yield %41, %42 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg5, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg6, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      %27 = index.add %arg1, %idx1
      scf.yield %27, %26#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %27 = arith.cmpi ult, %arg5, %25 : index
        %28 = arith.cmpi ult, %arg4, %21 : index
        %29 = arith.andi %28, %27 : i1
        scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = arith.minui %30, %28 : index
        %32 = arith.cmpi eq, %31, %30 : index
        %33 = arith.cmpi eq, %31, %28 : index
        %34 = arith.andi %32, %33 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = index.add %arg2, %idx1
          memref.store %42, %alloc_25[%arg2] : memref<?xf64>
          %44 = index.add %arg3, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %36 = index.castu %32 : i1 to index
        %37 = index.add %arg4, %36
        %38 = index.castu %33 : i1 to index
        %39 = index.add %arg5, %38
        scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
      }
      scf.yield %26#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_19[%35] : memref<?xi64>
          %37 = arith.cmpi eq, %23, %36 : i64
          %38 = scf.if %37 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%35] : memref<?xi64>
            %39 = index.add %arg6, %idx1
            scf.yield %39 : index
          }
          scf.yield %38 : index
        }
        scf.yield %33 : index
      }
      %25 = arith.index_cast %24 : index to i64
      memref.store %25, %alloc_18[%22] : memref<?xi64>
      scf.yield %22, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg6, %25 : index
        %29 = arith.cmpi ult, %arg5, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = index.add %arg3, %idx1
          %42 = index.add %arg4, %idx1
          scf.yield %41, %42 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg5, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg6, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      %27 = index.add %arg1, %idx1
      scf.yield %27, %26#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %27 = arith.cmpi ult, %arg5, %25 : index
        %28 = arith.cmpi ult, %arg4, %21 : index
        %29 = arith.andi %28, %27 : i1
        scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = arith.minui %30, %28 : index
        %32 = arith.cmpi eq, %31, %30 : index
        %33 = arith.cmpi eq, %31, %28 : index
        %34 = arith.andi %32, %33 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = index.add %arg2, %idx1
          memref.store %42, %alloc_25[%arg2] : memref<?xf64>
          %44 = index.add %arg3, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %36 = index.castu %32 : i1 to index
        %37 = index.add %arg4, %36
        %38 = index.castu %33 : i1 to index
        %39 = index.add %arg5, %38
        scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
      }
      scf.yield %26#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_19[%35] : memref<?xi64>
          %37 = arith.cmpi eq, %23, %36 : i64
          %38 = scf.if %37 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%35] : memref<?xi64>
            %39 = index.add %arg6, %idx1
            scf.yield %39 : index
          }
          scf.yield %38 : index
        }
        scf.yield %33 : index
      }
      %25 = arith.index_cast %24 : index to i64
      memref.store %25, %alloc_18[%22] : memref<?xi64>
      scf.yield %22, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg6, %25 : index
        %29 = arith.cmpi ult, %arg5, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = index.add %arg3, %idx1
          %42 = index.add %arg4, %idx1
          scf.yield %41, %42 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg5, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg6, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      %27 = index.add %arg1, %idx1
      scf.yield %27, %26#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %27 = arith.cmpi ult, %arg5, %25 : index
        %28 = arith.cmpi ult, %arg4, %21 : index
        %29 = arith.andi %28, %27 : i1
        scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = arith.minui %30, %28 : index
        %32 = arith.cmpi eq, %31, %30 : index
        %33 = arith.cmpi eq, %31, %28 : index
        %34 = arith.andi %32, %33 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = index.add %arg2, %idx1
          memref.store %42, %alloc_25[%arg2] : memref<?xf64>
          %44 = index.add %arg3, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %36 = index.castu %32 : i1 to index
        %37 = index.add %arg4, %36
        %38 = index.castu %33 : i1 to index
        %39 = index.add %arg5, %38
        scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
      }
      scf.yield %26#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_19[%35] : memref<?xi64>
          %37 = arith.cmpi eq, %23, %36 : i64
          %38 = scf.if %37 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%35] : memref<?xi64>
            %39 = index.add %arg6, %idx1
            scf.yield %39 : index
          }
          scf.yield %38 : index
        }
        scf.yield %33 : index
      }
      %25 = arith.index_cast %24 : index to i64
      memref.store %25, %alloc_18[%22] : memref<?xi64>
      scf.yield %22, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg6, %25 : index
        %29 = arith.cmpi ult, %arg5, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = index.add %arg3, %idx1
          %42 = index.add %arg4, %idx1
          scf.yield %41, %42 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg5, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg6, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      %27 = index.add %arg1, %idx1
      scf.yield %27, %26#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %27 = arith.cmpi ult, %arg5, %25 : index
        %28 = arith.cmpi ult, %arg4, %21 : index
        %29 = arith.andi %28, %27 : i1
        scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = arith.minui %30, %28 : index
        %32 = arith.cmpi eq, %31, %30 : index
        %33 = arith.cmpi eq, %31, %28 : index
        %34 = arith.andi %32, %33 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = index.add %arg2, %idx1
          memref.store %42, %alloc_25[%arg2] : memref<?xf64>
          %44 = index.add %arg3, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %36 = index.castu %32 : i1 to index
        %37 = index.add %arg4, %36
        %38 = index.castu %33 : i1 to index
        %39 = index.add %arg5, %38
        scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
      }
      scf.yield %26#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_19[%35] : memref<?xi64>
          %37 = arith.cmpi eq, %23, %36 : i64
          %38 = scf.if %37 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%35] : memref<?xi64>
            %39 = index.add %arg6, %idx1
            scf.yield %39 : index
          }
          scf.yield %38 : index
        }
        scf.yield %33 : index
      }
      %25 = arith.index_cast %24 : index to i64
      memref.store %25, %alloc_18[%22] : memref<?xi64>
      scf.yield %22, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg6, %25 : index
        %29 = arith.cmpi ult, %arg5, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = index.add %arg3, %idx1
          %42 = index.add %arg4, %idx1
          scf.yield %41, %42 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg5, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg6, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      %27 = index.add %arg1, %idx1
      scf.yield %27, %26#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %27 = arith.cmpi ult, %arg5, %25 : index
        %28 = arith.cmpi ult, %arg4, %21 : index
        %29 = arith.andi %28, %27 : i1
        scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = arith.minui %30, %28 : index
        %32 = arith.cmpi eq, %31, %30 : index
        %33 = arith.cmpi eq, %31, %28 : index
        %34 = arith.andi %32, %33 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = index.add %arg2, %idx1
          memref.store %42, %alloc_25[%arg2] : memref<?xf64>
          %44 = index.add %arg3, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %36 = index.castu %32 : i1 to index
        %37 = index.add %arg4, %36
        %38 = index.castu %33 : i1 to index
        %39 = index.add %arg5, %38
        scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
      }
      scf.yield %26#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
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
    %alloc_19 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_8[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = index.add %arg1, %idx1
      %23 = arith.index_cast %22 : index to i64
      %24 = scf.for %arg3 = %19 to %21 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %26 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = arith.addi %27, %c1 : index
        %29 = memref.load %alloc_8[%27] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = memref.load %alloc_8[%28] : memref<?xi64>
        %32 = arith.index_cast %31 : i64 to index
        %33 = scf.for %arg5 = %30 to %32 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_19[%35] : memref<?xi64>
          %37 = arith.cmpi eq, %23, %36 : i64
          %38 = scf.if %37 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %23, %alloc_19[%35] : memref<?xi64>
            %39 = index.add %arg6, %idx1
            scf.yield %39 : index
          }
          scf.yield %38 : index
        }
        scf.yield %33 : index
      }
      %25 = arith.index_cast %24 : index to i64
      memref.store %25, %alloc_18[%22] : memref<?xi64>
      scf.yield %22, %24 : index, index
    }
    %alloc_20 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xi64>
    %alloc_21 = memref.alloc(%12#1) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xf64>
    %alloc_23 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi32>
    %alloc_24 = memref.alloc(%10) {alignment = 64 : i64} : memref<?xi64>
    %13:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %17 = arith.addi %arg2, %c1_i32 : i32
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_8[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23 = scf.for %arg3 = %20 to %22 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %25 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = arith.addi %26, %c1 : index
        %28 = memref.load %alloc_8[%26] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_8[%27] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = memref.load %alloc_16[%arg3] : memref<?xf64>
        %33 = scf.for %arg5 = %29 to %31 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %34 = memref.load %alloc_10[%arg5] : memref<?xi64>
          %35 = arith.index_cast %34 : i64 to index
          %36 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %37 = arith.mulf %32, %36 : f64
          %38 = memref.load %alloc_23[%35] : memref<?xi32>
          %39 = arith.cmpi eq, %38, %17 : i32
          %40 = scf.if %39 -> (index) {
            %41 = memref.load %alloc_22[%35] : memref<?xf64>
            %42 = arith.addf %41, %37 : f64
            memref.store %42, %alloc_22[%35] : memref<?xf64>
            scf.yield %arg6 : index
          } else {
            memref.store %17, %alloc_23[%35] : memref<?xi32>
            memref.store %34, %alloc_24[%arg6] : memref<?xi64>
            %41 = index.add %arg6, %idx1
            memref.store %37, %alloc_22[%35] : memref<?xf64>
            scf.yield %41 : index
          }
          scf.yield %40 : index
        }
        scf.yield %33 : index
      }
      "ta.TensorSortOp"(%alloc_24, %idx0, %23) : (memref<?xi64>, index, index) -> ()
      %24 = scf.for %arg3 = %c0 to %23 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %25 = memref.load %alloc_24[%arg3] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_22[%26] : memref<?xf64>
        memref.store %25, %alloc_20[%arg4] : memref<?xi64>
        %28 = index.add %arg4, %idx1
        memref.store %27, %alloc_21[%arg4] : memref<?xf64>
        scf.yield %28 : index
      }
      scf.yield %24, %17 : index, i32
    }
    %14:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg3 = %arg2, %arg4 = %idx0, %arg5 = %19, %arg6 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %28 = arith.cmpi ult, %arg6, %25 : index
        %29 = arith.cmpi ult, %arg5, %21 : index
        %30 = arith.andi %29, %28 : i1
        scf.condition(%30) %arg3, %arg4, %arg5, %arg6 : index, index, index, index
      } do {
      ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
        %28 = memref.load %alloc_10[%arg6] : memref<?xi64>
        %29 = arith.index_cast %28 : i64 to index
        %30 = memref.load %alloc_20[%arg5] : memref<?xi64>
        %31 = arith.index_cast %30 : i64 to index
        %32 = arith.minui %31, %29 : index
        %33 = arith.cmpi eq, %32, %31 : index
        %34 = arith.cmpi eq, %32, %29 : index
        %35 = arith.andi %33, %34 : i1
        %36:2 = scf.if %35 -> (index, index) {
          %41 = index.add %arg3, %idx1
          %42 = index.add %arg4, %idx1
          scf.yield %41, %42 : index, index
        } else {
          scf.yield %arg3, %arg4 : index, index
        }
        %37 = index.castu %33 : i1 to index
        %38 = index.add %arg5, %37
        %39 = index.castu %34 : i1 to index
        %40 = index.add %arg6, %39
        scf.yield %36#0, %36#1, %38, %40 : index, index, index, index
      }
      %27 = index.add %arg1, %idx1
      scf.yield %27, %26#0 : index, index
    }
    %alloc_25 = memref.alloc(%14#1) {alignment = 64 : i64} : memref<?xf64>
    %15 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %17 = arith.addi %arg0, %c1 : index
      %18 = memref.load %alloc_18[%arg0] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = memref.load %alloc_18[%17] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_8[%17] : memref<?xi64>
      %25 = arith.index_cast %24 : i64 to index
      %26:4 = scf.while (%arg2 = %arg1, %arg3 = %idx0, %arg4 = %19, %arg5 = %23) : (index, index, index, index) -> (index, index, index, index) {
        %27 = arith.cmpi ult, %arg5, %25 : index
        %28 = arith.cmpi ult, %arg4, %21 : index
        %29 = arith.andi %28, %27 : i1
        scf.condition(%29) %arg2, %arg3, %arg4, %arg5 : index, index, index, index
      } do {
      ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %27 = memref.load %alloc_10[%arg5] : memref<?xi64>
        %28 = arith.index_cast %27 : i64 to index
        %29 = memref.load %alloc_20[%arg4] : memref<?xi64>
        %30 = arith.index_cast %29 : i64 to index
        %31 = arith.minui %30, %28 : index
        %32 = arith.cmpi eq, %31, %30 : index
        %33 = arith.cmpi eq, %31, %28 : index
        %34 = arith.andi %32, %33 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %40 = memref.load %alloc_21[%arg4] : memref<?xf64>
          %41 = memref.load %alloc_16[%arg5] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = index.add %arg2, %idx1
          memref.store %42, %alloc_25[%arg2] : memref<?xf64>
          %44 = index.add %arg3, %idx1
          scf.yield %43, %44 : index, index
        } else {
          scf.yield %arg2, %arg3 : index, index
        }
        %36 = index.castu %32 : i1 to index
        %37 = index.add %arg4, %36
        %38 = index.castu %33 : i1 to index
        %39 = index.add %arg5, %38
        scf.yield %35#0, %35#1, %37, %39 : index, index, index, index
      }
      scf.yield %26#0 : index
    }
    %alloc_26 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_26[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %14#1 step %c1 {
      %17 = memref.load %alloc_25[%arg0] : memref<?xf64>
      %18 = memref.load %alloc_26[%c0] : memref<1xf64>
      %19 = arith.addf %17, %18 : f64
      memref.store %19, %alloc_26[%c0] : memref<1xf64>
    }
    %16 = memref.load %alloc_26[%c0] : memref<1xf64>
    call @printF64(%16) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @printF64(f64)
  func.func private @printNewline()
}
