// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<8x4xf64>
    %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
    %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
    %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
    "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    "ta.print"(%5) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "it.itree"(%5) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.IndexOp"(%7) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %9 = "it.IndexOp"(%8) <{IsParallel = false}> : (!it.index) -> !it.index
    %10 = "it.IndexOp"(%9) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %8) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %8) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %9, %pos_3) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %9) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %10, %pos_7) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %0 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<8x4xf64>
  %1 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
  %2 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %10, %pos_3) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %14 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %10) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %12, %pos_7) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %16 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %0 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<8x4xf64>
  %1 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
  %2 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %8, %pos_3) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %10, %pos_7) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %0 = "ta.dense_tensor_decl"() <{allocator = "rapid", format = "Dense"}> : () -> tensor<8x4xf64>
  %1 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
  %2 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %8, %pos_3) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %10, %pos_7) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %8, %pos_5) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %10, %pos_9) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %8, %pos_5) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %10, %pos_9) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %8, %pos_5) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %10, %pos_9) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_2 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %8, %pos_7) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %10, %pos_11) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_2 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %8, %pos_7) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %10, %pos_11) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %8, %pos_7) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %10, %pos_11) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %8, %pos_7) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %10, %pos_11) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %8, %pos_7) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %10, %pos_11) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %14 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = scf.forall (%arg1) in (%idx8) shared_outs(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %5 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x2xf64>) {
        %c0_4 = arith.constant 0 : index
        %c1_5 = arith.constant 1 : index
        %6 = scf.for %arg5 = %c0_4 to %idx2 step %c1_5 iter_args(%arg6 = %arg4) -> (tensor<1x2xf64>) {
          %idx0 = index.constant 0
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_6 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_6 : f64
          %extracted_7 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x2xf64>
          %8 = arith.addf %extracted_7, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%idx0, %arg5] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %6 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %5 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = scf.forall (%arg1) in (%idx8) shared_outs(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %5 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x2xf64>) {
        %6 = scf.for %arg5 = %c0 to %idx2 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x2xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_4 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x2xf64>
          %8 = arith.addf %extracted_5, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%idx0, %arg5] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %6 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %5 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = scf.forall (%arg1) in (%idx8) shared_outs(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %5 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x2xf64>) {
        %6 = scf.for %arg5 = %c0 to %idx2 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x2xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_4 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x2xf64>
          %8 = arith.addf %extracted_5, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%idx0, %arg5] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %6 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %5 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = scf.forall (%arg1) in (%idx8) shared_outs(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %5 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x2xf64>) {
        %6 = scf.for %arg5 = %c0 to %idx2 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x2xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_4 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x2xf64>
          %8 = arith.addf %extracted_5, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%idx0, %arg5] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %6 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %5 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (%idx8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
      %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
        scf.yield %inserted : tensor<1x2xf64>
      }
      scf.yield %5 : tensor<1x2xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
          %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
          %6 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
          %7 = arith.addf %extracted_5, %6 : f64
          %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %5 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
          %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
          %6 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
          %7 = arith.addf %extracted_5, %6 : f64
          %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %5 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = scf.forall (%arg0) in (8) shared_outs(%arg1 = %2) -> (tensor<8x2xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<8x2xf64> to tensor<1x2xf64>
      %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x2xf64>) {
          %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
          %6 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x2xf64>
          %7 = arith.addf %extracted_5, %6 : f64
          %inserted = tensor.insert %7 into %arg5[%idx0, %arg4] : tensor<1x2xf64>
          scf.yield %inserted : tensor<1x2xf64>
        }
        scf.yield %5 : tensor<1x2xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %4 into %arg1[%arg0, 0] [1, 2] [1, 1] : tensor<1x2xf64> into tensor<8x2xf64>
      }
    }
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      %1 = scf.for %arg1 = %c0 to %idx4 step %c1 iter_args(%arg2 = %subview) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
        %2 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %3 = scf.for %arg3 = %c0 to %idx2 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
          %4 = memref.load %alloc_2[%arg1, %arg3] : memref<4x2xf64>
          %5 = arith.mulf %2, %4 : f64
          %6 = memref.load %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
          scf.yield %arg4 : memref<1x2xf64, strided<[2, 1], offset: ?>>
        }
        scf.yield %3 : memref<1x2xf64, strided<[2, 1], offset: ?>>
      }
      %subview_4 = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      memref.copy %1, %subview_4 : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %0 = bufferization.to_tensor %alloc_3 : memref<8x2xf64>
    "ta.print"(%0) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  scf.forall (%arg0) in (8) {
    %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    %1 = scf.for %arg1 = %c0 to %idx4 step %c1 iter_args(%arg2 = %subview) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
      %2 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
      %3 = scf.for %arg3 = %c0 to %idx2 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
        %4 = memref.load %alloc_2[%arg1, %arg3] : memref<4x2xf64>
        %5 = arith.mulf %2, %4 : f64
        %6 = memref.load %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        scf.yield %arg4 : memref<1x2xf64, strided<[2, 1], offset: ?>>
      }
      scf.yield %3 : memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %subview_4 = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    memref.copy %1, %subview_4 : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
  }
  %0 = bufferization.to_tensor %alloc_3 : memref<8x2xf64>
  "ta.print"(%0) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  scf.forall (%arg0) in (8) {
    %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    %2 = scf.for %arg1 = %c0 to %idx4 step %c1 iter_args(%arg2 = %subview) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
      %3 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
      %4 = scf.for %arg3 = %c0 to %idx2 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x2xf64, strided<[2, 1], offset: ?>>) {
        %5 = memref.load %alloc_2[%arg1, %arg3] : memref<4x2xf64>
        %6 = arith.mulf %3, %5 : f64
        %7 = memref.load %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        %8 = arith.addf %7, %6 : f64
        memref.store %8, %arg4[%idx0, %arg3] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        scf.yield %arg4 : memref<1x2xf64, strided<[2, 1], offset: ?>>
      }
      scf.yield %4 : memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %subview_4 = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    memref.copy %2, %subview_4 : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
  }
  %0 = bufferization.to_tensor %alloc_3 : memref<8x2xf64>
  %1 = bufferization.to_memref %0 : memref<8x2xf64>
  %cast = memref.cast %1 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %subview[%idx0, %arg2] : memref<1x2xf64, strided<[2, 1], offset: ?>>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %subview[%idx0, %arg2] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        }
      }
      %subview_4 = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      memref.copy %subview, %subview_4 : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %subview[%idx0, %arg2] : memref<1x2xf64, strided<[2, 1], offset: ?>>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %subview[%idx0, %arg2] : memref<1x2xf64, strided<[2, 1], offset: ?>>
        }
      }
      memref.copy %subview, %subview : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      %subview = memref.subview %alloc_3[%arg0, 0] [1, 2] [1, 1] : memref<8x2xf64> to memref<1x2xf64, strided<[2, 1], offset: ?>>
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
      memref.copy %subview, %subview : memref<1x2xf64, strided<[2, 1], offset: ?>> to memref<1x2xf64, strided<[2, 1], offset: ?>>
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.forall (%arg0) in (8) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  scf.forall (%arg0) in (8) {
    scf.for %arg1 = %c0 to %idx4 step %c1 {
      %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
      scf.for %arg2 = %c0 to %idx2 step %c1 {
        %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        %4 = arith.addf %3, %2 : f64
        memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c4 = arith.constant 4 : index
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
    }
  }
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  scf.for %arg0 = %c0 to %c4 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
    }
  }
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
    }
  }
  scf.forall (%arg0) in (8) {
    scf.for %arg1 = %c0 to %idx4 step %c1 {
      %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
      scf.for %arg2 = %c0 to %idx2 step %c1 {
        %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        %4 = arith.addf %3, %2 : f64
        memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    scf.forall (%arg0) in (8) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c8_5 = arith.constant 8 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg0) = (%c0_4) to (%c8_5) step (%c1_6) {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
      scf.reduce 
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertSCFToOpenMPPass (convert-scf-to-openmp) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c8_5 = arith.constant 8 : index
    %c1_6 = arith.constant 1 : index
    %0 = llvm.mlir.constant(1 : i64) : i64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0_4) to (%c8_5) step (%c1_6) {
          memref.alloca_scope  {
            scf.for %arg1 = %c0 to %idx4 step %c1 {
              %1 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
              scf.for %arg2 = %c0 to %idx2 step %c1 {
                %2 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
                %3 = arith.mulf %1, %2 : f64
                %4 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
                %5 = arith.addf %4, %3 : f64
                memref.store %5, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
              }
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          scf.for %arg1 = %c0 to %idx4 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
            scf.for %arg2 = %c0 to %idx2 step %c1 {
              %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
              %2 = arith.mulf %0, %1 : f64
              %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
              %4 = arith.addf %3, %2 : f64
              memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          scf.for %arg1 = %c0 to %idx4 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
            scf.for %arg2 = %c0 to %idx2 step %c1 {
              %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
              %2 = arith.mulf %0, %1 : f64
              %3 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
              %4 = arith.addf %3, %2 : f64
              memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
            }
          }
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          cf.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          cf.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          cf.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          cf.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c4 = arith.constant 4 : index
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
  %1 = arith.cmpi slt, %0, %c8 : index
  cf.cond_br %1, ^bb2, ^bb6
^bb2:  // pred: ^bb1
  cf.br ^bb3(%c0 : index)
^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
  %3 = arith.cmpi slt, %2, %c4 : index
  cf.cond_br %3, ^bb4, ^bb5
^bb4:  // pred: ^bb3
  memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
  %4 = arith.addi %2, %c1 : index
  cf.br ^bb3(%4 : index)
^bb5:  // pred: ^bb3
  %5 = arith.addi %0, %c1 : index
  cf.br ^bb1(%5 : index)
^bb6:  // pred: ^bb1
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  cf.br ^bb7(%c0 : index)
^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
  %7 = arith.cmpi slt, %6, %c4 : index
  cf.cond_br %7, ^bb8, ^bb12
^bb8:  // pred: ^bb7
  cf.br ^bb9(%c0 : index)
^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
  %9 = arith.cmpi slt, %8, %c2 : index
  cf.cond_br %9, ^bb10, ^bb11
^bb10:  // pred: ^bb9
  memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
  %10 = arith.addi %8, %c1 : index
  cf.br ^bb9(%10 : index)
^bb11:  // pred: ^bb9
  %11 = arith.addi %6, %c1 : index
  cf.br ^bb7(%11 : index)
^bb12:  // pred: ^bb7
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  cf.br ^bb13(%c0 : index)
^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
  %13 = arith.cmpi slt, %12, %c8 : index
  cf.cond_br %13, ^bb14, ^bb18
^bb14:  // pred: ^bb13
  cf.br ^bb15(%c0 : index)
^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
  %15 = arith.cmpi slt, %14, %c2 : index
  cf.cond_br %15, ^bb16, ^bb17
^bb16:  // pred: ^bb15
  memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb15(%16 : index)
^bb17:  // pred: ^bb15
  %17 = arith.addi %12, %c1 : index
  cf.br ^bb13(%17 : index)
^bb18:  // pred: ^bb13
  omp.parallel {
    omp.wsloop {
      omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
        cf.br ^bb1(%c0 : index)
      ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
        %19 = arith.cmpi slt, %18, %idx4 : index
        cf.cond_br %19, ^bb2, ^bb6
      ^bb2:  // pred: ^bb1
        %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
        cf.br ^bb3(%c0 : index)
      ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
        %22 = arith.cmpi slt, %21, %idx2 : index
        cf.cond_br %22, ^bb4, ^bb5
      ^bb4:  // pred: ^bb3
        %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
        %24 = arith.mulf %20, %23 : f64
        %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
        %26 = arith.addf %25, %24 : f64
        memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
        %27 = arith.addi %21, %c1 : index
        cf.br ^bb3(%27 : index)
      ^bb5:  // pred: ^bb3
        %28 = arith.addi %18, %c1 : index
        cf.br ^bb1(%28 : index)
      ^bb6:  // pred: ^bb1
        omp.yield
      }
      omp.terminator
    }
    omp.terminator
  }
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          cf.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          cf.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          cf.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          cf.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertControlFlowToLLVMPass (convert-cf-to-llvm) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "rapid"} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8 : index
    llvm.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4 : index
    llvm.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4 : index
    llvm.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c2 : index
    llvm.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8 : index
    llvm.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c2 : index
    llvm.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          cf.br ^bb1(%c0 : index)
        ^bb1(%18: index):  // 2 preds: ^bb0, ^bb5
          %19 = arith.cmpi slt, %18, %idx4 : index
          llvm.cond_br %19, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %20 = memref.load %alloc[%arg0, %18] : memref<8x4xf64>
          cf.br ^bb3(%c0 : index)
        ^bb3(%21: index):  // 2 preds: ^bb2, ^bb4
          %22 = arith.cmpi slt, %21, %idx2 : index
          llvm.cond_br %22, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %23 = memref.load %alloc_2[%18, %21] : memref<4x2xf64>
          %24 = arith.mulf %20, %23 : f64
          %25 = memref.load %alloc_3[%arg0, %21] : memref<8x2xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloc_3[%arg0, %21] : memref<8x2xf64>
          %27 = arith.addi %21, %c1 : index
          cf.br ^bb3(%27 : index)
        ^bb5:  // pred: ^bb3
          %28 = arith.addi %18, %c1 : index
          cf.br ^bb1(%28 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %0 = llvm.mlir.constant(8 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.zero : !llvm.ptr
    %5 = llvm.getelementptr %4[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %6 = llvm.ptrtoint %5 : !llvm.ptr to i64
    %7 = llvm.mlir.constant(32 : index) : i64
    %8 = llvm.add %6, %7 : i64
    %9 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %10 = llvm.call @rapid_malloc(%9, %8) : (!llvm.ptr, i64) -> !llvm.ptr
    %11 = llvm.ptrtoint %10 : !llvm.ptr to i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.sub %7, %12 : i64
    %14 = llvm.add %11, %13 : i64
    %15 = llvm.urem %14, %7  : i64
    %16 = llvm.sub %14, %15 : i64
    %17 = llvm.inttoptr %16 : i64 to !llvm.ptr
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %19 = llvm.insertvalue %10, %18[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %0, %22[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %1, %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %1, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %2, %25[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%27: index):  // 2 preds: ^bb0, ^bb5
    %28 = builtin.unrealized_conversion_cast %27 : index to i64
    %29 = arith.cmpi slt, %27, %c8 : index
    llvm.cond_br %29, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%30: index):  // 2 preds: ^bb2, ^bb4
    %31 = builtin.unrealized_conversion_cast %30 : index to i64
    %32 = arith.cmpi slt, %30, %c4 : index
    llvm.cond_br %32, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %33 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.constant(4 : index) : i64
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
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(8 : index) : i64
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
    %68 = arith.cmpi slt, %66, %c4 : index
    llvm.cond_br %68, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%69: index):  // 2 preds: ^bb8, ^bb10
    %70 = builtin.unrealized_conversion_cast %69 : index to i64
    %71 = arith.cmpi slt, %69, %c2 : index
    llvm.cond_br %71, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %72 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.mlir.constant(2 : index) : i64
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
    %79 = llvm.mlir.constant(8 : index) : i64
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(16 : index) : i64
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
    %107 = arith.cmpi slt, %105, %c8 : index
    llvm.cond_br %107, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%108: index):  // 2 preds: ^bb14, ^bb16
    %109 = builtin.unrealized_conversion_cast %108 : index to i64
    %110 = arith.cmpi slt, %108, %c2 : index
    llvm.cond_br %110, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %111 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.mlir.constant(2 : index) : i64
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
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%c0) to (%c8) step (%c1) {
          %125 = builtin.unrealized_conversion_cast %arg0 : index to i64
          cf.br ^bb1(%c0 : index)
        ^bb1(%126: index):  // 2 preds: ^bb0, ^bb5
          %127 = builtin.unrealized_conversion_cast %126 : index to i64
          %128 = arith.cmpi slt, %126, %idx4 : index
          llvm.cond_br %128, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %129 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %130 = llvm.mlir.constant(4 : index) : i64
          %131 = llvm.mul %125, %130 : i64
          %132 = llvm.add %131, %127 : i64
          %133 = llvm.getelementptr %129[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %134 = llvm.load %133 : !llvm.ptr -> f64
          cf.br ^bb3(%c0 : index)
        ^bb3(%135: index):  // 2 preds: ^bb2, ^bb4
          %136 = builtin.unrealized_conversion_cast %135 : index to i64
          %137 = arith.cmpi slt, %135, %idx2 : index
          llvm.cond_br %137, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %138 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %139 = llvm.mlir.constant(2 : index) : i64
          %140 = llvm.mul %127, %139 : i64
          %141 = llvm.add %140, %136 : i64
          %142 = llvm.getelementptr %138[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %143 = llvm.load %142 : !llvm.ptr -> f64
          %144 = arith.mulf %134, %143 : f64
          %145 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %146 = llvm.mlir.constant(2 : index) : i64
          %147 = llvm.mul %125, %146 : i64
          %148 = llvm.add %147, %136 : i64
          %149 = llvm.getelementptr %145[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %150 = llvm.load %149 : !llvm.ptr -> f64
          %151 = arith.addf %150, %144 : f64
          %152 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %153 = llvm.mlir.constant(2 : index) : i64
          %154 = llvm.mul %125, %153 : i64
          %155 = llvm.add %154, %136 : i64
          %156 = llvm.getelementptr %152[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %151, %156 : f64, !llvm.ptr
          %157 = arith.addi %135, %c1 : index
          cf.br ^bb3(%157 : index)
        ^bb5:  // pred: ^bb3
          %158 = arith.addi %126, %c1 : index
          cf.br ^bb1(%158 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.alloca %118 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %104, %119 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %122 = llvm.insertvalue %120, %121[0] : !llvm.struct<(i64, ptr)> 
    %123 = llvm.insertvalue %119, %122[1] : !llvm.struct<(i64, ptr)> 
    %124 = builtin.unrealized_conversion_cast %123 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%124) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %idx2 = index.constant 2
    %11 = builtin.unrealized_conversion_cast %idx2 : index to i64
    %idx4 = index.constant 4
    %12 = builtin.unrealized_conversion_cast %idx4 : index to i64
    %13 = llvm.mlir.constant(8 : index) : i64
    %14 = llvm.mlir.constant(4 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(32 : index) : i64
    %17 = llvm.mlir.zero : !llvm.ptr
    %18 = llvm.getelementptr %17[%16] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %19 = llvm.ptrtoint %18 : !llvm.ptr to i64
    %20 = llvm.mlir.constant(32 : index) : i64
    %21 = llvm.add %19, %20 : i64
    %22 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %23 = llvm.call @rapid_malloc(%22, %21) : (!llvm.ptr, i64) -> !llvm.ptr
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.sub %20, %25 : i64
    %27 = llvm.add %24, %26 : i64
    %28 = llvm.urem %27, %20  : i64
    %29 = llvm.sub %27, %28 : i64
    %30 = llvm.inttoptr %29 : i64 to !llvm.ptr
    %31 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %32 = llvm.insertvalue %23, %31[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %13, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %14, %36[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %14, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %15, %38[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%6 : i64)
  ^bb1(%40: i64):  // 2 preds: ^bb0, ^bb5
    %41 = builtin.unrealized_conversion_cast %40 : i64 to index
    %42 = builtin.unrealized_conversion_cast %41 : index to i64
    %43 = llvm.icmp "slt" %40, %2 : i64
    llvm.cond_br %43, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%6 : i64)
  ^bb3(%44: i64):  // 2 preds: ^bb2, ^bb4
    %45 = builtin.unrealized_conversion_cast %44 : i64 to index
    %46 = builtin.unrealized_conversion_cast %45 : index to i64
    %47 = llvm.icmp "slt" %44, %1 : i64
    llvm.cond_br %47, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %48 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.mul %42, %49 : i64
    %51 = llvm.add %50, %46 : i64
    %52 = llvm.getelementptr %48[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %52 : f64, !llvm.ptr
    %53 = llvm.add %44, %4 : i64
    llvm.br ^bb3(%53 : i64)
  ^bb5:  // pred: ^bb3
    %54 = llvm.add %40, %4 : i64
    llvm.br ^bb1(%54 : i64)
  ^bb6:  // pred: ^bb1
    %55 = llvm.mlir.constant(4 : index) : i64
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(8 : index) : i64
    %59 = llvm.mlir.zero : !llvm.ptr
    %60 = llvm.getelementptr %59[%58] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %61 = llvm.ptrtoint %60 : !llvm.ptr to i64
    %62 = llvm.mlir.constant(32 : index) : i64
    %63 = llvm.add %61, %62 : i64
    %64 = llvm.call @malloc(%63) : (i64) -> !llvm.ptr
    %65 = llvm.ptrtoint %64 : !llvm.ptr to i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.sub %62, %66 : i64
    %68 = llvm.add %65, %67 : i64
    %69 = llvm.urem %68, %62  : i64
    %70 = llvm.sub %68, %69 : i64
    %71 = llvm.inttoptr %70 : i64 to !llvm.ptr
    %72 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %73 = llvm.insertvalue %64, %72[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.insertvalue %71, %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.insertvalue %75, %74[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.insertvalue %55, %76[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.insertvalue %56, %77[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %56, %78[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.insertvalue %57, %79[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%6 : i64)
  ^bb7(%81: i64):  // 2 preds: ^bb6, ^bb11
    %82 = builtin.unrealized_conversion_cast %81 : i64 to index
    %83 = builtin.unrealized_conversion_cast %82 : index to i64
    %84 = llvm.icmp "slt" %81, %1 : i64
    llvm.cond_br %84, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%6 : i64)
  ^bb9(%85: i64):  // 2 preds: ^bb8, ^bb10
    %86 = builtin.unrealized_conversion_cast %85 : i64 to index
    %87 = builtin.unrealized_conversion_cast %86 : index to i64
    %88 = llvm.icmp "slt" %85, %0 : i64
    llvm.cond_br %88, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %89 = llvm.extractvalue %80[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mul %83, %90 : i64
    %92 = llvm.add %91, %87 : i64
    %93 = llvm.getelementptr %89[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %93 : f64, !llvm.ptr
    %94 = llvm.add %85, %4 : i64
    llvm.br ^bb9(%94 : i64)
  ^bb11:  // pred: ^bb9
    %95 = llvm.add %81, %4 : i64
    llvm.br ^bb7(%95 : i64)
  ^bb12:  // pred: ^bb7
    %96 = llvm.mlir.constant(8 : index) : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(16 : index) : i64
    %100 = llvm.mlir.zero : !llvm.ptr
    %101 = llvm.getelementptr %100[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %102 = llvm.ptrtoint %101 : !llvm.ptr to i64
    %103 = llvm.mlir.constant(32 : index) : i64
    %104 = llvm.add %102, %103 : i64
    %105 = llvm.call @malloc(%104) : (i64) -> !llvm.ptr
    %106 = llvm.ptrtoint %105 : !llvm.ptr to i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.sub %103, %107 : i64
    %109 = llvm.add %106, %108 : i64
    %110 = llvm.urem %109, %103  : i64
    %111 = llvm.sub %109, %110 : i64
    %112 = llvm.inttoptr %111 : i64 to !llvm.ptr
    %113 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %114 = llvm.insertvalue %105, %113[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.insertvalue %112, %114[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.insertvalue %116, %115[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %96, %117[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.insertvalue %97, %118[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %120 = llvm.insertvalue %97, %119[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.insertvalue %98, %120[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%6 : i64)
  ^bb13(%122: i64):  // 2 preds: ^bb12, ^bb17
    %123 = builtin.unrealized_conversion_cast %122 : i64 to index
    %124 = builtin.unrealized_conversion_cast %123 : index to i64
    %125 = llvm.icmp "slt" %122, %2 : i64
    llvm.cond_br %125, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%6 : i64)
  ^bb15(%126: i64):  // 2 preds: ^bb14, ^bb16
    %127 = builtin.unrealized_conversion_cast %126 : i64 to index
    %128 = builtin.unrealized_conversion_cast %127 : index to i64
    %129 = llvm.icmp "slt" %126, %0 : i64
    llvm.cond_br %129, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %130 = llvm.extractvalue %121[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mul %124, %131 : i64
    %133 = llvm.add %132, %128 : i64
    %134 = llvm.getelementptr %130[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %134 : f64, !llvm.ptr
    %135 = llvm.add %126, %4 : i64
    llvm.br ^bb15(%135 : i64)
  ^bb17:  // pred: ^bb15
    %136 = llvm.add %122, %4 : i64
    llvm.br ^bb13(%136 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%7) to (%3) step (%5) {
          %145 = builtin.unrealized_conversion_cast %arg0 : index to i64
          cf.br ^bb1(%7 : index)
        ^bb1(%146: index):  // 2 preds: ^bb0, ^bb5
          %147 = builtin.unrealized_conversion_cast %146 : index to i64
          %148 = builtin.unrealized_conversion_cast %146 : index to i64
          %149 = llvm.icmp "slt" %147, %12 : i64
          llvm.cond_br %149, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %150 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %151 = llvm.mlir.constant(4 : index) : i64
          %152 = llvm.mul %145, %151 : i64
          %153 = llvm.add %152, %148 : i64
          %154 = llvm.getelementptr %150[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %155 = llvm.load %154 : !llvm.ptr -> f64
          cf.br ^bb3(%7 : index)
        ^bb3(%156: index):  // 2 preds: ^bb2, ^bb4
          %157 = builtin.unrealized_conversion_cast %156 : index to i64
          %158 = builtin.unrealized_conversion_cast %156 : index to i64
          %159 = llvm.icmp "slt" %157, %11 : i64
          llvm.cond_br %159, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %160 = llvm.extractvalue %80[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %161 = llvm.mlir.constant(2 : index) : i64
          %162 = llvm.mul %148, %161 : i64
          %163 = llvm.add %162, %158 : i64
          %164 = llvm.getelementptr %160[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %165 = llvm.load %164 : !llvm.ptr -> f64
          %166 = llvm.fmul %155, %165  : f64
          %167 = llvm.extractvalue %121[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %168 = llvm.mlir.constant(2 : index) : i64
          %169 = llvm.mul %145, %168 : i64
          %170 = llvm.add %169, %158 : i64
          %171 = llvm.getelementptr %167[%170] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %172 = llvm.load %171 : !llvm.ptr -> f64
          %173 = llvm.fadd %172, %166  : f64
          %174 = llvm.extractvalue %121[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %175 = llvm.mlir.constant(2 : index) : i64
          %176 = llvm.mul %145, %175 : i64
          %177 = llvm.add %176, %158 : i64
          %178 = llvm.getelementptr %174[%177] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %173, %178 : f64, !llvm.ptr
          %179 = llvm.add %157, %4 : i64
          %180 = builtin.unrealized_conversion_cast %179 : i64 to index
          cf.br ^bb3(%180 : index)
        ^bb5:  // pred: ^bb3
          %181 = llvm.add %147, %4 : i64
          %182 = builtin.unrealized_conversion_cast %181 : i64 to index
          cf.br ^bb1(%182 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.alloca %137 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %121, %138 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %141 = llvm.insertvalue %139, %140[0] : !llvm.struct<(i64, ptr)> 
    %142 = llvm.insertvalue %138, %141[1] : !llvm.struct<(i64, ptr)> 
    %143 = llvm.extractvalue %142[0] : !llvm.struct<(i64, ptr)> 
    %144 = llvm.extractvalue %142[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%143, %144) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = builtin.unrealized_conversion_cast %12 : index to i64
    %14 = llvm.mlir.constant(4 : i64) : i64
    %15 = builtin.unrealized_conversion_cast %14 : i64 to index
    %16 = builtin.unrealized_conversion_cast %15 : index to i64
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.mlir.constant(4 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(32 : index) : i64
    %21 = llvm.mlir.zero : !llvm.ptr
    %22 = llvm.getelementptr %21[%20] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.mlir.constant(32 : index) : i64
    %25 = llvm.add %23, %24 : i64
    %26 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %27 = llvm.call @rapid_malloc(%26, %25) : (!llvm.ptr, i64) -> !llvm.ptr
    %28 = llvm.ptrtoint %27 : !llvm.ptr to i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.sub %24, %29 : i64
    %31 = llvm.add %28, %30 : i64
    %32 = llvm.urem %31, %24  : i64
    %33 = llvm.sub %31, %32 : i64
    %34 = llvm.inttoptr %33 : i64 to !llvm.ptr
    %35 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %36 = llvm.insertvalue %27, %35[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %17, %39[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %18, %40[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.insertvalue %18, %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %19, %42[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%6 : i64)
  ^bb1(%44: i64):  // 2 preds: ^bb0, ^bb5
    %45 = builtin.unrealized_conversion_cast %44 : i64 to index
    %46 = llvm.icmp "slt" %44, %2 : i64
    llvm.cond_br %46, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%6 : i64)
  ^bb3(%47: i64):  // 2 preds: ^bb2, ^bb4
    %48 = builtin.unrealized_conversion_cast %47 : i64 to index
    %49 = llvm.icmp "slt" %47, %1 : i64
    llvm.cond_br %49, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %50 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.mul %44, %51 : i64
    %53 = llvm.add %52, %47 : i64
    %54 = llvm.getelementptr %50[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %54 : f64, !llvm.ptr
    %55 = llvm.add %47, %4 : i64
    llvm.br ^bb3(%55 : i64)
  ^bb5:  // pred: ^bb3
    %56 = llvm.add %44, %4 : i64
    llvm.br ^bb1(%56 : i64)
  ^bb6:  // pred: ^bb1
    %57 = llvm.mlir.constant(4 : index) : i64
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(8 : index) : i64
    %61 = llvm.mlir.zero : !llvm.ptr
    %62 = llvm.getelementptr %61[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %63 = llvm.ptrtoint %62 : !llvm.ptr to i64
    %64 = llvm.mlir.constant(32 : index) : i64
    %65 = llvm.add %63, %64 : i64
    %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr
    %67 = llvm.ptrtoint %66 : !llvm.ptr to i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.sub %64, %68 : i64
    %70 = llvm.add %67, %69 : i64
    %71 = llvm.urem %70, %64  : i64
    %72 = llvm.sub %70, %71 : i64
    %73 = llvm.inttoptr %72 : i64 to !llvm.ptr
    %74 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %75 = llvm.insertvalue %66, %74[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %57, %78[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.insertvalue %58, %79[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.insertvalue %58, %80[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.insertvalue %59, %81[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%6 : i64)
  ^bb7(%83: i64):  // 2 preds: ^bb6, ^bb11
    %84 = builtin.unrealized_conversion_cast %83 : i64 to index
    %85 = llvm.icmp "slt" %83, %1 : i64
    llvm.cond_br %85, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%6 : i64)
  ^bb9(%86: i64):  // 2 preds: ^bb8, ^bb10
    %87 = builtin.unrealized_conversion_cast %86 : i64 to index
    %88 = llvm.icmp "slt" %86, %0 : i64
    llvm.cond_br %88, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %89 = llvm.extractvalue %82[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mul %83, %90 : i64
    %92 = llvm.add %91, %86 : i64
    %93 = llvm.getelementptr %89[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %93 : f64, !llvm.ptr
    %94 = llvm.add %86, %4 : i64
    llvm.br ^bb9(%94 : i64)
  ^bb11:  // pred: ^bb9
    %95 = llvm.add %83, %4 : i64
    llvm.br ^bb7(%95 : i64)
  ^bb12:  // pred: ^bb7
    %96 = llvm.mlir.constant(8 : index) : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(16 : index) : i64
    %100 = llvm.mlir.zero : !llvm.ptr
    %101 = llvm.getelementptr %100[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %102 = llvm.ptrtoint %101 : !llvm.ptr to i64
    %103 = llvm.mlir.constant(32 : index) : i64
    %104 = llvm.add %102, %103 : i64
    %105 = llvm.call @malloc(%104) : (i64) -> !llvm.ptr
    %106 = llvm.ptrtoint %105 : !llvm.ptr to i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.sub %103, %107 : i64
    %109 = llvm.add %106, %108 : i64
    %110 = llvm.urem %109, %103  : i64
    %111 = llvm.sub %109, %110 : i64
    %112 = llvm.inttoptr %111 : i64 to !llvm.ptr
    %113 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %114 = llvm.insertvalue %105, %113[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.insertvalue %112, %114[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.insertvalue %116, %115[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %96, %117[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.insertvalue %97, %118[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %120 = llvm.insertvalue %97, %119[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.insertvalue %98, %120[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%6 : i64)
  ^bb13(%122: i64):  // 2 preds: ^bb12, ^bb17
    %123 = builtin.unrealized_conversion_cast %122 : i64 to index
    %124 = llvm.icmp "slt" %122, %2 : i64
    llvm.cond_br %124, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%6 : i64)
  ^bb15(%125: i64):  // 2 preds: ^bb14, ^bb16
    %126 = builtin.unrealized_conversion_cast %125 : i64 to index
    %127 = llvm.icmp "slt" %125, %0 : i64
    llvm.cond_br %127, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %128 = llvm.extractvalue %121[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mul %122, %129 : i64
    %131 = llvm.add %130, %125 : i64
    %132 = llvm.getelementptr %128[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %132 : f64, !llvm.ptr
    %133 = llvm.add %125, %4 : i64
    llvm.br ^bb15(%133 : i64)
  ^bb17:  // pred: ^bb15
    %134 = llvm.add %122, %4 : i64
    llvm.br ^bb13(%134 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : index = (%7) to (%3) step (%5) {
          %143 = builtin.unrealized_conversion_cast %arg0 : index to i64
          cf.br ^bb1(%7 : index)
        ^bb1(%144: index):  // 2 preds: ^bb0, ^bb5
          %145 = builtin.unrealized_conversion_cast %144 : index to i64
          %146 = builtin.unrealized_conversion_cast %144 : index to i64
          %147 = llvm.icmp "slt" %145, %16 : i64
          llvm.cond_br %147, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %148 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %149 = llvm.mlir.constant(4 : index) : i64
          %150 = llvm.mul %143, %149 : i64
          %151 = llvm.add %150, %146 : i64
          %152 = llvm.getelementptr %148[%151] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %153 = llvm.load %152 : !llvm.ptr -> f64
          cf.br ^bb3(%7 : index)
        ^bb3(%154: index):  // 2 preds: ^bb2, ^bb4
          %155 = builtin.unrealized_conversion_cast %154 : index to i64
          %156 = builtin.unrealized_conversion_cast %154 : index to i64
          %157 = llvm.icmp "slt" %155, %13 : i64
          llvm.cond_br %157, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %158 = llvm.extractvalue %82[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %159 = llvm.mlir.constant(2 : index) : i64
          %160 = llvm.mul %146, %159 : i64
          %161 = llvm.add %160, %156 : i64
          %162 = llvm.getelementptr %158[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %163 = llvm.load %162 : !llvm.ptr -> f64
          %164 = llvm.fmul %153, %163  : f64
          %165 = llvm.extractvalue %121[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %166 = llvm.mlir.constant(2 : index) : i64
          %167 = llvm.mul %143, %166 : i64
          %168 = llvm.add %167, %156 : i64
          %169 = llvm.getelementptr %165[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %170 = llvm.load %169 : !llvm.ptr -> f64
          %171 = llvm.fadd %170, %164  : f64
          %172 = llvm.extractvalue %121[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %173 = llvm.mlir.constant(2 : index) : i64
          %174 = llvm.mul %143, %173 : i64
          %175 = llvm.add %174, %156 : i64
          %176 = llvm.getelementptr %172[%175] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %171, %176 : f64, !llvm.ptr
          %177 = llvm.add %155, %4 : i64
          %178 = builtin.unrealized_conversion_cast %177 : i64 to index
          cf.br ^bb3(%178 : index)
        ^bb5:  // pred: ^bb3
          %179 = llvm.add %145, %4 : i64
          %180 = builtin.unrealized_conversion_cast %179 : i64 to index
          cf.br ^bb1(%180 : index)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.alloca %135 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %121, %136 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %139 = llvm.insertvalue %137, %138[0] : !llvm.struct<(i64, ptr)> 
    %140 = llvm.insertvalue %136, %139[1] : !llvm.struct<(i64, ptr)> 
    %141 = llvm.extractvalue %140[0] : !llvm.struct<(i64, ptr)> 
    %142 = llvm.extractvalue %140[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%141, %142) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertOpenMPToLLVMPass (convert-openmp-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = builtin.unrealized_conversion_cast %8 : i64 to index
    %10 = builtin.unrealized_conversion_cast %9 : index to i64
    %11 = llvm.mlir.constant(4 : i64) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = builtin.unrealized_conversion_cast %12 : index to i64
    %14 = llvm.mlir.constant(8 : index) : i64
    %15 = llvm.mlir.constant(4 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(32 : index) : i64
    %18 = llvm.mlir.zero : !llvm.ptr
    %19 = llvm.getelementptr %18[%17] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %20 = llvm.ptrtoint %19 : !llvm.ptr to i64
    %21 = llvm.mlir.constant(32 : index) : i64
    %22 = llvm.add %20, %21 : i64
    %23 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %24 = llvm.call @rapid_malloc(%23, %22) : (!llvm.ptr, i64) -> !llvm.ptr
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.sub %21, %26 : i64
    %28 = llvm.add %25, %27 : i64
    %29 = llvm.urem %28, %21  : i64
    %30 = llvm.sub %28, %29 : i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %24, %32[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %14, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %15, %37[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %15, %38[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %16, %39[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%41: i64):  // 2 preds: ^bb0, ^bb5
    %42 = builtin.unrealized_conversion_cast %41 : i64 to index
    %43 = llvm.icmp "slt" %41, %2 : i64
    llvm.cond_br %43, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%44: i64):  // 2 preds: ^bb2, ^bb4
    %45 = builtin.unrealized_conversion_cast %44 : i64 to index
    %46 = llvm.icmp "slt" %44, %1 : i64
    llvm.cond_br %46, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %47 = llvm.extractvalue %40[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.mul %41, %48 : i64
    %50 = llvm.add %49, %44 : i64
    %51 = llvm.getelementptr %47[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %51 : f64, !llvm.ptr
    %52 = llvm.add %44, %3 : i64
    llvm.br ^bb3(%52 : i64)
  ^bb5:  // pred: ^bb3
    %53 = llvm.add %41, %3 : i64
    llvm.br ^bb1(%53 : i64)
  ^bb6:  // pred: ^bb1
    %54 = llvm.mlir.constant(4 : index) : i64
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(8 : index) : i64
    %58 = llvm.mlir.zero : !llvm.ptr
    %59 = llvm.getelementptr %58[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.mlir.constant(32 : index) : i64
    %62 = llvm.add %60, %61 : i64
    %63 = llvm.call @malloc(%62) : (i64) -> !llvm.ptr
    %64 = llvm.ptrtoint %63 : !llvm.ptr to i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.sub %61, %65 : i64
    %67 = llvm.add %64, %66 : i64
    %68 = llvm.urem %67, %61  : i64
    %69 = llvm.sub %67, %68 : i64
    %70 = llvm.inttoptr %69 : i64 to !llvm.ptr
    %71 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %72 = llvm.insertvalue %63, %71[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.insertvalue %70, %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.insertvalue %74, %73[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.insertvalue %54, %75[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.insertvalue %55, %76[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.insertvalue %55, %77[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %56, %78[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%80: i64):  // 2 preds: ^bb6, ^bb11
    %81 = builtin.unrealized_conversion_cast %80 : i64 to index
    %82 = llvm.icmp "slt" %80, %1 : i64
    llvm.cond_br %82, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%83: i64):  // 2 preds: ^bb8, ^bb10
    %84 = builtin.unrealized_conversion_cast %83 : i64 to index
    %85 = llvm.icmp "slt" %83, %0 : i64
    llvm.cond_br %85, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %86 = llvm.extractvalue %79[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mul %80, %87 : i64
    %89 = llvm.add %88, %83 : i64
    %90 = llvm.getelementptr %86[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %90 : f64, !llvm.ptr
    %91 = llvm.add %83, %3 : i64
    llvm.br ^bb9(%91 : i64)
  ^bb11:  // pred: ^bb9
    %92 = llvm.add %80, %3 : i64
    llvm.br ^bb7(%92 : i64)
  ^bb12:  // pred: ^bb7
    %93 = llvm.mlir.constant(8 : index) : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(16 : index) : i64
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
    %121 = llvm.icmp "slt" %119, %2 : i64
    llvm.cond_br %121, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%122: i64):  // 2 preds: ^bb14, ^bb16
    %123 = builtin.unrealized_conversion_cast %122 : i64 to index
    %124 = llvm.icmp "slt" %122, %0 : i64
    llvm.cond_br %124, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %125 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mul %119, %126 : i64
    %128 = llvm.add %127, %122 : i64
    %129 = llvm.getelementptr %125[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %129 : f64, !llvm.ptr
    %130 = llvm.add %122, %3 : i64
    llvm.br ^bb15(%130 : i64)
  ^bb17:  // pred: ^bb15
    %131 = llvm.add %119, %3 : i64
    llvm.br ^bb13(%131 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%4) to (%2) step (%3) {
          %140 = builtin.unrealized_conversion_cast %arg0 : i64 to index
          %141 = builtin.unrealized_conversion_cast %140 : index to i64
          llvm.br ^bb1(%4 : i64)
        ^bb1(%142: i64):  // 2 preds: ^bb0, ^bb5
          %143 = builtin.unrealized_conversion_cast %142 : i64 to index
          %144 = builtin.unrealized_conversion_cast %143 : index to i64
          %145 = builtin.unrealized_conversion_cast %143 : index to i64
          %146 = llvm.icmp "slt" %144, %13 : i64
          llvm.cond_br %146, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %147 = llvm.extractvalue %40[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %148 = llvm.mlir.constant(4 : index) : i64
          %149 = llvm.mul %141, %148 : i64
          %150 = llvm.add %149, %145 : i64
          %151 = llvm.getelementptr %147[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %152 = llvm.load %151 : !llvm.ptr -> f64
          llvm.br ^bb3(%4 : i64)
        ^bb3(%153: i64):  // 2 preds: ^bb2, ^bb4
          %154 = builtin.unrealized_conversion_cast %153 : i64 to index
          %155 = builtin.unrealized_conversion_cast %154 : index to i64
          %156 = builtin.unrealized_conversion_cast %154 : index to i64
          %157 = llvm.icmp "slt" %155, %10 : i64
          llvm.cond_br %157, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %158 = llvm.extractvalue %79[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %159 = llvm.mlir.constant(2 : index) : i64
          %160 = llvm.mul %145, %159 : i64
          %161 = llvm.add %160, %156 : i64
          %162 = llvm.getelementptr %158[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %163 = llvm.load %162 : !llvm.ptr -> f64
          %164 = llvm.fmul %152, %163  : f64
          %165 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %166 = llvm.mlir.constant(2 : index) : i64
          %167 = llvm.mul %141, %166 : i64
          %168 = llvm.add %167, %156 : i64
          %169 = llvm.getelementptr %165[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %170 = llvm.load %169 : !llvm.ptr -> f64
          %171 = llvm.fadd %170, %164  : f64
          %172 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %173 = llvm.mlir.constant(2 : index) : i64
          %174 = llvm.mul %141, %173 : i64
          %175 = llvm.add %174, %156 : i64
          %176 = llvm.getelementptr %172[%175] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %171, %176 : f64, !llvm.ptr
          %177 = llvm.add %155, %3 : i64
          llvm.br ^bb3(%177 : i64)
        ^bb5:  // pred: ^bb3
          %178 = llvm.add %144, %3 : i64
          llvm.br ^bb1(%178 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.alloca %132 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %118, %133 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %136 = llvm.insertvalue %134, %135[0] : !llvm.struct<(i64, ptr)> 
    %137 = llvm.insertvalue %133, %136[1] : !llvm.struct<(i64, ptr)> 
    %138 = llvm.extractvalue %137[0] : !llvm.struct<(i64, ptr)> 
    %139 = llvm.extractvalue %137[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%138, %139) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = llvm.mlir.constant(4 : i64) : i64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.getelementptr %14[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %16 = llvm.ptrtoint %15 : !llvm.ptr to i64
    %17 = llvm.mlir.constant(32 : index) : i64
    %18 = llvm.add %16, %17 : i64
    %19 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %20 = llvm.call @rapid_malloc(%19, %18) : (!llvm.ptr, i64) -> !llvm.ptr
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.sub %17, %22 : i64
    %24 = llvm.add %21, %23 : i64
    %25 = llvm.urem %24, %17  : i64
    %26 = llvm.sub %24, %25 : i64
    %27 = llvm.inttoptr %26 : i64 to !llvm.ptr
    %28 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %20, %28[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %10, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %11, %33[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %11, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %12, %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb5
    %38 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %38, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb4
    %40 = llvm.icmp "slt" %39, %1 : i64
    llvm.cond_br %40, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %41 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.mul %37, %42 : i64
    %44 = llvm.add %43, %39 : i64
    %45 = llvm.getelementptr %41[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %45 : f64, !llvm.ptr
    %46 = llvm.add %39, %3 : i64
    llvm.br ^bb3(%46 : i64)
  ^bb5:  // pred: ^bb3
    %47 = llvm.add %37, %3 : i64
    llvm.br ^bb1(%47 : i64)
  ^bb6:  // pred: ^bb1
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(8 : index) : i64
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
    llvm.br ^bb7(%4 : i64)
  ^bb7(%74: i64):  // 2 preds: ^bb6, ^bb11
    %75 = llvm.icmp "slt" %74, %1 : i64
    llvm.cond_br %75, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%76: i64):  // 2 preds: ^bb8, ^bb10
    %77 = llvm.icmp "slt" %76, %0 : i64
    llvm.cond_br %77, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %78 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mul %74, %79 : i64
    %81 = llvm.add %80, %76 : i64
    %82 = llvm.getelementptr %78[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %82 : f64, !llvm.ptr
    %83 = llvm.add %76, %3 : i64
    llvm.br ^bb9(%83 : i64)
  ^bb11:  // pred: ^bb9
    %84 = llvm.add %74, %3 : i64
    llvm.br ^bb7(%84 : i64)
  ^bb12:  // pred: ^bb7
    %85 = llvm.mlir.constant(8 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(16 : index) : i64
    %89 = llvm.mlir.zero : !llvm.ptr
    %90 = llvm.getelementptr %89[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %91 = llvm.ptrtoint %90 : !llvm.ptr to i64
    %92 = llvm.mlir.constant(32 : index) : i64
    %93 = llvm.add %91, %92 : i64
    %94 = llvm.call @malloc(%93) : (i64) -> !llvm.ptr
    %95 = llvm.ptrtoint %94 : !llvm.ptr to i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.sub %92, %96 : i64
    %98 = llvm.add %95, %97 : i64
    %99 = llvm.urem %98, %92  : i64
    %100 = llvm.sub %98, %99 : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr
    %102 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %103 = llvm.insertvalue %94, %102[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %85, %106[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %86, %107[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %86, %108[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.insertvalue %87, %109[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%111: i64):  // 2 preds: ^bb12, ^bb17
    %112 = llvm.icmp "slt" %111, %2 : i64
    llvm.cond_br %112, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%113: i64):  // 2 preds: ^bb14, ^bb16
    %114 = llvm.icmp "slt" %113, %0 : i64
    llvm.cond_br %114, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %115 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mul %111, %116 : i64
    %118 = llvm.add %117, %113 : i64
    %119 = llvm.getelementptr %115[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %119 : f64, !llvm.ptr
    %120 = llvm.add %113, %3 : i64
    llvm.br ^bb15(%120 : i64)
  ^bb17:  // pred: ^bb15
    %121 = llvm.add %111, %3 : i64
    llvm.br ^bb13(%121 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%4) to (%2) step (%3) {
          llvm.br ^bb1(%4 : i64)
        ^bb1(%130: i64):  // 2 preds: ^bb0, ^bb5
          %131 = llvm.icmp "slt" %130, %9 : i64
          llvm.cond_br %131, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %132 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %133 = llvm.mlir.constant(4 : index) : i64
          %134 = llvm.mul %arg0, %133 : i64
          %135 = llvm.add %134, %130 : i64
          %136 = llvm.getelementptr %132[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %137 = llvm.load %136 : !llvm.ptr -> f64
          llvm.br ^bb3(%4 : i64)
        ^bb3(%138: i64):  // 2 preds: ^bb2, ^bb4
          %139 = llvm.icmp "slt" %138, %8 : i64
          llvm.cond_br %139, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %140 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %141 = llvm.mlir.constant(2 : index) : i64
          %142 = llvm.mul %130, %141 : i64
          %143 = llvm.add %142, %138 : i64
          %144 = llvm.getelementptr %140[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %145 = llvm.load %144 : !llvm.ptr -> f64
          %146 = llvm.fmul %137, %145  : f64
          %147 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %148 = llvm.mlir.constant(2 : index) : i64
          %149 = llvm.mul %arg0, %148 : i64
          %150 = llvm.add %149, %138 : i64
          %151 = llvm.getelementptr %147[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %152 = llvm.load %151 : !llvm.ptr -> f64
          %153 = llvm.fadd %152, %146  : f64
          %154 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %155 = llvm.mlir.constant(2 : index) : i64
          %156 = llvm.mul %arg0, %155 : i64
          %157 = llvm.add %156, %138 : i64
          %158 = llvm.getelementptr %154[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %153, %158 : f64, !llvm.ptr
          %159 = llvm.add %138, %3 : i64
          llvm.br ^bb3(%159 : i64)
        ^bb5:  // pred: ^bb3
          %160 = llvm.add %130, %3 : i64
          llvm.br ^bb1(%160 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.alloca %122 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %110, %123 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %126 = llvm.insertvalue %124, %125[0] : !llvm.struct<(i64, ptr)> 
    %127 = llvm.insertvalue %123, %126[1] : !llvm.struct<(i64, ptr)> 
    %128 = llvm.extractvalue %127[0] : !llvm.struct<(i64, ptr)> 
    %129 = llvm.extractvalue %127[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%128, %129) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = llvm.mlir.constant(4 : i64) : i64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.getelementptr %14[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %16 = llvm.ptrtoint %15 : !llvm.ptr to i64
    %17 = llvm.mlir.constant(32 : index) : i64
    %18 = llvm.add %16, %17 : i64
    %19 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %20 = llvm.call @rapid_malloc(%19, %18) : (!llvm.ptr, i64) -> !llvm.ptr
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.sub %17, %22 : i64
    %24 = llvm.add %21, %23 : i64
    %25 = llvm.urem %24, %17  : i64
    %26 = llvm.sub %24, %25 : i64
    %27 = llvm.inttoptr %26 : i64 to !llvm.ptr
    %28 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %20, %28[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %10, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %11, %33[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %11, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %12, %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb5
    %38 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %38, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb4
    %40 = llvm.icmp "slt" %39, %1 : i64
    llvm.cond_br %40, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %41 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.mul %37, %42 : i64
    %44 = llvm.add %43, %39 : i64
    %45 = llvm.getelementptr %41[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %45 : f64, !llvm.ptr
    %46 = llvm.add %39, %3 : i64
    llvm.br ^bb3(%46 : i64)
  ^bb5:  // pred: ^bb3
    %47 = llvm.add %37, %3 : i64
    llvm.br ^bb1(%47 : i64)
  ^bb6:  // pred: ^bb1
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(8 : index) : i64
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
    llvm.br ^bb7(%4 : i64)
  ^bb7(%74: i64):  // 2 preds: ^bb6, ^bb11
    %75 = llvm.icmp "slt" %74, %1 : i64
    llvm.cond_br %75, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%76: i64):  // 2 preds: ^bb8, ^bb10
    %77 = llvm.icmp "slt" %76, %0 : i64
    llvm.cond_br %77, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %78 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mul %74, %79 : i64
    %81 = llvm.add %80, %76 : i64
    %82 = llvm.getelementptr %78[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %82 : f64, !llvm.ptr
    %83 = llvm.add %76, %3 : i64
    llvm.br ^bb9(%83 : i64)
  ^bb11:  // pred: ^bb9
    %84 = llvm.add %74, %3 : i64
    llvm.br ^bb7(%84 : i64)
  ^bb12:  // pred: ^bb7
    %85 = llvm.mlir.constant(8 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(16 : index) : i64
    %89 = llvm.mlir.zero : !llvm.ptr
    %90 = llvm.getelementptr %89[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %91 = llvm.ptrtoint %90 : !llvm.ptr to i64
    %92 = llvm.mlir.constant(32 : index) : i64
    %93 = llvm.add %91, %92 : i64
    %94 = llvm.call @malloc(%93) : (i64) -> !llvm.ptr
    %95 = llvm.ptrtoint %94 : !llvm.ptr to i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.sub %92, %96 : i64
    %98 = llvm.add %95, %97 : i64
    %99 = llvm.urem %98, %92  : i64
    %100 = llvm.sub %98, %99 : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr
    %102 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %103 = llvm.insertvalue %94, %102[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %85, %106[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %86, %107[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %86, %108[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.insertvalue %87, %109[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%111: i64):  // 2 preds: ^bb12, ^bb17
    %112 = llvm.icmp "slt" %111, %2 : i64
    llvm.cond_br %112, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%113: i64):  // 2 preds: ^bb14, ^bb16
    %114 = llvm.icmp "slt" %113, %0 : i64
    llvm.cond_br %114, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %115 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mul %111, %116 : i64
    %118 = llvm.add %117, %113 : i64
    %119 = llvm.getelementptr %115[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %119 : f64, !llvm.ptr
    %120 = llvm.add %113, %3 : i64
    llvm.br ^bb15(%120 : i64)
  ^bb17:  // pred: ^bb15
    %121 = llvm.add %111, %3 : i64
    llvm.br ^bb13(%121 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%4) to (%2) step (%3) {
          llvm.br ^bb1(%4 : i64)
        ^bb1(%130: i64):  // 2 preds: ^bb0, ^bb5
          %131 = llvm.icmp "slt" %130, %9 : i64
          llvm.cond_br %131, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %132 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %133 = llvm.mlir.constant(4 : index) : i64
          %134 = llvm.mul %arg0, %133 : i64
          %135 = llvm.add %134, %130 : i64
          %136 = llvm.getelementptr %132[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %137 = llvm.load %136 : !llvm.ptr -> f64
          llvm.br ^bb3(%4 : i64)
        ^bb3(%138: i64):  // 2 preds: ^bb2, ^bb4
          %139 = llvm.icmp "slt" %138, %8 : i64
          llvm.cond_br %139, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %140 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %141 = llvm.mlir.constant(2 : index) : i64
          %142 = llvm.mul %130, %141 : i64
          %143 = llvm.add %142, %138 : i64
          %144 = llvm.getelementptr %140[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %145 = llvm.load %144 : !llvm.ptr -> f64
          %146 = llvm.fmul %137, %145  : f64
          %147 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %148 = llvm.mlir.constant(2 : index) : i64
          %149 = llvm.mul %arg0, %148 : i64
          %150 = llvm.add %149, %138 : i64
          %151 = llvm.getelementptr %147[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %152 = llvm.load %151 : !llvm.ptr -> f64
          %153 = llvm.fadd %152, %146  : f64
          %154 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %155 = llvm.mlir.constant(2 : index) : i64
          %156 = llvm.mul %arg0, %155 : i64
          %157 = llvm.add %156, %138 : i64
          %158 = llvm.getelementptr %154[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %153, %158 : f64, !llvm.ptr
          %159 = llvm.add %138, %3 : i64
          llvm.br ^bb3(%159 : i64)
        ^bb5:  // pred: ^bb3
          %160 = llvm.add %130, %3 : i64
          llvm.br ^bb1(%160 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.alloca %122 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %110, %123 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %126 = llvm.insertvalue %124, %125[0] : !llvm.struct<(i64, ptr)> 
    %127 = llvm.insertvalue %123, %126[1] : !llvm.struct<(i64, ptr)> 
    %128 = llvm.extractvalue %127[0] : !llvm.struct<(i64, ptr)> 
    %129 = llvm.extractvalue %127[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%128, %129) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
