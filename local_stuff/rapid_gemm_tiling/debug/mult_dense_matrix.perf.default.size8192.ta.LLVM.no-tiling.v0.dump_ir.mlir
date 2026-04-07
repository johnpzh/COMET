// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
    %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
    %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
    %6 = "ta.getTime"() : () -> f64
    %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8192xf64>
    "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
    %8 = "ta.getTime"() : () -> f64
    %9 = "ta.reduce"(%5) : (tensor<8192x8192xf64>) -> f64
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
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8192xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "it.itree"(%5) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %10 = "it.RootOp"() : () -> !it.index_tree
    %11 = "it.IndexOp"(%10) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %12 = "it.IndexOp"(%11) <{IsParallel = false}> : (!it.index) -> !it.index
    %13 = "it.IndexOp"(%12) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %12, %pos_3) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %12) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %0 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %1 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %2 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8192x8192xf64>) -> !it.domain
    %12 = "it.DomainIntersectionOp"(%11, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %13 = "it.IndexOp"(%9, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8192x8192xf64>) -> !it.domain
    %15 = "it.IndexOp"(%13, %14) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %15, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %13, %pos_3) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %13) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %15, %pos_7) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %19 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx8192 = index.constant 8192
  %0 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %1 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %2 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %11, %pos_3) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx8192 = index.constant 8192
  %0 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %1 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  %2 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8192xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %11, %pos_3) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<8192x8192xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %11, %pos_5) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %13, %pos_9) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<8192x8192xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %11, %pos_5) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %13, %pos_9) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<8192x8192xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8192x8192xf64>) -> ()
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %11, %pos_5) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %13, %pos_9) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %11, %pos_7) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %13, %pos_11) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %11, %pos_7) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %13, %pos_11) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %11, %pos_7) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %13, %pos_11) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_9, %crd, %crd_8) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%0, %11, %pos_11) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%1, %13, %pos_15) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  %5 = "ta.getTime"() : () -> f64
  %c0 = arith.constant 0 : index
  %alloc_4 = memref.alloc() : memref<1xf64>
  %cst_5 = arith.constant 0.000000e+00 : f64
  memref.store %cst_5, %alloc_4[%c0] : memref<1xf64>
  %c0_6 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_7 = arith.constant 0 : index
  %dim = tensor.dim %4, %c0_7 : tensor<8192x8192xf64>
  scf.for %arg0 = %c0_6 to %dim step %c1 {
    %c1_8 = arith.constant 1 : index
    %dim_9 = tensor.dim %4, %c1_8 : tensor<8192x8192xf64>
    scf.for %arg1 = %c0_6 to %dim_9 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DenseDomainOp"(%idx8192, %0) <{dims = [0 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DenseDomainOp"(%idx8192, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %12 = "it.DenseDomainOp"(%idx8192, %1) <{dims = [1 : i32]}> : (index, tensor<8192x8192xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_6, %crd, %crd_5) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%0, %11, %pos_8) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%0, %pos_8, %pos_10, %crd_7, %crd_9) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%1, %11) <{dim = 0 : ui32}> : (tensor<8192x8192xf64>, !it.index) -> (index, index)
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%1, %13, %pos_12) <{dim = 1 : ui32}> : (tensor<8192x8192xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%1, %pos_12, %pos_14, %crd_11, %crd_13) : (tensor<8192x8192xf64>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8192x8192xf64>
    it.yield %17 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = scf.forall (%arg1) in (%idx8192) shared_outs(%arg2 = %arg0) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      %8 = scf.for %arg3 = %c0_5 to %idx8192 step %c1_6 iter_args(%arg4 = %extracted_slice) -> (tensor<1x8192xf64>) {
        %c0_7 = arith.constant 0 : index
        %c1_8 = arith.constant 1 : index
        %9 = scf.for %arg5 = %c0_7 to %idx8192 step %c1_8 iter_args(%arg6 = %arg4) -> (tensor<1x8192xf64>) {
          %idx0 = index.constant 0
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8192x8192xf64>
          %extracted_9 = tensor.extract %1[%arg3, %arg5] : tensor<8192x8192xf64>
          %10 = arith.mulf %extracted, %extracted_9 : f64
          %extracted_10 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x8192xf64>
          %11 = arith.addf %extracted_10, %10 : f64
          %inserted = tensor.insert %11 into %arg6[%idx0, %arg5] : tensor<1x8192xf64>
          scf.yield %inserted : tensor<1x8192xf64>
        }
        scf.yield %9 : tensor<1x8192xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %8 into %arg2[%arg1, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
      }
    }
    it.yield %7 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = scf.forall (%arg1) in (%idx8192) shared_outs(%arg2 = %arg0) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
      %8 = scf.for %arg3 = %c0 to %idx8192 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x8192xf64>) {
        %9 = scf.for %arg5 = %c0 to %idx8192 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x8192xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8192x8192xf64>
          %extracted_5 = tensor.extract %1[%arg3, %arg5] : tensor<8192x8192xf64>
          %10 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x8192xf64>
          %11 = arith.addf %extracted_6, %10 : f64
          %inserted = tensor.insert %11 into %arg6[%idx0, %arg5] : tensor<1x8192xf64>
          scf.yield %inserted : tensor<1x8192xf64>
        }
        scf.yield %9 : tensor<1x8192xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %8 into %arg2[%arg1, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
      }
    }
    it.yield %7 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = scf.forall (%arg1) in (%idx8192) shared_outs(%arg2 = %arg0) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
      %8 = scf.for %arg3 = %c0 to %idx8192 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x8192xf64>) {
        %9 = scf.for %arg5 = %c0 to %idx8192 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x8192xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8192x8192xf64>
          %extracted_5 = tensor.extract %1[%arg3, %arg5] : tensor<8192x8192xf64>
          %10 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x8192xf64>
          %11 = arith.addf %extracted_6, %10 : f64
          %inserted = tensor.insert %11 into %arg6[%idx0, %arg5] : tensor<1x8192xf64>
          scf.yield %inserted : tensor<1x8192xf64>
        }
        scf.yield %9 : tensor<1x8192xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %8 into %arg2[%arg1, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
      }
    }
    it.yield %7 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = call @getTime() : () -> f64
  %4 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8192x8192xf64>):
    %7 = scf.forall (%arg1) in (%idx8192) shared_outs(%arg2 = %arg0) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
      %8 = scf.for %arg3 = %c0 to %idx8192 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x8192xf64>) {
        %9 = scf.for %arg5 = %c0 to %idx8192 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x8192xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8192x8192xf64>
          %extracted_5 = tensor.extract %1[%arg3, %arg5] : tensor<8192x8192xf64>
          %10 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x8192xf64>
          %11 = arith.addf %extracted_6, %10 : f64
          %inserted = tensor.insert %11 into %arg6[%idx0, %arg5] : tensor<1x8192xf64>
          scf.yield %inserted : tensor<1x8192xf64>
        }
        scf.yield %9 : tensor<1x8192xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %8 into %arg2[%arg1, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
      }
    }
    it.yield %7 : tensor<8192x8192xf64>
  }) : (tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.forall (%arg0) in (%idx8192) shared_outs(%arg1 = %2) -> (tensor<8192x8192xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
    %7 = scf.for %arg2 = %c0 to %idx8192 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x8192xf64>) {
      %8 = scf.for %arg4 = %c0 to %idx8192 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x8192xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8192x8192xf64>
        %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<8192x8192xf64>
        %9 = arith.mulf %extracted, %extracted_5 : f64
        %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        %10 = arith.addf %extracted_6, %9 : f64
        %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        scf.yield %inserted : tensor<1x8192xf64>
      }
      scf.yield %8 : tensor<1x8192xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
    }
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.forall (%arg0) in (8192) shared_outs(%arg1 = %2) -> (tensor<8192x8192xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
    %7 = scf.for %arg2 = %c0 to %idx8192 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x8192xf64>) {
      %8 = scf.for %arg4 = %c0 to %idx8192 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x8192xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8192x8192xf64>
        %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<8192x8192xf64>
        %9 = arith.mulf %extracted, %extracted_5 : f64
        %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        %10 = arith.addf %extracted_6, %9 : f64
        %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        scf.yield %inserted : tensor<1x8192xf64>
      }
      scf.yield %8 : tensor<1x8192xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
    }
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.forall (%arg0) in (8192) shared_outs(%arg1 = %2) -> (tensor<8192x8192xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
    %7 = scf.for %arg2 = %c0 to %idx8192 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x8192xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8192x8192xf64>
      %8 = scf.for %arg4 = %c0 to %idx8192 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x8192xf64>) {
        %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<8192x8192xf64>
        %9 = arith.mulf %extracted, %extracted_5 : f64
        %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        %10 = arith.addf %extracted_6, %9 : f64
        %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        scf.yield %inserted : tensor<1x8192xf64>
      }
      scf.yield %8 : tensor<1x8192xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
    }
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.forall (%arg0) in (8192) shared_outs(%arg1 = %2) -> (tensor<8192x8192xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
    %7 = scf.for %arg2 = %c0 to %idx8192 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x8192xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8192x8192xf64>
      %8 = scf.for %arg4 = %c0 to %idx8192 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x8192xf64>) {
        %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<8192x8192xf64>
        %9 = arith.mulf %extracted, %extracted_5 : f64
        %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        %10 = arith.addf %extracted_6, %9 : f64
        %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        scf.yield %inserted : tensor<1x8192xf64>
      }
      scf.yield %8 : tensor<1x8192xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
    }
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.forall (%arg0) in (8192) shared_outs(%arg1 = %2) -> (tensor<8192x8192xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
    %7 = scf.for %arg2 = %c0 to %idx8192 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x8192xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8192x8192xf64>
      %8 = scf.for %arg4 = %c0 to %idx8192 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x8192xf64>) {
        %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<8192x8192xf64>
        %9 = arith.mulf %extracted, %extracted_5 : f64
        %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        %10 = arith.addf %extracted_6, %9 : f64
        %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x8192xf64>
        scf.yield %inserted : tensor<1x8192xf64>
      }
      scf.yield %8 : tensor<1x8192xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
    }
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.forall (%arg0) in (8192) shared_outs(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
      %7 = scf.for %arg2 = %c0 to %idx8192 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x8192xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8192x8192xf64>
        %8 = scf.for %arg4 = %c0 to %idx8192 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x8192xf64>) {
          %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<8192x8192xf64>
          %9 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x8192xf64>
          %10 = arith.addf %extracted_6, %9 : f64
          %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x8192xf64>
          scf.yield %inserted : tensor<1x8192xf64>
        }
        scf.yield %8 : tensor<1x8192xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
      }
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.forall (%arg0) in (8192) shared_outs(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
      %7 = scf.for %arg2 = %c0 to %idx8192 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x8192xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8192x8192xf64>
        %8 = scf.for %arg4 = %c0 to %idx8192 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x8192xf64>) {
          %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<8192x8192xf64>
          %9 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x8192xf64>
          %10 = arith.addf %extracted_6, %9 : f64
          %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x8192xf64>
          scf.yield %inserted : tensor<1x8192xf64>
        }
        scf.yield %8 : tensor<1x8192xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
      }
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.forall (%arg0) in (8192) shared_outs(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<8192x8192xf64> to tensor<1x8192xf64>
      %7 = scf.for %arg2 = %c0 to %idx8192 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x8192xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8192x8192xf64>
        %8 = scf.for %arg4 = %c0 to %idx8192 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x8192xf64>) {
          %extracted_5 = tensor.extract %1[%arg2, %arg4] : tensor<8192x8192xf64>
          %9 = arith.mulf %extracted, %extracted_5 : f64
          %extracted_6 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x8192xf64>
          %10 = arith.addf %extracted_6, %9 : f64
          %inserted = tensor.insert %10 into %arg5[%idx0, %arg4] : tensor<1x8192xf64>
          scf.yield %inserted : tensor<1x8192xf64>
        }
        scf.yield %8 : tensor<1x8192xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %7 into %arg1[%arg0, 0] [1, 8192] [1, 1] : tensor<1x8192xf64> into tensor<8192x8192xf64>
      }
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (8192) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
      %3 = scf.for %arg1 = %c0 to %idx8192 step %c1 iter_args(%arg2 = %subview) -> (memref<1x8192xf64, strided<[8192, 1], offset: ?>>) {
        %4 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        %5 = scf.for %arg3 = %c0 to %idx8192 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x8192xf64, strided<[8192, 1], offset: ?>>) {
          %6 = memref.load %alloc_2[%arg1, %arg3] : memref<8192x8192xf64>
          %7 = arith.mulf %4, %6 : f64
          %8 = memref.load %arg4[%idx0, %arg3] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %arg4[%idx0, %arg3] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
          scf.yield %arg4 : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
        }
        scf.yield %5 : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
      }
      %subview_5 = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
      memref.copy %3, %subview_5 : memref<1x8192xf64, strided<[8192, 1], offset: ?>> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %0 = call @getTime() : () -> f64
  scf.forall (%arg0) in (8192) {
    %subview = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    %3 = scf.for %arg1 = %c0 to %idx8192 step %c1 iter_args(%arg2 = %subview) -> (memref<1x8192xf64, strided<[8192, 1], offset: ?>>) {
      %4 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      %5 = scf.for %arg3 = %c0 to %idx8192 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x8192xf64, strided<[8192, 1], offset: ?>>) {
        %6 = memref.load %alloc_2[%arg1, %arg3] : memref<8192x8192xf64>
        %7 = arith.mulf %4, %6 : f64
        %8 = memref.load %arg4[%idx0, %arg3] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
        %9 = arith.addf %8, %7 : f64
        memref.store %9, %arg4[%idx0, %arg3] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
        scf.yield %arg4 : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
      }
      scf.yield %5 : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    }
    %subview_5 = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    memref.copy %3, %subview_5 : memref<1x8192xf64, strided<[8192, 1], offset: ?>> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %0 = call @getTime() : () -> f64
  scf.forall (%arg0) in (8192) {
    %subview = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    %3 = scf.for %arg1 = %c0 to %idx8192 step %c1 iter_args(%arg2 = %subview) -> (memref<1x8192xf64, strided<[8192, 1], offset: ?>>) {
      %4 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      %5 = scf.for %arg3 = %c0 to %idx8192 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x8192xf64, strided<[8192, 1], offset: ?>>) {
        %6 = memref.load %alloc_2[%arg1, %arg3] : memref<8192x8192xf64>
        %7 = arith.mulf %4, %6 : f64
        %8 = memref.load %arg4[%idx0, %arg3] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
        %9 = arith.addf %8, %7 : f64
        memref.store %9, %arg4[%idx0, %arg3] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
        scf.yield %arg4 : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
      }
      scf.yield %5 : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    }
    %subview_5 = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    memref.copy %3, %subview_5 : memref<1x8192xf64, strided<[8192, 1], offset: ?>> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (8192) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx8192 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        scf.for %arg2 = %c0 to %idx8192 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %subview[%idx0, %arg2] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %subview[%idx0, %arg2] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
        }
      }
      %subview_5 = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
      memref.copy %subview, %subview_5 : memref<1x8192xf64, strided<[8192, 1], offset: ?>> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (8192) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx8192 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        scf.for %arg2 = %c0 to %idx8192 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %subview[%idx0, %arg2] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %subview[%idx0, %arg2] : memref<1x8192xf64, strided<[8192, 1], offset: ?>>
        }
      }
      memref.copy %subview, %subview : memref<1x8192xf64, strided<[8192, 1], offset: ?>> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (8192) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 8192] [1, 1] : memref<8192x8192xf64> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx8192 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        scf.for %arg2 = %c0 to %idx8192 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
        }
      }
      memref.copy %subview, %subview : memref<1x8192xf64, strided<[8192, 1], offset: ?>> to memref<1x8192xf64, strided<[8192, 1], offset: ?>>
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (8192) {
      scf.for %arg1 = %c0 to %idx8192 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        scf.for %arg2 = %c0 to %idx8192 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %0 = call @getTime() : () -> f64
  scf.forall (%arg0) in (8192) {
    scf.for %arg1 = %c0 to %idx8192 step %c1 {
      %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      scf.for %arg2 = %c0 to %idx8192 step %c1 {
        %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
      }
    }
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8192xf64>
    }
  }
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8192x8192xf64>
    }
  }
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
    }
  }
  %0 = call @getTime() : () -> f64
  scf.forall (%arg0) in (8192) {
    scf.for %arg1 = %c0 to %idx8192 step %c1 {
      %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      scf.for %arg2 = %c0 to %idx8192 step %c1 {
        %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
      }
    }
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.forall (%arg0) in (8192) {
      scf.for %arg1 = %c0 to %idx8192 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        scf.for %arg2 = %c0 to %idx8192 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    %c0_4 = arith.constant 0 : index
    %c8192_5 = arith.constant 8192 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_4) to (%c8192_5) step (%c1_6) {
      scf.for %arg1 = %c0 to %idx8192 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        scf.for %arg2 = %c0 to %idx8192 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
        }
      }
      scf.reduce 
    }
    %1 = call @getTime() : () -> f64
    %alloc_7 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_7[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
        %4 = memref.load %alloc_7[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_7[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_7[%c0] : memref<1xf64>
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


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    %c0_4 = arith.constant 0 : index
    %c8192_5 = arith.constant 8192 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_4) to (%c8192_5) step (%c1_6) {
      scf.for %arg1 = %c0 to %idx8192 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        scf.for %arg2 = %c0 to %idx8192 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
        }
      }
      scf.reduce 
    }
    %1 = call @getTime() : () -> f64
    %alloc_7 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_7[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
        %4 = memref.load %alloc_7[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_7[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_7[%c0] : memref<1xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.parallel (%arg0) = (%c0) to (%c8192) step (%c1) {
      scf.for %arg1 = %c0 to %idx8192 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        scf.for %arg2 = %c0 to %idx8192 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
        }
      }
      scf.reduce 
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.parallel (%arg0) = (%c0) to (%c8192) step (%c1) {
      scf.for %arg1 = %c0 to %idx8192 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
        scf.for %arg2 = %c0 to %idx8192 step %c1 {
          %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
        }
      }
      scf.reduce 
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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


// -----// IR Dump After ConvertSCFToOpenMPPass (convert-scf-to-openmp) //----- //
module {
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    %1 = llvm.mlir.constant(1 : i64) : i64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
          memref.alloca_scope  {
            scf.for %arg1 = %c0 to %idx8192 step %c1 {
              %4 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
              scf.for %arg2 = %c0 to %idx8192 step %c1 {
                %5 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
                %8 = arith.addf %7, %6 : f64
                memref.store %8, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
              }
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %2 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %4 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
        %5 = memref.load %alloc_4[%c0] : memref<1xf64>
        %6 = arith.addf %4, %5 : f64
        memref.store %6, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %3 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%3) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%0, %2) : (f64, f64) -> ()
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
          scf.for %arg1 = %c0 to %idx8192 step %c1 {
            %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
            scf.for %arg2 = %c0 to %idx8192 step %c1 {
              %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
              %7 = arith.addf %6, %5 : f64
              memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
          scf.for %arg1 = %c0 to %idx8192 step %c1 {
            %3 = memref.load %alloc[%arg0, %arg1] : memref<8192x8192xf64>
            scf.for %arg2 = %c0 to %idx8192 step %c1 {
              %4 = memref.load %alloc_2[%arg1, %arg2] : memref<8192x8192xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = memref.load %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
              %7 = arith.addf %6, %5 : f64
              memref.store %7, %alloc_3[%arg0, %arg2] : memref<8192x8192xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8192xf64>
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


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8192 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8192xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8192 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8192 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8192x8192xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8192 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8192xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%30: index):  // 2 preds: ^bb0, ^bb5
          %31 = arith.cmpi slt, %30, %idx8192 : index
          cf.cond_br %31, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %32 = memref.load %alloc[%arg0, %30] : memref<8192x8192xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%33: index):  // 2 preds: ^bb2, ^bb4
          %34 = arith.cmpi slt, %33, %idx8192 : index
          cf.cond_br %34, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %35 = memref.load %alloc_2[%30, %33] : memref<8192x8192xf64>
          %36 = arith.mulf %32, %35 : f64
          %37 = memref.load %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %38 = arith.addf %37, %36 : f64
          memref.store %38, %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %39 = arith.addi %33, %c1 : index
          cf.br ^bb3(%39 : index)
        ^bb5:  // pred: ^bb3
          %40 = arith.addi %30, %c1 : index
          cf.br ^bb1(%40 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %19 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%20: index):  // 2 preds: ^bb18, ^bb23
    %21 = arith.cmpi slt, %20, %c8192 : index
    cf.cond_br %21, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%22: index):  // 2 preds: ^bb20, ^bb22
    %23 = arith.cmpi slt, %22, %c8192 : index
    cf.cond_br %23, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %24 = memref.load %alloc_3[%20, %22] : memref<8192x8192xf64>
    %25 = memref.load %alloc_4[%c0] : memref<1xf64>
    %26 = arith.addf %24, %25 : f64
    memref.store %26, %alloc_4[%c0] : memref<1xf64>
    %27 = arith.addi %22, %c1 : index
    cf.br ^bb21(%27 : index)
  ^bb23:  // pred: ^bb21
    %28 = arith.addi %20, %c1 : index
    cf.br ^bb19(%28 : index)
  ^bb24:  // pred: ^bb19
    %29 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%29) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %19) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8192 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8192xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8192 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8192 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8192x8192xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8192 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8192xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%30: index):  // 2 preds: ^bb0, ^bb5
          %31 = arith.cmpi slt, %30, %idx8192 : index
          cf.cond_br %31, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %32 = memref.load %alloc[%arg0, %30] : memref<8192x8192xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%33: index):  // 2 preds: ^bb2, ^bb4
          %34 = arith.cmpi slt, %33, %idx8192 : index
          cf.cond_br %34, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %35 = memref.load %alloc_2[%30, %33] : memref<8192x8192xf64>
          %36 = arith.mulf %32, %35 : f64
          %37 = memref.load %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %38 = arith.addf %37, %36 : f64
          memref.store %38, %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %39 = arith.addi %33, %c1 : index
          cf.br ^bb3(%39 : index)
        ^bb5:  // pred: ^bb3
          %40 = arith.addi %30, %c1 : index
          cf.br ^bb1(%40 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %19 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%20: index):  // 2 preds: ^bb18, ^bb23
    %21 = arith.cmpi slt, %20, %c8192 : index
    cf.cond_br %21, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%22: index):  // 2 preds: ^bb20, ^bb22
    %23 = arith.cmpi slt, %22, %c8192 : index
    cf.cond_br %23, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %24 = memref.load %alloc_3[%20, %22] : memref<8192x8192xf64>
    %25 = memref.load %alloc_4[%c0] : memref<1xf64>
    %26 = arith.addf %24, %25 : f64
    memref.store %26, %alloc_4[%c0] : memref<1xf64>
    %27 = arith.addi %22, %c1 : index
    cf.br ^bb21(%27 : index)
  ^bb23:  // pred: ^bb21
    %28 = arith.addi %20, %c1 : index
    cf.br ^bb19(%28 : index)
  ^bb24:  // pred: ^bb19
    %29 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%29) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %19) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c8192 = arith.constant 8192 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx8192 = index.constant 8192
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
  %1 = arith.cmpi slt, %0, %c8192 : index
  cf.cond_br %1, ^bb2, ^bb6
^bb2:  // pred: ^bb1
  cf.br ^bb3(%c0 : index)
^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
  %3 = arith.cmpi slt, %2, %c8192 : index
  cf.cond_br %3, ^bb4, ^bb5
^bb4:  // pred: ^bb3
  memref.store %cst_1, %alloc[%0, %2] : memref<8192x8192xf64>
  %4 = arith.addi %2, %c1 : index
  cf.br ^bb3(%4 : index)
^bb5:  // pred: ^bb3
  %5 = arith.addi %0, %c1 : index
  cf.br ^bb1(%5 : index)
^bb6:  // pred: ^bb1
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  cf.br ^bb7(%c0 : index)
^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
  %7 = arith.cmpi slt, %6, %c8192 : index
  cf.cond_br %7, ^bb8, ^bb12
^bb8:  // pred: ^bb7
  cf.br ^bb9(%c0 : index)
^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
  %9 = arith.cmpi slt, %8, %c8192 : index
  cf.cond_br %9, ^bb10, ^bb11
^bb10:  // pred: ^bb9
  memref.store %cst_0, %alloc_2[%6, %8] : memref<8192x8192xf64>
  %10 = arith.addi %8, %c1 : index
  cf.br ^bb9(%10 : index)
^bb11:  // pred: ^bb9
  %11 = arith.addi %6, %c1 : index
  cf.br ^bb7(%11 : index)
^bb12:  // pred: ^bb7
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  cf.br ^bb13(%c0 : index)
^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
  %13 = arith.cmpi slt, %12, %c8192 : index
  cf.cond_br %13, ^bb14, ^bb18
^bb14:  // pred: ^bb13
  cf.br ^bb15(%c0 : index)
^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
  %15 = arith.cmpi slt, %14, %c8192 : index
  cf.cond_br %15, ^bb16, ^bb17
^bb16:  // pred: ^bb15
  memref.store %cst, %alloc_3[%12, %14] : memref<8192x8192xf64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb15(%16 : index)
^bb17:  // pred: ^bb15
  %17 = arith.addi %12, %c1 : index
  cf.br ^bb13(%17 : index)
^bb18:  // pred: ^bb13
  %18 = call @getTime() : () -> f64
  omp.parallel {
    omp.wsloop {
      omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
        cf.br ^bb1(%c0 : index)
      ^bb1(%30: index):  // 2 preds: ^bb0, ^bb5
        %31 = arith.cmpi slt, %30, %idx8192 : index
        cf.cond_br %31, ^bb2, ^bb6
      ^bb2:  // pred: ^bb1
        %32 = memref.load %alloc[%arg0, %30] : memref<8192x8192xf64>
        cf.br ^bb3(%c0 : index)
      ^bb3(%33: index):  // 2 preds: ^bb2, ^bb4
        %34 = arith.cmpi slt, %33, %idx8192 : index
        cf.cond_br %34, ^bb4, ^bb5
      ^bb4:  // pred: ^bb3
        %35 = memref.load %alloc_2[%30, %33] : memref<8192x8192xf64>
        %36 = arith.mulf %32, %35 : f64
        %37 = memref.load %alloc_3[%arg0, %33] : memref<8192x8192xf64>
        %38 = arith.addf %37, %36 : f64
        memref.store %38, %alloc_3[%arg0, %33] : memref<8192x8192xf64>
        %39 = arith.addi %33, %c1 : index
        cf.br ^bb3(%39 : index)
      ^bb5:  // pred: ^bb3
        %40 = arith.addi %30, %c1 : index
        cf.br ^bb1(%40 : index)
      ^bb6:  // pred: ^bb1
        omp.yield
      }
      omp.terminator
    }
    omp.terminator
  }
  %19 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  cf.br ^bb19(%c0 : index)
^bb19(%20: index):  // 2 preds: ^bb18, ^bb23
  %21 = arith.cmpi slt, %20, %c8192 : index
  cf.cond_br %21, ^bb20, ^bb24
^bb20:  // pred: ^bb19
  cf.br ^bb21(%c0 : index)
^bb21(%22: index):  // 2 preds: ^bb20, ^bb22
  %23 = arith.cmpi slt, %22, %c8192 : index
  cf.cond_br %23, ^bb22, ^bb23
^bb22:  // pred: ^bb21
  %24 = memref.load %alloc_3[%20, %22] : memref<8192x8192xf64>
  %25 = memref.load %alloc_4[%c0] : memref<1xf64>
  %26 = arith.addf %24, %25 : f64
  memref.store %26, %alloc_4[%c0] : memref<1xf64>
  %27 = arith.addi %22, %c1 : index
  cf.br ^bb21(%27 : index)
^bb23:  // pred: ^bb21
  %28 = arith.addi %20, %c1 : index
  cf.br ^bb19(%28 : index)
^bb24:  // pred: ^bb19
  %29 = memref.load %alloc_4[%c0] : memref<1xf64>
  call @printF64(%29) : (f64) -> ()
  call @printNewline() : () -> ()
  call @printElapsedTime(%18, %19) : (f64, f64) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8192 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8192xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8192 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8192 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8192x8192xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8192 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8192xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%30: index):  // 2 preds: ^bb0, ^bb5
          %31 = arith.cmpi slt, %30, %idx8192 : index
          cf.cond_br %31, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %32 = memref.load %alloc[%arg0, %30] : memref<8192x8192xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%33: index):  // 2 preds: ^bb2, ^bb4
          %34 = arith.cmpi slt, %33, %idx8192 : index
          cf.cond_br %34, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %35 = memref.load %alloc_2[%30, %33] : memref<8192x8192xf64>
          %36 = arith.mulf %32, %35 : f64
          %37 = memref.load %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %38 = arith.addf %37, %36 : f64
          memref.store %38, %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %39 = arith.addi %33, %c1 : index
          cf.br ^bb3(%39 : index)
        ^bb5:  // pred: ^bb3
          %40 = arith.addi %30, %c1 : index
          cf.br ^bb1(%40 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %19 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%20: index):  // 2 preds: ^bb18, ^bb23
    %21 = arith.cmpi slt, %20, %c8192 : index
    cf.cond_br %21, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%22: index):  // 2 preds: ^bb20, ^bb22
    %23 = arith.cmpi slt, %22, %c8192 : index
    cf.cond_br %23, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %24 = memref.load %alloc_3[%20, %22] : memref<8192x8192xf64>
    %25 = memref.load %alloc_4[%c0] : memref<1xf64>
    %26 = arith.addf %24, %25 : f64
    memref.store %26, %alloc_4[%c0] : memref<1xf64>
    %27 = arith.addi %22, %c1 : index
    cf.br ^bb21(%27 : index)
  ^bb23:  // pred: ^bb21
    %28 = arith.addi %20, %c1 : index
    cf.br ^bb19(%28 : index)
  ^bb24:  // pred: ^bb19
    %29 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%29) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %19) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8192 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8192xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8192 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8192 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8192x8192xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8192 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8192xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%30: index):  // 2 preds: ^bb0, ^bb5
          %31 = arith.cmpi slt, %30, %idx8192 : index
          cf.cond_br %31, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %32 = memref.load %alloc[%arg0, %30] : memref<8192x8192xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%33: index):  // 2 preds: ^bb2, ^bb4
          %34 = arith.cmpi slt, %33, %idx8192 : index
          cf.cond_br %34, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %35 = memref.load %alloc_2[%30, %33] : memref<8192x8192xf64>
          %36 = arith.mulf %32, %35 : f64
          %37 = memref.load %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %38 = arith.addf %37, %36 : f64
          memref.store %38, %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %39 = arith.addi %33, %c1 : index
          cf.br ^bb3(%39 : index)
        ^bb5:  // pred: ^bb3
          %40 = arith.addi %30, %c1 : index
          cf.br ^bb1(%40 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %19 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%20: index):  // 2 preds: ^bb18, ^bb23
    %21 = arith.cmpi slt, %20, %c8192 : index
    cf.cond_br %21, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%22: index):  // 2 preds: ^bb20, ^bb22
    %23 = arith.cmpi slt, %22, %c8192 : index
    cf.cond_br %23, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %24 = memref.load %alloc_3[%20, %22] : memref<8192x8192xf64>
    %25 = memref.load %alloc_4[%c0] : memref<1xf64>
    %26 = arith.addf %24, %25 : f64
    memref.store %26, %alloc_4[%c0] : memref<1xf64>
    %27 = arith.addi %22, %c1 : index
    cf.br ^bb21(%27 : index)
  ^bb23:  // pred: ^bb21
    %28 = arith.addi %20, %c1 : index
    cf.br ^bb19(%28 : index)
  ^bb24:  // pred: ^bb19
    %29 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%29) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %19) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertControlFlowToLLVMPass (convert-cf-to-llvm) //----- //
module {
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    llvm.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8192 : index
    llvm.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8192xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8192 : index
    llvm.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8192 : index
    llvm.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8192x8192xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    llvm.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8192 : index
    llvm.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8192xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%30: index):  // 2 preds: ^bb0, ^bb5
          %31 = arith.cmpi slt, %30, %idx8192 : index
          llvm.cond_br %31, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %32 = memref.load %alloc[%arg0, %30] : memref<8192x8192xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%33: index):  // 2 preds: ^bb2, ^bb4
          %34 = arith.cmpi slt, %33, %idx8192 : index
          llvm.cond_br %34, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %35 = memref.load %alloc_2[%30, %33] : memref<8192x8192xf64>
          %36 = arith.mulf %32, %35 : f64
          %37 = memref.load %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %38 = arith.addf %37, %36 : f64
          memref.store %38, %alloc_3[%arg0, %33] : memref<8192x8192xf64>
          %39 = arith.addi %33, %c1 : index
          cf.br ^bb3(%39 : index)
        ^bb5:  // pred: ^bb3
          %40 = arith.addi %30, %c1 : index
          cf.br ^bb1(%40 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %19 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%20: index):  // 2 preds: ^bb18, ^bb23
    %21 = arith.cmpi slt, %20, %c8192 : index
    llvm.cond_br %21, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%22: index):  // 2 preds: ^bb20, ^bb22
    %23 = arith.cmpi slt, %22, %c8192 : index
    llvm.cond_br %23, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %24 = memref.load %alloc_3[%20, %22] : memref<8192x8192xf64>
    %25 = memref.load %alloc_4[%c0] : memref<1xf64>
    %26 = arith.addf %24, %25 : f64
    memref.store %26, %alloc_4[%c0] : memref<1xf64>
    %27 = arith.addi %22, %c1 : index
    cf.br ^bb21(%27 : index)
  ^bb23:  // pred: ^bb21
    %28 = arith.addi %20, %c1 : index
    cf.br ^bb19(%28 : index)
  ^bb24:  // pred: ^bb19
    %29 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%29) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %19) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @main() {
    %c8192 = arith.constant 8192 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = builtin.unrealized_conversion_cast %c0 : index to i64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx8192 = index.constant 8192
    %1 = llvm.mlir.constant(8192 : index) : i64
    %2 = llvm.mlir.constant(8192 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(67108864 : index) : i64
    %5 = llvm.mlir.zero : !llvm.ptr
    %6 = llvm.getelementptr %5[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %7 = llvm.ptrtoint %6 : !llvm.ptr to i64
    %8 = llvm.mlir.constant(32 : index) : i64
    %9 = llvm.add %7, %8 : i64
    %10 = llvm.call @malloc(%9) : (i64) -> !llvm.ptr
    %11 = llvm.ptrtoint %10 : !llvm.ptr to i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.sub %8, %12 : i64
    %14 = llvm.add %11, %13 : i64
    %15 = llvm.urem %14, %8  : i64
    %16 = llvm.sub %14, %15 : i64
    %17 = llvm.inttoptr %16 : i64 to !llvm.ptr
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %19 = llvm.insertvalue %10, %18[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %1, %22[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %2, %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %2, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %3, %25[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%27: index):  // 2 preds: ^bb0, ^bb5
    %28 = builtin.unrealized_conversion_cast %27 : index to i64
    %29 = arith.cmpi slt, %27, %c8192 : index
    llvm.cond_br %29, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%30: index):  // 2 preds: ^bb2, ^bb4
    %31 = builtin.unrealized_conversion_cast %30 : index to i64
    %32 = arith.cmpi slt, %30, %c8192 : index
    llvm.cond_br %32, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %33 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.constant(8192 : index) : i64
    %35 = llvm.mul %28, %34 : i64
    %36 = llvm.add %35, %31 : i64
    %37 = llvm.getelementptr %33[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_1, %37 : f64, !llvm.ptr
    %38 = arith.addi %30, %c1 : index
    cf.br ^bb3(%38 : index)
  ^bb5:  // pred: ^bb3
    %39 = arith.addi %27, %c1 : index
    cf.br ^bb1(%39 : index)
  ^bb6:  // pred: ^bb1
    %40 = llvm.mlir.constant(8192 : index) : i64
    %41 = llvm.mlir.constant(8192 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(67108864 : index) : i64
    %44 = llvm.mlir.zero : !llvm.ptr
    %45 = llvm.getelementptr %44[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %46 = llvm.ptrtoint %45 : !llvm.ptr to i64
    %47 = llvm.mlir.constant(32 : index) : i64
    %48 = llvm.add %46, %47 : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr
    %50 = llvm.ptrtoint %49 : !llvm.ptr to i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.sub %47, %51 : i64
    %53 = llvm.add %50, %52 : i64
    %54 = llvm.urem %53, %47  : i64
    %55 = llvm.sub %53, %54 : i64
    %56 = llvm.inttoptr %55 : i64 to !llvm.ptr
    %57 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %58 = llvm.insertvalue %49, %57[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.insertvalue %40, %61[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %41, %62[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.insertvalue %41, %63[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.insertvalue %42, %64[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb7(%c0 : index)
  ^bb7(%66: index):  // 2 preds: ^bb6, ^bb11
    %67 = builtin.unrealized_conversion_cast %66 : index to i64
    %68 = arith.cmpi slt, %66, %c8192 : index
    llvm.cond_br %68, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%69: index):  // 2 preds: ^bb8, ^bb10
    %70 = builtin.unrealized_conversion_cast %69 : index to i64
    %71 = arith.cmpi slt, %69, %c8192 : index
    llvm.cond_br %71, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %72 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.mlir.constant(8192 : index) : i64
    %74 = llvm.mul %67, %73 : i64
    %75 = llvm.add %74, %70 : i64
    %76 = llvm.getelementptr %72[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %76 : f64, !llvm.ptr
    %77 = arith.addi %69, %c1 : index
    cf.br ^bb9(%77 : index)
  ^bb11:  // pred: ^bb9
    %78 = arith.addi %66, %c1 : index
    cf.br ^bb7(%78 : index)
  ^bb12:  // pred: ^bb7
    %79 = llvm.mlir.constant(8192 : index) : i64
    %80 = llvm.mlir.constant(8192 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(67108864 : index) : i64
    %83 = llvm.mlir.zero : !llvm.ptr
    %84 = llvm.getelementptr %83[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %85 = llvm.ptrtoint %84 : !llvm.ptr to i64
    %86 = llvm.mlir.constant(32 : index) : i64
    %87 = llvm.add %85, %86 : i64
    %88 = llvm.call @malloc(%87) : (i64) -> !llvm.ptr
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.sub %86, %90 : i64
    %92 = llvm.add %89, %91 : i64
    %93 = llvm.urem %92, %86  : i64
    %94 = llvm.sub %92, %93 : i64
    %95 = llvm.inttoptr %94 : i64 to !llvm.ptr
    %96 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %97 = llvm.insertvalue %88, %96[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.insertvalue %95, %97[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.insertvalue %99, %98[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.insertvalue %79, %100[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %80, %101[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %80, %102[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %81, %103[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb13(%c0 : index)
  ^bb13(%105: index):  // 2 preds: ^bb12, ^bb17
    %106 = builtin.unrealized_conversion_cast %105 : index to i64
    %107 = arith.cmpi slt, %105, %c8192 : index
    llvm.cond_br %107, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%108: index):  // 2 preds: ^bb14, ^bb16
    %109 = builtin.unrealized_conversion_cast %108 : index to i64
    %110 = arith.cmpi slt, %108, %c8192 : index
    llvm.cond_br %110, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %111 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.mlir.constant(8192 : index) : i64
    %113 = llvm.mul %106, %112 : i64
    %114 = llvm.add %113, %109 : i64
    %115 = llvm.getelementptr %111[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %115 : f64, !llvm.ptr
    %116 = arith.addi %108, %c1 : index
    cf.br ^bb15(%116 : index)
  ^bb17:  // pred: ^bb15
    %117 = arith.addi %105, %c1 : index
    cf.br ^bb13(%117 : index)
  ^bb18:  // pred: ^bb13
    %118 = call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8192) step (%c1) {
          %158 = builtin.unrealized_conversion_cast %arg0 : index to i64
          cf.br ^bb1(%c0 : index)
        ^bb1(%159: index):  // 2 preds: ^bb0, ^bb5
          %160 = builtin.unrealized_conversion_cast %159 : index to i64
          %161 = arith.cmpi slt, %159, %idx8192 : index
          llvm.cond_br %161, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %162 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %163 = llvm.mlir.constant(8192 : index) : i64
          %164 = llvm.mul %158, %163 : i64
          %165 = llvm.add %164, %160 : i64
          %166 = llvm.getelementptr %162[%165] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %167 = llvm.load %166 : !llvm.ptr -> f64
          cf.br ^bb3(%c0 : index)
        ^bb3(%168: index):  // 2 preds: ^bb2, ^bb4
          %169 = builtin.unrealized_conversion_cast %168 : index to i64
          %170 = arith.cmpi slt, %168, %idx8192 : index
          llvm.cond_br %170, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %171 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %172 = llvm.mlir.constant(8192 : index) : i64
          %173 = llvm.mul %160, %172 : i64
          %174 = llvm.add %173, %169 : i64
          %175 = llvm.getelementptr %171[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %176 = llvm.load %175 : !llvm.ptr -> f64
          %177 = arith.mulf %167, %176 : f64
          %178 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %179 = llvm.mlir.constant(8192 : index) : i64
          %180 = llvm.mul %158, %179 : i64
          %181 = llvm.add %180, %169 : i64
          %182 = llvm.getelementptr %178[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %183 = llvm.load %182 : !llvm.ptr -> f64
          %184 = arith.addf %183, %177 : f64
          %185 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %186 = llvm.mlir.constant(8192 : index) : i64
          %187 = llvm.mul %158, %186 : i64
          %188 = llvm.add %187, %169 : i64
          %189 = llvm.getelementptr %185[%188] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %184, %189 : f64, !llvm.ptr
          %190 = arith.addi %168, %c1 : index
          cf.br ^bb3(%190 : index)
        ^bb5:  // pred: ^bb3
          %191 = arith.addi %159, %c1 : index
          cf.br ^bb1(%191 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %119 = call @getTime() : () -> f64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.zero : !llvm.ptr
    %123 = llvm.getelementptr %122[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %124 = llvm.ptrtoint %123 : !llvm.ptr to i64
    %125 = llvm.call @malloc(%124) : (i64) -> !llvm.ptr
    %126 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %127 = llvm.insertvalue %125, %126[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.insertvalue %129, %128[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %120, %130[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %121, %131[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.getelementptr %133[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %134 : f64, !llvm.ptr
    cf.br ^bb19(%c0 : index)
  ^bb19(%135: index):  // 2 preds: ^bb18, ^bb23
    %136 = builtin.unrealized_conversion_cast %135 : index to i64
    %137 = arith.cmpi slt, %135, %c8192 : index
    llvm.cond_br %137, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%138: index):  // 2 preds: ^bb20, ^bb22
    %139 = builtin.unrealized_conversion_cast %138 : index to i64
    %140 = arith.cmpi slt, %138, %c8192 : index
    llvm.cond_br %140, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %141 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.mlir.constant(8192 : index) : i64
    %143 = llvm.mul %136, %142 : i64
    %144 = llvm.add %143, %139 : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %146 = llvm.load %145 : !llvm.ptr -> f64
    %147 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.getelementptr %147[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %149 = llvm.load %148 : !llvm.ptr -> f64
    %150 = arith.addf %146, %149 : f64
    %151 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.getelementptr %151[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %150, %152 : f64, !llvm.ptr
    %153 = arith.addi %138, %c1 : index
    cf.br ^bb21(%153 : index)
  ^bb23:  // pred: ^bb21
    %154 = arith.addi %135, %c1 : index
    cf.br ^bb19(%154 : index)
  ^bb24:  // pred: ^bb19
    %155 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.getelementptr %155[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %157 = llvm.load %156 : !llvm.ptr -> f64
    call @printF64(%157) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%118, %119) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(8192 : index) : i64
    %1 = builtin.unrealized_conversion_cast %0 : i64 to index
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = builtin.unrealized_conversion_cast %5 : index to i64
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %9 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %idx8192 = index.constant 8192
    %10 = builtin.unrealized_conversion_cast %idx8192 : index to i64
    %11 = llvm.mlir.constant(8192 : index) : i64
    %12 = llvm.mlir.constant(8192 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(67108864 : index) : i64
    %15 = llvm.mlir.zero : !llvm.ptr
    %16 = llvm.getelementptr %15[%14] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(32 : index) : i64
    %19 = llvm.add %17, %18 : i64
    %20 = llvm.call @malloc(%19) : (i64) -> !llvm.ptr
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.sub %18, %22 : i64
    %24 = llvm.add %21, %23 : i64
    %25 = llvm.urem %24, %18  : i64
    %26 = llvm.sub %24, %25 : i64
    %27 = llvm.inttoptr %26 : i64 to !llvm.ptr
    %28 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %20, %28[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %11, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %12, %33[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %12, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %13, %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb5
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = builtin.unrealized_conversion_cast %38 : index to i64
    %40 = llvm.icmp "slt" %37, %0 : i64
    llvm.cond_br %40, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%41: i64):  // 2 preds: ^bb2, ^bb4
    %42 = builtin.unrealized_conversion_cast %41 : i64 to index
    %43 = builtin.unrealized_conversion_cast %42 : index to i64
    %44 = llvm.icmp "slt" %41, %0 : i64
    llvm.cond_br %44, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %45 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.mlir.constant(8192 : index) : i64
    %47 = llvm.mul %39, %46 : i64
    %48 = llvm.add %47, %43 : i64
    %49 = llvm.getelementptr %45[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %49 : f64, !llvm.ptr
    %50 = llvm.add %41, %2 : i64
    llvm.br ^bb3(%50 : i64)
  ^bb5:  // pred: ^bb3
    %51 = llvm.add %37, %2 : i64
    llvm.br ^bb1(%51 : i64)
  ^bb6:  // pred: ^bb1
    %52 = llvm.mlir.constant(8192 : index) : i64
    %53 = llvm.mlir.constant(8192 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(67108864 : index) : i64
    %56 = llvm.mlir.zero : !llvm.ptr
    %57 = llvm.getelementptr %56[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %58 = llvm.ptrtoint %57 : !llvm.ptr to i64
    %59 = llvm.mlir.constant(32 : index) : i64
    %60 = llvm.add %58, %59 : i64
    %61 = llvm.call @malloc(%60) : (i64) -> !llvm.ptr
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.sub %59, %63 : i64
    %65 = llvm.add %62, %64 : i64
    %66 = llvm.urem %65, %59  : i64
    %67 = llvm.sub %65, %66 : i64
    %68 = llvm.inttoptr %67 : i64 to !llvm.ptr
    %69 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %70 = llvm.insertvalue %61, %69[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %68, %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.insertvalue %72, %71[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.insertvalue %52, %73[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.insertvalue %53, %74[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.insertvalue %53, %75[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.insertvalue %54, %76[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%78: i64):  // 2 preds: ^bb6, ^bb11
    %79 = builtin.unrealized_conversion_cast %78 : i64 to index
    %80 = builtin.unrealized_conversion_cast %79 : index to i64
    %81 = llvm.icmp "slt" %78, %0 : i64
    llvm.cond_br %81, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%82: i64):  // 2 preds: ^bb8, ^bb10
    %83 = builtin.unrealized_conversion_cast %82 : i64 to index
    %84 = builtin.unrealized_conversion_cast %83 : index to i64
    %85 = llvm.icmp "slt" %82, %0 : i64
    llvm.cond_br %85, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %86 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.mlir.constant(8192 : index) : i64
    %88 = llvm.mul %80, %87 : i64
    %89 = llvm.add %88, %84 : i64
    %90 = llvm.getelementptr %86[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %90 : f64, !llvm.ptr
    %91 = llvm.add %82, %2 : i64
    llvm.br ^bb9(%91 : i64)
  ^bb11:  // pred: ^bb9
    %92 = llvm.add %78, %2 : i64
    llvm.br ^bb7(%92 : i64)
  ^bb12:  // pred: ^bb7
    %93 = llvm.mlir.constant(8192 : index) : i64
    %94 = llvm.mlir.constant(8192 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(67108864 : index) : i64
    %97 = llvm.mlir.zero : !llvm.ptr
    %98 = llvm.getelementptr %97[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %99 = llvm.ptrtoint %98 : !llvm.ptr to i64
    %100 = llvm.mlir.constant(32 : index) : i64
    %101 = llvm.add %99, %100 : i64
    %102 = llvm.call @malloc(%101) : (i64) -> !llvm.ptr
    %103 = llvm.ptrtoint %102 : !llvm.ptr to i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.sub %100, %104 : i64
    %106 = llvm.add %103, %105 : i64
    %107 = llvm.urem %106, %100  : i64
    %108 = llvm.sub %106, %107 : i64
    %109 = llvm.inttoptr %108 : i64 to !llvm.ptr
    %110 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %111 = llvm.insertvalue %102, %110[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.insertvalue %109, %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.insertvalue %113, %112[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.insertvalue %93, %114[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.insertvalue %94, %115[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.insertvalue %94, %116[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %95, %117[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%119: i64):  // 2 preds: ^bb12, ^bb17
    %120 = builtin.unrealized_conversion_cast %119 : i64 to index
    %121 = builtin.unrealized_conversion_cast %120 : index to i64
    %122 = llvm.icmp "slt" %119, %0 : i64
    llvm.cond_br %122, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%123: i64):  // 2 preds: ^bb14, ^bb16
    %124 = builtin.unrealized_conversion_cast %123 : i64 to index
    %125 = builtin.unrealized_conversion_cast %124 : index to i64
    %126 = llvm.icmp "slt" %123, %0 : i64
    llvm.cond_br %126, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %127 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.mlir.constant(8192 : index) : i64
    %129 = llvm.mul %121, %128 : i64
    %130 = llvm.add %129, %125 : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %131 : f64, !llvm.ptr
    %132 = llvm.add %123, %2 : i64
    llvm.br ^bb15(%132 : i64)
  ^bb17:  // pred: ^bb15
    %133 = llvm.add %119, %2 : i64
    llvm.br ^bb13(%133 : i64)
  ^bb18:  // pred: ^bb13
    %134 = llvm.call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%5) to (%1) step (%3) {
          %176 = builtin.unrealized_conversion_cast %arg0 : index to i64
          cf.br ^bb1(%5 : index)
        ^bb1(%177: index):  // 2 preds: ^bb0, ^bb5
          %178 = builtin.unrealized_conversion_cast %177 : index to i64
          %179 = builtin.unrealized_conversion_cast %177 : index to i64
          %180 = llvm.icmp "slt" %178, %10 : i64
          llvm.cond_br %180, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %181 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %182 = llvm.mlir.constant(8192 : index) : i64
          %183 = llvm.mul %176, %182 : i64
          %184 = llvm.add %183, %179 : i64
          %185 = llvm.getelementptr %181[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %186 = llvm.load %185 : !llvm.ptr -> f64
          cf.br ^bb3(%5 : index)
        ^bb3(%187: index):  // 2 preds: ^bb2, ^bb4
          %188 = builtin.unrealized_conversion_cast %187 : index to i64
          %189 = builtin.unrealized_conversion_cast %187 : index to i64
          %190 = llvm.icmp "slt" %188, %10 : i64
          llvm.cond_br %190, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %191 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %192 = llvm.mlir.constant(8192 : index) : i64
          %193 = llvm.mul %179, %192 : i64
          %194 = llvm.add %193, %189 : i64
          %195 = llvm.getelementptr %191[%194] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %196 = llvm.load %195 : !llvm.ptr -> f64
          %197 = llvm.fmul %186, %196  : f64
          %198 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %199 = llvm.mlir.constant(8192 : index) : i64
          %200 = llvm.mul %176, %199 : i64
          %201 = llvm.add %200, %189 : i64
          %202 = llvm.getelementptr %198[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %203 = llvm.load %202 : !llvm.ptr -> f64
          %204 = llvm.fadd %203, %197  : f64
          %205 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %206 = llvm.mlir.constant(8192 : index) : i64
          %207 = llvm.mul %176, %206 : i64
          %208 = llvm.add %207, %189 : i64
          %209 = llvm.getelementptr %205[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %204, %209 : f64, !llvm.ptr
          %210 = llvm.add %188, %2 : i64
          %211 = builtin.unrealized_conversion_cast %210 : i64 to index
          cf.br ^bb3(%211 : index)
        ^bb5:  // pred: ^bb3
          %212 = llvm.add %178, %2 : i64
          %213 = builtin.unrealized_conversion_cast %212 : i64 to index
          cf.br ^bb1(%213 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %135 = llvm.call @getTime() : () -> f64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.zero : !llvm.ptr
    %139 = llvm.getelementptr %138[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %140 = llvm.ptrtoint %139 : !llvm.ptr to i64
    %141 = llvm.call @malloc(%140) : (i64) -> !llvm.ptr
    %142 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %143 = llvm.insertvalue %141, %142[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.insertvalue %141, %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.insertvalue %145, %144[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.insertvalue %136, %146[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %137, %147[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.extractvalue %148[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %150 : f64, !llvm.ptr
    llvm.br ^bb19(%4 : i64)
  ^bb19(%151: i64):  // 2 preds: ^bb18, ^bb23
    %152 = builtin.unrealized_conversion_cast %151 : i64 to index
    %153 = builtin.unrealized_conversion_cast %152 : index to i64
    %154 = llvm.icmp "slt" %151, %0 : i64
    llvm.cond_br %154, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%155: i64):  // 2 preds: ^bb20, ^bb22
    %156 = builtin.unrealized_conversion_cast %155 : i64 to index
    %157 = builtin.unrealized_conversion_cast %156 : index to i64
    %158 = llvm.icmp "slt" %155, %0 : i64
    llvm.cond_br %158, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %159 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.mlir.constant(8192 : index) : i64
    %161 = llvm.mul %153, %160 : i64
    %162 = llvm.add %161, %157 : i64
    %163 = llvm.getelementptr %159[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %164 = llvm.load %163 : !llvm.ptr -> f64
    %165 = llvm.extractvalue %148[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.getelementptr %165[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %167 = llvm.load %166 : !llvm.ptr -> f64
    %168 = llvm.fadd %164, %167  : f64
    %169 = llvm.extractvalue %148[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.getelementptr %169[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %168, %170 : f64, !llvm.ptr
    %171 = llvm.add %155, %2 : i64
    llvm.br ^bb21(%171 : i64)
  ^bb23:  // pred: ^bb21
    %172 = llvm.add %151, %2 : i64
    llvm.br ^bb19(%172 : i64)
  ^bb24:  // pred: ^bb19
    %173 = llvm.extractvalue %148[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.getelementptr %173[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %175 = llvm.load %174 : !llvm.ptr -> f64
    llvm.call @printF64(%175) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%134, %135) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(8192 : index) : i64
    %1 = builtin.unrealized_conversion_cast %0 : i64 to index
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %9 = llvm.mlir.constant(8192 : i64) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = builtin.unrealized_conversion_cast %10 : index to i64
    %12 = llvm.mlir.constant(8192 : index) : i64
    %13 = llvm.mlir.constant(8192 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(67108864 : index) : i64
    %16 = llvm.mlir.zero : !llvm.ptr
    %17 = llvm.getelementptr %16[%15] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(32 : index) : i64
    %20 = llvm.add %18, %19 : i64
    %21 = llvm.call @malloc(%20) : (i64) -> !llvm.ptr
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.sub %19, %23 : i64
    %25 = llvm.add %22, %24 : i64
    %26 = llvm.urem %25, %19  : i64
    %27 = llvm.sub %25, %26 : i64
    %28 = llvm.inttoptr %27 : i64 to !llvm.ptr
    %29 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %30 = llvm.insertvalue %21, %29[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %12, %33[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %13, %34[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %13, %35[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %14, %36[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%38: i64):  // 2 preds: ^bb0, ^bb5
    %39 = builtin.unrealized_conversion_cast %38 : i64 to index
    %40 = llvm.icmp "slt" %38, %0 : i64
    llvm.cond_br %40, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%41: i64):  // 2 preds: ^bb2, ^bb4
    %42 = builtin.unrealized_conversion_cast %41 : i64 to index
    %43 = llvm.icmp "slt" %41, %0 : i64
    llvm.cond_br %43, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %44 = llvm.extractvalue %37[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.mlir.constant(8192 : index) : i64
    %46 = llvm.mul %38, %45 : i64
    %47 = llvm.add %46, %41 : i64
    %48 = llvm.getelementptr %44[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %48 : f64, !llvm.ptr
    %49 = llvm.add %41, %2 : i64
    llvm.br ^bb3(%49 : i64)
  ^bb5:  // pred: ^bb3
    %50 = llvm.add %38, %2 : i64
    llvm.br ^bb1(%50 : i64)
  ^bb6:  // pred: ^bb1
    %51 = llvm.mlir.constant(8192 : index) : i64
    %52 = llvm.mlir.constant(8192 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(67108864 : index) : i64
    %55 = llvm.mlir.zero : !llvm.ptr
    %56 = llvm.getelementptr %55[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(32 : index) : i64
    %59 = llvm.add %57, %58 : i64
    %60 = llvm.call @malloc(%59) : (i64) -> !llvm.ptr
    %61 = llvm.ptrtoint %60 : !llvm.ptr to i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.sub %58, %62 : i64
    %64 = llvm.add %61, %63 : i64
    %65 = llvm.urem %64, %58  : i64
    %66 = llvm.sub %64, %65 : i64
    %67 = llvm.inttoptr %66 : i64 to !llvm.ptr
    %68 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %69 = llvm.insertvalue %60, %68[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.insertvalue %71, %70[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.insertvalue %51, %72[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.insertvalue %52, %73[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.insertvalue %52, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.insertvalue %53, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%77: i64):  // 2 preds: ^bb6, ^bb11
    %78 = builtin.unrealized_conversion_cast %77 : i64 to index
    %79 = llvm.icmp "slt" %77, %0 : i64
    llvm.cond_br %79, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%80: i64):  // 2 preds: ^bb8, ^bb10
    %81 = builtin.unrealized_conversion_cast %80 : i64 to index
    %82 = llvm.icmp "slt" %80, %0 : i64
    llvm.cond_br %82, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %83 = llvm.extractvalue %76[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.mlir.constant(8192 : index) : i64
    %85 = llvm.mul %77, %84 : i64
    %86 = llvm.add %85, %80 : i64
    %87 = llvm.getelementptr %83[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %87 : f64, !llvm.ptr
    %88 = llvm.add %80, %2 : i64
    llvm.br ^bb9(%88 : i64)
  ^bb11:  // pred: ^bb9
    %89 = llvm.add %77, %2 : i64
    llvm.br ^bb7(%89 : i64)
  ^bb12:  // pred: ^bb7
    %90 = llvm.mlir.constant(8192 : index) : i64
    %91 = llvm.mlir.constant(8192 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(67108864 : index) : i64
    %94 = llvm.mlir.zero : !llvm.ptr
    %95 = llvm.getelementptr %94[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.mlir.constant(32 : index) : i64
    %98 = llvm.add %96, %97 : i64
    %99 = llvm.call @malloc(%98) : (i64) -> !llvm.ptr
    %100 = llvm.ptrtoint %99 : !llvm.ptr to i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.sub %97, %101 : i64
    %103 = llvm.add %100, %102 : i64
    %104 = llvm.urem %103, %97  : i64
    %105 = llvm.sub %103, %104 : i64
    %106 = llvm.inttoptr %105 : i64 to !llvm.ptr
    %107 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %108 = llvm.insertvalue %99, %107[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %106, %108[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.insertvalue %110, %109[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.insertvalue %90, %111[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.insertvalue %91, %112[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.insertvalue %91, %113[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.insertvalue %92, %114[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%116: i64):  // 2 preds: ^bb12, ^bb17
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = llvm.icmp "slt" %116, %0 : i64
    llvm.cond_br %118, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%119: i64):  // 2 preds: ^bb14, ^bb16
    %120 = builtin.unrealized_conversion_cast %119 : i64 to index
    %121 = llvm.icmp "slt" %119, %0 : i64
    llvm.cond_br %121, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %122 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.mlir.constant(8192 : index) : i64
    %124 = llvm.mul %116, %123 : i64
    %125 = llvm.add %124, %119 : i64
    %126 = llvm.getelementptr %122[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %126 : f64, !llvm.ptr
    %127 = llvm.add %119, %2 : i64
    llvm.br ^bb15(%127 : i64)
  ^bb17:  // pred: ^bb15
    %128 = llvm.add %116, %2 : i64
    llvm.br ^bb13(%128 : i64)
  ^bb18:  // pred: ^bb13
    %129 = llvm.call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%5) to (%1) step (%3) {
          %169 = builtin.unrealized_conversion_cast %arg0 : index to i64
          cf.br ^bb1(%5 : index)
        ^bb1(%170: index):  // 2 preds: ^bb0, ^bb5
          %171 = builtin.unrealized_conversion_cast %170 : index to i64
          %172 = builtin.unrealized_conversion_cast %170 : index to i64
          %173 = llvm.icmp "slt" %171, %11 : i64
          llvm.cond_br %173, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %174 = llvm.extractvalue %37[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %175 = llvm.mlir.constant(8192 : index) : i64
          %176 = llvm.mul %169, %175 : i64
          %177 = llvm.add %176, %172 : i64
          %178 = llvm.getelementptr %174[%177] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %179 = llvm.load %178 : !llvm.ptr -> f64
          cf.br ^bb3(%5 : index)
        ^bb3(%180: index):  // 2 preds: ^bb2, ^bb4
          %181 = builtin.unrealized_conversion_cast %180 : index to i64
          %182 = builtin.unrealized_conversion_cast %180 : index to i64
          %183 = llvm.icmp "slt" %181, %11 : i64
          llvm.cond_br %183, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %184 = llvm.extractvalue %76[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %185 = llvm.mlir.constant(8192 : index) : i64
          %186 = llvm.mul %172, %185 : i64
          %187 = llvm.add %186, %182 : i64
          %188 = llvm.getelementptr %184[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %189 = llvm.load %188 : !llvm.ptr -> f64
          %190 = llvm.fmul %179, %189  : f64
          %191 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %192 = llvm.mlir.constant(8192 : index) : i64
          %193 = llvm.mul %169, %192 : i64
          %194 = llvm.add %193, %182 : i64
          %195 = llvm.getelementptr %191[%194] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %196 = llvm.load %195 : !llvm.ptr -> f64
          %197 = llvm.fadd %196, %190  : f64
          %198 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %199 = llvm.mlir.constant(8192 : index) : i64
          %200 = llvm.mul %169, %199 : i64
          %201 = llvm.add %200, %182 : i64
          %202 = llvm.getelementptr %198[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %197, %202 : f64, !llvm.ptr
          %203 = llvm.add %181, %2 : i64
          %204 = builtin.unrealized_conversion_cast %203 : i64 to index
          cf.br ^bb3(%204 : index)
        ^bb5:  // pred: ^bb3
          %205 = llvm.add %171, %2 : i64
          %206 = builtin.unrealized_conversion_cast %205 : i64 to index
          cf.br ^bb1(%206 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %130 = llvm.call @getTime() : () -> f64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.zero : !llvm.ptr
    %134 = llvm.getelementptr %133[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %135 = llvm.ptrtoint %134 : !llvm.ptr to i64
    %136 = llvm.call @malloc(%135) : (i64) -> !llvm.ptr
    %137 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %138 = llvm.insertvalue %136, %137[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.insertvalue %136, %138[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.insertvalue %140, %139[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.insertvalue %131, %141[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.insertvalue %132, %142[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.getelementptr %144[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %145 : f64, !llvm.ptr
    llvm.br ^bb19(%4 : i64)
  ^bb19(%146: i64):  // 2 preds: ^bb18, ^bb23
    %147 = builtin.unrealized_conversion_cast %146 : i64 to index
    %148 = llvm.icmp "slt" %146, %0 : i64
    llvm.cond_br %148, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%149: i64):  // 2 preds: ^bb20, ^bb22
    %150 = builtin.unrealized_conversion_cast %149 : i64 to index
    %151 = llvm.icmp "slt" %149, %0 : i64
    llvm.cond_br %151, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %152 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.mlir.constant(8192 : index) : i64
    %154 = llvm.mul %146, %153 : i64
    %155 = llvm.add %154, %149 : i64
    %156 = llvm.getelementptr %152[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %157 = llvm.load %156 : !llvm.ptr -> f64
    %158 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.getelementptr %158[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %160 = llvm.load %159 : !llvm.ptr -> f64
    %161 = llvm.fadd %157, %160  : f64
    %162 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.getelementptr %162[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %161, %163 : f64, !llvm.ptr
    %164 = llvm.add %149, %2 : i64
    llvm.br ^bb21(%164 : i64)
  ^bb23:  // pred: ^bb21
    %165 = llvm.add %146, %2 : i64
    llvm.br ^bb19(%165 : i64)
  ^bb24:  // pred: ^bb19
    %166 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.getelementptr %166[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %168 = llvm.load %167 : !llvm.ptr -> f64
    llvm.call @printF64(%168) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%129, %130) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertOpenMPToLLVMPass (convert-openmp-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(8192 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %5 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %6 = llvm.mlir.constant(8192 : i64) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = builtin.unrealized_conversion_cast %7 : index to i64
    %9 = llvm.mlir.constant(8192 : index) : i64
    %10 = llvm.mlir.constant(8192 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(67108864 : index) : i64
    %13 = llvm.mlir.zero : !llvm.ptr
    %14 = llvm.getelementptr %13[%12] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %15 = llvm.ptrtoint %14 : !llvm.ptr to i64
    %16 = llvm.mlir.constant(32 : index) : i64
    %17 = llvm.add %15, %16 : i64
    %18 = llvm.call @malloc(%17) : (i64) -> !llvm.ptr
    %19 = llvm.ptrtoint %18 : !llvm.ptr to i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.sub %16, %20 : i64
    %22 = llvm.add %19, %21 : i64
    %23 = llvm.urem %22, %16  : i64
    %24 = llvm.sub %22, %23 : i64
    %25 = llvm.inttoptr %24 : i64 to !llvm.ptr
    %26 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %27 = llvm.insertvalue %18, %26[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %9, %30[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %10, %31[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %10, %32[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %11, %33[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%2 : i64)
  ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb5
    %36 = builtin.unrealized_conversion_cast %35 : i64 to index
    %37 = llvm.icmp "slt" %35, %0 : i64
    llvm.cond_br %37, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%2 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = builtin.unrealized_conversion_cast %38 : i64 to index
    %40 = llvm.icmp "slt" %38, %0 : i64
    llvm.cond_br %40, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %41 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.mlir.constant(8192 : index) : i64
    %43 = llvm.mul %35, %42 : i64
    %44 = llvm.add %43, %38 : i64
    %45 = llvm.getelementptr %41[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %45 : f64, !llvm.ptr
    %46 = llvm.add %38, %1 : i64
    llvm.br ^bb3(%46 : i64)
  ^bb5:  // pred: ^bb3
    %47 = llvm.add %35, %1 : i64
    llvm.br ^bb1(%47 : i64)
  ^bb6:  // pred: ^bb1
    %48 = llvm.mlir.constant(8192 : index) : i64
    %49 = llvm.mlir.constant(8192 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(67108864 : index) : i64
    %52 = llvm.mlir.zero : !llvm.ptr
    %53 = llvm.getelementptr %52[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %54 = llvm.ptrtoint %53 : !llvm.ptr to i64
    %55 = llvm.mlir.constant(32 : index) : i64
    %56 = llvm.add %54, %55 : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr
    %58 = llvm.ptrtoint %57 : !llvm.ptr to i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.sub %55, %59 : i64
    %61 = llvm.add %58, %60 : i64
    %62 = llvm.urem %61, %55  : i64
    %63 = llvm.sub %61, %62 : i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr
    %65 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %66 = llvm.insertvalue %57, %65[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %48, %69[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %49, %70[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %49, %71[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.insertvalue %50, %72[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%2 : i64)
  ^bb7(%74: i64):  // 2 preds: ^bb6, ^bb11
    %75 = builtin.unrealized_conversion_cast %74 : i64 to index
    %76 = llvm.icmp "slt" %74, %0 : i64
    llvm.cond_br %76, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%2 : i64)
  ^bb9(%77: i64):  // 2 preds: ^bb8, ^bb10
    %78 = builtin.unrealized_conversion_cast %77 : i64 to index
    %79 = llvm.icmp "slt" %77, %0 : i64
    llvm.cond_br %79, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %80 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.mlir.constant(8192 : index) : i64
    %82 = llvm.mul %74, %81 : i64
    %83 = llvm.add %82, %77 : i64
    %84 = llvm.getelementptr %80[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %84 : f64, !llvm.ptr
    %85 = llvm.add %77, %1 : i64
    llvm.br ^bb9(%85 : i64)
  ^bb11:  // pred: ^bb9
    %86 = llvm.add %74, %1 : i64
    llvm.br ^bb7(%86 : i64)
  ^bb12:  // pred: ^bb7
    %87 = llvm.mlir.constant(8192 : index) : i64
    %88 = llvm.mlir.constant(8192 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(67108864 : index) : i64
    %91 = llvm.mlir.zero : !llvm.ptr
    %92 = llvm.getelementptr %91[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %93 = llvm.ptrtoint %92 : !llvm.ptr to i64
    %94 = llvm.mlir.constant(32 : index) : i64
    %95 = llvm.add %93, %94 : i64
    %96 = llvm.call @malloc(%95) : (i64) -> !llvm.ptr
    %97 = llvm.ptrtoint %96 : !llvm.ptr to i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.sub %94, %98 : i64
    %100 = llvm.add %97, %99 : i64
    %101 = llvm.urem %100, %94  : i64
    %102 = llvm.sub %100, %101 : i64
    %103 = llvm.inttoptr %102 : i64 to !llvm.ptr
    %104 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %105 = llvm.insertvalue %96, %104[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %103, %105[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.insertvalue %107, %106[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %87, %108[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.insertvalue %88, %109[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.insertvalue %88, %110[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.insertvalue %89, %111[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%2 : i64)
  ^bb13(%113: i64):  // 2 preds: ^bb12, ^bb17
    %114 = builtin.unrealized_conversion_cast %113 : i64 to index
    %115 = llvm.icmp "slt" %113, %0 : i64
    llvm.cond_br %115, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%2 : i64)
  ^bb15(%116: i64):  // 2 preds: ^bb14, ^bb16
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = llvm.icmp "slt" %116, %0 : i64
    llvm.cond_br %118, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %119 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %120 = llvm.mlir.constant(8192 : index) : i64
    %121 = llvm.mul %113, %120 : i64
    %122 = llvm.add %121, %116 : i64
    %123 = llvm.getelementptr %119[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %123 : f64, !llvm.ptr
    %124 = llvm.add %116, %1 : i64
    llvm.br ^bb15(%124 : i64)
  ^bb17:  // pred: ^bb15
    %125 = llvm.add %113, %1 : i64
    llvm.br ^bb13(%125 : i64)
  ^bb18:  // pred: ^bb13
    %126 = llvm.call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%2) to (%0) step (%1) {
          %166 = builtin.unrealized_conversion_cast %arg0 : i64 to index
          %167 = builtin.unrealized_conversion_cast %166 : index to i64
          llvm.br ^bb1(%2 : i64)
        ^bb1(%168: i64):  // 2 preds: ^bb0, ^bb5
          %169 = builtin.unrealized_conversion_cast %168 : i64 to index
          %170 = builtin.unrealized_conversion_cast %169 : index to i64
          %171 = builtin.unrealized_conversion_cast %169 : index to i64
          %172 = llvm.icmp "slt" %170, %8 : i64
          llvm.cond_br %172, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %173 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %174 = llvm.mlir.constant(8192 : index) : i64
          %175 = llvm.mul %167, %174 : i64
          %176 = llvm.add %175, %171 : i64
          %177 = llvm.getelementptr %173[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %178 = llvm.load %177 : !llvm.ptr -> f64
          llvm.br ^bb3(%2 : i64)
        ^bb3(%179: i64):  // 2 preds: ^bb2, ^bb4
          %180 = builtin.unrealized_conversion_cast %179 : i64 to index
          %181 = builtin.unrealized_conversion_cast %180 : index to i64
          %182 = builtin.unrealized_conversion_cast %180 : index to i64
          %183 = llvm.icmp "slt" %181, %8 : i64
          llvm.cond_br %183, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %184 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %185 = llvm.mlir.constant(8192 : index) : i64
          %186 = llvm.mul %171, %185 : i64
          %187 = llvm.add %186, %182 : i64
          %188 = llvm.getelementptr %184[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %189 = llvm.load %188 : !llvm.ptr -> f64
          %190 = llvm.fmul %178, %189  : f64
          %191 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %192 = llvm.mlir.constant(8192 : index) : i64
          %193 = llvm.mul %167, %192 : i64
          %194 = llvm.add %193, %182 : i64
          %195 = llvm.getelementptr %191[%194] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %196 = llvm.load %195 : !llvm.ptr -> f64
          %197 = llvm.fadd %196, %190  : f64
          %198 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %199 = llvm.mlir.constant(8192 : index) : i64
          %200 = llvm.mul %167, %199 : i64
          %201 = llvm.add %200, %182 : i64
          %202 = llvm.getelementptr %198[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %197, %202 : f64, !llvm.ptr
          %203 = llvm.add %181, %1 : i64
          llvm.br ^bb3(%203 : i64)
        ^bb5:  // pred: ^bb3
          %204 = llvm.add %170, %1 : i64
          llvm.br ^bb1(%204 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %127 = llvm.call @getTime() : () -> f64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.zero : !llvm.ptr
    %131 = llvm.getelementptr %130[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %132 = llvm.ptrtoint %131 : !llvm.ptr to i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr
    %134 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %135 = llvm.insertvalue %133, %134[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %133, %135[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.insertvalue %137, %136[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.insertvalue %128, %138[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.insertvalue %129, %139[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.extractvalue %140[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.getelementptr %141[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %142 : f64, !llvm.ptr
    llvm.br ^bb19(%2 : i64)
  ^bb19(%143: i64):  // 2 preds: ^bb18, ^bb23
    %144 = builtin.unrealized_conversion_cast %143 : i64 to index
    %145 = llvm.icmp "slt" %143, %0 : i64
    llvm.cond_br %145, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%2 : i64)
  ^bb21(%146: i64):  // 2 preds: ^bb20, ^bb22
    %147 = builtin.unrealized_conversion_cast %146 : i64 to index
    %148 = llvm.icmp "slt" %146, %0 : i64
    llvm.cond_br %148, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %149 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.mlir.constant(8192 : index) : i64
    %151 = llvm.mul %143, %150 : i64
    %152 = llvm.add %151, %146 : i64
    %153 = llvm.getelementptr %149[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %154 = llvm.load %153 : !llvm.ptr -> f64
    %155 = llvm.extractvalue %140[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.getelementptr %155[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %157 = llvm.load %156 : !llvm.ptr -> f64
    %158 = llvm.fadd %154, %157  : f64
    %159 = llvm.extractvalue %140[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.getelementptr %159[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %158, %160 : f64, !llvm.ptr
    %161 = llvm.add %146, %1 : i64
    llvm.br ^bb21(%161 : i64)
  ^bb23:  // pred: ^bb21
    %162 = llvm.add %143, %1 : i64
    llvm.br ^bb19(%162 : i64)
  ^bb24:  // pred: ^bb19
    %163 = llvm.extractvalue %140[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.getelementptr %163[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %165 = llvm.load %164 : !llvm.ptr -> f64
    llvm.call @printF64(%165) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%126, %127) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(8192 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %5 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %6 = llvm.mlir.constant(8192 : i64) : i64
    %7 = llvm.mlir.constant(8192 : index) : i64
    %8 = llvm.mlir.constant(8192 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(67108864 : index) : i64
    %11 = llvm.mlir.zero : !llvm.ptr
    %12 = llvm.getelementptr %11[%10] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.add %13, %14 : i64
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.sub %14, %18 : i64
    %20 = llvm.add %17, %19 : i64
    %21 = llvm.urem %20, %14  : i64
    %22 = llvm.sub %20, %21 : i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %16, %24[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %7, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %8, %29[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %8, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %9, %31[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%2 : i64)
  ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb5
    %34 = llvm.icmp "slt" %33, %0 : i64
    llvm.cond_br %34, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%2 : i64)
  ^bb3(%35: i64):  // 2 preds: ^bb2, ^bb4
    %36 = llvm.icmp "slt" %35, %0 : i64
    llvm.cond_br %36, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %37 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.mlir.constant(8192 : index) : i64
    %39 = llvm.mul %33, %38 : i64
    %40 = llvm.add %39, %35 : i64
    %41 = llvm.getelementptr %37[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %41 : f64, !llvm.ptr
    %42 = llvm.add %35, %1 : i64
    llvm.br ^bb3(%42 : i64)
  ^bb5:  // pred: ^bb3
    %43 = llvm.add %33, %1 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb6:  // pred: ^bb1
    %44 = llvm.mlir.constant(8192 : index) : i64
    %45 = llvm.mlir.constant(8192 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(67108864 : index) : i64
    %48 = llvm.mlir.zero : !llvm.ptr
    %49 = llvm.getelementptr %48[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %50 = llvm.ptrtoint %49 : !llvm.ptr to i64
    %51 = llvm.mlir.constant(32 : index) : i64
    %52 = llvm.add %50, %51 : i64
    %53 = llvm.call @malloc(%52) : (i64) -> !llvm.ptr
    %54 = llvm.ptrtoint %53 : !llvm.ptr to i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.sub %51, %55 : i64
    %57 = llvm.add %54, %56 : i64
    %58 = llvm.urem %57, %51  : i64
    %59 = llvm.sub %57, %58 : i64
    %60 = llvm.inttoptr %59 : i64 to !llvm.ptr
    %61 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %62 = llvm.insertvalue %53, %61[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %44, %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %45, %66[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.insertvalue %45, %67[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %46, %68[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%2 : i64)
  ^bb7(%70: i64):  // 2 preds: ^bb6, ^bb11
    %71 = llvm.icmp "slt" %70, %0 : i64
    llvm.cond_br %71, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%2 : i64)
  ^bb9(%72: i64):  // 2 preds: ^bb8, ^bb10
    %73 = llvm.icmp "slt" %72, %0 : i64
    llvm.cond_br %73, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %74 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(8192 : index) : i64
    %76 = llvm.mul %70, %75 : i64
    %77 = llvm.add %76, %72 : i64
    %78 = llvm.getelementptr %74[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %78 : f64, !llvm.ptr
    %79 = llvm.add %72, %1 : i64
    llvm.br ^bb9(%79 : i64)
  ^bb11:  // pred: ^bb9
    %80 = llvm.add %70, %1 : i64
    llvm.br ^bb7(%80 : i64)
  ^bb12:  // pred: ^bb7
    %81 = llvm.mlir.constant(8192 : index) : i64
    %82 = llvm.mlir.constant(8192 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(67108864 : index) : i64
    %85 = llvm.mlir.zero : !llvm.ptr
    %86 = llvm.getelementptr %85[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %87 = llvm.ptrtoint %86 : !llvm.ptr to i64
    %88 = llvm.mlir.constant(32 : index) : i64
    %89 = llvm.add %87, %88 : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr
    %91 = llvm.ptrtoint %90 : !llvm.ptr to i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.sub %88, %92 : i64
    %94 = llvm.add %91, %93 : i64
    %95 = llvm.urem %94, %88  : i64
    %96 = llvm.sub %94, %95 : i64
    %97 = llvm.inttoptr %96 : i64 to !llvm.ptr
    %98 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %99 = llvm.insertvalue %90, %98[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.insertvalue %97, %99[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %81, %102[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %82, %103[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %82, %104[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %83, %105[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%2 : i64)
  ^bb13(%107: i64):  // 2 preds: ^bb12, ^bb17
    %108 = llvm.icmp "slt" %107, %0 : i64
    llvm.cond_br %108, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%2 : i64)
  ^bb15(%109: i64):  // 2 preds: ^bb14, ^bb16
    %110 = llvm.icmp "slt" %109, %0 : i64
    llvm.cond_br %110, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %111 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.mlir.constant(8192 : index) : i64
    %113 = llvm.mul %107, %112 : i64
    %114 = llvm.add %113, %109 : i64
    %115 = llvm.getelementptr %111[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %115 : f64, !llvm.ptr
    %116 = llvm.add %109, %1 : i64
    llvm.br ^bb15(%116 : i64)
  ^bb17:  // pred: ^bb15
    %117 = llvm.add %107, %1 : i64
    llvm.br ^bb13(%117 : i64)
  ^bb18:  // pred: ^bb13
    %118 = llvm.call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%2) to (%0) step (%1) {
          llvm.br ^bb1(%2 : i64)
        ^bb1(%156: i64):  // 2 preds: ^bb0, ^bb5
          %157 = llvm.icmp "slt" %156, %6 : i64
          llvm.cond_br %157, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %158 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %159 = llvm.mlir.constant(8192 : index) : i64
          %160 = llvm.mul %arg0, %159 : i64
          %161 = llvm.add %160, %156 : i64
          %162 = llvm.getelementptr %158[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %163 = llvm.load %162 : !llvm.ptr -> f64
          llvm.br ^bb3(%2 : i64)
        ^bb3(%164: i64):  // 2 preds: ^bb2, ^bb4
          %165 = llvm.icmp "slt" %164, %6 : i64
          llvm.cond_br %165, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %166 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %167 = llvm.mlir.constant(8192 : index) : i64
          %168 = llvm.mul %156, %167 : i64
          %169 = llvm.add %168, %164 : i64
          %170 = llvm.getelementptr %166[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %171 = llvm.load %170 : !llvm.ptr -> f64
          %172 = llvm.fmul %163, %171  : f64
          %173 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %174 = llvm.mlir.constant(8192 : index) : i64
          %175 = llvm.mul %arg0, %174 : i64
          %176 = llvm.add %175, %164 : i64
          %177 = llvm.getelementptr %173[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %178 = llvm.load %177 : !llvm.ptr -> f64
          %179 = llvm.fadd %178, %172  : f64
          %180 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %181 = llvm.mlir.constant(8192 : index) : i64
          %182 = llvm.mul %arg0, %181 : i64
          %183 = llvm.add %182, %164 : i64
          %184 = llvm.getelementptr %180[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %179, %184 : f64, !llvm.ptr
          %185 = llvm.add %164, %1 : i64
          llvm.br ^bb3(%185 : i64)
        ^bb5:  // pred: ^bb3
          %186 = llvm.add %156, %1 : i64
          llvm.br ^bb1(%186 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %119 = llvm.call @getTime() : () -> f64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.zero : !llvm.ptr
    %123 = llvm.getelementptr %122[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %124 = llvm.ptrtoint %123 : !llvm.ptr to i64
    %125 = llvm.call @malloc(%124) : (i64) -> !llvm.ptr
    %126 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %127 = llvm.insertvalue %125, %126[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.insertvalue %129, %128[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %120, %130[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %121, %131[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.getelementptr %133[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %134 : f64, !llvm.ptr
    llvm.br ^bb19(%2 : i64)
  ^bb19(%135: i64):  // 2 preds: ^bb18, ^bb23
    %136 = llvm.icmp "slt" %135, %0 : i64
    llvm.cond_br %136, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%2 : i64)
  ^bb21(%137: i64):  // 2 preds: ^bb20, ^bb22
    %138 = llvm.icmp "slt" %137, %0 : i64
    llvm.cond_br %138, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %139 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.mlir.constant(8192 : index) : i64
    %141 = llvm.mul %135, %140 : i64
    %142 = llvm.add %141, %137 : i64
    %143 = llvm.getelementptr %139[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %144 = llvm.load %143 : !llvm.ptr -> f64
    %145 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %145[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %147 = llvm.load %146 : !llvm.ptr -> f64
    %148 = llvm.fadd %144, %147  : f64
    %149 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %148, %150 : f64, !llvm.ptr
    %151 = llvm.add %137, %1 : i64
    llvm.br ^bb21(%151 : i64)
  ^bb23:  // pred: ^bb21
    %152 = llvm.add %135, %1 : i64
    llvm.br ^bb19(%152 : i64)
  ^bb24:  // pred: ^bb19
    %153 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.getelementptr %153[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %155 = llvm.load %154 : !llvm.ptr -> f64
    llvm.call @printF64(%155) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%118, %119) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(8192 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %5 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %6 = llvm.mlir.constant(8192 : i64) : i64
    %7 = llvm.mlir.constant(8192 : index) : i64
    %8 = llvm.mlir.constant(8192 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(67108864 : index) : i64
    %11 = llvm.mlir.zero : !llvm.ptr
    %12 = llvm.getelementptr %11[%10] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.add %13, %14 : i64
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.sub %14, %18 : i64
    %20 = llvm.add %17, %19 : i64
    %21 = llvm.urem %20, %14  : i64
    %22 = llvm.sub %20, %21 : i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %16, %24[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %7, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %8, %29[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %8, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %9, %31[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%2 : i64)
  ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb5
    %34 = llvm.icmp "slt" %33, %0 : i64
    llvm.cond_br %34, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%2 : i64)
  ^bb3(%35: i64):  // 2 preds: ^bb2, ^bb4
    %36 = llvm.icmp "slt" %35, %0 : i64
    llvm.cond_br %36, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %37 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.mlir.constant(8192 : index) : i64
    %39 = llvm.mul %33, %38 : i64
    %40 = llvm.add %39, %35 : i64
    %41 = llvm.getelementptr %37[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %41 : f64, !llvm.ptr
    %42 = llvm.add %35, %1 : i64
    llvm.br ^bb3(%42 : i64)
  ^bb5:  // pred: ^bb3
    %43 = llvm.add %33, %1 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb6:  // pred: ^bb1
    %44 = llvm.mlir.constant(8192 : index) : i64
    %45 = llvm.mlir.constant(8192 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(67108864 : index) : i64
    %48 = llvm.mlir.zero : !llvm.ptr
    %49 = llvm.getelementptr %48[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %50 = llvm.ptrtoint %49 : !llvm.ptr to i64
    %51 = llvm.mlir.constant(32 : index) : i64
    %52 = llvm.add %50, %51 : i64
    %53 = llvm.call @malloc(%52) : (i64) -> !llvm.ptr
    %54 = llvm.ptrtoint %53 : !llvm.ptr to i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.sub %51, %55 : i64
    %57 = llvm.add %54, %56 : i64
    %58 = llvm.urem %57, %51  : i64
    %59 = llvm.sub %57, %58 : i64
    %60 = llvm.inttoptr %59 : i64 to !llvm.ptr
    %61 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %62 = llvm.insertvalue %53, %61[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %44, %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %45, %66[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.insertvalue %45, %67[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %46, %68[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%2 : i64)
  ^bb7(%70: i64):  // 2 preds: ^bb6, ^bb11
    %71 = llvm.icmp "slt" %70, %0 : i64
    llvm.cond_br %71, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%2 : i64)
  ^bb9(%72: i64):  // 2 preds: ^bb8, ^bb10
    %73 = llvm.icmp "slt" %72, %0 : i64
    llvm.cond_br %73, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %74 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(8192 : index) : i64
    %76 = llvm.mul %70, %75 : i64
    %77 = llvm.add %76, %72 : i64
    %78 = llvm.getelementptr %74[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %78 : f64, !llvm.ptr
    %79 = llvm.add %72, %1 : i64
    llvm.br ^bb9(%79 : i64)
  ^bb11:  // pred: ^bb9
    %80 = llvm.add %70, %1 : i64
    llvm.br ^bb7(%80 : i64)
  ^bb12:  // pred: ^bb7
    %81 = llvm.mlir.constant(8192 : index) : i64
    %82 = llvm.mlir.constant(8192 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(67108864 : index) : i64
    %85 = llvm.mlir.zero : !llvm.ptr
    %86 = llvm.getelementptr %85[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %87 = llvm.ptrtoint %86 : !llvm.ptr to i64
    %88 = llvm.mlir.constant(32 : index) : i64
    %89 = llvm.add %87, %88 : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr
    %91 = llvm.ptrtoint %90 : !llvm.ptr to i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.sub %88, %92 : i64
    %94 = llvm.add %91, %93 : i64
    %95 = llvm.urem %94, %88  : i64
    %96 = llvm.sub %94, %95 : i64
    %97 = llvm.inttoptr %96 : i64 to !llvm.ptr
    %98 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %99 = llvm.insertvalue %90, %98[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.insertvalue %97, %99[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %81, %102[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %82, %103[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %82, %104[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %83, %105[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%2 : i64)
  ^bb13(%107: i64):  // 2 preds: ^bb12, ^bb17
    %108 = llvm.icmp "slt" %107, %0 : i64
    llvm.cond_br %108, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%2 : i64)
  ^bb15(%109: i64):  // 2 preds: ^bb14, ^bb16
    %110 = llvm.icmp "slt" %109, %0 : i64
    llvm.cond_br %110, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %111 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.mlir.constant(8192 : index) : i64
    %113 = llvm.mul %107, %112 : i64
    %114 = llvm.add %113, %109 : i64
    %115 = llvm.getelementptr %111[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %115 : f64, !llvm.ptr
    %116 = llvm.add %109, %1 : i64
    llvm.br ^bb15(%116 : i64)
  ^bb17:  // pred: ^bb15
    %117 = llvm.add %107, %1 : i64
    llvm.br ^bb13(%117 : i64)
  ^bb18:  // pred: ^bb13
    %118 = llvm.call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%2) to (%0) step (%1) {
          llvm.br ^bb1(%2 : i64)
        ^bb1(%156: i64):  // 2 preds: ^bb0, ^bb5
          %157 = llvm.icmp "slt" %156, %6 : i64
          llvm.cond_br %157, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %158 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %159 = llvm.mlir.constant(8192 : index) : i64
          %160 = llvm.mul %arg0, %159 : i64
          %161 = llvm.add %160, %156 : i64
          %162 = llvm.getelementptr %158[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %163 = llvm.load %162 : !llvm.ptr -> f64
          llvm.br ^bb3(%2 : i64)
        ^bb3(%164: i64):  // 2 preds: ^bb2, ^bb4
          %165 = llvm.icmp "slt" %164, %6 : i64
          llvm.cond_br %165, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %166 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %167 = llvm.mlir.constant(8192 : index) : i64
          %168 = llvm.mul %156, %167 : i64
          %169 = llvm.add %168, %164 : i64
          %170 = llvm.getelementptr %166[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %171 = llvm.load %170 : !llvm.ptr -> f64
          %172 = llvm.fmul %163, %171  : f64
          %173 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %174 = llvm.mlir.constant(8192 : index) : i64
          %175 = llvm.mul %arg0, %174 : i64
          %176 = llvm.add %175, %164 : i64
          %177 = llvm.getelementptr %173[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %178 = llvm.load %177 : !llvm.ptr -> f64
          %179 = llvm.fadd %178, %172  : f64
          %180 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %181 = llvm.mlir.constant(8192 : index) : i64
          %182 = llvm.mul %arg0, %181 : i64
          %183 = llvm.add %182, %164 : i64
          %184 = llvm.getelementptr %180[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %179, %184 : f64, !llvm.ptr
          %185 = llvm.add %164, %1 : i64
          llvm.br ^bb3(%185 : i64)
        ^bb5:  // pred: ^bb3
          %186 = llvm.add %156, %1 : i64
          llvm.br ^bb1(%186 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %119 = llvm.call @getTime() : () -> f64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.zero : !llvm.ptr
    %123 = llvm.getelementptr %122[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %124 = llvm.ptrtoint %123 : !llvm.ptr to i64
    %125 = llvm.call @malloc(%124) : (i64) -> !llvm.ptr
    %126 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %127 = llvm.insertvalue %125, %126[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.insertvalue %129, %128[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %120, %130[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %121, %131[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.getelementptr %133[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %134 : f64, !llvm.ptr
    llvm.br ^bb19(%2 : i64)
  ^bb19(%135: i64):  // 2 preds: ^bb18, ^bb23
    %136 = llvm.icmp "slt" %135, %0 : i64
    llvm.cond_br %136, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%2 : i64)
  ^bb21(%137: i64):  // 2 preds: ^bb20, ^bb22
    %138 = llvm.icmp "slt" %137, %0 : i64
    llvm.cond_br %138, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %139 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.mlir.constant(8192 : index) : i64
    %141 = llvm.mul %135, %140 : i64
    %142 = llvm.add %141, %137 : i64
    %143 = llvm.getelementptr %139[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %144 = llvm.load %143 : !llvm.ptr -> f64
    %145 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %145[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %147 = llvm.load %146 : !llvm.ptr -> f64
    %148 = llvm.fadd %144, %147  : f64
    %149 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %148, %150 : f64, !llvm.ptr
    %151 = llvm.add %137, %1 : i64
    llvm.br ^bb21(%151 : i64)
  ^bb23:  // pred: ^bb21
    %152 = llvm.add %135, %1 : i64
    llvm.br ^bb19(%152 : i64)
  ^bb24:  // pred: ^bb19
    %153 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.getelementptr %153[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %155 = llvm.load %154 : !llvm.ptr -> f64
    llvm.call @printF64(%155) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%118, %119) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
