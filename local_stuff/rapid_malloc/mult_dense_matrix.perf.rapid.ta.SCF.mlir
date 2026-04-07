// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
    %4 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
    %5 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
    %6 = "ta.getTime"() : () -> f64
    %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4086x4086xf64>
    "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
    %8 = "ta.getTime"() : () -> f64
    %9 = "ta.reduce"(%5) : (tensor<4086x4086xf64>) -> f64
    "ta.print"(%9) : (f64) -> ()
    "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4086x4086xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "it.itree"(%5) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %10 = "it.RootOp"() : () -> !it.index_tree
    %11 = "it.IndexOp"(%10) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %12 = "it.IndexOp"(%11) <{IsParallel = false}> : (!it.index) -> !it.index
    %13 = "it.IndexOp"(%12) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %12, %pos_3) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %12) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %0 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %1 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %2 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4086x4086xf64>) -> !it.domain
    %12 = "it.DomainIntersectionOp"(%11, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %13 = "it.IndexOp"(%9, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4086x4086xf64>) -> !it.domain
    %15 = "it.IndexOp"(%13, %14) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %15, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %13, %pos_3) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %13) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %15, %pos_7) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %19 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx4086 = index.constant 4086
  %0 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %1 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %2 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %11, %pos_3) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4086 = index.constant 4086
  %0 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %1 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  %2 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<4086x4086xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %11, %pos_3) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4086x4086xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<4086x4086xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %11, %pos_5) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %13, %pos_9) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4086x4086xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<4086x4086xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %11, %pos_5) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %13, %pos_9) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4086x4086xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<4086x4086xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<4086x4086xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %11, %pos_5) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %13, %pos_9) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %11, %pos_7) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %13, %pos_11) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %11, %pos_7) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %13, %pos_11) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %11, %pos_7) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %13, %pos_11) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<4086x4086xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_9, %crd, %crd_8) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%0, %11, %pos_11) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%1, %13, %pos_15) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  %5 = "ta.getTime"() : () -> f64
  %c0 = arith.constant 0 : index
  %alloc_4 = memref.alloc() : memref<1xf64>
  %cst_5 = arith.constant 0.000000e+00 : f64
  memref.store %cst_5, %alloc_4[%c0] : memref<1xf64>
  %c0_6 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_7 = arith.constant 0 : index
  %dim = tensor.dim %4, %c0_7 : tensor<4086x4086xf64>
  scf.for %arg0 = %c0_6 to %dim step %c1 {
    %c1_8 = arith.constant 1 : index
    %dim_9 = tensor.dim %4, %c1_8 : tensor<4086x4086xf64>
    scf.for %arg1 = %c0_6 to %dim_9 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx4086, %0) <{dims = [0 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx4086, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4086x4086xf64>, tensor<4086x4086xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx4086, %1) <{dims = [1 : i32]}> : (index, tensor<4086x4086xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_6, %crd, %crd_5) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%0, %11, %pos_8) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_8, %pos_10, %crd_7, %crd_9) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<4086x4086xf64>, !it.index) -> (index, index)
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%1, %13, %pos_12) <{dim = 1 : ui32}> : (tensor<4086x4086xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_12, %pos_14, %crd_11, %crd_13) : (tensor<4086x4086xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4086x4086xf64>
    it.yield %17 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = scf.forall (%arg1) in (%idx4086) shared_outs(%arg2 = %arg0) -> (tensor<4086x4086xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      %8 = scf.for %arg3 = %c0_5 to %idx4086 step %c1_6 iter_args(%arg4 = %extracted_slice) -> (tensor<1x4086xf64>) {
        %c0_7 = arith.constant 0 : index
        %c1_8 = arith.constant 1 : index
        %9 = scf.for %arg5 = %c0_7 to %idx4086 step %c1_8 iter_args(%arg6 = %arg4) -> (tensor<1x4086xf64>) {
          %idx0 = index.constant 0
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<4086x4086xf64>
          %extracted_9 = tensor.extract %1[%arg3, %arg5] : tensor<4086x4086xf64>
          %10 = arith.mulf %extracted, %extracted_9 : f64
          %extracted_10 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x4086xf64>
          %11 = arith.addf %extracted_10, %10 : f64
          %inserted = tensor.insert %11 into %arg6[%idx0, %arg5] : tensor<1x4086xf64>
          scf.yield %inserted : tensor<1x4086xf64>
        }
        scf.yield %9 : tensor<1x4086xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %8 into %arg2[%arg1, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
      }
    }
    it.yield %7 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = scf.forall (%arg1) in (%idx4086) shared_outs(%arg2 = %arg0) -> (tensor<4086x4086xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
      %8 = scf.for %arg3 = %c0 to %idx4086 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x4086xf64>) {
        %9 = scf.for %arg5 = %c0 to %idx4086 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x4086xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<4086x4086xf64>
          %extracted_5 = tensor.extract %1[%arg3, %arg5] : tensor<4086x4086xf64>
          %10 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x4086xf64>
          %11 = arith.addf %extracted_6, %10 : f64
          %inserted = tensor.insert %11 into %arg6[%idx0, %arg5] : tensor<1x4086xf64>
          scf.yield %inserted : tensor<1x4086xf64>
        }
        scf.yield %9 : tensor<1x4086xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %8 into %arg2[%arg1, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
      }
    }
    it.yield %7 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = scf.forall (%arg1) in (%idx4086) shared_outs(%arg2 = %arg0) -> (tensor<4086x4086xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
      %8 = scf.for %arg3 = %c0 to %idx4086 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x4086xf64>) {
        %9 = scf.for %arg5 = %c0 to %idx4086 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x4086xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<4086x4086xf64>
          %extracted_5 = tensor.extract %1[%arg3, %arg5] : tensor<4086x4086xf64>
          %10 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x4086xf64>
          %11 = arith.addf %extracted_6, %10 : f64
          %inserted = tensor.insert %11 into %arg6[%idx0, %arg5] : tensor<1x4086xf64>
          scf.yield %inserted : tensor<1x4086xf64>
        }
        scf.yield %9 : tensor<1x4086xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %8 into %arg2[%arg1, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
      }
    }
    it.yield %7 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = call @getTime() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<4086x4086xf64>):
    %7 = scf.forall (%arg1) in (%idx4086) shared_outs(%arg2 = %arg0) -> (tensor<4086x4086xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
      %8 = scf.for %arg3 = %c0 to %idx4086 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x4086xf64>) {
        %9 = scf.for %arg5 = %c0 to %idx4086 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x4086xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<4086x4086xf64>
          %extracted_5 = tensor.extract %1[%arg3, %arg5] : tensor<4086x4086xf64>
          %10 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x4086xf64>
          %11 = arith.addf %extracted_6, %10 : f64
          %inserted = tensor.insert %11 into %arg6[%idx0, %arg5] : tensor<1x4086xf64>
          scf.yield %inserted : tensor<1x4086xf64>
        }
        scf.yield %9 : tensor<1x4086xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %8 into %arg2[%arg1, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
      }
    }
    it.yield %7 : tensor<4086x4086xf64>
  }) : (tensor<4086x4086xf64>) -> tensor<4086x4086xf64>
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  call @printElapsedTime(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.forall (%arg0) in (%idx4086) shared_outs(%arg1 = %2) -> (tensor<4086x4086xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
    %7 = scf.for %arg2 = %c0 to %idx4086 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4086xf64>) {
      %8 = scf.for %arg4 = %c0 to %idx4086 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4086xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<4086x4086xf64>
        %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<4086x4086xf64>
        %9 = arith.mulf %extracted, %extracted_5 : f64
        %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4086xf64>
        %10 = arith.addf %extracted_6, %9 : f64
        %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x4086xf64>
        scf.yield %inserted : tensor<1x4086xf64>
      }
      scf.yield %8 : tensor<1x4086xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
    }
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  call @printElapsedTime(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.forall (%arg0) in (4086) shared_outs(%arg1 = %2) -> (tensor<4086x4086xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
    %7 = scf.for %arg2 = %c0 to %idx4086 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4086xf64>) {
      %8 = scf.for %arg4 = %c0 to %idx4086 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4086xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<4086x4086xf64>
        %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<4086x4086xf64>
        %9 = arith.mulf %extracted, %extracted_5 : f64
        %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4086xf64>
        %10 = arith.addf %extracted_6, %9 : f64
        %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x4086xf64>
        scf.yield %inserted : tensor<1x4086xf64>
      }
      scf.yield %8 : tensor<1x4086xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
    }
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  call @printElapsedTime(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.forall (%arg0) in (4086) shared_outs(%arg1 = %2) -> (tensor<4086x4086xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
    %7 = scf.for %arg2 = %c0 to %idx4086 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4086xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<4086x4086xf64>
      %8 = scf.for %arg4 = %c0 to %idx4086 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4086xf64>) {
        %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<4086x4086xf64>
        %9 = arith.mulf %extracted, %extracted_5 : f64
        %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4086xf64>
        %10 = arith.addf %extracted_6, %9 : f64
        %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x4086xf64>
        scf.yield %inserted : tensor<1x4086xf64>
      }
      scf.yield %8 : tensor<1x4086xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
    }
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  call @printElapsedTime(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.forall (%arg0) in (4086) shared_outs(%arg1 = %2) -> (tensor<4086x4086xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
    %7 = scf.for %arg2 = %c0 to %idx4086 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4086xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<4086x4086xf64>
      %8 = scf.for %arg4 = %c0 to %idx4086 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4086xf64>) {
        %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<4086x4086xf64>
        %9 = arith.mulf %extracted, %extracted_5 : f64
        %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4086xf64>
        %10 = arith.addf %extracted_6, %9 : f64
        %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x4086xf64>
        scf.yield %inserted : tensor<1x4086xf64>
      }
      scf.yield %8 : tensor<1x4086xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
    }
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
      %7 = memref.load %alloc_4[%c0] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  call @printElapsedTime(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.forall (%arg0) in (4086) shared_outs(%arg1 = %2) -> (tensor<4086x4086xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
      %7 = scf.for %arg2 = %c0 to %idx4086 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4086xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<4086x4086xf64>
        %8 = scf.for %arg4 = %c0 to %idx4086 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4086xf64>) {
          %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<4086x4086xf64>
          %9 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4086xf64>
          %10 = arith.addf %extracted_6, %9 : f64
          %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x4086xf64>
          scf.yield %inserted : tensor<1x4086xf64>
        }
        scf.yield %8 : tensor<1x4086xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
      }
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
        %7 = memref.load %alloc_4[%c0] : memref<1xf64>
        %8 = arith.addf %extracted, %7 : f64
        memref.store %8, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %6 = memref.load %alloc_4[%c0] : memref<1xf64>
    "ta.print"(%6) : (f64) -> ()
    call @printElapsedTime(%3, %5) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.forall (%arg0) in (4086) shared_outs(%arg1 = %2) -> (tensor<4086x4086xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
      %7 = scf.for %arg2 = %c0 to %idx4086 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4086xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<4086x4086xf64>
        %8 = scf.for %arg4 = %c0 to %idx4086 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4086xf64>) {
          %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<4086x4086xf64>
          %9 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4086xf64>
          %10 = arith.addf %extracted_6, %9 : f64
          %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x4086xf64>
          scf.yield %inserted : tensor<1x4086xf64>
        }
        scf.yield %8 : tensor<1x4086xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
      }
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
        %7 = memref.load %alloc_4[%c0] : memref<1xf64>
        %8 = arith.addf %extracted, %7 : f64
        memref.store %8, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %6 = memref.load %alloc_4[%c0] : memref<1xf64>
    "ta.print"(%6) : (f64) -> ()
    call @printElapsedTime(%3, %5) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<4086x4086xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4086x4086xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4086x4086xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.forall (%arg0) in (4086) shared_outs(%arg1 = %2) -> (tensor<4086x4086xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<4086x4086xf64> to tensor<1x4086xf64>
      %7 = scf.for %arg2 = %c0 to %idx4086 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x4086xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<4086x4086xf64>
        %8 = scf.for %arg4 = %c0 to %idx4086 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x4086xf64>) {
          %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<4086x4086xf64>
          %9 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x4086xf64>
          %10 = arith.addf %extracted_6, %9 : f64
          %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x4086xf64>
          scf.yield %inserted : tensor<1x4086xf64>
        }
        scf.yield %8 : tensor<1x4086xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 4086] [1, 1] : tensor<1x4086xf64> into tensor<4086x4086xf64>
      }
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4086x4086xf64>
        %7 = memref.load %alloc_4[%c0] : memref<1xf64>
        %8 = arith.addf %extracted, %7 : f64
        memref.store %8, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %6 = memref.load %alloc_4[%c0] : memref<1xf64>
    "ta.print"(%6) : (f64) -> ()
    call @printElapsedTime(%3, %5) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (4086) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
      %3 = scf.for %arg1 = %c0 to %idx4086 step %c1 iter_args(%arg2 = %subview) -> (memref<1x4086xf64, strided<[4086, 1], offset: ?>>) {
        %4 = memref.load %alloc[%arg0, %arg1] : memref<4086x4086xf64>
        %5 = scf.for %arg3 = %c0 to %idx4086 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x4086xf64, strided<[4086, 1], offset: ?>>) {
          %6 = memref.load %alloc_2[%arg1, %arg3] : memref<4086x4086xf64>
          %7 = arith.mulf %4, %6 : f64
          %8 = memref.load %arg4[%idx0, %arg3] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %arg4[%idx0, %arg3] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
          scf.yield %arg4 : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
        }
        scf.yield %5 : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
      }
      %subview_5 = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
      memref.copy %3, %subview_5 : memref<1x4086xf64, strided<[4086, 1], offset: ?>> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4086x4086xf64>
        %4 = memref.load %alloc_4[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_4[%c0] : memref<1xf64>
    "ta.print"(%2) : (f64) -> ()
    call @printElapsedTime(%0, %1) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %0 = call @getTime() : () -> f64
  scf.forall (%arg0) in (4086) {
    %subview = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    %3 = scf.for %arg1 = %c0 to %idx4086 step %c1 iter_args(%arg2 = %subview) -> (memref<1x4086xf64, strided<[4086, 1], offset: ?>>) {
      %4 = memref.load %alloc[%arg0, %arg1] : memref<4086x4086xf64>
      %5 = scf.for %arg3 = %c0 to %idx4086 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x4086xf64, strided<[4086, 1], offset: ?>>) {
        %6 = memref.load %alloc_2[%arg1, %arg3] : memref<4086x4086xf64>
        %7 = arith.mulf %4, %6 : f64
        %8 = memref.load %arg4[%idx0, %arg3] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
        %9 = arith.addf %8, %7 : f64
        memref.store %9, %arg4[%idx0, %arg3] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
        scf.yield %arg4 : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
      }
      scf.yield %5 : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    }
    %subview_5 = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    memref.copy %3, %subview_5 : memref<1x4086xf64, strided<[4086, 1], offset: ?>> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4086x4086xf64>
      %4 = memref.load %alloc_4[%c0] : memref<1xf64>
      %5 = arith.addf %3, %4 : f64
      memref.store %5, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %2 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%2) : (f64) -> ()
  call @printElapsedTime(%0, %1) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c4086 = arith.constant 4086 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx4086 = index.constant 4086
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
  %0 = call @getTime() : () -> f64
  scf.forall (%arg0) in (4086) {
    %subview = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    %3 = scf.for %arg1 = %c0 to %idx4086 step %c1 iter_args(%arg2 = %subview) -> (memref<1x4086xf64, strided<[4086, 1], offset: ?>>) {
      %4 = memref.load %alloc[%arg0, %arg1] : memref<4086x4086xf64>
      %5 = scf.for %arg3 = %c0 to %idx4086 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x4086xf64, strided<[4086, 1], offset: ?>>) {
        %6 = memref.load %alloc_2[%arg1, %arg3] : memref<4086x4086xf64>
        %7 = arith.mulf %4, %6 : f64
        %8 = memref.load %arg4[%idx0, %arg3] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
        %9 = arith.addf %8, %7 : f64
        memref.store %9, %arg4[%idx0, %arg3] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
        scf.yield %arg4 : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
      }
      scf.yield %5 : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    }
    %subview_5 = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    memref.copy %3, %subview_5 : memref<1x4086xf64, strided<[4086, 1], offset: ?>> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4086 step %c1 {
    scf.for %arg1 = %c0 to %c4086 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4086x4086xf64>
      %4 = memref.load %alloc_4[%c0] : memref<1xf64>
      %5 = arith.addf %3, %4 : f64
      memref.store %5, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %2 = memref.load %alloc_4[%c0] : memref<1xf64>
  call @printF64(%2) : (f64) -> ()
  call @printNewline() : () -> ()
  call @printElapsedTime(%0, %1) : (f64, f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (4086) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx4086 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<4086x4086xf64>
        scf.for %arg2 = %c0 to %idx4086 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<4086x4086xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %subview[%idx0, %arg2] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %subview[%idx0, %arg2] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
        }
      }
      %subview_5 = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
      memref.copy %subview, %subview_5 : memref<1x4086xf64, strided<[4086, 1], offset: ?>> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4086x4086xf64>
        %4 = memref.load %alloc_4[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%2) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%0, %1) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (4086) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx4086 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<4086x4086xf64>
        scf.for %arg2 = %c0 to %idx4086 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<4086x4086xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %subview[%idx0, %arg2] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %subview[%idx0, %arg2] : memref<1x4086xf64, strided<[4086, 1], offset: ?>>
        }
      }
      memref.copy %subview, %subview : memref<1x4086xf64, strided<[4086, 1], offset: ?>> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4086x4086xf64>
        %4 = memref.load %alloc_4[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%2) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%0, %1) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (4086) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 4086] [1, 1] : memref<4086x4086xf64> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx4086 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<4086x4086xf64>
        scf.for %arg2 = %c0 to %idx4086 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<4086x4086xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<4086x4086xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<4086x4086xf64>
        }
      }
      memref.copy %subview, %subview : memref<1x4086xf64, strided<[4086, 1], offset: ?>> to memref<1x4086xf64, strided<[4086, 1], offset: ?>>
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4086x4086xf64>
        %4 = memref.load %alloc_4[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%2) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%0, %1) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (4086) {
      scf.for %arg1 = %c0 to %idx4086 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<4086x4086xf64>
        scf.for %arg2 = %c0 to %idx4086 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<4086x4086xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<4086x4086xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<4086x4086xf64>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4086x4086xf64>
        %4 = memref.load %alloc_4[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%2) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%0, %1) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (4086) {
      scf.for %arg1 = %c0 to %idx4086 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<4086x4086xf64>
        scf.for %arg2 = %c0 to %idx4086 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<4086x4086xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<4086x4086xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<4086x4086xf64>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4086x4086xf64>
        %4 = memref.load %alloc_4[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%2) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%0, %1) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


module {
  func.func @main() {
    %c4086 = arith.constant 4086 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx4086 = index.constant 4086
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4086x4086xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4086x4086xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<4086x4086xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4086x4086xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (4086) {
      scf.for %arg1 = %c0 to %idx4086 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<4086x4086xf64>
        scf.for %arg2 = %c0 to %idx4086 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<4086x4086xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<4086x4086xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<4086x4086xf64>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4086 step %c1 {
      scf.for %arg1 = %c0 to %c4086 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4086x4086xf64>
        %4 = memref.load %alloc_4[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%2) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%0, %1) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}
