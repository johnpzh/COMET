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


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
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
    scf.parallel (%arg0) = (%c0) to (%c8) step (%c1) {
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
    scf.parallel (%arg0) = (%c0) to (%c8) step (%c1) {
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
    scf.parallel (%arg0) = (%c0) to (%c8) step (%c1) {
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
