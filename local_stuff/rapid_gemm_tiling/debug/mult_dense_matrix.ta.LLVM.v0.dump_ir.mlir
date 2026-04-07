// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x4xf64>
    %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
    %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
    %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
    "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    "ta.print"(%5) : (tensor<8x2xf64>) -> ()
    %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
    "ta.print"(%7) : (f64) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
  "ta.print"(%7) : (f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
  "ta.print"(%7) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
  "ta.print"(%7) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
  "ta.print"(%7) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
  "ta.print"(%7) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
  "ta.print"(%7) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8x2xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<8x2xf64>
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
  "ta.print"(%7) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4x2xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8x2xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<8x2xf64>
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
  "ta.print"(%7) : (f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  %7 = "ta.reduce"(%5) : (tensor<8x2xf64>) -> f64
  "ta.print"(%7) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TALoweringTTGTDynPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %c0 = arith.constant 0 : index
  %dim = tensor.dim %3, %c0 : tensor<8x4xf64>
  %c1 = arith.constant 1 : index
  %dim_4 = tensor.dim %3, %c1 : tensor<8x4xf64>
  %c0_5 = arith.constant 0 : index
  %dim_6 = tensor.dim %4, %c0_5 : tensor<4x2xf64>
  %c1_7 = arith.constant 1 : index
  %dim_8 = tensor.dim %4, %c1_7 : tensor<4x2xf64>
  %c0_9 = arith.constant 0 : index
  %dim_10 = tensor.dim %5, %c0_9 : tensor<8x2xf64>
  %c1_11 = arith.constant 1 : index
  %dim_12 = tensor.dim %5, %c1_11 : tensor<8x2xf64>
  %c1_13 = arith.constant 1 : index
  %6 = arith.muli %c1_13, %dim : index
  %c1_14 = arith.constant 1 : index
  %7 = arith.muli %c1_14, %dim_8 : index
  %c1_15 = arith.constant 1 : index
  %8 = arith.muli %c1_15, %dim_4 : index
  %cst_16 = arith.constant 0.000000e+00 : f64
  %9 = arith.muli %8, %6 : index
  %10 = arith.muli %7, %8 : index
  %11 = arith.muli %6, %7 : index
  %cst_17 = arith.constant 0.000000e+00 : f64
  %12 = arith.muli %8, %6 : index
  %13 = arith.muli %7, %8 : index
  %14 = arith.muli %6, %7 : index
  %15 = arith.index_cast %12 : index to i64
  %16 = arith.sitofp %15 : i64 to f64
  %cst_18 = arith.constant 7.100000e-01 : f64
  %17 = arith.divf %16, %cst_18 : f64
  %18 = arith.addf %cst_17, %17 : f64
  %19 = arith.index_cast %13 : index to i64
  %20 = arith.sitofp %19 : i64 to f64
  %cst_19 = arith.constant 7.100000e-01 : f64
  %21 = arith.divf %20, %cst_19 : f64
  %22 = arith.addf %18, %21 : f64
  %23 = arith.index_cast %14 : index to i64
  %24 = arith.sitofp %23 : i64 to f64
  %cst_20 = arith.constant 7.100000e-01 : f64
  %25 = arith.divf %24, %cst_20 : f64
  %26 = arith.addf %22, %25 : f64
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  %27 = arith.cmpf ult, %cst_16, %26 : f64
  %28 = arith.select %27, %c0_21, %c1_22 : index
  %29 = scf.index_switch %28 -> tensor<8x2xf64>
  case 0 {
    %31 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%3, %4 : tensor<8x4xf64>, tensor<4x2xf64>) outs(%5 : tensor<8x2xf64>) -> tensor<8x2xf64>
    scf.yield %31 : tensor<8x2xf64>
  }
  case 1 {
    %31 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%3 : tensor<8x4xf64>) outs(%31 : tensor<4x8xf64>) permutation = [1, 0]
    %32 = tensor.empty() : tensor<2x4xf64>
    %transposed_23 = linalg.transpose ins(%4 : tensor<4x2xf64>) outs(%32 : tensor<2x4xf64>) permutation = [1, 0]
    %33 = tensor.empty() : tensor<2x8xf64>
    %cst_24 = arith.constant 0.000000e+00 : f64
    %34 = linalg.fill ins(%cst_24 : f64) outs(%33 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %35 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%transposed_23, %transposed : tensor<2x4xf64>, tensor<4x8xf64>) outs(%34 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %transposed_25 = linalg.transpose ins(%35 : tensor<2x8xf64>) outs(%5 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_25 : tensor<8x2xf64>
  }
  default {
    scf.yield %5 : tensor<8x2xf64>
  }
  "ta.print"(%29) : (tensor<8x2xf64>) -> ()
  %30 = "ta.reduce"(%29) : (tensor<8x2xf64>) -> f64
  "ta.print"(%30) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LinAlgMatmulTilingPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c8 = arith.constant 8 : index
  %c4 = arith.constant 4 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>  /// %0 = A
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>  /// %1 = B
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>  /// %2 = C
  %3 = scf.index_switch %c0 -> tensor<8x2xf64>
  case 0 {
    %5 = scf.for %arg0 = %c0 to %c2 step %c8184 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {  /// k
      %6 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {  /// j
        %7 = scf.for %arg4 = %c0 to %c8 step %c256 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {  /// i
          %8 = affine.min affine_map<(d0) -> (-d0 + 2, 8184)>(%arg0)  /// k
          %9 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)  /// j
          %10 = affine.min affine_map<(d0) -> (-d0 + 8, 256)>(%arg4)  /// i
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [%10, %9] [1, 1] : tensor<8x4xf64> to tensor<?x?xf64>  /// A[i,j]
          %extracted_slice_4 = tensor.extract_slice %1[%arg2, %arg0] [%9, %8] [1, 1] : tensor<4x2xf64> to tensor<?x?xf64>  /// B[j,k]
          %extracted_slice_5 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<8x2xf64> to tensor<?x?xf64>
          %11 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%8, %10, %9) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_5) -> (tensor<?x?xf64>) {
            %12 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%8]  /// k
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%10]  /// i
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%9]  /// j
            %extracted_slice_6 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%13, %14] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_7 = tensor.extract_slice %extracted_slice_4[%arg8, %arg6] [%14, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_8 = tensor.extract_slice %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_6, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<8x2xf64>
          scf.yield %inserted_slice : tensor<8x2xf64>
        }
        scf.yield %7 : tensor<8x2xf64>
      }
      scf.yield %6 : tensor<8x2xf64>
    }
    scf.yield %5 : tensor<8x2xf64>
  }
  case 1 {
    %5 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8x4xf64>) outs(%5 : tensor<4x8xf64>) permutation = [1, 0]
    %6 = tensor.empty() : tensor<2x4xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<4x2xf64>) outs(%6 : tensor<2x4xf64>) permutation = [1, 0]
    %7 = tensor.empty() : tensor<2x8xf64>
    %8 = linalg.fill ins(%cst : f64) outs(%7 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %9 = scf.for %arg0 = %c0 to %c8 step %c8184 iter_args(%arg1 = %8) -> (tensor<2x8xf64>) {
      %10 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<2x8xf64>) {
        %11 = scf.for %arg4 = %c0 to %c2 step %c256 iter_args(%arg5 = %arg3) -> (tensor<2x8xf64>) {
          %12 = affine.min affine_map<(d0) -> (-d0 + 8, 8184)>(%arg0)
          %13 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %14 = affine.min affine_map<(d0) -> (-d0 + 2, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_4[%arg4, %arg2] [%14, %13] [1, 1] : tensor<2x4xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %transposed[%arg2, %arg0] [%13, %12] [1, 1] : tensor<4x8xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<2x8xf64> to tensor<?x?xf64>
          %15 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%12, %14, %13) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%12]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%13]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%17, %18] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%18, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %15 into %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<?x?xf64> into tensor<2x8xf64>
          scf.yield %inserted_slice : tensor<2x8xf64>
        }
        scf.yield %11 : tensor<2x8xf64>
      }
      scf.yield %10 : tensor<2x8xf64>
    }
    %transposed_5 = linalg.transpose ins(%9 : tensor<2x8xf64>) outs(%2 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_5 : tensor<8x2xf64>
  }
  default {
    scf.yield %2 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %4 = "ta.reduce"(%3) : (tensor<8x2xf64>) -> f64
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c8 = arith.constant 8 : index
  %c4 = arith.constant 4 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.index_switch %c0 -> tensor<8x2xf64>
  case 0 {
    %5 = scf.for %arg0 = %c0 to %c2 step %c8184 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %6 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %7 = scf.for %arg4 = %c0 to %c8 step %c256 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 2, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 8, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [%10, %9] [1, 1] : tensor<8x4xf64> to tensor<?x?xf64>
          %extracted_slice_9 = tensor.extract_slice %1[%arg2, %arg0] [%9, %8] [1, 1] : tensor<4x2xf64> to tensor<?x?xf64>
          %extracted_slice_10 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<8x2xf64> to tensor<?x?xf64>
          %11 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%8, %10, %9) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_10) -> (tensor<?x?xf64>) {
            %12 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%8]
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%9]
            %extracted_slice_11 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%13, %14] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_12 = tensor.extract_slice %extracted_slice_9[%arg8, %arg6] [%14, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_13 = tensor.extract_slice %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_11, %extracted_slice_12 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_13 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<8x2xf64>
          scf.yield %inserted_slice : tensor<8x2xf64>
        }
        scf.yield %7 : tensor<8x2xf64>
      }
      scf.yield %6 : tensor<8x2xf64>
    }
    scf.yield %5 : tensor<8x2xf64>
  }
  case 1 {
    %5 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8x4xf64>) outs(%5 : tensor<4x8xf64>) permutation = [1, 0]
    %6 = tensor.empty() : tensor<2x4xf64>
    %transposed_9 = linalg.transpose ins(%1 : tensor<4x2xf64>) outs(%6 : tensor<2x4xf64>) permutation = [1, 0]
    %7 = tensor.empty() : tensor<2x8xf64>
    %8 = linalg.fill ins(%cst : f64) outs(%7 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %9 = scf.for %arg0 = %c0 to %c8 step %c8184 iter_args(%arg1 = %8) -> (tensor<2x8xf64>) {
      %10 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<2x8xf64>) {
        %11 = scf.for %arg4 = %c0 to %c2 step %c256 iter_args(%arg5 = %arg3) -> (tensor<2x8xf64>) {
          %12 = affine.min affine_map<(d0) -> (-d0 + 8, 8184)>(%arg0)
          %13 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %14 = affine.min affine_map<(d0) -> (-d0 + 2, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_9[%arg4, %arg2] [%14, %13] [1, 1] : tensor<2x4xf64> to tensor<?x?xf64>
          %extracted_slice_11 = tensor.extract_slice %transposed[%arg2, %arg0] [%13, %12] [1, 1] : tensor<4x8xf64> to tensor<?x?xf64>
          %extracted_slice_12 = tensor.extract_slice %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<2x8xf64> to tensor<?x?xf64>
          %15 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%12, %14, %13) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_12) -> (tensor<?x?xf64>) {
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%12]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%13]
            %extracted_slice_13 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%17, %18] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_14 = tensor.extract_slice %extracted_slice_11[%arg8, %arg6] [%18, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_15 = tensor.extract_slice %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_13, %extracted_slice_14 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_15 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %15 into %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<?x?xf64> into tensor<2x8xf64>
          scf.yield %inserted_slice : tensor<2x8xf64>
        }
        scf.yield %11 : tensor<2x8xf64>
      }
      scf.yield %10 : tensor<2x8xf64>
    }
    %transposed_10 = linalg.transpose ins(%9 : tensor<2x8xf64>) outs(%2 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_10 : tensor<8x2xf64>
  }
  default {
    scf.yield %2 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %c0_4 = arith.constant 0 : index
  %alloc_5 = memref.alloc() : memref<1xf64>
  %cst_6 = arith.constant 0.000000e+00 : f64
  memref.store %cst_6, %alloc_5[%c0_4] : memref<1xf64>
  %c0_7 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_8 = arith.constant 0 : index
  %dim = tensor.dim %3, %c0_8 : tensor<8x2xf64>
  scf.for %arg0 = %c0_7 to %dim step %c1 {
    %c1_9 = arith.constant 1 : index
    %dim_10 = tensor.dim %3, %c1_9 : tensor<8x2xf64>
    scf.for %arg1 = %c0_7 to %dim_10 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_5[%c0_4] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_5[%c0_4] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_5[%c0_4] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c8 = arith.constant 8 : index
  %c4 = arith.constant 4 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.index_switch %c0 -> tensor<8x2xf64>
  case 0 {
    %5 = scf.for %arg0 = %c0 to %c2 step %c8184 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %6 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %7 = scf.for %arg4 = %c0 to %c8 step %c256 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 2, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 8, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [%10, %9] [1, 1] : tensor<8x4xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%9, %8] [1, 1] : tensor<4x2xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<8x2xf64> to tensor<?x?xf64>
          %11 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%8, %10, %9) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<?x?xf64>) {
            %12 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%8]
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%9]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%13, %14] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<8x2xf64>
          scf.yield %inserted_slice : tensor<8x2xf64>
        }
        scf.yield %7 : tensor<8x2xf64>
      }
      scf.yield %6 : tensor<8x2xf64>
    }
    scf.yield %5 : tensor<8x2xf64>
  }
  case 1 {
    %5 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8x4xf64>) outs(%5 : tensor<4x8xf64>) permutation = [1, 0]
    %6 = tensor.empty() : tensor<2x4xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4x2xf64>) outs(%6 : tensor<2x4xf64>) permutation = [1, 0]
    %7 = tensor.empty() : tensor<2x8xf64>
    %8 = linalg.fill ins(%cst : f64) outs(%7 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %9 = scf.for %arg0 = %c0 to %c8 step %c8184 iter_args(%arg1 = %8) -> (tensor<2x8xf64>) {
      %10 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<2x8xf64>) {
        %11 = scf.for %arg4 = %c0 to %c2 step %c256 iter_args(%arg5 = %arg3) -> (tensor<2x8xf64>) {
          %12 = affine.min affine_map<(d0) -> (-d0 + 8, 8184)>(%arg0)
          %13 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %14 = affine.min affine_map<(d0) -> (-d0 + 2, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%14, %13] [1, 1] : tensor<2x4xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%13, %12] [1, 1] : tensor<4x8xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<2x8xf64> to tensor<?x?xf64>
          %15 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%12, %14, %13) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%12]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%13]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%17, %18] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %15 into %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<?x?xf64> into tensor<2x8xf64>
          scf.yield %inserted_slice : tensor<2x8xf64>
        }
        scf.yield %11 : tensor<2x8xf64>
      }
      scf.yield %10 : tensor<2x8xf64>
    }
    %transposed_6 = linalg.transpose ins(%9 : tensor<2x8xf64>) outs(%2 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8x2xf64>
  }
  default {
    scf.yield %2 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c8 = arith.constant 8 : index
  %c4 = arith.constant 4 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.index_switch %c0 -> tensor<8x2xf64>
  case 0 {
    %5 = scf.for %arg0 = %c0 to %c2 step %c8184 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %6 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %7 = scf.for %arg4 = %c0 to %c8 step %c256 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 2, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 8, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [%10, %9] [1, 1] : tensor<8x4xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%9, %8] [1, 1] : tensor<4x2xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<8x2xf64> to tensor<?x?xf64>
          %11 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%8, %10, %9) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<?x?xf64>) {
            %12 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%8]
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%9]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%13, %14] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<8x2xf64>
          scf.yield %inserted_slice : tensor<8x2xf64>
        }
        scf.yield %7 : tensor<8x2xf64>
      }
      scf.yield %6 : tensor<8x2xf64>
    }
    scf.yield %5 : tensor<8x2xf64>
  }
  case 1 {
    %5 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8x4xf64>) outs(%5 : tensor<4x8xf64>) permutation = [1, 0]
    %6 = tensor.empty() : tensor<2x4xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4x2xf64>) outs(%6 : tensor<2x4xf64>) permutation = [1, 0]
    %7 = tensor.empty() : tensor<2x8xf64>
    %8 = linalg.fill ins(%cst : f64) outs(%7 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %9 = scf.for %arg0 = %c0 to %c8 step %c8184 iter_args(%arg1 = %8) -> (tensor<2x8xf64>) {
      %10 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<2x8xf64>) {
        %11 = scf.for %arg4 = %c0 to %c2 step %c256 iter_args(%arg5 = %arg3) -> (tensor<2x8xf64>) {
          %12 = affine.min affine_map<(d0) -> (-d0 + 8, 8184)>(%arg0)
          %13 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %14 = affine.min affine_map<(d0) -> (-d0 + 2, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%14, %13] [1, 1] : tensor<2x4xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%13, %12] [1, 1] : tensor<4x8xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<2x8xf64> to tensor<?x?xf64>
          %15 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%12, %14, %13) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%12]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%13]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%17, %18] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %15 into %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<?x?xf64> into tensor<2x8xf64>
          scf.yield %inserted_slice : tensor<2x8xf64>
        }
        scf.yield %11 : tensor<2x8xf64>
      }
      scf.yield %10 : tensor<2x8xf64>
    }
    %transposed_6 = linalg.transpose ins(%9 : tensor<2x8xf64>) outs(%2 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8x2xf64>
  }
  default {
    scf.yield %2 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c8 = arith.constant 8 : index
  %c4 = arith.constant 4 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.index_switch %c0 -> tensor<8x2xf64>
  case 0 {
    %5 = scf.for %arg0 = %c0 to %c2 step %c8184 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %6 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %7 = scf.for %arg4 = %c0 to %c8 step %c256 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 2, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 8, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [%10, %9] [1, 1] : tensor<8x4xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%9, %8] [1, 1] : tensor<4x2xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<8x2xf64> to tensor<?x?xf64>
          %11 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%8, %10, %9) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<?x?xf64>) {
            %12 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%8]
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%9]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%13, %14] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<8x2xf64>
          scf.yield %inserted_slice : tensor<8x2xf64>
        }
        scf.yield %7 : tensor<8x2xf64>
      }
      scf.yield %6 : tensor<8x2xf64>
    }
    scf.yield %5 : tensor<8x2xf64>
  }
  case 1 {
    %5 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8x4xf64>) outs(%5 : tensor<4x8xf64>) permutation = [1, 0]
    %6 = tensor.empty() : tensor<2x4xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4x2xf64>) outs(%6 : tensor<2x4xf64>) permutation = [1, 0]
    %7 = tensor.empty() : tensor<2x8xf64>
    %8 = linalg.fill ins(%cst : f64) outs(%7 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %9 = scf.for %arg0 = %c0 to %c8 step %c8184 iter_args(%arg1 = %8) -> (tensor<2x8xf64>) {
      %10 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<2x8xf64>) {
        %11 = scf.for %arg4 = %c0 to %c2 step %c256 iter_args(%arg5 = %arg3) -> (tensor<2x8xf64>) {
          %12 = affine.min affine_map<(d0) -> (-d0 + 8, 8184)>(%arg0)
          %13 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %14 = affine.min affine_map<(d0) -> (-d0 + 2, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%14, %13] [1, 1] : tensor<2x4xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%13, %12] [1, 1] : tensor<4x8xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<2x8xf64> to tensor<?x?xf64>
          %15 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%12, %14, %13) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%12]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%13]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%17, %18] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %15 into %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<?x?xf64> into tensor<2x8xf64>
          scf.yield %inserted_slice : tensor<2x8xf64>
        }
        scf.yield %11 : tensor<2x8xf64>
      }
      scf.yield %10 : tensor<2x8xf64>
    }
    %transposed_6 = linalg.transpose ins(%9 : tensor<2x8xf64>) outs(%2 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8x2xf64>
  }
  default {
    scf.yield %2 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c8 = arith.constant 8 : index
  %c4 = arith.constant 4 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.index_switch %c0 -> tensor<8x2xf64>
  case 0 {
    %5 = scf.for %arg0 = %c0 to %c2 step %c8184 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %6 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %7 = scf.for %arg4 = %c0 to %c8 step %c256 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 2, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 8, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [%10, %9] [1, 1] : tensor<8x4xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%9, %8] [1, 1] : tensor<4x2xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<8x2xf64> to tensor<?x?xf64>
          %11 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%8, %10, %9) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<?x?xf64>) {
            %12 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%8]
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%9]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%13, %14] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<8x2xf64>
          scf.yield %inserted_slice : tensor<8x2xf64>
        }
        scf.yield %7 : tensor<8x2xf64>
      }
      scf.yield %6 : tensor<8x2xf64>
    }
    scf.yield %5 : tensor<8x2xf64>
  }
  case 1 {
    %5 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8x4xf64>) outs(%5 : tensor<4x8xf64>) permutation = [1, 0]
    %6 = tensor.empty() : tensor<2x4xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4x2xf64>) outs(%6 : tensor<2x4xf64>) permutation = [1, 0]
    %7 = tensor.empty() : tensor<2x8xf64>
    %8 = linalg.fill ins(%cst : f64) outs(%7 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %9 = scf.for %arg0 = %c0 to %c8 step %c8184 iter_args(%arg1 = %8) -> (tensor<2x8xf64>) {
      %10 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<2x8xf64>) {
        %11 = scf.for %arg4 = %c0 to %c2 step %c256 iter_args(%arg5 = %arg3) -> (tensor<2x8xf64>) {
          %12 = affine.min affine_map<(d0) -> (-d0 + 8, 8184)>(%arg0)
          %13 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %14 = affine.min affine_map<(d0) -> (-d0 + 2, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%14, %13] [1, 1] : tensor<2x4xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%13, %12] [1, 1] : tensor<4x8xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<2x8xf64> to tensor<?x?xf64>
          %15 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%12, %14, %13) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%12]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%13]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%17, %18] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %15 into %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<?x?xf64> into tensor<2x8xf64>
          scf.yield %inserted_slice : tensor<2x8xf64>
        }
        scf.yield %11 : tensor<2x8xf64>
      }
      scf.yield %10 : tensor<2x8xf64>
    }
    %transposed_6 = linalg.transpose ins(%9 : tensor<2x8xf64>) outs(%2 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8x2xf64>
  }
  default {
    scf.yield %2 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c8 = arith.constant 8 : index
  %c4 = arith.constant 4 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.index_switch %c0 -> tensor<8x2xf64>
  case 0 {
    %5 = scf.for %arg0 = %c0 to %c2 step %c8184 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %6 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %7 = scf.for %arg4 = %c0 to %c8 step %c256 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 2, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 8, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [%10, %9] [1, 1] : tensor<8x4xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%9, %8] [1, 1] : tensor<4x2xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<8x2xf64> to tensor<?x?xf64>
          %11 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%8, %10, %9) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<?x?xf64>) {
            %12 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%8]
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%9]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%13, %14] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<8x2xf64>
          scf.yield %inserted_slice : tensor<8x2xf64>
        }
        scf.yield %7 : tensor<8x2xf64>
      }
      scf.yield %6 : tensor<8x2xf64>
    }
    scf.yield %5 : tensor<8x2xf64>
  }
  case 1 {
    %5 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8x4xf64>) outs(%5 : tensor<4x8xf64>) permutation = [1, 0]
    %6 = tensor.empty() : tensor<2x4xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4x2xf64>) outs(%6 : tensor<2x4xf64>) permutation = [1, 0]
    %7 = tensor.empty() : tensor<2x8xf64>
    %8 = linalg.fill ins(%cst : f64) outs(%7 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %9 = scf.for %arg0 = %c0 to %c8 step %c8184 iter_args(%arg1 = %8) -> (tensor<2x8xf64>) {
      %10 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<2x8xf64>) {
        %11 = scf.for %arg4 = %c0 to %c2 step %c256 iter_args(%arg5 = %arg3) -> (tensor<2x8xf64>) {
          %12 = affine.min affine_map<(d0) -> (-d0 + 8, 8184)>(%arg0)
          %13 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %14 = affine.min affine_map<(d0) -> (-d0 + 2, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%14, %13] [1, 1] : tensor<2x4xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%13, %12] [1, 1] : tensor<4x8xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<2x8xf64> to tensor<?x?xf64>
          %15 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%12, %14, %13) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%12]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%13]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%17, %18] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %15 into %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<?x?xf64> into tensor<2x8xf64>
          scf.yield %inserted_slice : tensor<2x8xf64>
        }
        scf.yield %11 : tensor<2x8xf64>
      }
      scf.yield %10 : tensor<2x8xf64>
    }
    %transposed_6 = linalg.transpose ins(%9 : tensor<2x8xf64>) outs(%2 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8x2xf64>
  }
  default {
    scf.yield %2 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c8 = arith.constant 8 : index
  %c4 = arith.constant 4 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = scf.index_switch %c0 -> tensor<8x2xf64>
  case 0 {
    %5 = scf.for %arg0 = %c0 to %c2 step %c8184 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {
      %6 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {
        %7 = scf.for %arg4 = %c0 to %c8 step %c256 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 2, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 8, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [%10, %9] [1, 1] : tensor<8x4xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%9, %8] [1, 1] : tensor<4x2xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<8x2xf64> to tensor<?x?xf64>
          %11 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%8, %10, %9) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<?x?xf64>) {
            %12 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%8]
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%9]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%13, %14] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [%13, %12] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<8x2xf64>
          scf.yield %inserted_slice : tensor<8x2xf64>
        }
        scf.yield %7 : tensor<8x2xf64>
      }
      scf.yield %6 : tensor<8x2xf64>
    }
    scf.yield %5 : tensor<8x2xf64>
  }
  case 1 {
    %5 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8x4xf64>) outs(%5 : tensor<4x8xf64>) permutation = [1, 0]
    %6 = tensor.empty() : tensor<2x4xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4x2xf64>) outs(%6 : tensor<2x4xf64>) permutation = [1, 0]
    %7 = tensor.empty() : tensor<2x8xf64>
    %8 = linalg.fill ins(%cst : f64) outs(%7 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %9 = scf.for %arg0 = %c0 to %c8 step %c8184 iter_args(%arg1 = %8) -> (tensor<2x8xf64>) {
      %10 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<2x8xf64>) {
        %11 = scf.for %arg4 = %c0 to %c2 step %c256 iter_args(%arg5 = %arg3) -> (tensor<2x8xf64>) {
          %12 = affine.min affine_map<(d0) -> (-d0 + 8, 8184)>(%arg0)
          %13 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %14 = affine.min affine_map<(d0) -> (-d0 + 2, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%14, %13] [1, 1] : tensor<2x4xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%13, %12] [1, 1] : tensor<4x8xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<2x8xf64> to tensor<?x?xf64>
          %15 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%12, %14, %13) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%12]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%13]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%17, %18] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [%17, %16] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %15 into %arg5[%arg4, %arg0] [%14, %12] [1, 1] : tensor<?x?xf64> into tensor<2x8xf64>
          scf.yield %inserted_slice : tensor<2x8xf64>
        }
        scf.yield %11 : tensor<2x8xf64>
      }
      scf.yield %10 : tensor<2x8xf64>
    }
    %transposed_6 = linalg.transpose ins(%9 : tensor<2x8xf64>) outs(%2 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8x2xf64>
  }
  default {
    scf.yield %2 : tensor<8x2xf64>
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%0, %1 : tensor<8x4xf64>, tensor<4x2xf64>) outs(%2 : tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%0, %1 : tensor<8x4xf64>, tensor<4x2xf64>) outs(%2 : tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%0, %1 : tensor<8x4xf64>, tensor<4x2xf64>) outs(%2 : tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %3 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%0, %1 : tensor<8x4xf64>, tensor<4x2xf64>) outs(%2 : tensor<8x2xf64>) -> tensor<8x2xf64>
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %extracted, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %4 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%4) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%0, %1 : tensor<8x4xf64>, tensor<4x2xf64>) outs(%2 : tensor<8x2xf64>) -> tensor<8x2xf64>
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
        %5 = memref.load %alloc_4[%c0] : memref<1xf64>
        %6 = arith.addf %extracted, %5 : f64
        memref.store %6, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %4 = memref.load %alloc_4[%c0] : memref<1xf64>
    "ta.print"(%4) : (f64) -> ()
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%0, %1 : tensor<8x4xf64>, tensor<4x2xf64>) outs(%2 : tensor<8x2xf64>) -> tensor<8x2xf64>
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
        %5 = memref.load %alloc_4[%c0] : memref<1xf64>
        %6 = arith.addf %extracted, %5 : f64
        memref.store %6, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %4 = memref.load %alloc_4[%c0] : memref<1xf64>
    "ta.print"(%4) : (f64) -> ()
    return
  }
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %3 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%0, %1 : tensor<8x4xf64>, tensor<4x2xf64>) outs(%2 : tensor<8x2xf64>) -> tensor<8x2xf64>
    "ta.print"(%3) : (tensor<8x2xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %extracted = tensor.extract %3[%arg0, %arg1] : tensor<8x2xf64>
        %5 = memref.load %alloc_4[%c0] : memref<1xf64>
        %6 = arith.addf %extracted, %5 : f64
        memref.store %6, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %4 = memref.load %alloc_4[%c0] : memref<1xf64>
    "ta.print"(%4) : (f64) -> ()
    return
  }
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_3 : memref<8x2xf64>)
    %0 = bufferization.to_tensor %alloc_3 : memref<8x2xf64>
    "ta.print"(%0) : (tensor<8x2xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %2 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %3 = memref.load %alloc_4[%c0] : memref<1xf64>
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %1 = memref.load %alloc_4[%c0] : memref<1xf64>
    "ta.print"(%1) : (f64) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_3 : memref<8x2xf64>)
  %0 = bufferization.to_tensor %alloc_3 : memref<8x2xf64>
  "ta.print"(%0) : (tensor<8x2xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %2 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      %3 = memref.load %alloc_4[%c0] : memref<1xf64>
      %4 = arith.addf %2, %3 : f64
      memref.store %4, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %1 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%1) : (f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_3 : memref<8x2xf64>)
  %0 = bufferization.to_tensor %alloc_3 : memref<8x2xf64>
  %1 = bufferization.to_memref %0 : memref<8x2xf64>
  %cast = memref.cast %1 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      %4 = memref.load %alloc_4[%c0] : memref<1xf64>
      %5 = arith.addf %3, %4 : f64
      memref.store %5, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %2 = memref.load %alloc_4[%c0] : memref<1xf64>
  call @printF64(%2) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_3 : memref<8x2xf64>)
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_3 : memref<8x2xf64>)
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_3 : memref<8x2xf64>)
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_3 : memref<8x2xf64>)
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_3 : memref<8x2xf64>)
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      %2 = memref.load %alloc_4[%c0] : memref<1xf64>
      %3 = arith.addf %1, %2 : f64
      memref.store %3, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %0 = memref.load %alloc_4[%c0] : memref<1xf64>
  call @printF64(%0) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %c4 = arith.constant 4 : index
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      scf.for %arg2 = %c0 to %c4 step %c1 {
        %1 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
        %2 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %4 = arith.mulf %1, %2 : f64
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
  }
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      %2 = memref.load %alloc_4[%c0] : memref<1xf64>
      %3 = arith.addf %1, %2 : f64
      memref.store %3, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %0 = memref.load %alloc_4[%c0] : memref<1xf64>
  call @printF64(%0) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %1 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %2 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
          %4 = arith.mulf %1, %2 : f64
          %5 = arith.addf %3, %4 : f64
          memref.store %5, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %1 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %2 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
          %4 = arith.mulf %1, %2 : f64
          %5 = arith.addf %3, %4 : f64
          memref.store %5, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %1 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %2 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
          %4 = arith.mulf %1, %2 : f64
          %5 = arith.addf %3, %4 : f64
          memref.store %5, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %1 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %2 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
          %4 = arith.mulf %1, %2 : f64
          %5 = arith.addf %3, %4 : f64
          memref.store %5, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %1 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %2 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
          %4 = arith.mulf %1, %2 : f64
          %5 = arith.addf %3, %4 : f64
          memref.store %5, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertSCFToOpenMPPass (convert-scf-to-openmp) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %1 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %2 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
          %4 = arith.mulf %1, %2 : f64
          %5 = arith.addf %3, %4 : f64
          memref.store %5, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %1 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %2 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
          %4 = arith.mulf %1, %2 : f64
          %5 = arith.addf %3, %4 : f64
          memref.store %5, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %1 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %2 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
          %4 = arith.mulf %1, %2 : f64
          %5 = arith.addf %3, %4 : f64
          memref.store %5, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %1 = memref.load %alloc_3[%arg0, %arg1] : memref<8x2xf64>
        %2 = memref.load %alloc_4[%c0] : memref<1xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %0 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%0) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb26
    %19 = arith.cmpi slt, %18, %c8 : index
    cf.cond_br %19, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%20: index):  // 2 preds: ^bb20, ^bb25
    %21 = arith.cmpi slt, %20, %c2 : index
    cf.cond_br %21, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%22: index):  // 2 preds: ^bb22, ^bb24
    %23 = arith.cmpi slt, %22, %c4 : index
    cf.cond_br %23, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %24 = memref.load %alloc[%18, %22] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%22, %20] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %20] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %20] : memref<8x2xf64>
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
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%32: index):  // 2 preds: ^bb27, ^bb32
    %33 = arith.cmpi slt, %32, %c8 : index
    cf.cond_br %33, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%34: index):  // 2 preds: ^bb29, ^bb31
    %35 = arith.cmpi slt, %34, %c2 : index
    cf.cond_br %35, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %36 = memref.load %alloc_3[%32, %34] : memref<8x2xf64>
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    %38 = arith.addf %36, %37 : f64
    memref.store %38, %alloc_4[%c0] : memref<1xf64>
    %39 = arith.addi %34, %c1 : index
    cf.br ^bb30(%39 : index)
  ^bb32:  // pred: ^bb30
    %40 = arith.addi %32, %c1 : index
    cf.br ^bb28(%40 : index)
  ^bb33:  // pred: ^bb28
    %41 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%41) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb26
    %19 = arith.cmpi slt, %18, %c8 : index
    cf.cond_br %19, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%20: index):  // 2 preds: ^bb20, ^bb25
    %21 = arith.cmpi slt, %20, %c2 : index
    cf.cond_br %21, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%22: index):  // 2 preds: ^bb22, ^bb24
    %23 = arith.cmpi slt, %22, %c4 : index
    cf.cond_br %23, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %24 = memref.load %alloc[%18, %22] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%22, %20] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %20] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %20] : memref<8x2xf64>
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
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%32: index):  // 2 preds: ^bb27, ^bb32
    %33 = arith.cmpi slt, %32, %c8 : index
    cf.cond_br %33, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%34: index):  // 2 preds: ^bb29, ^bb31
    %35 = arith.cmpi slt, %34, %c2 : index
    cf.cond_br %35, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %36 = memref.load %alloc_3[%32, %34] : memref<8x2xf64>
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    %38 = arith.addf %36, %37 : f64
    memref.store %38, %alloc_4[%c0] : memref<1xf64>
    %39 = arith.addi %34, %c1 : index
    cf.br ^bb30(%39 : index)
  ^bb32:  // pred: ^bb30
    %40 = arith.addi %32, %c1 : index
    cf.br ^bb28(%40 : index)
  ^bb33:  // pred: ^bb28
    %41 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%41) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c4 = arith.constant 4 : index
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
  cf.br ^bb19(%c0 : index)
^bb19(%18: index):  // 2 preds: ^bb18, ^bb26
  %19 = arith.cmpi slt, %18, %c8 : index
  cf.cond_br %19, ^bb20, ^bb27
^bb20:  // pred: ^bb19
  cf.br ^bb21(%c0 : index)
^bb21(%20: index):  // 2 preds: ^bb20, ^bb25
  %21 = arith.cmpi slt, %20, %c2 : index
  cf.cond_br %21, ^bb22, ^bb26
^bb22:  // pred: ^bb21
  cf.br ^bb23(%c0 : index)
^bb23(%22: index):  // 2 preds: ^bb22, ^bb24
  %23 = arith.cmpi slt, %22, %c4 : index
  cf.cond_br %23, ^bb24, ^bb25
^bb24:  // pred: ^bb23
  %24 = memref.load %alloc[%18, %22] : memref<8x4xf64>
  %25 = memref.load %alloc_2[%22, %20] : memref<4x2xf64>
  %26 = memref.load %alloc_3[%18, %20] : memref<8x2xf64>
  %27 = arith.mulf %24, %25 : f64
  %28 = arith.addf %26, %27 : f64
  memref.store %28, %alloc_3[%18, %20] : memref<8x2xf64>
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
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  cf.br ^bb28(%c0 : index)
^bb28(%32: index):  // 2 preds: ^bb27, ^bb32
  %33 = arith.cmpi slt, %32, %c8 : index
  cf.cond_br %33, ^bb29, ^bb33
^bb29:  // pred: ^bb28
  cf.br ^bb30(%c0 : index)
^bb30(%34: index):  // 2 preds: ^bb29, ^bb31
  %35 = arith.cmpi slt, %34, %c2 : index
  cf.cond_br %35, ^bb31, ^bb32
^bb31:  // pred: ^bb30
  %36 = memref.load %alloc_3[%32, %34] : memref<8x2xf64>
  %37 = memref.load %alloc_4[%c0] : memref<1xf64>
  %38 = arith.addf %36, %37 : f64
  memref.store %38, %alloc_4[%c0] : memref<1xf64>
  %39 = arith.addi %34, %c1 : index
  cf.br ^bb30(%39 : index)
^bb32:  // pred: ^bb30
  %40 = arith.addi %32, %c1 : index
  cf.br ^bb28(%40 : index)
^bb33:  // pred: ^bb28
  %41 = memref.load %alloc_4[%c0] : memref<1xf64>
  call @printF64(%41) : (f64) -> ()
  call @printNewline() : () -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb26
    %19 = arith.cmpi slt, %18, %c8 : index
    cf.cond_br %19, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%20: index):  // 2 preds: ^bb20, ^bb25
    %21 = arith.cmpi slt, %20, %c2 : index
    cf.cond_br %21, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%22: index):  // 2 preds: ^bb22, ^bb24
    %23 = arith.cmpi slt, %22, %c4 : index
    cf.cond_br %23, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %24 = memref.load %alloc[%18, %22] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%22, %20] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %20] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %20] : memref<8x2xf64>
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
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%32: index):  // 2 preds: ^bb27, ^bb32
    %33 = arith.cmpi slt, %32, %c8 : index
    cf.cond_br %33, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%34: index):  // 2 preds: ^bb29, ^bb31
    %35 = arith.cmpi slt, %34, %c2 : index
    cf.cond_br %35, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %36 = memref.load %alloc_3[%32, %34] : memref<8x2xf64>
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    %38 = arith.addf %36, %37 : f64
    memref.store %38, %alloc_4[%c0] : memref<1xf64>
    %39 = arith.addi %34, %c1 : index
    cf.br ^bb30(%39 : index)
  ^bb32:  // pred: ^bb30
    %40 = arith.addi %32, %c1 : index
    cf.br ^bb28(%40 : index)
  ^bb33:  // pred: ^bb28
    %41 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%41) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb26
    %19 = arith.cmpi slt, %18, %c8 : index
    cf.cond_br %19, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%20: index):  // 2 preds: ^bb20, ^bb25
    %21 = arith.cmpi slt, %20, %c2 : index
    cf.cond_br %21, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%22: index):  // 2 preds: ^bb22, ^bb24
    %23 = arith.cmpi slt, %22, %c4 : index
    cf.cond_br %23, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %24 = memref.load %alloc[%18, %22] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%22, %20] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %20] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %20] : memref<8x2xf64>
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
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%32: index):  // 2 preds: ^bb27, ^bb32
    %33 = arith.cmpi slt, %32, %c8 : index
    cf.cond_br %33, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%34: index):  // 2 preds: ^bb29, ^bb31
    %35 = arith.cmpi slt, %34, %c2 : index
    cf.cond_br %35, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %36 = memref.load %alloc_3[%32, %34] : memref<8x2xf64>
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    %38 = arith.addf %36, %37 : f64
    memref.store %38, %alloc_4[%c0] : memref<1xf64>
    %39 = arith.addi %34, %c1 : index
    cf.br ^bb30(%39 : index)
  ^bb32:  // pred: ^bb30
    %40 = arith.addi %32, %c1 : index
    cf.br ^bb28(%40 : index)
  ^bb33:  // pred: ^bb28
    %41 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%41) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertControlFlowToLLVMPass (convert-cf-to-llvm) //----- //
module {
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb26
    %19 = arith.cmpi slt, %18, %c8 : index
    llvm.cond_br %19, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%20: index):  // 2 preds: ^bb20, ^bb25
    %21 = arith.cmpi slt, %20, %c2 : index
    llvm.cond_br %21, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%22: index):  // 2 preds: ^bb22, ^bb24
    %23 = arith.cmpi slt, %22, %c4 : index
    llvm.cond_br %23, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %24 = memref.load %alloc[%18, %22] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%22, %20] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %20] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %20] : memref<8x2xf64>
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
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%32: index):  // 2 preds: ^bb27, ^bb32
    %33 = arith.cmpi slt, %32, %c8 : index
    llvm.cond_br %33, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%34: index):  // 2 preds: ^bb29, ^bb31
    %35 = arith.cmpi slt, %34, %c2 : index
    llvm.cond_br %35, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %36 = memref.load %alloc_3[%32, %34] : memref<8x2xf64>
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    %38 = arith.addf %36, %37 : f64
    memref.store %38, %alloc_4[%c0] : memref<1xf64>
    %39 = arith.addi %34, %c1 : index
    cf.br ^bb30(%39 : index)
  ^bb32:  // pred: ^bb30
    %40 = arith.addi %32, %c1 : index
    cf.br ^bb28(%40 : index)
  ^bb33:  // pred: ^bb28
    %41 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%41) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @main() {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %0 = builtin.unrealized_conversion_cast %c0 : index to i64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(32 : index) : i64
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%118: index):  // 2 preds: ^bb18, ^bb26
    %119 = builtin.unrealized_conversion_cast %118 : index to i64
    %120 = arith.cmpi slt, %118, %c8 : index
    llvm.cond_br %120, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%121: index):  // 2 preds: ^bb20, ^bb25
    %122 = builtin.unrealized_conversion_cast %121 : index to i64
    %123 = arith.cmpi slt, %121, %c2 : index
    llvm.cond_br %123, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%124: index):  // 2 preds: ^bb22, ^bb24
    %125 = builtin.unrealized_conversion_cast %124 : index to i64
    %126 = arith.cmpi slt, %124, %c4 : index
    llvm.cond_br %126, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %127 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %128 = llvm.mlir.constant(4 : index) : i64
    %129 = llvm.mul %119, %128 : i64
    %130 = llvm.add %129, %125 : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %132 = llvm.load %131 : !llvm.ptr -> f64
    %133 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %125, %134 : i64
    %136 = llvm.add %135, %122 : i64
    %137 = llvm.getelementptr %133[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %138 = llvm.load %137 : !llvm.ptr -> f64
    %139 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mul %119, %140 : i64
    %142 = llvm.add %141, %122 : i64
    %143 = llvm.getelementptr %139[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %144 = llvm.load %143 : !llvm.ptr -> f64
    %145 = arith.mulf %132, %138 : f64
    %146 = arith.addf %144, %145 : f64
    %147 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mul %119, %148 : i64
    %150 = llvm.add %149, %122 : i64
    %151 = llvm.getelementptr %147[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %146, %151 : f64, !llvm.ptr
    %152 = arith.addi %124, %c1 : index
    cf.br ^bb23(%152 : index)
  ^bb25:  // pred: ^bb23
    %153 = arith.addi %121, %c1 : index
    cf.br ^bb21(%153 : index)
  ^bb26:  // pred: ^bb21
    %154 = arith.addi %118, %c1 : index
    cf.br ^bb19(%154 : index)
  ^bb27:  // pred: ^bb19
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.alloca %155 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %104, %156 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %159 = llvm.insertvalue %157, %158[0] : !llvm.struct<(i64, ptr)>
    %160 = llvm.insertvalue %156, %159[1] : !llvm.struct<(i64, ptr)>
    %161 = builtin.unrealized_conversion_cast %160 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%161) : (memref<*xf64>) -> ()
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.zero : !llvm.ptr
    %165 = llvm.getelementptr %164[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %166 = llvm.ptrtoint %165 : !llvm.ptr to i64
    %167 = llvm.call @malloc(%166) : (i64) -> !llvm.ptr
    %168 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %169 = llvm.insertvalue %167, %168[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %170 = llvm.insertvalue %167, %169[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.insertvalue %171, %170[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %173 = llvm.insertvalue %162, %172[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %174 = llvm.insertvalue %163, %173[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %175 = llvm.extractvalue %174[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %176 = llvm.getelementptr %175[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %176 : f64, !llvm.ptr
    cf.br ^bb28(%c0 : index)
  ^bb28(%177: index):  // 2 preds: ^bb27, ^bb32
    %178 = builtin.unrealized_conversion_cast %177 : index to i64
    %179 = arith.cmpi slt, %177, %c8 : index
    llvm.cond_br %179, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%180: index):  // 2 preds: ^bb29, ^bb31
    %181 = builtin.unrealized_conversion_cast %180 : index to i64
    %182 = arith.cmpi slt, %180, %c2 : index
    llvm.cond_br %182, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %183 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %178, %184 : i64
    %186 = llvm.add %185, %181 : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %188 = llvm.load %187 : !llvm.ptr -> f64
    %189 = llvm.extractvalue %174[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %190 = llvm.getelementptr %189[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %191 = llvm.load %190 : !llvm.ptr -> f64
    %192 = arith.addf %188, %191 : f64
    %193 = llvm.extractvalue %174[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %194 = llvm.getelementptr %193[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %192, %194 : f64, !llvm.ptr
    %195 = arith.addi %180, %c1 : index
    cf.br ^bb30(%195 : index)
  ^bb32:  // pred: ^bb30
    %196 = arith.addi %177, %c1 : index
    cf.br ^bb28(%196 : index)
  ^bb33:  // pred: ^bb28
    %197 = llvm.extractvalue %174[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %198 = llvm.getelementptr %197[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %199 = llvm.load %198 : !llvm.ptr -> f64
    call @printF64(%199) : (f64) -> ()
    call @printNewline() : () -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(2 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = builtin.unrealized_conversion_cast %5 : index to i64
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %9 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.getelementptr %14[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %16 = llvm.ptrtoint %15 : !llvm.ptr to i64
    %17 = llvm.mlir.constant(32 : index) : i64
    %18 = llvm.add %16, %17 : i64
    %19 = llvm.call @malloc(%18) : (i64) -> !llvm.ptr
    %20 = llvm.ptrtoint %19 : !llvm.ptr to i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.sub %17, %21 : i64
    %23 = llvm.add %20, %22 : i64
    %24 = llvm.urem %23, %17  : i64
    %25 = llvm.sub %23, %24 : i64
    %26 = llvm.inttoptr %25 : i64 to !llvm.ptr
    %27 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %28 = llvm.insertvalue %19, %27[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %32 = llvm.insertvalue %10, %31[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %11, %32[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %34 = llvm.insertvalue %11, %33[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.insertvalue %12, %34[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb1(%4 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb5
    %37 = builtin.unrealized_conversion_cast %36 : i64 to index
    %38 = builtin.unrealized_conversion_cast %37 : index to i64
    %39 = llvm.icmp "slt" %36, %2 : i64
    llvm.cond_br %39, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%40: i64):  // 2 preds: ^bb2, ^bb4
    %41 = builtin.unrealized_conversion_cast %40 : i64 to index
    %42 = builtin.unrealized_conversion_cast %41 : index to i64
    %43 = llvm.icmp "slt" %40, %0 : i64
    llvm.cond_br %43, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %44 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %45 = llvm.mlir.constant(4 : index) : i64
    %46 = llvm.mul %38, %45 : i64
    %47 = llvm.add %46, %42 : i64
    %48 = llvm.getelementptr %44[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %48 : f64, !llvm.ptr
    %49 = llvm.add %40, %1 : i64
    llvm.br ^bb3(%49 : i64)
  ^bb5:  // pred: ^bb3
    %50 = llvm.add %36, %1 : i64
    llvm.br ^bb1(%50 : i64)
  ^bb6:  // pred: ^bb1
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(8 : index) : i64
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
    %79 = builtin.unrealized_conversion_cast %78 : index to i64
    %80 = llvm.icmp "slt" %77, %0 : i64
    llvm.cond_br %80, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%81: i64):  // 2 preds: ^bb8, ^bb10
    %82 = builtin.unrealized_conversion_cast %81 : i64 to index
    %83 = builtin.unrealized_conversion_cast %82 : index to i64
    %84 = llvm.icmp "slt" %81, %3 : i64
    llvm.cond_br %84, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %85 = llvm.extractvalue %76[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mul %79, %86 : i64
    %88 = llvm.add %87, %83 : i64
    %89 = llvm.getelementptr %85[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %89 : f64, !llvm.ptr
    %90 = llvm.add %81, %1 : i64
    llvm.br ^bb9(%90 : i64)
  ^bb11:  // pred: ^bb9
    %91 = llvm.add %77, %1 : i64
    llvm.br ^bb7(%91 : i64)
  ^bb12:  // pred: ^bb7
    %92 = llvm.mlir.constant(8 : index) : i64
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(16 : index) : i64
    %96 = llvm.mlir.zero : !llvm.ptr
    %97 = llvm.getelementptr %96[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %98 = llvm.ptrtoint %97 : !llvm.ptr to i64
    %99 = llvm.mlir.constant(32 : index) : i64
    %100 = llvm.add %98, %99 : i64
    %101 = llvm.call @malloc(%100) : (i64) -> !llvm.ptr
    %102 = llvm.ptrtoint %101 : !llvm.ptr to i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.sub %99, %103 : i64
    %105 = llvm.add %102, %104 : i64
    %106 = llvm.urem %105, %99  : i64
    %107 = llvm.sub %105, %106 : i64
    %108 = llvm.inttoptr %107 : i64 to !llvm.ptr
    %109 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %110 = llvm.insertvalue %101, %109[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %111 = llvm.insertvalue %108, %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.insertvalue %112, %111[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %114 = llvm.insertvalue %92, %113[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %115 = llvm.insertvalue %93, %114[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %116 = llvm.insertvalue %93, %115[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %117 = llvm.insertvalue %94, %116[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb13(%4 : i64)
  ^bb13(%118: i64):  // 2 preds: ^bb12, ^bb17
    %119 = builtin.unrealized_conversion_cast %118 : i64 to index
    %120 = builtin.unrealized_conversion_cast %119 : index to i64
    %121 = llvm.icmp "slt" %118, %2 : i64
    llvm.cond_br %121, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%122: i64):  // 2 preds: ^bb14, ^bb16
    %123 = builtin.unrealized_conversion_cast %122 : i64 to index
    %124 = builtin.unrealized_conversion_cast %123 : index to i64
    %125 = llvm.icmp "slt" %122, %3 : i64
    llvm.cond_br %125, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %126 = llvm.extractvalue %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %120, %127 : i64
    %129 = llvm.add %128, %124 : i64
    %130 = llvm.getelementptr %126[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %130 : f64, !llvm.ptr
    %131 = llvm.add %122, %1 : i64
    llvm.br ^bb15(%131 : i64)
  ^bb17:  // pred: ^bb15
    %132 = llvm.add %118, %1 : i64
    llvm.br ^bb13(%132 : i64)
  ^bb18:  // pred: ^bb13
    llvm.br ^bb19(%4 : i64)
  ^bb19(%133: i64):  // 2 preds: ^bb18, ^bb26
    %134 = builtin.unrealized_conversion_cast %133 : i64 to index
    %135 = builtin.unrealized_conversion_cast %134 : index to i64
    %136 = llvm.icmp "slt" %133, %2 : i64
    llvm.cond_br %136, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%137: i64):  // 2 preds: ^bb20, ^bb25
    %138 = builtin.unrealized_conversion_cast %137 : i64 to index
    %139 = builtin.unrealized_conversion_cast %138 : index to i64
    %140 = llvm.icmp "slt" %137, %3 : i64
    llvm.cond_br %140, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%141: i64):  // 2 preds: ^bb22, ^bb24
    %142 = builtin.unrealized_conversion_cast %141 : i64 to index
    %143 = builtin.unrealized_conversion_cast %142 : index to i64
    %144 = llvm.icmp "slt" %141, %0 : i64
    llvm.cond_br %144, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %145 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mul %135, %146 : i64
    %148 = llvm.add %147, %143 : i64
    %149 = llvm.getelementptr %145[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %150 = llvm.load %149 : !llvm.ptr -> f64
    %151 = llvm.extractvalue %76[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mul %143, %152 : i64
    %154 = llvm.add %153, %139 : i64
    %155 = llvm.getelementptr %151[%154] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %156 = llvm.load %155 : !llvm.ptr -> f64
    %157 = llvm.extractvalue %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %158 = llvm.mlir.constant(2 : index) : i64
    %159 = llvm.mul %135, %158 : i64
    %160 = llvm.add %159, %139 : i64
    %161 = llvm.getelementptr %157[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %162 = llvm.load %161 : !llvm.ptr -> f64
    %163 = llvm.fmul %150, %156  : f64
    %164 = llvm.fadd %162, %163  : f64
    %165 = llvm.extractvalue %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mul %135, %166 : i64
    %168 = llvm.add %167, %139 : i64
    %169 = llvm.getelementptr %165[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %164, %169 : f64, !llvm.ptr
    %170 = llvm.add %141, %1 : i64
    llvm.br ^bb23(%170 : i64)
  ^bb25:  // pred: ^bb23
    %171 = llvm.add %137, %1 : i64
    llvm.br ^bb21(%171 : i64)
  ^bb26:  // pred: ^bb21
    %172 = llvm.add %133, %1 : i64
    llvm.br ^bb19(%172 : i64)
  ^bb27:  // pred: ^bb19
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.alloca %173 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %117, %174 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %177 = llvm.insertvalue %175, %176[0] : !llvm.struct<(i64, ptr)>
    %178 = llvm.insertvalue %174, %177[1] : !llvm.struct<(i64, ptr)>
    %179 = llvm.extractvalue %178[0] : !llvm.struct<(i64, ptr)>
    %180 = llvm.extractvalue %178[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%179, %180) : (i64, !llvm.ptr) -> ()
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.zero : !llvm.ptr
    %184 = llvm.getelementptr %183[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %185 = llvm.ptrtoint %184 : !llvm.ptr to i64
    %186 = llvm.call @malloc(%185) : (i64) -> !llvm.ptr
    %187 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %188 = llvm.insertvalue %186, %187[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %192 = llvm.insertvalue %181, %191[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %193 = llvm.insertvalue %182, %192[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %194 = llvm.extractvalue %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %195 = llvm.getelementptr %194[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %195 : f64, !llvm.ptr
    llvm.br ^bb28(%4 : i64)
  ^bb28(%196: i64):  // 2 preds: ^bb27, ^bb32
    %197 = builtin.unrealized_conversion_cast %196 : i64 to index
    %198 = builtin.unrealized_conversion_cast %197 : index to i64
    %199 = llvm.icmp "slt" %196, %2 : i64
    llvm.cond_br %199, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%4 : i64)
  ^bb30(%200: i64):  // 2 preds: ^bb29, ^bb31
    %201 = builtin.unrealized_conversion_cast %200 : i64 to index
    %202 = builtin.unrealized_conversion_cast %201 : index to i64
    %203 = llvm.icmp "slt" %200, %3 : i64
    llvm.cond_br %203, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %204 = llvm.extractvalue %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mul %198, %205 : i64
    %207 = llvm.add %206, %202 : i64
    %208 = llvm.getelementptr %204[%207] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %209 = llvm.load %208 : !llvm.ptr -> f64
    %210 = llvm.extractvalue %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %211 = llvm.getelementptr %210[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %212 = llvm.load %211 : !llvm.ptr -> f64
    %213 = llvm.fadd %209, %212  : f64
    %214 = llvm.extractvalue %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %215 = llvm.getelementptr %214[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %213, %215 : f64, !llvm.ptr
    %216 = llvm.add %200, %1 : i64
    llvm.br ^bb30(%216 : i64)
  ^bb32:  // pred: ^bb30
    %217 = llvm.add %196, %1 : i64
    llvm.br ^bb28(%217 : i64)
  ^bb33:  // pred: ^bb28
    %218 = llvm.extractvalue %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %219 = llvm.getelementptr %218[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %220 = llvm.load %219 : !llvm.ptr -> f64
    llvm.call @printF64(%220) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(2 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %9 = llvm.mlir.constant(8 : index) : i64
    %10 = llvm.mlir.constant(4 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(32 : index) : i64
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
    llvm.br ^bb1(%4 : i64)
  ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb5
    %36 = builtin.unrealized_conversion_cast %35 : i64 to index
    %37 = llvm.icmp "slt" %35, %2 : i64
    llvm.cond_br %37, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = builtin.unrealized_conversion_cast %38 : i64 to index
    %40 = llvm.icmp "slt" %38, %0 : i64
    llvm.cond_br %40, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %41 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.mul %35, %42 : i64
    %44 = llvm.add %43, %38 : i64
    %45 = llvm.getelementptr %41[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %45 : f64, !llvm.ptr
    %46 = llvm.add %38, %1 : i64
    llvm.br ^bb3(%46 : i64)
  ^bb5:  // pred: ^bb3
    %47 = llvm.add %35, %1 : i64
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
    %75 = builtin.unrealized_conversion_cast %74 : i64 to index
    %76 = llvm.icmp "slt" %74, %0 : i64
    llvm.cond_br %76, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%77: i64):  // 2 preds: ^bb8, ^bb10
    %78 = builtin.unrealized_conversion_cast %77 : i64 to index
    %79 = llvm.icmp "slt" %77, %3 : i64
    llvm.cond_br %79, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %80 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mul %74, %81 : i64
    %83 = llvm.add %82, %77 : i64
    %84 = llvm.getelementptr %80[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %84 : f64, !llvm.ptr
    %85 = llvm.add %77, %1 : i64
    llvm.br ^bb9(%85 : i64)
  ^bb11:  // pred: ^bb9
    %86 = llvm.add %74, %1 : i64
    llvm.br ^bb7(%86 : i64)
  ^bb12:  // pred: ^bb7
    %87 = llvm.mlir.constant(8 : index) : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(16 : index) : i64
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
    llvm.br ^bb13(%4 : i64)
  ^bb13(%113: i64):  // 2 preds: ^bb12, ^bb17
    %114 = builtin.unrealized_conversion_cast %113 : i64 to index
    %115 = llvm.icmp "slt" %113, %2 : i64
    llvm.cond_br %115, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%116: i64):  // 2 preds: ^bb14, ^bb16
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = llvm.icmp "slt" %116, %3 : i64
    llvm.cond_br %118, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %119 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mul %113, %120 : i64
    %122 = llvm.add %121, %116 : i64
    %123 = llvm.getelementptr %119[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %123 : f64, !llvm.ptr
    %124 = llvm.add %116, %1 : i64
    llvm.br ^bb15(%124 : i64)
  ^bb17:  // pred: ^bb15
    %125 = llvm.add %113, %1 : i64
    llvm.br ^bb13(%125 : i64)
  ^bb18:  // pred: ^bb13
    llvm.br ^bb19(%4 : i64)
  ^bb19(%126: i64):  // 2 preds: ^bb18, ^bb26
    %127 = builtin.unrealized_conversion_cast %126 : i64 to index
    %128 = llvm.icmp "slt" %126, %2 : i64
    llvm.cond_br %128, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%129: i64):  // 2 preds: ^bb20, ^bb25
    %130 = builtin.unrealized_conversion_cast %129 : i64 to index
    %131 = llvm.icmp "slt" %129, %3 : i64
    llvm.cond_br %131, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%132: i64):  // 2 preds: ^bb22, ^bb24
    %133 = builtin.unrealized_conversion_cast %132 : i64 to index
    %134 = llvm.icmp "slt" %132, %0 : i64
    llvm.cond_br %134, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %135 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %136 = llvm.mlir.constant(4 : index) : i64
    %137 = llvm.mul %126, %136 : i64
    %138 = llvm.add %137, %132 : i64
    %139 = llvm.getelementptr %135[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %140 = llvm.load %139 : !llvm.ptr -> f64
    %141 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %132, %142 : i64
    %144 = llvm.add %143, %129 : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %146 = llvm.load %145 : !llvm.ptr -> f64
    %147 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mul %126, %148 : i64
    %150 = llvm.add %149, %129 : i64
    %151 = llvm.getelementptr %147[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %152 = llvm.load %151 : !llvm.ptr -> f64
    %153 = llvm.fmul %140, %146  : f64
    %154 = llvm.fadd %152, %153  : f64
    %155 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %156 = llvm.mlir.constant(2 : index) : i64
    %157 = llvm.mul %126, %156 : i64
    %158 = llvm.add %157, %129 : i64
    %159 = llvm.getelementptr %155[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %154, %159 : f64, !llvm.ptr
    %160 = llvm.add %132, %1 : i64
    llvm.br ^bb23(%160 : i64)
  ^bb25:  // pred: ^bb23
    %161 = llvm.add %129, %1 : i64
    llvm.br ^bb21(%161 : i64)
  ^bb26:  // pred: ^bb21
    %162 = llvm.add %126, %1 : i64
    llvm.br ^bb19(%162 : i64)
  ^bb27:  // pred: ^bb19
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.alloca %163 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %112, %164 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %167 = llvm.insertvalue %165, %166[0] : !llvm.struct<(i64, ptr)>
    %168 = llvm.insertvalue %164, %167[1] : !llvm.struct<(i64, ptr)>
    %169 = llvm.extractvalue %168[0] : !llvm.struct<(i64, ptr)>
    %170 = llvm.extractvalue %168[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%169, %170) : (i64, !llvm.ptr) -> ()
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.zero : !llvm.ptr
    %174 = llvm.getelementptr %173[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %175 = llvm.ptrtoint %174 : !llvm.ptr to i64
    %176 = llvm.call @malloc(%175) : (i64) -> !llvm.ptr
    %177 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %178 = llvm.insertvalue %176, %177[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %179 = llvm.insertvalue %176, %178[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.insertvalue %180, %179[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %182 = llvm.insertvalue %171, %181[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %183 = llvm.insertvalue %172, %182[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %184 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %185 = llvm.getelementptr %184[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %185 : f64, !llvm.ptr
    llvm.br ^bb28(%4 : i64)
  ^bb28(%186: i64):  // 2 preds: ^bb27, ^bb32
    %187 = builtin.unrealized_conversion_cast %186 : i64 to index
    %188 = llvm.icmp "slt" %186, %2 : i64
    llvm.cond_br %188, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%4 : i64)
  ^bb30(%189: i64):  // 2 preds: ^bb29, ^bb31
    %190 = builtin.unrealized_conversion_cast %189 : i64 to index
    %191 = llvm.icmp "slt" %189, %3 : i64
    llvm.cond_br %191, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %192 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mul %186, %193 : i64
    %195 = llvm.add %194, %189 : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %197 = llvm.load %196 : !llvm.ptr -> f64
    %198 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %199 = llvm.getelementptr %198[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %200 = llvm.load %199 : !llvm.ptr -> f64
    %201 = llvm.fadd %197, %200  : f64
    %202 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %203 = llvm.getelementptr %202[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %201, %203 : f64, !llvm.ptr
    %204 = llvm.add %189, %1 : i64
    llvm.br ^bb30(%204 : i64)
  ^bb32:  // pred: ^bb30
    %205 = llvm.add %186, %1 : i64
    llvm.br ^bb28(%205 : i64)
  ^bb33:  // pred: ^bb28
    %206 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %207 = llvm.getelementptr %206[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %208 = llvm.load %207 : !llvm.ptr -> f64
    llvm.call @printF64(%208) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertOpenMPToLLVMPass (convert-openmp-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(2 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %9 = llvm.mlir.constant(8 : index) : i64
    %10 = llvm.mlir.constant(4 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(32 : index) : i64
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
    llvm.br ^bb1(%4 : i64)
  ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb5
    %36 = builtin.unrealized_conversion_cast %35 : i64 to index
    %37 = llvm.icmp "slt" %35, %2 : i64
    llvm.cond_br %37, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = builtin.unrealized_conversion_cast %38 : i64 to index
    %40 = llvm.icmp "slt" %38, %0 : i64
    llvm.cond_br %40, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %41 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.mul %35, %42 : i64
    %44 = llvm.add %43, %38 : i64
    %45 = llvm.getelementptr %41[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %45 : f64, !llvm.ptr
    %46 = llvm.add %38, %1 : i64
    llvm.br ^bb3(%46 : i64)
  ^bb5:  // pred: ^bb3
    %47 = llvm.add %35, %1 : i64
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
    %75 = builtin.unrealized_conversion_cast %74 : i64 to index
    %76 = llvm.icmp "slt" %74, %0 : i64
    llvm.cond_br %76, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%77: i64):  // 2 preds: ^bb8, ^bb10
    %78 = builtin.unrealized_conversion_cast %77 : i64 to index
    %79 = llvm.icmp "slt" %77, %3 : i64
    llvm.cond_br %79, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %80 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mul %74, %81 : i64
    %83 = llvm.add %82, %77 : i64
    %84 = llvm.getelementptr %80[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %84 : f64, !llvm.ptr
    %85 = llvm.add %77, %1 : i64
    llvm.br ^bb9(%85 : i64)
  ^bb11:  // pred: ^bb9
    %86 = llvm.add %74, %1 : i64
    llvm.br ^bb7(%86 : i64)
  ^bb12:  // pred: ^bb7
    %87 = llvm.mlir.constant(8 : index) : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(16 : index) : i64
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
    llvm.br ^bb13(%4 : i64)
  ^bb13(%113: i64):  // 2 preds: ^bb12, ^bb17
    %114 = builtin.unrealized_conversion_cast %113 : i64 to index
    %115 = llvm.icmp "slt" %113, %2 : i64
    llvm.cond_br %115, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%116: i64):  // 2 preds: ^bb14, ^bb16
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = llvm.icmp "slt" %116, %3 : i64
    llvm.cond_br %118, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %119 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mul %113, %120 : i64
    %122 = llvm.add %121, %116 : i64
    %123 = llvm.getelementptr %119[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %123 : f64, !llvm.ptr
    %124 = llvm.add %116, %1 : i64
    llvm.br ^bb15(%124 : i64)
  ^bb17:  // pred: ^bb15
    %125 = llvm.add %113, %1 : i64
    llvm.br ^bb13(%125 : i64)
  ^bb18:  // pred: ^bb13
    llvm.br ^bb19(%4 : i64)
  ^bb19(%126: i64):  // 2 preds: ^bb18, ^bb26
    %127 = builtin.unrealized_conversion_cast %126 : i64 to index
    %128 = llvm.icmp "slt" %126, %2 : i64
    llvm.cond_br %128, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%129: i64):  // 2 preds: ^bb20, ^bb25
    %130 = builtin.unrealized_conversion_cast %129 : i64 to index
    %131 = llvm.icmp "slt" %129, %3 : i64
    llvm.cond_br %131, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%132: i64):  // 2 preds: ^bb22, ^bb24
    %133 = builtin.unrealized_conversion_cast %132 : i64 to index
    %134 = llvm.icmp "slt" %132, %0 : i64
    llvm.cond_br %134, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %135 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %136 = llvm.mlir.constant(4 : index) : i64
    %137 = llvm.mul %126, %136 : i64
    %138 = llvm.add %137, %132 : i64
    %139 = llvm.getelementptr %135[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %140 = llvm.load %139 : !llvm.ptr -> f64
    %141 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %132, %142 : i64
    %144 = llvm.add %143, %129 : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %146 = llvm.load %145 : !llvm.ptr -> f64
    %147 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mul %126, %148 : i64
    %150 = llvm.add %149, %129 : i64
    %151 = llvm.getelementptr %147[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %152 = llvm.load %151 : !llvm.ptr -> f64
    %153 = llvm.fmul %140, %146  : f64
    %154 = llvm.fadd %152, %153  : f64
    %155 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %156 = llvm.mlir.constant(2 : index) : i64
    %157 = llvm.mul %126, %156 : i64
    %158 = llvm.add %157, %129 : i64
    %159 = llvm.getelementptr %155[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %154, %159 : f64, !llvm.ptr
    %160 = llvm.add %132, %1 : i64
    llvm.br ^bb23(%160 : i64)
  ^bb25:  // pred: ^bb23
    %161 = llvm.add %129, %1 : i64
    llvm.br ^bb21(%161 : i64)
  ^bb26:  // pred: ^bb21
    %162 = llvm.add %126, %1 : i64
    llvm.br ^bb19(%162 : i64)
  ^bb27:  // pred: ^bb19
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.alloca %163 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %112, %164 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %167 = llvm.insertvalue %165, %166[0] : !llvm.struct<(i64, ptr)>
    %168 = llvm.insertvalue %164, %167[1] : !llvm.struct<(i64, ptr)>
    %169 = llvm.extractvalue %168[0] : !llvm.struct<(i64, ptr)>
    %170 = llvm.extractvalue %168[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%169, %170) : (i64, !llvm.ptr) -> ()
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.zero : !llvm.ptr
    %174 = llvm.getelementptr %173[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %175 = llvm.ptrtoint %174 : !llvm.ptr to i64
    %176 = llvm.call @malloc(%175) : (i64) -> !llvm.ptr
    %177 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %178 = llvm.insertvalue %176, %177[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %179 = llvm.insertvalue %176, %178[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.insertvalue %180, %179[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %182 = llvm.insertvalue %171, %181[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %183 = llvm.insertvalue %172, %182[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %184 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %185 = llvm.getelementptr %184[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %185 : f64, !llvm.ptr
    llvm.br ^bb28(%4 : i64)
  ^bb28(%186: i64):  // 2 preds: ^bb27, ^bb32
    %187 = builtin.unrealized_conversion_cast %186 : i64 to index
    %188 = llvm.icmp "slt" %186, %2 : i64
    llvm.cond_br %188, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%4 : i64)
  ^bb30(%189: i64):  // 2 preds: ^bb29, ^bb31
    %190 = builtin.unrealized_conversion_cast %189 : i64 to index
    %191 = llvm.icmp "slt" %189, %3 : i64
    llvm.cond_br %191, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %192 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mul %186, %193 : i64
    %195 = llvm.add %194, %189 : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %197 = llvm.load %196 : !llvm.ptr -> f64
    %198 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %199 = llvm.getelementptr %198[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %200 = llvm.load %199 : !llvm.ptr -> f64
    %201 = llvm.fadd %197, %200  : f64
    %202 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %203 = llvm.getelementptr %202[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %201, %203 : f64, !llvm.ptr
    %204 = llvm.add %189, %1 : i64
    llvm.br ^bb30(%204 : i64)
  ^bb32:  // pred: ^bb30
    %205 = llvm.add %186, %1 : i64
    llvm.br ^bb28(%205 : i64)
  ^bb33:  // pred: ^bb28
    %206 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %207 = llvm.getelementptr %206[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %208 = llvm.load %207 : !llvm.ptr -> f64
    llvm.call @printF64(%208) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(2 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(8 : index) : i64
    %9 = llvm.mlir.constant(4 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.mlir.zero : !llvm.ptr
    %13 = llvm.getelementptr %12[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %14 = llvm.ptrtoint %13 : !llvm.ptr to i64
    %15 = llvm.mlir.constant(32 : index) : i64
    %16 = llvm.add %14, %15 : i64
    %17 = llvm.call @malloc(%16) : (i64) -> !llvm.ptr
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.sub %15, %19 : i64
    %21 = llvm.add %18, %20 : i64
    %22 = llvm.urem %21, %15  : i64
    %23 = llvm.sub %21, %22 : i64
    %24 = llvm.inttoptr %23 : i64 to !llvm.ptr
    %25 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %26 = llvm.insertvalue %17, %25[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %30 = llvm.insertvalue %8, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %31 = llvm.insertvalue %9, %30[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %32 = llvm.insertvalue %9, %31[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %10, %32[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb1(%4 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb5
    %35 = llvm.icmp "slt" %34, %2 : i64
    llvm.cond_br %35, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%36: i64):  // 2 preds: ^bb2, ^bb4
    %37 = llvm.icmp "slt" %36, %0 : i64
    llvm.cond_br %37, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %38 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mul %34, %39 : i64
    %41 = llvm.add %40, %36 : i64
    %42 = llvm.getelementptr %38[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %42 : f64, !llvm.ptr
    %43 = llvm.add %36, %1 : i64
    llvm.br ^bb3(%43 : i64)
  ^bb5:  // pred: ^bb3
    %44 = llvm.add %34, %1 : i64
    llvm.br ^bb1(%44 : i64)
  ^bb6:  // pred: ^bb1
    %45 = llvm.mlir.constant(4 : index) : i64
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(8 : index) : i64
    %49 = llvm.mlir.zero : !llvm.ptr
    %50 = llvm.getelementptr %49[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %51 = llvm.ptrtoint %50 : !llvm.ptr to i64
    %52 = llvm.mlir.constant(32 : index) : i64
    %53 = llvm.add %51, %52 : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr
    %55 = llvm.ptrtoint %54 : !llvm.ptr to i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.sub %52, %56 : i64
    %58 = llvm.add %55, %57 : i64
    %59 = llvm.urem %58, %52  : i64
    %60 = llvm.sub %58, %59 : i64
    %61 = llvm.inttoptr %60 : i64 to !llvm.ptr
    %62 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %63 = llvm.insertvalue %54, %62[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %67 = llvm.insertvalue %45, %66[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %68 = llvm.insertvalue %46, %67[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %69 = llvm.insertvalue %46, %68[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %70 = llvm.insertvalue %47, %69[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb7(%4 : i64)
  ^bb7(%71: i64):  // 2 preds: ^bb6, ^bb11
    %72 = llvm.icmp "slt" %71, %0 : i64
    llvm.cond_br %72, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%73: i64):  // 2 preds: ^bb8, ^bb10
    %74 = llvm.icmp "slt" %73, %3 : i64
    llvm.cond_br %74, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %75 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mul %71, %76 : i64
    %78 = llvm.add %77, %73 : i64
    %79 = llvm.getelementptr %75[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %79 : f64, !llvm.ptr
    %80 = llvm.add %73, %1 : i64
    llvm.br ^bb9(%80 : i64)
  ^bb11:  // pred: ^bb9
    %81 = llvm.add %71, %1 : i64
    llvm.br ^bb7(%81 : i64)
  ^bb12:  // pred: ^bb7
    %82 = llvm.mlir.constant(8 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(16 : index) : i64
    %86 = llvm.mlir.zero : !llvm.ptr
    %87 = llvm.getelementptr %86[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.mlir.constant(32 : index) : i64
    %90 = llvm.add %88, %89 : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr
    %92 = llvm.ptrtoint %91 : !llvm.ptr to i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.sub %89, %93 : i64
    %95 = llvm.add %92, %94 : i64
    %96 = llvm.urem %95, %89  : i64
    %97 = llvm.sub %95, %96 : i64
    %98 = llvm.inttoptr %97 : i64 to !llvm.ptr
    %99 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %100 = llvm.insertvalue %91, %99[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %101 = llvm.insertvalue %98, %100[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.insertvalue %102, %101[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %104 = llvm.insertvalue %82, %103[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %105 = llvm.insertvalue %83, %104[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %106 = llvm.insertvalue %83, %105[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %107 = llvm.insertvalue %84, %106[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb13(%4 : i64)
  ^bb13(%108: i64):  // 2 preds: ^bb12, ^bb17
    %109 = llvm.icmp "slt" %108, %2 : i64
    llvm.cond_br %109, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%110: i64):  // 2 preds: ^bb14, ^bb16
    %111 = llvm.icmp "slt" %110, %3 : i64
    llvm.cond_br %111, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %112 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %108, %113 : i64
    %115 = llvm.add %114, %110 : i64
    %116 = llvm.getelementptr %112[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %116 : f64, !llvm.ptr
    %117 = llvm.add %110, %1 : i64
    llvm.br ^bb15(%117 : i64)
  ^bb17:  // pred: ^bb15
    %118 = llvm.add %108, %1 : i64
    llvm.br ^bb13(%118 : i64)
  ^bb18:  // pred: ^bb13
    llvm.br ^bb19(%4 : i64)
  ^bb19(%119: i64):  // 2 preds: ^bb18, ^bb26
    %120 = llvm.icmp "slt" %119, %2 : i64
    llvm.cond_br %120, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%121: i64):  // 2 preds: ^bb20, ^bb25
    %122 = llvm.icmp "slt" %121, %3 : i64
    llvm.cond_br %122, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%123: i64):  // 2 preds: ^bb22, ^bb24
    %124 = llvm.icmp "slt" %123, %0 : i64
    llvm.cond_br %124, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %125 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %126 = llvm.mlir.constant(4 : index) : i64
    %127 = llvm.mul %119, %126 : i64
    %128 = llvm.add %127, %123 : i64
    %129 = llvm.getelementptr %125[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %130 = llvm.load %129 : !llvm.ptr -> f64
    %131 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %123, %132 : i64
    %134 = llvm.add %133, %121 : i64
    %135 = llvm.getelementptr %131[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %136 = llvm.load %135 : !llvm.ptr -> f64
    %137 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %119, %138 : i64
    %140 = llvm.add %139, %121 : i64
    %141 = llvm.getelementptr %137[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %142 = llvm.load %141 : !llvm.ptr -> f64
    %143 = llvm.fmul %130, %136  : f64
    %144 = llvm.fadd %142, %143  : f64
    %145 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mul %119, %146 : i64
    %148 = llvm.add %147, %121 : i64
    %149 = llvm.getelementptr %145[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %144, %149 : f64, !llvm.ptr
    %150 = llvm.add %123, %1 : i64
    llvm.br ^bb23(%150 : i64)
  ^bb25:  // pred: ^bb23
    %151 = llvm.add %121, %1 : i64
    llvm.br ^bb21(%151 : i64)
  ^bb26:  // pred: ^bb21
    %152 = llvm.add %119, %1 : i64
    llvm.br ^bb19(%152 : i64)
  ^bb27:  // pred: ^bb19
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.alloca %153 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %107, %154 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %157 = llvm.insertvalue %155, %156[0] : !llvm.struct<(i64, ptr)>
    %158 = llvm.insertvalue %154, %157[1] : !llvm.struct<(i64, ptr)>
    %159 = llvm.extractvalue %158[0] : !llvm.struct<(i64, ptr)>
    %160 = llvm.extractvalue %158[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%159, %160) : (i64, !llvm.ptr) -> ()
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.zero : !llvm.ptr
    %164 = llvm.getelementptr %163[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %165 = llvm.ptrtoint %164 : !llvm.ptr to i64
    %166 = llvm.call @malloc(%165) : (i64) -> !llvm.ptr
    %167 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %168 = llvm.insertvalue %166, %167[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %169 = llvm.insertvalue %166, %168[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.insertvalue %170, %169[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %172 = llvm.insertvalue %161, %171[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %173 = llvm.insertvalue %162, %172[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %174 = llvm.extractvalue %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %175 = llvm.getelementptr %174[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %175 : f64, !llvm.ptr
    llvm.br ^bb28(%4 : i64)
  ^bb28(%176: i64):  // 2 preds: ^bb27, ^bb32
    %177 = llvm.icmp "slt" %176, %2 : i64
    llvm.cond_br %177, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%4 : i64)
  ^bb30(%178: i64):  // 2 preds: ^bb29, ^bb31
    %179 = llvm.icmp "slt" %178, %3 : i64
    llvm.cond_br %179, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %180 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mul %176, %181 : i64
    %183 = llvm.add %182, %178 : i64
    %184 = llvm.getelementptr %180[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %185 = llvm.load %184 : !llvm.ptr -> f64
    %186 = llvm.extractvalue %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %187 = llvm.getelementptr %186[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %188 = llvm.load %187 : !llvm.ptr -> f64
    %189 = llvm.fadd %185, %188  : f64
    %190 = llvm.extractvalue %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %191 = llvm.getelementptr %190[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %189, %191 : f64, !llvm.ptr
    %192 = llvm.add %178, %1 : i64
    llvm.br ^bb30(%192 : i64)
  ^bb32:  // pred: ^bb30
    %193 = llvm.add %176, %1 : i64
    llvm.br ^bb28(%193 : i64)
  ^bb33:  // pred: ^bb28
    %194 = llvm.extractvalue %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %195 = llvm.getelementptr %194[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %196 = llvm.load %195 : !llvm.ptr -> f64
    llvm.call @printF64(%196) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(2 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(8 : index) : i64
    %9 = llvm.mlir.constant(4 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.mlir.zero : !llvm.ptr
    %13 = llvm.getelementptr %12[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %14 = llvm.ptrtoint %13 : !llvm.ptr to i64
    %15 = llvm.mlir.constant(32 : index) : i64
    %16 = llvm.add %14, %15 : i64
    %17 = llvm.call @malloc(%16) : (i64) -> !llvm.ptr
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.sub %15, %19 : i64
    %21 = llvm.add %18, %20 : i64
    %22 = llvm.urem %21, %15  : i64
    %23 = llvm.sub %21, %22 : i64
    %24 = llvm.inttoptr %23 : i64 to !llvm.ptr
    %25 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %26 = llvm.insertvalue %17, %25[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %30 = llvm.insertvalue %8, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %31 = llvm.insertvalue %9, %30[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %32 = llvm.insertvalue %9, %31[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %10, %32[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb1(%4 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb5
    %35 = llvm.icmp "slt" %34, %2 : i64
    llvm.cond_br %35, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%36: i64):  // 2 preds: ^bb2, ^bb4
    %37 = llvm.icmp "slt" %36, %0 : i64
    llvm.cond_br %37, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %38 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mul %34, %39 : i64
    %41 = llvm.add %40, %36 : i64
    %42 = llvm.getelementptr %38[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %42 : f64, !llvm.ptr
    %43 = llvm.add %36, %1 : i64
    llvm.br ^bb3(%43 : i64)
  ^bb5:  // pred: ^bb3
    %44 = llvm.add %34, %1 : i64
    llvm.br ^bb1(%44 : i64)
  ^bb6:  // pred: ^bb1
    %45 = llvm.mlir.constant(4 : index) : i64
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(8 : index) : i64
    %49 = llvm.mlir.zero : !llvm.ptr
    %50 = llvm.getelementptr %49[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %51 = llvm.ptrtoint %50 : !llvm.ptr to i64
    %52 = llvm.mlir.constant(32 : index) : i64
    %53 = llvm.add %51, %52 : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr
    %55 = llvm.ptrtoint %54 : !llvm.ptr to i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.sub %52, %56 : i64
    %58 = llvm.add %55, %57 : i64
    %59 = llvm.urem %58, %52  : i64
    %60 = llvm.sub %58, %59 : i64
    %61 = llvm.inttoptr %60 : i64 to !llvm.ptr
    %62 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %63 = llvm.insertvalue %54, %62[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %67 = llvm.insertvalue %45, %66[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %68 = llvm.insertvalue %46, %67[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %69 = llvm.insertvalue %46, %68[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %70 = llvm.insertvalue %47, %69[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb7(%4 : i64)
  ^bb7(%71: i64):  // 2 preds: ^bb6, ^bb11
    %72 = llvm.icmp "slt" %71, %0 : i64
    llvm.cond_br %72, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%73: i64):  // 2 preds: ^bb8, ^bb10
    %74 = llvm.icmp "slt" %73, %3 : i64
    llvm.cond_br %74, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %75 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mul %71, %76 : i64
    %78 = llvm.add %77, %73 : i64
    %79 = llvm.getelementptr %75[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %79 : f64, !llvm.ptr
    %80 = llvm.add %73, %1 : i64
    llvm.br ^bb9(%80 : i64)
  ^bb11:  // pred: ^bb9
    %81 = llvm.add %71, %1 : i64
    llvm.br ^bb7(%81 : i64)
  ^bb12:  // pred: ^bb7
    %82 = llvm.mlir.constant(8 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(16 : index) : i64
    %86 = llvm.mlir.zero : !llvm.ptr
    %87 = llvm.getelementptr %86[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.mlir.constant(32 : index) : i64
    %90 = llvm.add %88, %89 : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr
    %92 = llvm.ptrtoint %91 : !llvm.ptr to i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.sub %89, %93 : i64
    %95 = llvm.add %92, %94 : i64
    %96 = llvm.urem %95, %89  : i64
    %97 = llvm.sub %95, %96 : i64
    %98 = llvm.inttoptr %97 : i64 to !llvm.ptr
    %99 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %100 = llvm.insertvalue %91, %99[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %101 = llvm.insertvalue %98, %100[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.insertvalue %102, %101[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %104 = llvm.insertvalue %82, %103[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %105 = llvm.insertvalue %83, %104[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %106 = llvm.insertvalue %83, %105[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %107 = llvm.insertvalue %84, %106[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb13(%4 : i64)
  ^bb13(%108: i64):  // 2 preds: ^bb12, ^bb17
    %109 = llvm.icmp "slt" %108, %2 : i64
    llvm.cond_br %109, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%110: i64):  // 2 preds: ^bb14, ^bb16
    %111 = llvm.icmp "slt" %110, %3 : i64
    llvm.cond_br %111, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %112 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %108, %113 : i64
    %115 = llvm.add %114, %110 : i64
    %116 = llvm.getelementptr %112[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %116 : f64, !llvm.ptr
    %117 = llvm.add %110, %1 : i64
    llvm.br ^bb15(%117 : i64)
  ^bb17:  // pred: ^bb15
    %118 = llvm.add %108, %1 : i64
    llvm.br ^bb13(%118 : i64)
  ^bb18:  // pred: ^bb13
    llvm.br ^bb19(%4 : i64)
  ^bb19(%119: i64):  // 2 preds: ^bb18, ^bb26
    %120 = llvm.icmp "slt" %119, %2 : i64
    llvm.cond_br %120, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%121: i64):  // 2 preds: ^bb20, ^bb25
    %122 = llvm.icmp "slt" %121, %3 : i64
    llvm.cond_br %122, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%123: i64):  // 2 preds: ^bb22, ^bb24
    %124 = llvm.icmp "slt" %123, %0 : i64
    llvm.cond_br %124, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %125 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %126 = llvm.mlir.constant(4 : index) : i64
    %127 = llvm.mul %119, %126 : i64
    %128 = llvm.add %127, %123 : i64
    %129 = llvm.getelementptr %125[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %130 = llvm.load %129 : !llvm.ptr -> f64
    %131 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %123, %132 : i64
    %134 = llvm.add %133, %121 : i64
    %135 = llvm.getelementptr %131[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %136 = llvm.load %135 : !llvm.ptr -> f64
    %137 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %119, %138 : i64
    %140 = llvm.add %139, %121 : i64
    %141 = llvm.getelementptr %137[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %142 = llvm.load %141 : !llvm.ptr -> f64
    %143 = llvm.fmul %130, %136  : f64
    %144 = llvm.fadd %142, %143  : f64
    %145 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mul %119, %146 : i64
    %148 = llvm.add %147, %121 : i64
    %149 = llvm.getelementptr %145[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %144, %149 : f64, !llvm.ptr
    %150 = llvm.add %123, %1 : i64
    llvm.br ^bb23(%150 : i64)
  ^bb25:  // pred: ^bb23
    %151 = llvm.add %121, %1 : i64
    llvm.br ^bb21(%151 : i64)
  ^bb26:  // pred: ^bb21
    %152 = llvm.add %119, %1 : i64
    llvm.br ^bb19(%152 : i64)
  ^bb27:  // pred: ^bb19
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.alloca %153 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %107, %154 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %157 = llvm.insertvalue %155, %156[0] : !llvm.struct<(i64, ptr)>
    %158 = llvm.insertvalue %154, %157[1] : !llvm.struct<(i64, ptr)>
    %159 = llvm.extractvalue %158[0] : !llvm.struct<(i64, ptr)>
    %160 = llvm.extractvalue %158[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%159, %160) : (i64, !llvm.ptr) -> ()
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.zero : !llvm.ptr
    %164 = llvm.getelementptr %163[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %165 = llvm.ptrtoint %164 : !llvm.ptr to i64
    %166 = llvm.call @malloc(%165) : (i64) -> !llvm.ptr
    %167 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %168 = llvm.insertvalue %166, %167[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %169 = llvm.insertvalue %166, %168[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.insertvalue %170, %169[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %172 = llvm.insertvalue %161, %171[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %173 = llvm.insertvalue %162, %172[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %174 = llvm.extractvalue %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %175 = llvm.getelementptr %174[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %175 : f64, !llvm.ptr
    llvm.br ^bb28(%4 : i64)
  ^bb28(%176: i64):  // 2 preds: ^bb27, ^bb32
    %177 = llvm.icmp "slt" %176, %2 : i64
    llvm.cond_br %177, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%4 : i64)
  ^bb30(%178: i64):  // 2 preds: ^bb29, ^bb31
    %179 = llvm.icmp "slt" %178, %3 : i64
    llvm.cond_br %179, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %180 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mul %176, %181 : i64
    %183 = llvm.add %182, %178 : i64
    %184 = llvm.getelementptr %180[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %185 = llvm.load %184 : !llvm.ptr -> f64
    %186 = llvm.extractvalue %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %187 = llvm.getelementptr %186[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %188 = llvm.load %187 : !llvm.ptr -> f64
    %189 = llvm.fadd %185, %188  : f64
    %190 = llvm.extractvalue %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %191 = llvm.getelementptr %190[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %189, %191 : f64, !llvm.ptr
    %192 = llvm.add %178, %1 : i64
    llvm.br ^bb30(%192 : i64)
  ^bb32:  // pred: ^bb30
    %193 = llvm.add %176, %1 : i64
    llvm.br ^bb28(%193 : i64)
  ^bb33:  // pred: ^bb28
    %194 = llvm.extractvalue %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %195 = llvm.getelementptr %194[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %196 = llvm.load %195 : !llvm.ptr -> f64
    llvm.call @printF64(%196) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
