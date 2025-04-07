// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
    %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
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
  %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
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
  %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "it.itree"(%5) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.IndexOp"(%7) : (!it.index_tree) -> !it.index
    %9 = "it.IndexOp"(%8) : (!it.index) -> !it.index
    %10 = "it.IndexOp"(%9) : (!it.index) -> !it.index
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
  %0 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
  %1 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
  %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) : (!it.index, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
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

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
  %1 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
  %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) : (!it.index, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
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

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) : (!it.index, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %10, %pos_5) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %14 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %10) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %12, %pos_9) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %16 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) : (!it.index, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %10, %pos_5) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %14 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %10) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %12, %pos_9) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %16 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %2 = bufferization.to_tensor %alloc_1 restrict writable : memref<8x2xf64>
  "ta.fill"(%0) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%1) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) : (!it.index, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.LHSOperandOp"(%arg0, %pos, %pos_3, %crd, %crd_2) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %10, %pos_5) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %14 = "it.OperandOp"(%0, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %10) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %12, %pos_9) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %16 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_2 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) : (!it.index, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %10, %pos_7) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %14 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %10) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %12, %pos_11) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %16 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_2 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) : (!it.index, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %10, %pos_7) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %14 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %10) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %12, %pos_11) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %16 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_2 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<8x4xf64>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) : (!it.index, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x2xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %6) <{dim = 0 : ui32}> : (tensor<8x2xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<8x2xf64>, !it.index, index) -> (index, index)
    %13 = "it.LHSOperandOp"(%arg0, %pos, %pos_5, %crd, %crd_4) : (tensor<8x2xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %6) <{dim = 0 : ui32}> : (tensor<8x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %10, %pos_7) <{dim = 1 : ui32}> : (tensor<8x4xf64>, !it.index, index) -> (index, index)
    %14 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<8x4xf64>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%1, %10) <{dim = 0 : ui32}> : (tensor<4x2xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%1, %12, %pos_11) <{dim = 1 : ui32}> : (tensor<4x2xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%1, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x2xf64>, index, index, index, index) -> !it.operand
    %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<8x2xf64>
    it.yield %16 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) : (!it.index, !it.domain) -> !it.index
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
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %4 = "it.RootOp"() : () -> !it.index_tree
    %5 = "it.DenseDomainOp"(%idx8, %0) <{dims = [0 : i32]}> : (index, tensor<8x4xf64>) -> !it.domain
    %6 = "it.IndexOp"(%4, %5) : (!it.index_tree, !it.domain) -> !it.index
    %7 = "it.DenseDomainOp"(%idx4, %0, %1) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<8x4xf64>, tensor<4x2xf64>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) : (!it.index, !it.domain) -> !it.index
    %9 = "it.DenseDomainOp"(%idx2, %1) <{dims = [1 : i32]}> : (index, tensor<4x2xf64>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) : (!it.index, !it.domain) -> !it.index
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
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %4 = scf.for %arg1 = %c0 to %idx8 step %c1 iter_args(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %5 = scf.for %arg3 = %c0_4 to %idx4 step %c1_5 iter_args(%arg4 = %arg2) -> (tensor<8x2xf64>) {
        %c0_6 = arith.constant 0 : index
        %c1_7 = arith.constant 1 : index
        %6 = scf.for %arg5 = %c0_6 to %idx2 step %c1_7 iter_args(%arg6 = %arg4) -> (tensor<8x2xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_8 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_8 : f64
          %extracted_9 = tensor.extract %arg6[%arg1, %arg5] : tensor<8x2xf64>
          %8 = arith.addf %extracted_9, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%arg1, %arg5] : tensor<8x2xf64>
          scf.yield %inserted : tensor<8x2xf64>
        }
        scf.yield %6 : tensor<8x2xf64>
      }
      scf.yield %5 : tensor<8x2xf64>
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %4 = scf.for %arg1 = %c0 to %idx8 step %c1 iter_args(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %5 = scf.for %arg3 = %c0_4 to %idx4 step %c1_5 iter_args(%arg4 = %arg2) -> (tensor<8x2xf64>) {
        %c0_6 = arith.constant 0 : index
        %c1_7 = arith.constant 1 : index
        %6 = scf.for %arg5 = %c0_6 to %idx2 step %c1_7 iter_args(%arg6 = %arg4) -> (tensor<8x2xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_8 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_8 : f64
          %extracted_9 = tensor.extract %arg6[%arg1, %arg5] : tensor<8x2xf64>
          %8 = arith.addf %extracted_9, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%arg1, %arg5] : tensor<8x2xf64>
          scf.yield %inserted : tensor<8x2xf64>
        }
        scf.yield %6 : tensor<8x2xf64>
      }
      scf.yield %5 : tensor<8x2xf64>
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = "it.itree"(%2) ({
  ^bb0(%arg0: tensor<8x2xf64>):
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %4 = scf.for %arg1 = %c0 to %idx8 step %c1 iter_args(%arg2 = %arg0) -> (tensor<8x2xf64>) {
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %5 = scf.for %arg3 = %c0_4 to %idx4 step %c1_5 iter_args(%arg4 = %arg2) -> (tensor<8x2xf64>) {
        %c0_6 = arith.constant 0 : index
        %c1_7 = arith.constant 1 : index
        %6 = scf.for %arg5 = %c0_6 to %idx2 step %c1_7 iter_args(%arg6 = %arg4) -> (tensor<8x2xf64>) {
          %extracted = tensor.extract %0[%arg1, %arg3] : tensor<8x4xf64>
          %extracted_8 = tensor.extract %1[%arg3, %arg5] : tensor<4x2xf64>
          %7 = arith.mulf %extracted, %extracted_8 : f64
          %extracted_9 = tensor.extract %arg6[%arg1, %arg5] : tensor<8x2xf64>
          %8 = arith.addf %extracted_9, %7 : f64
          %inserted = tensor.insert %8 into %arg6[%arg1, %arg5] : tensor<8x2xf64>
          scf.yield %inserted : tensor<8x2xf64>
        }
        scf.yield %6 : tensor<8x2xf64>
      }
      scf.yield %5 : tensor<8x2xf64>
    }
    it.yield %4 : tensor<8x2xf64>
  }) : (tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %3 = scf.for %arg0 = %c0 to %idx8 step %c1 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
    %c0_4 = arith.constant 0 : index
    %c1_5 = arith.constant 1 : index
    %4 = scf.for %arg2 = %c0_4 to %idx4 step %c1_5 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      %5 = scf.for %arg4 = %c0_6 to %idx2 step %c1_7 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %extracted_8 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_8 : f64
        %extracted_9 = tensor.extract %arg5[%arg0, %arg4] : tensor<8x2xf64>
        %7 = arith.addf %extracted_9, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%arg0, %arg4] : tensor<8x2xf64>
        scf.yield %inserted : tensor<8x2xf64>
      }
      scf.yield %5 : tensor<8x2xf64>
    }
    scf.yield %4 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.for %arg0 = %c0 to %idx8 step %c1 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%arg0, %arg4] : tensor<8x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%arg0, %arg4] : tensor<8x2xf64>
        scf.yield %inserted : tensor<8x2xf64>
      }
      scf.yield %5 : tensor<8x2xf64>
    }
    scf.yield %4 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.for %arg0 = %c0 to %idx8 step %c1 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
    %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
      %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
        %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
        %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
        %6 = arith.mulf %extracted, %extracted_4 : f64
        %extracted_5 = tensor.extract %arg5[%arg0, %arg4] : tensor<8x2xf64>
        %7 = arith.addf %extracted_5, %6 : f64
        %inserted = tensor.insert %7 into %arg5[%arg0, %arg4] : tensor<8x2xf64>
        scf.yield %inserted : tensor<8x2xf64>
      }
      scf.yield %5 : tensor<8x2xf64>
    }
    scf.yield %4 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = scf.for %arg0 = %c0 to %idx8 step %c1 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
          %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
          %6 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg5[%arg0, %arg4] : tensor<8x2xf64>
          %7 = arith.addf %extracted_5, %6 : f64
          %inserted = tensor.insert %7 into %arg5[%arg0, %arg4] : tensor<8x2xf64>
          scf.yield %inserted : tensor<8x2xf64>
        }
        scf.yield %5 : tensor<8x2xf64>
      }
      scf.yield %4 : tensor<8x2xf64>
    }
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = scf.for %arg0 = %c0 to %idx8 step %c1 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %4 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %5 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %extracted = tensor.extract %0[%arg0, %arg2] : tensor<8x4xf64>
          %extracted_4 = tensor.extract %1[%arg2, %arg4] : tensor<4x2xf64>
          %6 = arith.mulf %extracted, %extracted_4 : f64
          %extracted_5 = tensor.extract %arg5[%arg0, %arg4] : tensor<8x2xf64>
          %7 = arith.addf %extracted_5, %6 : f64
          %inserted = tensor.insert %7 into %arg5[%arg0, %arg4] : tensor<8x2xf64>
          scf.yield %inserted : tensor<8x2xf64>
        }
        scf.yield %5 : tensor<8x2xf64>
      }
      scf.yield %4 : tensor<8x2xf64>
    }
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %0 = scf.for %arg0 = %c0 to %idx8 step %c1 iter_args(%arg1 = %alloc_3) -> (memref<8x2xf64>) {
      %2 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %arg1) -> (memref<8x2xf64>) {
        %3 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (memref<8x2xf64>) {
          %4 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %5 = memref.load %alloc_2[%arg2, %arg4] : memref<4x2xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %arg5[%arg0, %arg4] : memref<8x2xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %arg5[%arg0, %arg4] : memref<8x2xf64>
          scf.yield %arg5 : memref<8x2xf64>
        }
        scf.yield %3 : memref<8x2xf64>
      }
      scf.yield %2 : memref<8x2xf64>
    }
    %1 = bufferization.to_tensor %0 : memref<8x2xf64>
    "ta.print"(%1) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %0 = scf.for %arg0 = %c0 to %idx8 step %c1 iter_args(%arg1 = %alloc_3) -> (memref<8x2xf64>) {
    %2 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %arg1) -> (memref<8x2xf64>) {
      %3 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (memref<8x2xf64>) {
        %4 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
        %5 = memref.load %alloc_2[%arg2, %arg4] : memref<4x2xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = memref.load %arg5[%arg0, %arg4] : memref<8x2xf64>
        %8 = arith.addf %7, %6 : f64
        memref.store %8, %arg5[%arg0, %arg4] : memref<8x2xf64>
        scf.yield %arg5 : memref<8x2xf64>
      }
      scf.yield %3 : memref<8x2xf64>
    }
    scf.yield %2 : memref<8x2xf64>
  }
  %1 = bufferization.to_tensor %0 : memref<8x2xf64>
  "ta.print"(%1) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %0 = scf.for %arg0 = %c0 to %idx8 step %c1 iter_args(%arg1 = %alloc_3) -> (memref<8x2xf64>) {
    %3 = scf.for %arg2 = %c0 to %idx4 step %c1 iter_args(%arg3 = %arg1) -> (memref<8x2xf64>) {
      %4 = scf.for %arg4 = %c0 to %idx2 step %c1 iter_args(%arg5 = %arg3) -> (memref<8x2xf64>) {
        %5 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
        %6 = memref.load %alloc_2[%arg2, %arg4] : memref<4x2xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = memref.load %arg5[%arg0, %arg4] : memref<8x2xf64>
        %9 = arith.addf %8, %7 : f64
        memref.store %9, %arg5[%arg0, %arg4] : memref<8x2xf64>
        scf.yield %arg5 : memref<8x2xf64>
      }
      scf.yield %4 : memref<8x2xf64>
    }
    scf.yield %3 : memref<8x2xf64>
  }
  %1 = bufferization.to_tensor %0 : memref<8x2xf64>
  %2 = bufferization.to_memref %1 : memref<8x2xf64>
  %cast = memref.cast %2 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.for %arg0 = %c0 to %idx8 step %c1 {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
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


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.for %arg0 = %c0 to %idx8 step %c1 {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
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
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.for %arg0 = %c0 to %idx8 step %c1 {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
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

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  scf.for %arg0 = %c0 to %idx8 step %c1 {
    scf.for %arg1 = %c0 to %idx4 step %c1 {
      scf.for %arg2 = %c0 to %idx2 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
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

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c4 = arith.constant 4 : index
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
    }
  }
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  scf.for %arg0 = %c0 to %c4 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
    }
  }
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
    }
  }
  scf.for %arg0 = %c0 to %idx8 step %c1 {
    scf.for %arg1 = %c0 to %idx4 step %c1 {
      scf.for %arg2 = %c0 to %idx2 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
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
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    scf.for %arg0 = %c0 to %idx8 step %c1 {
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        scf.for %arg2 = %c0 to %idx2 step %c1 {
          %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
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


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
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
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
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
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb26
    %19 = arith.cmpi slt, %18, %idx8 : index
    cf.cond_br %19, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%20: index):  // 2 preds: ^bb20, ^bb25
    %21 = arith.cmpi slt, %20, %idx4 : index
    cf.cond_br %21, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%22: index):  // 2 preds: ^bb22, ^bb24
    %23 = arith.cmpi slt, %22, %idx2 : index
    cf.cond_br %23, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = arith.mulf %24, %25 : f64
    %27 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %28 = arith.addf %27, %26 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb23(%29 : index)
  ^bb25:  // pred: ^bb23
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb21(%30 : index)
  ^bb26:  // pred: ^bb21
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb27:  // pred: ^bb19
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
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb3
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb2(%4 : index)
  ^bb4:  // pred: ^bb2
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb5:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb6(%c0 : index)
  ^bb6(%6: index):  // 2 preds: ^bb5, ^bb9
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb7(%c0 : index), ^bb10
  ^bb7(%8: index):  // 2 preds: ^bb6, ^bb8
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb7(%10 : index)
  ^bb9:  // pred: ^bb7
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb6(%11 : index)
  ^bb10:  // pred: ^bb6
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb11(%c0 : index)
  ^bb11(%12: index):  // 2 preds: ^bb10, ^bb14
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb12(%c0 : index), ^bb15(%c0 : index)
  ^bb12(%14: index):  // 2 preds: ^bb11, ^bb13
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb12(%16 : index)
  ^bb14:  // pred: ^bb12
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb11(%17 : index)
  ^bb15(%18: index):  // 2 preds: ^bb11, ^bb20
    %19 = arith.cmpi slt, %18, %idx8 : index
    cf.cond_br %19, ^bb16(%c0 : index), ^bb21
  ^bb16(%20: index):  // 2 preds: ^bb15, ^bb19
    %21 = arith.cmpi slt, %20, %idx4 : index
    cf.cond_br %21, ^bb17(%c0 : index), ^bb20
  ^bb17(%22: index):  // 2 preds: ^bb16, ^bb18
    %23 = arith.cmpi slt, %22, %idx2 : index
    cf.cond_br %23, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = arith.mulf %24, %25 : f64
    %27 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %28 = arith.addf %27, %26 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb17(%29 : index)
  ^bb19:  // pred: ^bb17
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb16(%30 : index)
  ^bb20:  // pred: ^bb16
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb15(%31 : index)
  ^bb21:  // pred: ^bb15
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
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb3
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb2(%4 : index)
  ^bb4:  // pred: ^bb2
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb5:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb6(%c0 : index)
  ^bb6(%6: index):  // 2 preds: ^bb5, ^bb9
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb7(%c0 : index), ^bb10
  ^bb7(%8: index):  // 2 preds: ^bb6, ^bb8
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb7(%10 : index)
  ^bb9:  // pred: ^bb7
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb6(%11 : index)
  ^bb10:  // pred: ^bb6
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb11(%c0 : index)
  ^bb11(%12: index):  // 2 preds: ^bb10, ^bb14
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb12(%c0 : index), ^bb15(%c0 : index)
  ^bb12(%14: index):  // 2 preds: ^bb11, ^bb13
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb12(%16 : index)
  ^bb14:  // pred: ^bb12
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb11(%17 : index)
  ^bb15(%18: index):  // 2 preds: ^bb11, ^bb20
    %19 = arith.cmpi slt, %18, %idx8 : index
    cf.cond_br %19, ^bb16(%c0 : index), ^bb21
  ^bb16(%20: index):  // 2 preds: ^bb15, ^bb19
    %21 = arith.cmpi slt, %20, %idx4 : index
    cf.cond_br %21, ^bb17(%c0 : index), ^bb20
  ^bb17(%22: index):  // 2 preds: ^bb16, ^bb18
    %23 = arith.cmpi slt, %22, %idx2 : index
    cf.cond_br %23, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = arith.mulf %24, %25 : f64
    %27 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %28 = arith.addf %27, %26 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb17(%29 : index)
  ^bb19:  // pred: ^bb17
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb16(%30 : index)
  ^bb20:  // pred: ^bb16
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb15(%31 : index)
  ^bb21:  // pred: ^bb15
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
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb3
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb2(%4 : index)
  ^bb4:  // pred: ^bb2
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb5:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb6(%c0 : index)
  ^bb6(%6: index):  // 2 preds: ^bb5, ^bb9
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb7(%c0 : index), ^bb10
  ^bb7(%8: index):  // 2 preds: ^bb6, ^bb8
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb7(%10 : index)
  ^bb9:  // pred: ^bb7
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb6(%11 : index)
  ^bb10:  // pred: ^bb6
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb11(%c0 : index)
  ^bb11(%12: index):  // 2 preds: ^bb10, ^bb14
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb12(%c0 : index), ^bb15(%c0 : index)
  ^bb12(%14: index):  // 2 preds: ^bb11, ^bb13
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb12(%16 : index)
  ^bb14:  // pred: ^bb12
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb11(%17 : index)
  ^bb15(%18: index):  // 2 preds: ^bb11, ^bb20
    %19 = arith.cmpi slt, %18, %idx8 : index
    cf.cond_br %19, ^bb16(%c0 : index), ^bb21
  ^bb16(%20: index):  // 2 preds: ^bb15, ^bb19
    %21 = arith.cmpi slt, %20, %idx4 : index
    cf.cond_br %21, ^bb17(%c0 : index), ^bb20
  ^bb17(%22: index):  // 2 preds: ^bb16, ^bb18
    %23 = arith.cmpi slt, %22, %idx2 : index
    cf.cond_br %23, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = arith.mulf %24, %25 : f64
    %27 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %28 = arith.addf %27, %26 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb17(%29 : index)
  ^bb19:  // pred: ^bb17
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb16(%30 : index)
  ^bb20:  // pred: ^bb16
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb15(%31 : index)
  ^bb21:  // pred: ^bb15
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
  %idx2 = index.constant 2
  %idx4 = index.constant 4
  %idx8 = index.constant 8
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
  %1 = arith.cmpi slt, %0, %c8 : index
  cf.cond_br %1, ^bb2(%c0 : index), ^bb5
^bb2(%2: index):  // 2 preds: ^bb1, ^bb3
  %3 = arith.cmpi slt, %2, %c4 : index
  cf.cond_br %3, ^bb3, ^bb4
^bb3:  // pred: ^bb2
  memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
  %4 = arith.addi %2, %c1 : index
  cf.br ^bb2(%4 : index)
^bb4:  // pred: ^bb2
  %5 = arith.addi %0, %c1 : index
  cf.br ^bb1(%5 : index)
^bb5:  // pred: ^bb1
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  cf.br ^bb6(%c0 : index)
^bb6(%6: index):  // 2 preds: ^bb5, ^bb9
  %7 = arith.cmpi slt, %6, %c4 : index
  cf.cond_br %7, ^bb7(%c0 : index), ^bb10
^bb7(%8: index):  // 2 preds: ^bb6, ^bb8
  %9 = arith.cmpi slt, %8, %c2 : index
  cf.cond_br %9, ^bb8, ^bb9
^bb8:  // pred: ^bb7
  memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
  %10 = arith.addi %8, %c1 : index
  cf.br ^bb7(%10 : index)
^bb9:  // pred: ^bb7
  %11 = arith.addi %6, %c1 : index
  cf.br ^bb6(%11 : index)
^bb10:  // pred: ^bb6
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  cf.br ^bb11(%c0 : index)
^bb11(%12: index):  // 2 preds: ^bb10, ^bb14
  %13 = arith.cmpi slt, %12, %c8 : index
  cf.cond_br %13, ^bb12(%c0 : index), ^bb15(%c0 : index)
^bb12(%14: index):  // 2 preds: ^bb11, ^bb13
  %15 = arith.cmpi slt, %14, %c2 : index
  cf.cond_br %15, ^bb13, ^bb14
^bb13:  // pred: ^bb12
  memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb12(%16 : index)
^bb14:  // pred: ^bb12
  %17 = arith.addi %12, %c1 : index
  cf.br ^bb11(%17 : index)
^bb15(%18: index):  // 2 preds: ^bb11, ^bb20
  %19 = arith.cmpi slt, %18, %idx8 : index
  cf.cond_br %19, ^bb16(%c0 : index), ^bb21
^bb16(%20: index):  // 2 preds: ^bb15, ^bb19
  %21 = arith.cmpi slt, %20, %idx4 : index
  cf.cond_br %21, ^bb17(%c0 : index), ^bb20
^bb17(%22: index):  // 2 preds: ^bb16, ^bb18
  %23 = arith.cmpi slt, %22, %idx2 : index
  cf.cond_br %23, ^bb18, ^bb19
^bb18:  // pred: ^bb17
  %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
  %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
  %26 = arith.mulf %24, %25 : f64
  %27 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
  %28 = arith.addf %27, %26 : f64
  memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
  %29 = arith.addi %22, %c1 : index
  cf.br ^bb17(%29 : index)
^bb19:  // pred: ^bb17
  %30 = arith.addi %20, %c1 : index
  cf.br ^bb16(%30 : index)
^bb20:  // pred: ^bb16
  %31 = arith.addi %18, %c1 : index
  cf.br ^bb15(%31 : index)
^bb21:  // pred: ^bb15
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
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb3
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb2(%4 : index)
  ^bb4:  // pred: ^bb2
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb5:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb6(%c0 : index)
  ^bb6(%6: index):  // 2 preds: ^bb5, ^bb9
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb7(%c0 : index), ^bb10
  ^bb7(%8: index):  // 2 preds: ^bb6, ^bb8
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb7(%10 : index)
  ^bb9:  // pred: ^bb7
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb6(%11 : index)
  ^bb10:  // pred: ^bb6
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb11(%c0 : index)
  ^bb11(%12: index):  // 2 preds: ^bb10, ^bb14
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb12(%c0 : index), ^bb15(%c0 : index)
  ^bb12(%14: index):  // 2 preds: ^bb11, ^bb13
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb12(%16 : index)
  ^bb14:  // pred: ^bb12
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb11(%17 : index)
  ^bb15(%18: index):  // 2 preds: ^bb11, ^bb20
    %19 = arith.cmpi slt, %18, %idx8 : index
    cf.cond_br %19, ^bb16(%c0 : index), ^bb21
  ^bb16(%20: index):  // 2 preds: ^bb15, ^bb19
    %21 = arith.cmpi slt, %20, %idx4 : index
    cf.cond_br %21, ^bb17(%c0 : index), ^bb20
  ^bb17(%22: index):  // 2 preds: ^bb16, ^bb18
    %23 = arith.cmpi slt, %22, %idx2 : index
    cf.cond_br %23, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = arith.mulf %24, %25 : f64
    %27 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %28 = arith.addf %27, %26 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb17(%29 : index)
  ^bb19:  // pred: ^bb17
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb16(%30 : index)
  ^bb20:  // pred: ^bb16
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb15(%31 : index)
  ^bb21:  // pred: ^bb15
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
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb3
    %3 = arith.cmpi slt, %2, %c4 : index
    cf.cond_br %3, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    memref.store %cst_1, %alloc[%0, %2] : memref<8x4xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb2(%4 : index)
  ^bb4:  // pred: ^bb2
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb5:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    cf.br ^bb6(%c0 : index)
  ^bb6(%6: index):  // 2 preds: ^bb5, ^bb9
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb7(%c0 : index), ^bb10
  ^bb7(%8: index):  // 2 preds: ^bb6, ^bb8
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb7(%10 : index)
  ^bb9:  // pred: ^bb7
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb6(%11 : index)
  ^bb10:  // pred: ^bb6
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb11(%c0 : index)
  ^bb11(%12: index):  // 2 preds: ^bb10, ^bb14
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb12(%c0 : index), ^bb15(%c0 : index)
  ^bb12(%14: index):  // 2 preds: ^bb11, ^bb13
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb12(%16 : index)
  ^bb14:  // pred: ^bb12
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb11(%17 : index)
  ^bb15(%18: index):  // 2 preds: ^bb11, ^bb20
    %19 = arith.cmpi slt, %18, %idx8 : index
    cf.cond_br %19, ^bb16(%c0 : index), ^bb21
  ^bb16(%20: index):  // 2 preds: ^bb15, ^bb19
    %21 = arith.cmpi slt, %20, %idx4 : index
    cf.cond_br %21, ^bb17(%c0 : index), ^bb20
  ^bb17(%22: index):  // 2 preds: ^bb16, ^bb18
    %23 = arith.cmpi slt, %22, %idx2 : index
    cf.cond_br %23, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = arith.mulf %24, %25 : f64
    %27 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %28 = arith.addf %27, %26 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb17(%29 : index)
  ^bb19:  // pred: ^bb17
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb16(%30 : index)
  ^bb20:  // pred: ^bb16
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb15(%31 : index)
  ^bb21:  // pred: ^bb15
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %idx2 = index.constant 2
    %idx4 = index.constant 4
    %idx8 = index.constant 8
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %0 = llvm.mlir.constant(8 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.zero : !llvm.ptr
    %5 = llvm.getelementptr %4[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %6 = llvm.ptrtoint %5 : !llvm.ptr to i64
    %7 = llvm.mlir.constant(32 : index) : i64
    %8 = llvm.add %6, %7  : i64
    %9 = llvm.call @malloc(%8) : (i64) -> !llvm.ptr
    %10 = llvm.ptrtoint %9 : !llvm.ptr to i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.sub %7, %11  : i64
    %13 = llvm.add %10, %12  : i64
    %14 = llvm.urem %13, %7  : i64
    %15 = llvm.sub %13, %14  : i64
    %16 = llvm.inttoptr %15 : i64 to !llvm.ptr
    %17 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %18 = llvm.insertvalue %9, %17[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %0, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %1, %22[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %1, %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %2, %24[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%26: index):  // 2 preds: ^bb0, ^bb4
    %27 = builtin.unrealized_conversion_cast %26 : index to i64
    %28 = arith.cmpi slt, %26, %c8 : index
    cf.cond_br %28, ^bb2(%c0 : index), ^bb5
  ^bb2(%29: index):  // 2 preds: ^bb1, ^bb3
    %30 = builtin.unrealized_conversion_cast %29 : index to i64
    %31 = arith.cmpi slt, %29, %c4 : index
    cf.cond_br %31, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %32 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.mul %27, %33  : i64
    %35 = llvm.add %34, %30  : i64
    %36 = llvm.getelementptr %32[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_1, %36 : f64, !llvm.ptr
    %37 = arith.addi %29, %c1 : index
    cf.br ^bb2(%37 : index)
  ^bb4:  // pred: ^bb2
    %38 = arith.addi %26, %c1 : index
    cf.br ^bb1(%38 : index)
  ^bb5:  // pred: ^bb1
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(8 : index) : i64
    %43 = llvm.mlir.zero : !llvm.ptr
    %44 = llvm.getelementptr %43[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %45 = llvm.ptrtoint %44 : !llvm.ptr to i64
    %46 = llvm.mlir.constant(32 : index) : i64
    %47 = llvm.add %45, %46  : i64
    %48 = llvm.call @malloc(%47) : (i64) -> !llvm.ptr
    %49 = llvm.ptrtoint %48 : !llvm.ptr to i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.sub %46, %50  : i64
    %52 = llvm.add %49, %51  : i64
    %53 = llvm.urem %52, %46  : i64
    %54 = llvm.sub %52, %53  : i64
    %55 = llvm.inttoptr %54 : i64 to !llvm.ptr
    %56 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %57 = llvm.insertvalue %48, %56[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.insertvalue %39, %60[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.insertvalue %40, %61[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %40, %62[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.insertvalue %41, %63[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb6(%c0 : index)
  ^bb6(%65: index):  // 2 preds: ^bb5, ^bb9
    %66 = builtin.unrealized_conversion_cast %65 : index to i64
    %67 = arith.cmpi slt, %65, %c4 : index
    cf.cond_br %67, ^bb7(%c0 : index), ^bb10
  ^bb7(%68: index):  // 2 preds: ^bb6, ^bb8
    %69 = builtin.unrealized_conversion_cast %68 : index to i64
    %70 = arith.cmpi slt, %68, %c2 : index
    cf.cond_br %70, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %71 = llvm.extractvalue %64[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mul %66, %72  : i64
    %74 = llvm.add %73, %69  : i64
    %75 = llvm.getelementptr %71[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %75 : f64, !llvm.ptr
    %76 = arith.addi %68, %c1 : index
    cf.br ^bb7(%76 : index)
  ^bb9:  // pred: ^bb7
    %77 = arith.addi %65, %c1 : index
    cf.br ^bb6(%77 : index)
  ^bb10:  // pred: ^bb6
    %78 = llvm.mlir.constant(8 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.mlir.zero : !llvm.ptr
    %83 = llvm.getelementptr %82[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %84 = llvm.ptrtoint %83 : !llvm.ptr to i64
    %85 = llvm.mlir.constant(32 : index) : i64
    %86 = llvm.add %84, %85  : i64
    %87 = llvm.call @malloc(%86) : (i64) -> !llvm.ptr
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.sub %85, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.urem %91, %85  : i64
    %93 = llvm.sub %91, %92  : i64
    %94 = llvm.inttoptr %93 : i64 to !llvm.ptr
    %95 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %96 = llvm.insertvalue %87, %95[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.insertvalue %78, %99[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.insertvalue %79, %100[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %79, %101[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %80, %102[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb11(%c0 : index)
  ^bb11(%104: index):  // 2 preds: ^bb10, ^bb14
    %105 = builtin.unrealized_conversion_cast %104 : index to i64
    %106 = arith.cmpi slt, %104, %c8 : index
    cf.cond_br %106, ^bb12(%c0 : index), ^bb15(%c0 : index)
  ^bb12(%107: index):  // 2 preds: ^bb11, ^bb13
    %108 = builtin.unrealized_conversion_cast %107 : index to i64
    %109 = arith.cmpi slt, %107, %c2 : index
    cf.cond_br %109, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %110 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mul %105, %111  : i64
    %113 = llvm.add %112, %108  : i64
    %114 = llvm.getelementptr %110[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %114 : f64, !llvm.ptr
    %115 = arith.addi %107, %c1 : index
    cf.br ^bb12(%115 : index)
  ^bb14:  // pred: ^bb12
    %116 = arith.addi %104, %c1 : index
    cf.br ^bb11(%116 : index)
  ^bb15(%117: index):  // 2 preds: ^bb11, ^bb20
    %118 = builtin.unrealized_conversion_cast %117 : index to i64
    %119 = arith.cmpi slt, %117, %idx8 : index
    cf.cond_br %119, ^bb16(%c0 : index), ^bb21
  ^bb16(%120: index):  // 2 preds: ^bb15, ^bb19
    %121 = builtin.unrealized_conversion_cast %120 : index to i64
    %122 = arith.cmpi slt, %120, %idx4 : index
    cf.cond_br %122, ^bb17(%c0 : index), ^bb20
  ^bb17(%123: index):  // 2 preds: ^bb16, ^bb18
    %124 = builtin.unrealized_conversion_cast %123 : index to i64
    %125 = arith.cmpi slt, %123, %idx2 : index
    cf.cond_br %125, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %126 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mul %118, %127  : i64
    %129 = llvm.add %128, %121  : i64
    %130 = llvm.getelementptr %126[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %131 = llvm.load %130 : !llvm.ptr -> f64
    %132 = llvm.extractvalue %64[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mul %121, %133  : i64
    %135 = llvm.add %134, %124  : i64
    %136 = llvm.getelementptr %132[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %137 = llvm.load %136 : !llvm.ptr -> f64
    %138 = arith.mulf %131, %137 : f64
    %139 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mul %118, %140  : i64
    %142 = llvm.add %141, %124  : i64
    %143 = llvm.getelementptr %139[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %144 = llvm.load %143 : !llvm.ptr -> f64
    %145 = arith.addf %144, %138 : f64
    %146 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mul %118, %147  : i64
    %149 = llvm.add %148, %124  : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %145, %150 : f64, !llvm.ptr
    %151 = arith.addi %123, %c1 : index
    cf.br ^bb17(%151 : index)
  ^bb19:  // pred: ^bb17
    %152 = arith.addi %120, %c1 : index
    cf.br ^bb16(%152 : index)
  ^bb20:  // pred: ^bb16
    %153 = arith.addi %117, %c1 : index
    cf.br ^bb15(%153 : index)
  ^bb21:  // pred: ^bb15
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.alloca %154 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %103, %155 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %156 = llvm.mlir.constant(2 : index) : i64
    %157 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %158 = llvm.insertvalue %156, %157[0] : !llvm.struct<(i64, ptr)> 
    %159 = llvm.insertvalue %155, %158[1] : !llvm.struct<(i64, ptr)> 
    %160 = builtin.unrealized_conversion_cast %159 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%160) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %idx2 = index.constant 2
    %5 = builtin.unrealized_conversion_cast %idx2 : index to i64
    %idx4 = index.constant 4
    %6 = builtin.unrealized_conversion_cast %idx4 : index to i64
    %idx8 = index.constant 8
    %7 = builtin.unrealized_conversion_cast %idx8 : index to i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %11 = llvm.mlir.constant(8 : index) : i64
    %12 = llvm.mlir.constant(4 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.mlir.zero : !llvm.ptr
    %16 = llvm.getelementptr %15[%14] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(32 : index) : i64
    %19 = llvm.add %17, %18  : i64
    %20 = llvm.call @malloc(%19) : (i64) -> !llvm.ptr
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.sub %18, %22  : i64
    %24 = llvm.add %21, %23  : i64
    %25 = llvm.urem %24, %18  : i64
    %26 = llvm.sub %24, %25  : i64
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
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb4
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = builtin.unrealized_conversion_cast %38 : index to i64
    %40 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %40, ^bb2(%4 : i64), ^bb5
  ^bb2(%41: i64):  // 2 preds: ^bb1, ^bb3
    %42 = builtin.unrealized_conversion_cast %41 : i64 to index
    %43 = builtin.unrealized_conversion_cast %42 : index to i64
    %44 = llvm.icmp "slt" %41, %1 : i64
    llvm.cond_br %44, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %45 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.mul %39, %46  : i64
    %48 = llvm.add %47, %43  : i64
    %49 = llvm.getelementptr %45[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %49 : f64, !llvm.ptr
    %50 = llvm.add %41, %3  : i64
    llvm.br ^bb2(%50 : i64)
  ^bb4:  // pred: ^bb2
    %51 = llvm.add %37, %3  : i64
    llvm.br ^bb1(%51 : i64)
  ^bb5:  // pred: ^bb1
    %52 = llvm.mlir.constant(4 : index) : i64
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(8 : index) : i64
    %56 = llvm.mlir.zero : !llvm.ptr
    %57 = llvm.getelementptr %56[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %58 = llvm.ptrtoint %57 : !llvm.ptr to i64
    %59 = llvm.mlir.constant(32 : index) : i64
    %60 = llvm.add %58, %59  : i64
    %61 = llvm.call @malloc(%60) : (i64) -> !llvm.ptr
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.sub %59, %63  : i64
    %65 = llvm.add %62, %64  : i64
    %66 = llvm.urem %65, %59  : i64
    %67 = llvm.sub %65, %66  : i64
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
    llvm.br ^bb6(%4 : i64)
  ^bb6(%78: i64):  // 2 preds: ^bb5, ^bb9
    %79 = builtin.unrealized_conversion_cast %78 : i64 to index
    %80 = builtin.unrealized_conversion_cast %79 : index to i64
    %81 = llvm.icmp "slt" %78, %1 : i64
    llvm.cond_br %81, ^bb7(%4 : i64), ^bb10
  ^bb7(%82: i64):  // 2 preds: ^bb6, ^bb8
    %83 = builtin.unrealized_conversion_cast %82 : i64 to index
    %84 = builtin.unrealized_conversion_cast %83 : index to i64
    %85 = llvm.icmp "slt" %82, %0 : i64
    llvm.cond_br %85, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %86 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mul %80, %87  : i64
    %89 = llvm.add %88, %84  : i64
    %90 = llvm.getelementptr %86[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %90 : f64, !llvm.ptr
    %91 = llvm.add %82, %3  : i64
    llvm.br ^bb7(%91 : i64)
  ^bb9:  // pred: ^bb7
    %92 = llvm.add %78, %3  : i64
    llvm.br ^bb6(%92 : i64)
  ^bb10:  // pred: ^bb6
    %93 = llvm.mlir.constant(8 : index) : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(16 : index) : i64
    %97 = llvm.mlir.zero : !llvm.ptr
    %98 = llvm.getelementptr %97[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %99 = llvm.ptrtoint %98 : !llvm.ptr to i64
    %100 = llvm.mlir.constant(32 : index) : i64
    %101 = llvm.add %99, %100  : i64
    %102 = llvm.call @malloc(%101) : (i64) -> !llvm.ptr
    %103 = llvm.ptrtoint %102 : !llvm.ptr to i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.sub %100, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.urem %106, %100  : i64
    %108 = llvm.sub %106, %107  : i64
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
    llvm.br ^bb11(%4 : i64)
  ^bb11(%119: i64):  // 2 preds: ^bb10, ^bb14
    %120 = builtin.unrealized_conversion_cast %119 : i64 to index
    %121 = builtin.unrealized_conversion_cast %120 : index to i64
    %122 = llvm.icmp "slt" %119, %2 : i64
    llvm.cond_br %122, ^bb12(%4 : i64), ^bb15(%4 : i64)
  ^bb12(%123: i64):  // 2 preds: ^bb11, ^bb13
    %124 = builtin.unrealized_conversion_cast %123 : i64 to index
    %125 = builtin.unrealized_conversion_cast %124 : index to i64
    %126 = llvm.icmp "slt" %123, %0 : i64
    llvm.cond_br %126, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %127 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mul %121, %128  : i64
    %130 = llvm.add %129, %125  : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %131 : f64, !llvm.ptr
    %132 = llvm.add %123, %3  : i64
    llvm.br ^bb12(%132 : i64)
  ^bb14:  // pred: ^bb12
    %133 = llvm.add %119, %3  : i64
    llvm.br ^bb11(%133 : i64)
  ^bb15(%134: i64):  // 2 preds: ^bb11, ^bb20
    %135 = builtin.unrealized_conversion_cast %134 : i64 to index
    %136 = builtin.unrealized_conversion_cast %135 : index to i64
    %137 = llvm.icmp "slt" %134, %7 : i64
    llvm.cond_br %137, ^bb16(%4 : i64), ^bb21
  ^bb16(%138: i64):  // 2 preds: ^bb15, ^bb19
    %139 = builtin.unrealized_conversion_cast %138 : i64 to index
    %140 = builtin.unrealized_conversion_cast %139 : index to i64
    %141 = llvm.icmp "slt" %138, %6 : i64
    llvm.cond_br %141, ^bb17(%4 : i64), ^bb20
  ^bb17(%142: i64):  // 2 preds: ^bb16, ^bb18
    %143 = builtin.unrealized_conversion_cast %142 : i64 to index
    %144 = builtin.unrealized_conversion_cast %143 : index to i64
    %145 = llvm.icmp "slt" %142, %5 : i64
    llvm.cond_br %145, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %146 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mul %136, %147  : i64
    %149 = llvm.add %148, %140  : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %151 = llvm.load %150 : !llvm.ptr -> f64
    %152 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mul %140, %153  : i64
    %155 = llvm.add %154, %144  : i64
    %156 = llvm.getelementptr %152[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %157 = llvm.load %156 : !llvm.ptr -> f64
    %158 = llvm.fmul %151, %157  : f64
    %159 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.mlir.constant(2 : index) : i64
    %161 = llvm.mul %136, %160  : i64
    %162 = llvm.add %161, %144  : i64
    %163 = llvm.getelementptr %159[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %164 = llvm.load %163 : !llvm.ptr -> f64
    %165 = llvm.fadd %164, %158  : f64
    %166 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mul %136, %167  : i64
    %169 = llvm.add %168, %144  : i64
    %170 = llvm.getelementptr %166[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %165, %170 : f64, !llvm.ptr
    %171 = llvm.add %142, %3  : i64
    llvm.br ^bb17(%171 : i64)
  ^bb19:  // pred: ^bb17
    %172 = llvm.add %138, %3  : i64
    llvm.br ^bb16(%172 : i64)
  ^bb20:  // pred: ^bb16
    %173 = llvm.add %134, %3  : i64
    llvm.br ^bb15(%173 : i64)
  ^bb21:  // pred: ^bb15
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.alloca %174 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %118, %175 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %178 = llvm.insertvalue %176, %177[0] : !llvm.struct<(i64, ptr)> 
    %179 = llvm.insertvalue %175, %178[1] : !llvm.struct<(i64, ptr)> 
    %180 = builtin.unrealized_conversion_cast %179 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %181 = llvm.extractvalue %179[0] : !llvm.struct<(i64, ptr)> 
    %182 = llvm.extractvalue %179[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%181, %182) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(2 : i64) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = builtin.unrealized_conversion_cast %6 : index to i64
    %8 = llvm.mlir.constant(4 : i64) : i64
    %9 = builtin.unrealized_conversion_cast %8 : i64 to index
    %10 = builtin.unrealized_conversion_cast %9 : index to i64
    %11 = llvm.mlir.constant(8 : i64) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = builtin.unrealized_conversion_cast %12 : index to i64
    %14 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %15 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %16 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.mlir.constant(4 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(32 : index) : i64
    %21 = llvm.mlir.zero : !llvm.ptr
    %22 = llvm.getelementptr %21[%20] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.mlir.constant(32 : index) : i64
    %25 = llvm.add %23, %24  : i64
    %26 = llvm.call @malloc(%25) : (i64) -> !llvm.ptr
    %27 = llvm.ptrtoint %26 : !llvm.ptr to i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.sub %24, %28  : i64
    %30 = llvm.add %27, %29  : i64
    %31 = llvm.urem %30, %24  : i64
    %32 = llvm.sub %30, %31  : i64
    %33 = llvm.inttoptr %32 : i64 to !llvm.ptr
    %34 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.insertvalue %26, %34[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %17, %38[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %18, %39[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %18, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.insertvalue %19, %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%43: i64):  // 2 preds: ^bb0, ^bb4
    %44 = builtin.unrealized_conversion_cast %43 : i64 to index
    %45 = llvm.icmp "slt" %43, %2 : i64
    llvm.cond_br %45, ^bb2(%4 : i64), ^bb5
  ^bb2(%46: i64):  // 2 preds: ^bb1, ^bb3
    %47 = builtin.unrealized_conversion_cast %46 : i64 to index
    %48 = llvm.icmp "slt" %46, %1 : i64
    llvm.cond_br %48, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %49 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(4 : index) : i64
    %51 = llvm.mul %43, %50  : i64
    %52 = llvm.add %51, %46  : i64
    %53 = llvm.getelementptr %49[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %16, %53 : f64, !llvm.ptr
    %54 = llvm.add %46, %3  : i64
    llvm.br ^bb2(%54 : i64)
  ^bb4:  // pred: ^bb2
    %55 = llvm.add %43, %3  : i64
    llvm.br ^bb1(%55 : i64)
  ^bb5:  // pred: ^bb1
    %56 = llvm.mlir.constant(4 : index) : i64
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(8 : index) : i64
    %60 = llvm.mlir.zero : !llvm.ptr
    %61 = llvm.getelementptr %60[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    %63 = llvm.mlir.constant(32 : index) : i64
    %64 = llvm.add %62, %63  : i64
    %65 = llvm.call @malloc(%64) : (i64) -> !llvm.ptr
    %66 = llvm.ptrtoint %65 : !llvm.ptr to i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.sub %63, %67  : i64
    %69 = llvm.add %66, %68  : i64
    %70 = llvm.urem %69, %63  : i64
    %71 = llvm.sub %69, %70  : i64
    %72 = llvm.inttoptr %71 : i64 to !llvm.ptr
    %73 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %74 = llvm.insertvalue %65, %73[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.insertvalue %56, %77[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %57, %78[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.insertvalue %57, %79[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.insertvalue %58, %80[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb6(%4 : i64)
  ^bb6(%82: i64):  // 2 preds: ^bb5, ^bb9
    %83 = builtin.unrealized_conversion_cast %82 : i64 to index
    %84 = llvm.icmp "slt" %82, %1 : i64
    llvm.cond_br %84, ^bb7(%4 : i64), ^bb10
  ^bb7(%85: i64):  // 2 preds: ^bb6, ^bb8
    %86 = builtin.unrealized_conversion_cast %85 : i64 to index
    %87 = llvm.icmp "slt" %85, %0 : i64
    llvm.cond_br %87, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %88 = llvm.extractvalue %81[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %82, %89  : i64
    %91 = llvm.add %90, %85  : i64
    %92 = llvm.getelementptr %88[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %15, %92 : f64, !llvm.ptr
    %93 = llvm.add %85, %3  : i64
    llvm.br ^bb7(%93 : i64)
  ^bb9:  // pred: ^bb7
    %94 = llvm.add %82, %3  : i64
    llvm.br ^bb6(%94 : i64)
  ^bb10:  // pred: ^bb6
    %95 = llvm.mlir.constant(8 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(16 : index) : i64
    %99 = llvm.mlir.zero : !llvm.ptr
    %100 = llvm.getelementptr %99[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %101 = llvm.ptrtoint %100 : !llvm.ptr to i64
    %102 = llvm.mlir.constant(32 : index) : i64
    %103 = llvm.add %101, %102  : i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.sub %102, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.urem %108, %102  : i64
    %110 = llvm.sub %108, %109  : i64
    %111 = llvm.inttoptr %110 : i64 to !llvm.ptr
    %112 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %113 = llvm.insertvalue %104, %112[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.insertvalue %95, %116[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %96, %117[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.insertvalue %96, %118[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %120 = llvm.insertvalue %97, %119[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb11(%4 : i64)
  ^bb11(%121: i64):  // 2 preds: ^bb10, ^bb14
    %122 = builtin.unrealized_conversion_cast %121 : i64 to index
    %123 = llvm.icmp "slt" %121, %2 : i64
    llvm.cond_br %123, ^bb12(%4 : i64), ^bb15(%4 : i64)
  ^bb12(%124: i64):  // 2 preds: ^bb11, ^bb13
    %125 = builtin.unrealized_conversion_cast %124 : i64 to index
    %126 = llvm.icmp "slt" %124, %0 : i64
    llvm.cond_br %126, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %127 = llvm.extractvalue %120[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mul %121, %128  : i64
    %130 = llvm.add %129, %124  : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %14, %131 : f64, !llvm.ptr
    %132 = llvm.add %124, %3  : i64
    llvm.br ^bb12(%132 : i64)
  ^bb14:  // pred: ^bb12
    %133 = llvm.add %121, %3  : i64
    llvm.br ^bb11(%133 : i64)
  ^bb15(%134: i64):  // 2 preds: ^bb11, ^bb20
    %135 = builtin.unrealized_conversion_cast %134 : i64 to index
    %136 = llvm.icmp "slt" %134, %13 : i64
    llvm.cond_br %136, ^bb16(%4 : i64), ^bb21
  ^bb16(%137: i64):  // 2 preds: ^bb15, ^bb19
    %138 = builtin.unrealized_conversion_cast %137 : i64 to index
    %139 = llvm.icmp "slt" %137, %10 : i64
    llvm.cond_br %139, ^bb17(%4 : i64), ^bb20
  ^bb17(%140: i64):  // 2 preds: ^bb16, ^bb18
    %141 = builtin.unrealized_conversion_cast %140 : i64 to index
    %142 = llvm.icmp "slt" %140, %7 : i64
    llvm.cond_br %142, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %143 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %134, %144  : i64
    %146 = llvm.add %145, %137  : i64
    %147 = llvm.getelementptr %143[%146] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %148 = llvm.load %147 : !llvm.ptr -> f64
    %149 = llvm.extractvalue %81[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mul %137, %150  : i64
    %152 = llvm.add %151, %140  : i64
    %153 = llvm.getelementptr %149[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %154 = llvm.load %153 : !llvm.ptr -> f64
    %155 = llvm.fmul %148, %154  : f64
    %156 = llvm.extractvalue %120[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mul %134, %157  : i64
    %159 = llvm.add %158, %140  : i64
    %160 = llvm.getelementptr %156[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %161 = llvm.load %160 : !llvm.ptr -> f64
    %162 = llvm.fadd %161, %155  : f64
    %163 = llvm.extractvalue %120[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mul %134, %164  : i64
    %166 = llvm.add %165, %140  : i64
    %167 = llvm.getelementptr %163[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %162, %167 : f64, !llvm.ptr
    %168 = llvm.add %140, %3  : i64
    llvm.br ^bb17(%168 : i64)
  ^bb19:  // pred: ^bb17
    %169 = llvm.add %137, %3  : i64
    llvm.br ^bb16(%169 : i64)
  ^bb20:  // pred: ^bb16
    %170 = llvm.add %134, %3  : i64
    llvm.br ^bb15(%170 : i64)
  ^bb21:  // pred: ^bb15
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.alloca %171 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %120, %172 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %175 = llvm.insertvalue %173, %174[0] : !llvm.struct<(i64, ptr)> 
    %176 = llvm.insertvalue %172, %175[1] : !llvm.struct<(i64, ptr)> 
    %177 = builtin.unrealized_conversion_cast %176 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %178 = llvm.extractvalue %176[0] : !llvm.struct<(i64, ptr)> 
    %179 = llvm.extractvalue %176[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%178, %179) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(2 : i64) : i64
    %6 = llvm.mlir.constant(4 : i64) : i64
    %7 = llvm.mlir.constant(8 : i64) : i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %11 = llvm.mlir.constant(8 : index) : i64
    %12 = llvm.mlir.constant(4 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.mlir.zero : !llvm.ptr
    %16 = llvm.getelementptr %15[32] : (!llvm.ptr) -> !llvm.ptr, f64
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(32 : index) : i64
    %19 = llvm.add %17, %18  : i64
    %20 = llvm.call @malloc(%19) : (i64) -> !llvm.ptr
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.sub %18, %22  : i64
    %24 = llvm.add %21, %23  : i64
    %25 = llvm.urem %24, %18  : i64
    %26 = llvm.sub %24, %25  : i64
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
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb4
    %38 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %38, ^bb2(%4 : i64), ^bb5
  ^bb2(%39: i64):  // 2 preds: ^bb1, ^bb3
    %40 = llvm.icmp "slt" %39, %1 : i64
    llvm.cond_br %40, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mul %37, %41  : i64
    %43 = llvm.add %42, %39  : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %44 : f64, !llvm.ptr
    %45 = llvm.add %39, %3  : i64
    llvm.br ^bb2(%45 : i64)
  ^bb4:  // pred: ^bb2
    %46 = llvm.add %37, %3  : i64
    llvm.br ^bb1(%46 : i64)
  ^bb5:  // pred: ^bb1
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(8 : index) : i64
    %51 = llvm.mlir.zero : !llvm.ptr
    %52 = llvm.getelementptr %51[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(32 : index) : i64
    %55 = llvm.add %53, %54  : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %54, %58  : i64
    %60 = llvm.add %57, %59  : i64
    %61 = llvm.urem %60, %54  : i64
    %62 = llvm.sub %60, %61  : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr
    %64 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %47, %68[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %48, %69[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %48, %70[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %49, %71[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb6(%4 : i64)
  ^bb6(%73: i64):  // 2 preds: ^bb5, ^bb9
    %74 = llvm.icmp "slt" %73, %1 : i64
    llvm.cond_br %74, ^bb7(%4 : i64), ^bb10
  ^bb7(%75: i64):  // 2 preds: ^bb6, ^bb8
    %76 = llvm.icmp "slt" %75, %0 : i64
    llvm.cond_br %76, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mul %73, %77  : i64
    %79 = llvm.add %78, %75  : i64
    %80 = llvm.getelementptr %63[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %80 : f64, !llvm.ptr
    %81 = llvm.add %75, %3  : i64
    llvm.br ^bb7(%81 : i64)
  ^bb9:  // pred: ^bb7
    %82 = llvm.add %73, %3  : i64
    llvm.br ^bb6(%82 : i64)
  ^bb10:  // pred: ^bb6
    %83 = llvm.mlir.constant(8 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(16 : index) : i64
    %87 = llvm.mlir.zero : !llvm.ptr
    %88 = llvm.getelementptr %87[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.mlir.constant(32 : index) : i64
    %91 = llvm.add %89, %90  : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr
    %93 = llvm.ptrtoint %92 : !llvm.ptr to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %90, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.urem %96, %90  : i64
    %98 = llvm.sub %96, %97  : i64
    %99 = llvm.inttoptr %98 : i64 to !llvm.ptr
    %100 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %101 = llvm.insertvalue %92, %100[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %83, %104[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %84, %105[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %84, %106[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %85, %107[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb11(%4 : i64)
  ^bb11(%109: i64):  // 2 preds: ^bb10, ^bb14
    %110 = llvm.icmp "slt" %109, %2 : i64
    llvm.cond_br %110, ^bb12(%4 : i64), ^bb15(%4 : i64)
  ^bb12(%111: i64):  // 2 preds: ^bb11, ^bb13
    %112 = llvm.icmp "slt" %111, %0 : i64
    llvm.cond_br %112, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %109, %113  : i64
    %115 = llvm.add %114, %111  : i64
    %116 = llvm.getelementptr %99[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %116 : f64, !llvm.ptr
    %117 = llvm.add %111, %3  : i64
    llvm.br ^bb12(%117 : i64)
  ^bb14:  // pred: ^bb12
    %118 = llvm.add %109, %3  : i64
    llvm.br ^bb11(%118 : i64)
  ^bb15(%119: i64):  // 2 preds: ^bb11, ^bb20
    %120 = llvm.icmp "slt" %119, %7 : i64
    llvm.cond_br %120, ^bb16(%4 : i64), ^bb21
  ^bb16(%121: i64):  // 2 preds: ^bb15, ^bb19
    %122 = llvm.icmp "slt" %121, %6 : i64
    llvm.cond_br %122, ^bb17(%4 : i64), ^bb20
  ^bb17(%123: i64):  // 2 preds: ^bb16, ^bb18
    %124 = llvm.icmp "slt" %123, %5 : i64
    llvm.cond_br %124, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %125 = llvm.mlir.constant(4 : index) : i64
    %126 = llvm.mul %119, %125  : i64
    %127 = llvm.add %126, %121  : i64
    %128 = llvm.getelementptr %27[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %129 = llvm.load %128 : !llvm.ptr -> f64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %121, %130  : i64
    %132 = llvm.add %131, %123  : i64
    %133 = llvm.getelementptr %63[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %134 = llvm.load %133 : !llvm.ptr -> f64
    %135 = llvm.fmul %129, %134  : f64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mul %119, %136  : i64
    %138 = llvm.add %137, %123  : i64
    %139 = llvm.getelementptr %99[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %140 = llvm.load %139 : !llvm.ptr -> f64
    %141 = llvm.fadd %140, %135  : f64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %119, %142  : i64
    %144 = llvm.add %143, %123  : i64
    %145 = llvm.getelementptr %99[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %141, %145 : f64, !llvm.ptr
    %146 = llvm.add %123, %3  : i64
    llvm.br ^bb17(%146 : i64)
  ^bb19:  // pred: ^bb17
    %147 = llvm.add %121, %3  : i64
    llvm.br ^bb16(%147 : i64)
  ^bb20:  // pred: ^bb16
    %148 = llvm.add %119, %3  : i64
    llvm.br ^bb15(%148 : i64)
  ^bb21:  // pred: ^bb15
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.alloca %149 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %108, %150 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(i64, ptr)> 
    %154 = llvm.insertvalue %150, %153[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%151, %150) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(2 : i64) : i64
    %6 = llvm.mlir.constant(4 : i64) : i64
    %7 = llvm.mlir.constant(8 : i64) : i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %11 = llvm.mlir.constant(8 : index) : i64
    %12 = llvm.mlir.constant(4 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.mlir.zero : !llvm.ptr
    %16 = llvm.getelementptr %15[32] : (!llvm.ptr) -> !llvm.ptr, f64
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(32 : index) : i64
    %19 = llvm.add %17, %18  : i64
    %20 = llvm.call @malloc(%19) : (i64) -> !llvm.ptr
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.sub %18, %22  : i64
    %24 = llvm.add %21, %23  : i64
    %25 = llvm.urem %24, %18  : i64
    %26 = llvm.sub %24, %25  : i64
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
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb4
    %38 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %38, ^bb2(%4 : i64), ^bb5
  ^bb2(%39: i64):  // 2 preds: ^bb1, ^bb3
    %40 = llvm.icmp "slt" %39, %1 : i64
    llvm.cond_br %40, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mul %37, %41  : i64
    %43 = llvm.add %42, %39  : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %44 : f64, !llvm.ptr
    %45 = llvm.add %39, %3  : i64
    llvm.br ^bb2(%45 : i64)
  ^bb4:  // pred: ^bb2
    %46 = llvm.add %37, %3  : i64
    llvm.br ^bb1(%46 : i64)
  ^bb5:  // pred: ^bb1
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(8 : index) : i64
    %51 = llvm.mlir.zero : !llvm.ptr
    %52 = llvm.getelementptr %51[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(32 : index) : i64
    %55 = llvm.add %53, %54  : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %54, %58  : i64
    %60 = llvm.add %57, %59  : i64
    %61 = llvm.urem %60, %54  : i64
    %62 = llvm.sub %60, %61  : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr
    %64 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %47, %68[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %48, %69[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %48, %70[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %49, %71[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb6(%4 : i64)
  ^bb6(%73: i64):  // 2 preds: ^bb5, ^bb9
    %74 = llvm.icmp "slt" %73, %1 : i64
    llvm.cond_br %74, ^bb7(%4 : i64), ^bb10
  ^bb7(%75: i64):  // 2 preds: ^bb6, ^bb8
    %76 = llvm.icmp "slt" %75, %0 : i64
    llvm.cond_br %76, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mul %73, %77  : i64
    %79 = llvm.add %78, %75  : i64
    %80 = llvm.getelementptr %63[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %80 : f64, !llvm.ptr
    %81 = llvm.add %75, %3  : i64
    llvm.br ^bb7(%81 : i64)
  ^bb9:  // pred: ^bb7
    %82 = llvm.add %73, %3  : i64
    llvm.br ^bb6(%82 : i64)
  ^bb10:  // pred: ^bb6
    %83 = llvm.mlir.constant(8 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(16 : index) : i64
    %87 = llvm.mlir.zero : !llvm.ptr
    %88 = llvm.getelementptr %87[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.mlir.constant(32 : index) : i64
    %91 = llvm.add %89, %90  : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr
    %93 = llvm.ptrtoint %92 : !llvm.ptr to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %90, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.urem %96, %90  : i64
    %98 = llvm.sub %96, %97  : i64
    %99 = llvm.inttoptr %98 : i64 to !llvm.ptr
    %100 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %101 = llvm.insertvalue %92, %100[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %83, %104[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %84, %105[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %84, %106[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %85, %107[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb11(%4 : i64)
  ^bb11(%109: i64):  // 2 preds: ^bb10, ^bb14
    %110 = llvm.icmp "slt" %109, %2 : i64
    llvm.cond_br %110, ^bb12(%4 : i64), ^bb15(%4 : i64)
  ^bb12(%111: i64):  // 2 preds: ^bb11, ^bb13
    %112 = llvm.icmp "slt" %111, %0 : i64
    llvm.cond_br %112, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %109, %113  : i64
    %115 = llvm.add %114, %111  : i64
    %116 = llvm.getelementptr %99[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %116 : f64, !llvm.ptr
    %117 = llvm.add %111, %3  : i64
    llvm.br ^bb12(%117 : i64)
  ^bb14:  // pred: ^bb12
    %118 = llvm.add %109, %3  : i64
    llvm.br ^bb11(%118 : i64)
  ^bb15(%119: i64):  // 2 preds: ^bb11, ^bb20
    %120 = llvm.icmp "slt" %119, %7 : i64
    llvm.cond_br %120, ^bb16(%4 : i64), ^bb21
  ^bb16(%121: i64):  // 2 preds: ^bb15, ^bb19
    %122 = llvm.icmp "slt" %121, %6 : i64
    llvm.cond_br %122, ^bb17(%4 : i64), ^bb20
  ^bb17(%123: i64):  // 2 preds: ^bb16, ^bb18
    %124 = llvm.icmp "slt" %123, %5 : i64
    llvm.cond_br %124, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %125 = llvm.mlir.constant(4 : index) : i64
    %126 = llvm.mul %119, %125  : i64
    %127 = llvm.add %126, %121  : i64
    %128 = llvm.getelementptr %27[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %129 = llvm.load %128 : !llvm.ptr -> f64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %121, %130  : i64
    %132 = llvm.add %131, %123  : i64
    %133 = llvm.getelementptr %63[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %134 = llvm.load %133 : !llvm.ptr -> f64
    %135 = llvm.fmul %129, %134  : f64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mul %119, %136  : i64
    %138 = llvm.add %137, %123  : i64
    %139 = llvm.getelementptr %99[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %140 = llvm.load %139 : !llvm.ptr -> f64
    %141 = llvm.fadd %140, %135  : f64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %119, %142  : i64
    %144 = llvm.add %143, %123  : i64
    %145 = llvm.getelementptr %99[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %141, %145 : f64, !llvm.ptr
    %146 = llvm.add %123, %3  : i64
    llvm.br ^bb17(%146 : i64)
  ^bb19:  // pred: ^bb17
    %147 = llvm.add %121, %3  : i64
    llvm.br ^bb16(%147 : i64)
  ^bb20:  // pred: ^bb16
    %148 = llvm.add %119, %3  : i64
    llvm.br ^bb15(%148 : i64)
  ^bb21:  // pred: ^bb15
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.alloca %149 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %108, %150 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(i64, ptr)> 
    %154 = llvm.insertvalue %150, %153[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%151, %150) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
