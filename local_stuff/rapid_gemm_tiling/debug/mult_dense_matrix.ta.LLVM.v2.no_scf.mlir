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
  %27 = arith.cmpf ult, %26, %cst_16 : f64
  %28 = arith.select %27, %c1_22, %c0_21 : index
  %29 = arith.select %27, %26, %cst_16 : f64
  %30 = scf.index_switch %28 -> tensor<8x2xf64>
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
  "ta.set_op"(%30, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LinAlgMatmulTilingPass () //----- //
func.func @main() {
  %c6 = arith.constant 6 : index
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
    %4 = scf.for %arg0 = %c0 to %c2 step %c8184 iter_args(%arg1 = %2) -> (tensor<8x2xf64>) {  /// k
      %5 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<8x2xf64>) {  /// j
        %6 = scf.for %arg4 = %c0 to %c8 step %c256 iter_args(%arg5 = %arg3) -> (tensor<8x2xf64>) {  /// i
          %7 = affine.min affine_map<(d0) -> (-d0 + 2, 8184)>(%arg0)
          %8 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %9 = affine.min affine_map<(d0) -> (-d0 + 8, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [%9, %8] [1, 1] : tensor<8x4xf64> to tensor<?x?xf64>  /// A [i, j]
          %extracted_slice_4 = tensor.extract_slice %1[%arg2, %arg0] [%8, %7] [1, 1] : tensor<4x2xf64> to tensor<?x?xf64>  /// B [j, k]
          %extracted_slice_5 = tensor.extract_slice %arg5[%arg4, %arg0] [%9, %7] [1, 1] : tensor<8x2xf64> to tensor<?x?xf64>  /// C [i, k]
          %10 = scf.for %arg6 = %c0 to %7 step %c6 iter_args(%arg7 = %extracted_slice_5) -> (tensor<?x?xf64>) {  /// %arg6 = k
            %11 = scf.for %arg8 = %c0 to %9 step %c8 iter_args(%arg9 = %arg7) -> (tensor<?x?xf64>) {  /// %arg8 = i
              %12 = scf.for %arg10 = %c0 to %8 step %c3072 iter_args(%arg11 = %arg9) -> (tensor<?x?xf64>) {  /// %arg10 = j
                %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%7]
                %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg8)[%9]
                %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg10)[%8]
                %extracted_slice_6 = tensor.extract_slice %extracted_slice[%arg8, %arg10] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
                %extracted_slice_7 = tensor.extract_slice %extracted_slice_4[%arg10, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
                %extracted_slice_8 = tensor.extract_slice %arg11[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
                %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_6, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
                %inserted_slice_9 = tensor.insert_slice %16 into %arg11[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
                scf.yield %inserted_slice_9 : tensor<?x?xf64>
              }
              scf.yield %12 : tensor<?x?xf64>
            }
            scf.yield %11 : tensor<?x?xf64>
          }
          %inserted_slice = tensor.insert_slice %10 into %arg5[%arg4, %arg0] [%9, %7] [1, 1] : tensor<?x?xf64> into tensor<8x2xf64>
          scf.yield %inserted_slice : tensor<8x2xf64>
        }
        scf.yield %6 : tensor<8x2xf64>
      }
      scf.yield %5 : tensor<8x2xf64>
    }
    scf.yield %4 : tensor<8x2xf64>
  }
  case 1 {
    %4 = tensor.empty() : tensor<4x8xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8x4xf64>) outs(%4 : tensor<4x8xf64>) permutation = [1, 0]
    %5 = tensor.empty() : tensor<2x4xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<4x2xf64>) outs(%5 : tensor<2x4xf64>) permutation = [1, 0]
    %6 = tensor.empty() : tensor<2x8xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<2x8xf64>) -> tensor<2x8xf64>
    %8 = scf.for %arg0 = %c0 to %c8 step %c8184 iter_args(%arg1 = %7) -> (tensor<2x8xf64>) {
      %9 = scf.for %arg2 = %c0 to %c4 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<2x8xf64>) {
        %10 = scf.for %arg4 = %c0 to %c2 step %c256 iter_args(%arg5 = %arg3) -> (tensor<2x8xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 8, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 4, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 2, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_4[%arg4, %arg2] [%13, %12] [1, 1] : tensor<2x4xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %transposed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<4x8xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<2x8xf64> to tensor<?x?xf64>
          %14 = scf.for %arg6 = %c0 to %11 step %c6 iter_args(%arg7 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %15 = scf.for %arg8 = %c0 to %13 step %c8 iter_args(%arg9 = %arg7) -> (tensor<?x?xf64>) {
              %16 = scf.for %arg10 = %c0 to %12 step %c3072 iter_args(%arg11 = %arg9) -> (tensor<?x?xf64>) {
                %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
                %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg8)[%13]
                %19 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg10)[%12]
                %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg8, %arg10] [%18, %19] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
                %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg10, %arg6] [%19, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
                %extracted_slice_10 = tensor.extract_slice %arg11[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
                %20 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
                %inserted_slice_11 = tensor.insert_slice %20 into %arg11[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
                scf.yield %inserted_slice_11 : tensor<?x?xf64>
              }
              scf.yield %16 : tensor<?x?xf64>
            }
            scf.yield %15 : tensor<?x?xf64>
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<2x8xf64>
          scf.yield %inserted_slice : tensor<2x8xf64>
        }
        scf.yield %10 : tensor<2x8xf64>
      }
      scf.yield %9 : tensor<2x8xf64>
    }
    %transposed_5 = linalg.transpose ins(%8 : tensor<2x8xf64>) outs(%2 : tensor<8x2xf64>) permutation = [1, 0]
    scf.yield %transposed_5 : tensor<8x2xf64>
  }
  default {
    scf.yield %2 : tensor<8x2xf64>
  }
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
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
  "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%2) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
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
    "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    "ta.print"(%2) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
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
    "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    "ta.print"(%2) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
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
    "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    "ta.print"(%2) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_4 : memref<8x2xf64>)
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    "ta.print"(%0) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
  memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
  linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_4 : memref<8x2xf64>)
  %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
  "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%0) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
  memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
  linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_4 : memref<8x2xf64>)
  %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
  "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  %2 = bufferization.to_memref %0 : memref<8x2xf64>
  %cast = memref.cast %2 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_4 : memref<8x2xf64>)
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_4 : memref<8x2xf64>)
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_4 : memref<8x2xf64>)
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_4 : memref<8x2xf64>)
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4x2xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8x2xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
  memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
  linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%alloc, %alloc_2 : memref<8x4xf64>, memref<4x2xf64>) outs(%alloc_4 : memref<8x2xf64>)
  %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
  "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c4 = arith.constant 4 : index
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
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
  %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
  memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      scf.for %arg2 = %c0 to %c4 step %c1 {
        %2 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
        %3 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
        %4 = memref.load %alloc_4[%arg0, %arg1] : memref<8x2xf64>
        %5 = arith.mulf %2, %3 : f64
        %6 = arith.addf %4, %5 : f64
        memref.store %6, %alloc_4[%arg0, %arg1] : memref<8x2xf64>
      }
    }
  }
  %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
  "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %2 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %3 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %4 = memref.load %alloc_4[%arg0, %arg1] : memref<8x2xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %alloc_4[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %2 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %3 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %4 = memref.load %alloc_4[%arg0, %arg1] : memref<8x2xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %alloc_4[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %2 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %3 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %4 = memref.load %alloc_4[%arg0, %arg1] : memref<8x2xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %alloc_4[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %2 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %3 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %4 = memref.load %alloc_4[%arg0, %arg1] : memref<8x2xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %alloc_4[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %2 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %3 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %4 = memref.load %alloc_4[%arg0, %arg1] : memref<8x2xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %alloc_4[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %2 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %3 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %4 = memref.load %alloc_4[%arg0, %arg1] : memref<8x2xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %alloc_4[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %2 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %3 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %4 = memref.load %alloc_4[%arg0, %arg1] : memref<8x2xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %alloc_4[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %2 = memref.load %alloc[%arg0, %arg2] : memref<8x4xf64>
          %3 = memref.load %alloc_2[%arg2, %arg1] : memref<4x2xf64>
          %4 = memref.load %alloc_4[%arg0, %arg1] : memref<8x2xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %alloc_4[%arg0, %arg1] : memref<8x2xf64>
        }
      }
    }
    %1 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%1, %0) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %18 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb26
    %20 = arith.cmpi slt, %19, %c8 : index
    cf.cond_br %20, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb25
    %22 = arith.cmpi slt, %21, %c2 : index
    cf.cond_br %22, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%23: index):  // 2 preds: ^bb22, ^bb24
    %24 = arith.cmpi slt, %23, %c4 : index
    cf.cond_br %24, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %25 = memref.load %alloc[%19, %23] : memref<8x4xf64>
    %26 = memref.load %alloc_2[%23, %21] : memref<4x2xf64>
    %27 = memref.load %alloc_4[%19, %21] : memref<8x2xf64>
    %28 = arith.mulf %25, %26 : f64
    %29 = arith.addf %27, %28 : f64
    memref.store %29, %alloc_4[%19, %21] : memref<8x2xf64>
    %30 = arith.addi %23, %c1 : index
    cf.br ^bb23(%30 : index)
  ^bb25:  // pred: ^bb23
    %31 = arith.addi %21, %c1 : index
    cf.br ^bb21(%31 : index)
  ^bb26:  // pred: ^bb21
    %32 = arith.addi %19, %c1 : index
    cf.br ^bb19(%32 : index)
  ^bb27:  // pred: ^bb19
    %33 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%33, %18) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %18 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb26
    %20 = arith.cmpi slt, %19, %c8 : index
    cf.cond_br %20, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb25
    %22 = arith.cmpi slt, %21, %c2 : index
    cf.cond_br %22, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%23: index):  // 2 preds: ^bb22, ^bb24
    %24 = arith.cmpi slt, %23, %c4 : index
    cf.cond_br %24, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %25 = memref.load %alloc[%19, %23] : memref<8x4xf64>
    %26 = memref.load %alloc_2[%23, %21] : memref<4x2xf64>
    %27 = memref.load %alloc_4[%19, %21] : memref<8x2xf64>
    %28 = arith.mulf %25, %26 : f64
    %29 = arith.addf %27, %28 : f64
    memref.store %29, %alloc_4[%19, %21] : memref<8x2xf64>
    %30 = arith.addi %23, %c1 : index
    cf.br ^bb23(%30 : index)
  ^bb25:  // pred: ^bb23
    %31 = arith.addi %21, %c1 : index
    cf.br ^bb21(%31 : index)
  ^bb26:  // pred: ^bb21
    %32 = arith.addi %19, %c1 : index
    cf.br ^bb19(%32 : index)
  ^bb27:  // pred: ^bb19
    %33 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%33, %18) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
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
  %18 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
  memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
  cf.br ^bb19(%c0 : index)
^bb19(%19: index):  // 2 preds: ^bb18, ^bb26
  %20 = arith.cmpi slt, %19, %c8 : index
  cf.cond_br %20, ^bb20, ^bb27
^bb20:  // pred: ^bb19
  cf.br ^bb21(%c0 : index)
^bb21(%21: index):  // 2 preds: ^bb20, ^bb25
  %22 = arith.cmpi slt, %21, %c2 : index
  cf.cond_br %22, ^bb22, ^bb26
^bb22:  // pred: ^bb21
  cf.br ^bb23(%c0 : index)
^bb23(%23: index):  // 2 preds: ^bb22, ^bb24
  %24 = arith.cmpi slt, %23, %c4 : index
  cf.cond_br %24, ^bb24, ^bb25
^bb24:  // pred: ^bb23
  %25 = memref.load %alloc[%19, %23] : memref<8x4xf64>
  %26 = memref.load %alloc_2[%23, %21] : memref<4x2xf64>
  %27 = memref.load %alloc_4[%19, %21] : memref<8x2xf64>
  %28 = arith.mulf %25, %26 : f64
  %29 = arith.addf %27, %28 : f64
  memref.store %29, %alloc_4[%19, %21] : memref<8x2xf64>
  %30 = arith.addi %23, %c1 : index
  cf.br ^bb23(%30 : index)
^bb25:  // pred: ^bb23
  %31 = arith.addi %21, %c1 : index
  cf.br ^bb21(%31 : index)
^bb26:  // pred: ^bb21
  %32 = arith.addi %19, %c1 : index
  cf.br ^bb19(%32 : index)
^bb27:  // pred: ^bb19
  %33 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
  "ta.set_op"(%33, %18) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %18 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb26
    %20 = arith.cmpi slt, %19, %c8 : index
    cf.cond_br %20, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb25
    %22 = arith.cmpi slt, %21, %c2 : index
    cf.cond_br %22, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%23: index):  // 2 preds: ^bb22, ^bb24
    %24 = arith.cmpi slt, %23, %c4 : index
    cf.cond_br %24, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %25 = memref.load %alloc[%19, %23] : memref<8x4xf64>
    %26 = memref.load %alloc_2[%23, %21] : memref<4x2xf64>
    %27 = memref.load %alloc_4[%19, %21] : memref<8x2xf64>
    %28 = arith.mulf %25, %26 : f64
    %29 = arith.addf %27, %28 : f64
    memref.store %29, %alloc_4[%19, %21] : memref<8x2xf64>
    %30 = arith.addi %23, %c1 : index
    cf.br ^bb23(%30 : index)
  ^bb25:  // pred: ^bb23
    %31 = arith.addi %21, %c1 : index
    cf.br ^bb21(%31 : index)
  ^bb26:  // pred: ^bb21
    %32 = arith.addi %19, %c1 : index
    cf.br ^bb19(%32 : index)
  ^bb27:  // pred: ^bb19
    %33 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%33, %18) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %18 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb26
    %20 = arith.cmpi slt, %19, %c8 : index
    cf.cond_br %20, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb25
    %22 = arith.cmpi slt, %21, %c2 : index
    cf.cond_br %22, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%23: index):  // 2 preds: ^bb22, ^bb24
    %24 = arith.cmpi slt, %23, %c4 : index
    cf.cond_br %24, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %25 = memref.load %alloc[%19, %23] : memref<8x4xf64>
    %26 = memref.load %alloc_2[%23, %21] : memref<4x2xf64>
    %27 = memref.load %alloc_4[%19, %21] : memref<8x2xf64>
    %28 = arith.mulf %25, %26 : f64
    %29 = arith.addf %27, %28 : f64
    memref.store %29, %alloc_4[%19, %21] : memref<8x2xf64>
    %30 = arith.addi %23, %c1 : index
    cf.br ^bb23(%30 : index)
  ^bb25:  // pred: ^bb23
    %31 = arith.addi %21, %c1 : index
    cf.br ^bb21(%31 : index)
  ^bb26:  // pred: ^bb21
    %32 = arith.addi %19, %c1 : index
    cf.br ^bb19(%32 : index)
  ^bb27:  // pred: ^bb19
    %33 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%33, %18) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
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
    %18 = bufferization.to_tensor %alloc_3 restrict writable : memref<8x2xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<8x2xf64>
    memref.copy %alloc_3, %alloc_4 : memref<8x2xf64> to memref<8x2xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb26
    %20 = arith.cmpi slt, %19, %c8 : index
    llvm.cond_br %20, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb25
    %22 = arith.cmpi slt, %21, %c2 : index
    llvm.cond_br %22, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%23: index):  // 2 preds: ^bb22, ^bb24
    %24 = arith.cmpi slt, %23, %c4 : index
    llvm.cond_br %24, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %25 = memref.load %alloc[%19, %23] : memref<8x4xf64>
    %26 = memref.load %alloc_2[%23, %21] : memref<4x2xf64>
    %27 = memref.load %alloc_4[%19, %21] : memref<8x2xf64>
    %28 = arith.mulf %25, %26 : f64
    %29 = arith.addf %27, %28 : f64
    memref.store %29, %alloc_4[%19, %21] : memref<8x2xf64>
    %30 = arith.addi %23, %c1 : index
    cf.br ^bb23(%30 : index)
  ^bb25:  // pred: ^bb23
    %31 = arith.addi %21, %c1 : index
    cf.br ^bb21(%31 : index)
  ^bb26:  // pred: ^bb21
    %32 = arith.addi %19, %c1 : index
    cf.br ^bb19(%32 : index)
  ^bb27:  // pred: ^bb19
    %33 = bufferization.to_tensor %alloc_4 : memref<8x2xf64>
    "ta.set_op"(%33, %18) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c0 = arith.constant 0 : index
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
    %8 = llvm.add %6, %7 : i64
    %9 = llvm.call @malloc(%8) : (i64) -> !llvm.ptr
    %10 = llvm.ptrtoint %9 : !llvm.ptr to i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.sub %7, %11 : i64
    %13 = llvm.add %10, %12 : i64
    %14 = llvm.urem %13, %7  : i64
    %15 = llvm.sub %13, %14 : i64
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
  ^bb1(%26: index):  // 2 preds: ^bb0, ^bb5
    %27 = builtin.unrealized_conversion_cast %26 : index to i64
    %28 = arith.cmpi slt, %26, %c8 : index
    llvm.cond_br %28, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%29: index):  // 2 preds: ^bb2, ^bb4
    %30 = builtin.unrealized_conversion_cast %29 : index to i64
    %31 = arith.cmpi slt, %29, %c4 : index
    llvm.cond_br %31, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %32 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.mul %27, %33 : i64
    %35 = llvm.add %34, %30 : i64
    %36 = llvm.getelementptr %32[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_1, %36 : f64, !llvm.ptr
    %37 = arith.addi %29, %c1 : index
    cf.br ^bb3(%37 : index)
  ^bb5:  // pred: ^bb3
    %38 = arith.addi %26, %c1 : index
    cf.br ^bb1(%38 : index)
  ^bb6:  // pred: ^bb1
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(8 : index) : i64
    %43 = llvm.mlir.zero : !llvm.ptr
    %44 = llvm.getelementptr %43[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %45 = llvm.ptrtoint %44 : !llvm.ptr to i64
    %46 = llvm.mlir.constant(32 : index) : i64
    %47 = llvm.add %45, %46 : i64
    %48 = llvm.call @malloc(%47) : (i64) -> !llvm.ptr
    %49 = llvm.ptrtoint %48 : !llvm.ptr to i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.sub %46, %50 : i64
    %52 = llvm.add %49, %51 : i64
    %53 = llvm.urem %52, %46  : i64
    %54 = llvm.sub %52, %53 : i64
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
    cf.br ^bb7(%c0 : index)
  ^bb7(%65: index):  // 2 preds: ^bb6, ^bb11
    %66 = builtin.unrealized_conversion_cast %65 : index to i64
    %67 = arith.cmpi slt, %65, %c4 : index
    llvm.cond_br %67, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%68: index):  // 2 preds: ^bb8, ^bb10
    %69 = builtin.unrealized_conversion_cast %68 : index to i64
    %70 = arith.cmpi slt, %68, %c2 : index
    llvm.cond_br %70, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %71 = llvm.extractvalue %64[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mul %66, %72 : i64
    %74 = llvm.add %73, %69 : i64
    %75 = llvm.getelementptr %71[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %75 : f64, !llvm.ptr
    %76 = arith.addi %68, %c1 : index
    cf.br ^bb9(%76 : index)
  ^bb11:  // pred: ^bb9
    %77 = arith.addi %65, %c1 : index
    cf.br ^bb7(%77 : index)
  ^bb12:  // pred: ^bb7
    %78 = llvm.mlir.constant(8 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.mlir.zero : !llvm.ptr
    %83 = llvm.getelementptr %82[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %84 = llvm.ptrtoint %83 : !llvm.ptr to i64
    %85 = llvm.mlir.constant(32 : index) : i64
    %86 = llvm.add %84, %85 : i64
    %87 = llvm.call @malloc(%86) : (i64) -> !llvm.ptr
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.sub %85, %89 : i64
    %91 = llvm.add %88, %90 : i64
    %92 = llvm.urem %91, %85  : i64
    %93 = llvm.sub %91, %92 : i64
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
    %104 = builtin.unrealized_conversion_cast %103 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
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
    %111 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
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
    %118 = bufferization.to_tensor %104 restrict writable : memref<8x2xf64>
    %119 = llvm.mlir.constant(8 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(16 : index) : i64
    %123 = llvm.mlir.zero : !llvm.ptr
    %124 = llvm.getelementptr %123[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %125 = llvm.ptrtoint %124 : !llvm.ptr to i64
    %126 = llvm.mlir.constant(64 : index) : i64
    %127 = llvm.add %125, %126 : i64
    %128 = llvm.call @malloc(%127) : (i64) -> !llvm.ptr
    %129 = llvm.ptrtoint %128 : !llvm.ptr to i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.sub %126, %130 : i64
    %132 = llvm.add %129, %131 : i64
    %133 = llvm.urem %132, %126  : i64
    %134 = llvm.sub %132, %133 : i64
    %135 = llvm.inttoptr %134 : i64 to !llvm.ptr
    %136 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %137 = llvm.insertvalue %128, %136[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %138 = llvm.insertvalue %135, %137[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.insertvalue %139, %138[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %141 = llvm.insertvalue %119, %140[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %142 = llvm.insertvalue %120, %141[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.insertvalue %120, %142[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %144 = llvm.insertvalue %121, %143[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %145 = builtin.unrealized_conversion_cast %144 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.extractvalue %103[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %148 = llvm.mul %146, %147 : i64
    %149 = llvm.extractvalue %103[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %150 = llvm.mul %148, %149 : i64
    %151 = llvm.mlir.zero : !llvm.ptr
    %152 = llvm.getelementptr %151[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %153 = llvm.ptrtoint %152 : !llvm.ptr to i64
    %154 = llvm.mul %150, %153 : i64
    %155 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %156 = llvm.extractvalue %103[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %157 = llvm.getelementptr %155[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %158 = llvm.extractvalue %144[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %159 = llvm.extractvalue %144[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %160 = llvm.getelementptr %158[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    "llvm.intr.memcpy"(%160, %157, %154) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    cf.br ^bb19(%c0 : index)
  ^bb19(%161: index):  // 2 preds: ^bb18, ^bb26
    %162 = builtin.unrealized_conversion_cast %161 : index to i64
    %163 = arith.cmpi slt, %161, %c8 : index
    llvm.cond_br %163, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%164: index):  // 2 preds: ^bb20, ^bb25
    %165 = builtin.unrealized_conversion_cast %164 : index to i64
    %166 = arith.cmpi slt, %164, %c2 : index
    llvm.cond_br %166, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%167: index):  // 2 preds: ^bb22, ^bb24
    %168 = builtin.unrealized_conversion_cast %167 : index to i64
    %169 = arith.cmpi slt, %167, %c4 : index
    llvm.cond_br %169, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %170 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %171 = llvm.mlir.constant(4 : index) : i64
    %172 = llvm.mul %162, %171 : i64
    %173 = llvm.add %172, %168 : i64
    %174 = llvm.getelementptr %170[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %175 = llvm.load %174 : !llvm.ptr -> f64
    %176 = llvm.extractvalue %64[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mul %168, %177 : i64
    %179 = llvm.add %178, %165 : i64
    %180 = llvm.getelementptr %176[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %181 = llvm.load %180 : !llvm.ptr -> f64
    %182 = llvm.extractvalue %144[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mul %162, %183 : i64
    %185 = llvm.add %184, %165 : i64
    %186 = llvm.getelementptr %182[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %187 = llvm.load %186 : !llvm.ptr -> f64
    %188 = arith.mulf %175, %181 : f64
    %189 = arith.addf %187, %188 : f64
    %190 = llvm.extractvalue %144[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %162, %191 : i64
    %193 = llvm.add %192, %165 : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %189, %194 : f64, !llvm.ptr
    %195 = arith.addi %167, %c1 : index
    cf.br ^bb23(%195 : index)
  ^bb25:  // pred: ^bb23
    %196 = arith.addi %164, %c1 : index
    cf.br ^bb21(%196 : index)
  ^bb26:  // pred: ^bb21
    %197 = arith.addi %161, %c1 : index
    cf.br ^bb19(%197 : index)
  ^bb27:  // pred: ^bb19
    %198 = bufferization.to_tensor %145 : memref<8x2xf64>
    "ta.set_op"(%198, %118) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.alloca %199 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %103, %200 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %203 = llvm.insertvalue %201, %202[0] : !llvm.struct<(i64, ptr)>
    %204 = llvm.insertvalue %200, %203[1] : !llvm.struct<(i64, ptr)>
    %205 = builtin.unrealized_conversion_cast %204 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%205) : (memref<*xf64>) -> ()
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
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(8 : index) : i64
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
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = builtin.unrealized_conversion_cast %35 : index to i64
    %37 = llvm.icmp "slt" %34, %3 : i64
    llvm.cond_br %37, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = builtin.unrealized_conversion_cast %38 : i64 to index
    %40 = builtin.unrealized_conversion_cast %39 : index to i64
    %41 = llvm.icmp "slt" %38, %1 : i64
    llvm.cond_br %41, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %42 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.mul %36, %43 : i64
    %45 = llvm.add %44, %40 : i64
    %46 = llvm.getelementptr %42[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %46 : f64, !llvm.ptr
    %47 = llvm.add %38, %2 : i64
    llvm.br ^bb3(%47 : i64)
  ^bb5:  // pred: ^bb3
    %48 = llvm.add %34, %2 : i64
    llvm.br ^bb1(%48 : i64)
  ^bb6:  // pred: ^bb1
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(8 : index) : i64
    %53 = llvm.mlir.zero : !llvm.ptr
    %54 = llvm.getelementptr %53[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %55 = llvm.ptrtoint %54 : !llvm.ptr to i64
    %56 = llvm.mlir.constant(32 : index) : i64
    %57 = llvm.add %55, %56 : i64
    %58 = llvm.call @malloc(%57) : (i64) -> !llvm.ptr
    %59 = llvm.ptrtoint %58 : !llvm.ptr to i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.sub %56, %60 : i64
    %62 = llvm.add %59, %61 : i64
    %63 = llvm.urem %62, %56  : i64
    %64 = llvm.sub %62, %63 : i64
    %65 = llvm.inttoptr %64 : i64 to !llvm.ptr
    %66 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %67 = llvm.insertvalue %58, %66[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %71 = llvm.insertvalue %49, %70[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %72 = llvm.insertvalue %50, %71[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %73 = llvm.insertvalue %50, %72[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %74 = llvm.insertvalue %51, %73[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb7(%4 : i64)
  ^bb7(%75: i64):  // 2 preds: ^bb6, ^bb11
    %76 = builtin.unrealized_conversion_cast %75 : i64 to index
    %77 = builtin.unrealized_conversion_cast %76 : index to i64
    %78 = llvm.icmp "slt" %75, %1 : i64
    llvm.cond_br %78, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%79: i64):  // 2 preds: ^bb8, ^bb10
    %80 = builtin.unrealized_conversion_cast %79 : i64 to index
    %81 = builtin.unrealized_conversion_cast %80 : index to i64
    %82 = llvm.icmp "slt" %79, %0 : i64
    llvm.cond_br %82, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %83 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mul %77, %84 : i64
    %86 = llvm.add %85, %81 : i64
    %87 = llvm.getelementptr %83[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %87 : f64, !llvm.ptr
    %88 = llvm.add %79, %2 : i64
    llvm.br ^bb9(%88 : i64)
  ^bb11:  // pred: ^bb9
    %89 = llvm.add %75, %2 : i64
    llvm.br ^bb7(%89 : i64)
  ^bb12:  // pred: ^bb7
    %90 = llvm.mlir.constant(8 : index) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(16 : index) : i64
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
    %116 = builtin.unrealized_conversion_cast %115 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    llvm.br ^bb13(%4 : i64)
  ^bb13(%117: i64):  // 2 preds: ^bb12, ^bb17
    %118 = builtin.unrealized_conversion_cast %117 : i64 to index
    %119 = builtin.unrealized_conversion_cast %118 : index to i64
    %120 = llvm.icmp "slt" %117, %3 : i64
    llvm.cond_br %120, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%121: i64):  // 2 preds: ^bb14, ^bb16
    %122 = builtin.unrealized_conversion_cast %121 : i64 to index
    %123 = builtin.unrealized_conversion_cast %122 : index to i64
    %124 = llvm.icmp "slt" %121, %0 : i64
    llvm.cond_br %124, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %125 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mul %119, %126 : i64
    %128 = llvm.add %127, %123 : i64
    %129 = llvm.getelementptr %125[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %129 : f64, !llvm.ptr
    %130 = llvm.add %121, %2 : i64
    llvm.br ^bb15(%130 : i64)
  ^bb17:  // pred: ^bb15
    %131 = llvm.add %117, %2 : i64
    llvm.br ^bb13(%131 : i64)
  ^bb18:  // pred: ^bb13
    %132 = bufferization.to_tensor %116 restrict writable : memref<8x2xf64>
    %133 = llvm.mlir.constant(8 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(16 : index) : i64
    %137 = llvm.mlir.zero : !llvm.ptr
    %138 = llvm.getelementptr %137[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %139 = llvm.ptrtoint %138 : !llvm.ptr to i64
    %140 = llvm.mlir.constant(64 : index) : i64
    %141 = llvm.add %139, %140 : i64
    %142 = llvm.call @malloc(%141) : (i64) -> !llvm.ptr
    %143 = llvm.ptrtoint %142 : !llvm.ptr to i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.sub %140, %144 : i64
    %146 = llvm.add %143, %145 : i64
    %147 = llvm.urem %146, %140  : i64
    %148 = llvm.sub %146, %147 : i64
    %149 = llvm.inttoptr %148 : i64 to !llvm.ptr
    %150 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %151 = llvm.insertvalue %142, %150[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %155 = llvm.insertvalue %133, %154[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %156 = llvm.insertvalue %134, %155[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %157 = llvm.insertvalue %134, %156[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %158 = llvm.insertvalue %135, %157[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %159 = builtin.unrealized_conversion_cast %158 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.extractvalue %115[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %162 = llvm.mul %160, %161 : i64
    %163 = llvm.extractvalue %115[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %164 = llvm.mul %162, %163 : i64
    %165 = llvm.mlir.zero : !llvm.ptr
    %166 = llvm.getelementptr %165[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %167 = llvm.ptrtoint %166 : !llvm.ptr to i64
    %168 = llvm.mul %164, %167 : i64
    %169 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %170 = llvm.extractvalue %115[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %171 = llvm.getelementptr %169[%170] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %172 = llvm.extractvalue %158[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.extractvalue %158[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %174 = llvm.getelementptr %172[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    "llvm.intr.memcpy"(%174, %171, %168) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb19(%4 : i64)
  ^bb19(%175: i64):  // 2 preds: ^bb18, ^bb26
    %176 = builtin.unrealized_conversion_cast %175 : i64 to index
    %177 = builtin.unrealized_conversion_cast %176 : index to i64
    %178 = llvm.icmp "slt" %175, %3 : i64
    llvm.cond_br %178, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%179: i64):  // 2 preds: ^bb20, ^bb25
    %180 = builtin.unrealized_conversion_cast %179 : i64 to index
    %181 = builtin.unrealized_conversion_cast %180 : index to i64
    %182 = llvm.icmp "slt" %179, %0 : i64
    llvm.cond_br %182, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%183: i64):  // 2 preds: ^bb22, ^bb24
    %184 = builtin.unrealized_conversion_cast %183 : i64 to index
    %185 = builtin.unrealized_conversion_cast %184 : index to i64
    %186 = llvm.icmp "slt" %183, %1 : i64
    llvm.cond_br %186, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %187 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %188 = llvm.mlir.constant(4 : index) : i64
    %189 = llvm.mul %177, %188 : i64
    %190 = llvm.add %189, %185 : i64
    %191 = llvm.getelementptr %187[%190] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %192 = llvm.load %191 : !llvm.ptr -> f64
    %193 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mul %185, %194 : i64
    %196 = llvm.add %195, %181 : i64
    %197 = llvm.getelementptr %193[%196] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %198 = llvm.load %197 : !llvm.ptr -> f64
    %199 = llvm.extractvalue %158[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mul %177, %200 : i64
    %202 = llvm.add %201, %181 : i64
    %203 = llvm.getelementptr %199[%202] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %204 = llvm.load %203 : !llvm.ptr -> f64
    %205 = llvm.fmul %192, %198  : f64
    %206 = llvm.fadd %204, %205  : f64
    %207 = llvm.extractvalue %158[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mul %177, %208 : i64
    %210 = llvm.add %209, %181 : i64
    %211 = llvm.getelementptr %207[%210] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %206, %211 : f64, !llvm.ptr
    %212 = llvm.add %183, %2 : i64
    llvm.br ^bb23(%212 : i64)
  ^bb25:  // pred: ^bb23
    %213 = llvm.add %179, %2 : i64
    llvm.br ^bb21(%213 : i64)
  ^bb26:  // pred: ^bb21
    %214 = llvm.add %175, %2 : i64
    llvm.br ^bb19(%214 : i64)
  ^bb27:  // pred: ^bb19
    %215 = bufferization.to_tensor %159 : memref<8x2xf64>
    "ta.set_op"(%215, %132) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.alloca %216 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %115, %217 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %220 = llvm.insertvalue %218, %219[0] : !llvm.struct<(i64, ptr)>
    %221 = llvm.insertvalue %217, %220[1] : !llvm.struct<(i64, ptr)>
    %222 = llvm.extractvalue %221[0] : !llvm.struct<(i64, ptr)>
    %223 = llvm.extractvalue %221[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%222, %223) : (i64, !llvm.ptr) -> ()
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
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(8 : index) : i64
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
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = llvm.icmp "slt" %34, %3 : i64
    llvm.cond_br %36, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%37: i64):  // 2 preds: ^bb2, ^bb4
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = llvm.icmp "slt" %37, %1 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mul %34, %41 : i64
    %43 = llvm.add %42, %37 : i64
    %44 = llvm.getelementptr %40[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %44 : f64, !llvm.ptr
    %45 = llvm.add %37, %2 : i64
    llvm.br ^bb3(%45 : i64)
  ^bb5:  // pred: ^bb3
    %46 = llvm.add %34, %2 : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(8 : index) : i64
    %51 = llvm.mlir.zero : !llvm.ptr
    %52 = llvm.getelementptr %51[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(32 : index) : i64
    %55 = llvm.add %53, %54 : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %54, %58 : i64
    %60 = llvm.add %57, %59 : i64
    %61 = llvm.urem %60, %54  : i64
    %62 = llvm.sub %60, %61 : i64
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
    llvm.br ^bb7(%4 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = builtin.unrealized_conversion_cast %73 : i64 to index
    %75 = llvm.icmp "slt" %73, %1 : i64
    llvm.cond_br %75, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%76: i64):  // 2 preds: ^bb8, ^bb10
    %77 = builtin.unrealized_conversion_cast %76 : i64 to index
    %78 = llvm.icmp "slt" %76, %0 : i64
    llvm.cond_br %78, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %79 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.mul %73, %80 : i64
    %82 = llvm.add %81, %76 : i64
    %83 = llvm.getelementptr %79[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %83 : f64, !llvm.ptr
    %84 = llvm.add %76, %2 : i64
    llvm.br ^bb9(%84 : i64)
  ^bb11:  // pred: ^bb9
    %85 = llvm.add %73, %2 : i64
    llvm.br ^bb7(%85 : i64)
  ^bb12:  // pred: ^bb7
    %86 = llvm.mlir.constant(8 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(16 : index) : i64
    %90 = llvm.mlir.zero : !llvm.ptr
    %91 = llvm.getelementptr %90[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %92 = llvm.ptrtoint %91 : !llvm.ptr to i64
    %93 = llvm.mlir.constant(32 : index) : i64
    %94 = llvm.add %92, %93 : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.sub %93, %97 : i64
    %99 = llvm.add %96, %98 : i64
    %100 = llvm.urem %99, %93  : i64
    %101 = llvm.sub %99, %100 : i64
    %102 = llvm.inttoptr %101 : i64 to !llvm.ptr
    %103 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %104 = llvm.insertvalue %95, %103[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %108 = llvm.insertvalue %86, %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %109 = llvm.insertvalue %87, %108[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %110 = llvm.insertvalue %87, %109[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %111 = llvm.insertvalue %88, %110[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %112 = builtin.unrealized_conversion_cast %111 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    llvm.br ^bb13(%4 : i64)
  ^bb13(%113: i64):  // 2 preds: ^bb12, ^bb17
    %114 = builtin.unrealized_conversion_cast %113 : i64 to index
    %115 = llvm.icmp "slt" %113, %3 : i64
    llvm.cond_br %115, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%116: i64):  // 2 preds: ^bb14, ^bb16
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = llvm.icmp "slt" %116, %0 : i64
    llvm.cond_br %118, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %119 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mul %113, %120 : i64
    %122 = llvm.add %121, %116 : i64
    %123 = llvm.getelementptr %119[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %123 : f64, !llvm.ptr
    %124 = llvm.add %116, %2 : i64
    llvm.br ^bb15(%124 : i64)
  ^bb17:  // pred: ^bb15
    %125 = llvm.add %113, %2 : i64
    llvm.br ^bb13(%125 : i64)
  ^bb18:  // pred: ^bb13
    %126 = bufferization.to_tensor %112 restrict writable : memref<8x2xf64>
    %127 = llvm.mlir.constant(8 : index) : i64
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(16 : index) : i64
    %131 = llvm.mlir.zero : !llvm.ptr
    %132 = llvm.getelementptr %131[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %133 = llvm.ptrtoint %132 : !llvm.ptr to i64
    %134 = llvm.mlir.constant(64 : index) : i64
    %135 = llvm.add %133, %134 : i64
    %136 = llvm.call @malloc(%135) : (i64) -> !llvm.ptr
    %137 = llvm.ptrtoint %136 : !llvm.ptr to i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.sub %134, %138 : i64
    %140 = llvm.add %137, %139 : i64
    %141 = llvm.urem %140, %134  : i64
    %142 = llvm.sub %140, %141 : i64
    %143 = llvm.inttoptr %142 : i64 to !llvm.ptr
    %144 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %145 = llvm.insertvalue %136, %144[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.insertvalue %143, %145[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.insertvalue %147, %146[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %149 = llvm.insertvalue %127, %148[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %150 = llvm.insertvalue %128, %149[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %151 = llvm.insertvalue %128, %150[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.insertvalue %129, %151[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %153 = builtin.unrealized_conversion_cast %152 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.extractvalue %111[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %156 = llvm.mul %154, %155 : i64
    %157 = llvm.extractvalue %111[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %158 = llvm.mul %156, %157 : i64
    %159 = llvm.mlir.zero : !llvm.ptr
    %160 = llvm.getelementptr %159[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %161 = llvm.ptrtoint %160 : !llvm.ptr to i64
    %162 = llvm.mul %158, %161 : i64
    %163 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %164 = llvm.extractvalue %111[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %165 = llvm.getelementptr %163[%164] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %166 = llvm.extractvalue %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %167 = llvm.extractvalue %152[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %168 = llvm.getelementptr %166[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    "llvm.intr.memcpy"(%168, %165, %162) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb19(%4 : i64)
  ^bb19(%169: i64):  // 2 preds: ^bb18, ^bb26
    %170 = builtin.unrealized_conversion_cast %169 : i64 to index
    %171 = llvm.icmp "slt" %169, %3 : i64
    llvm.cond_br %171, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%172: i64):  // 2 preds: ^bb20, ^bb25
    %173 = builtin.unrealized_conversion_cast %172 : i64 to index
    %174 = llvm.icmp "slt" %172, %0 : i64
    llvm.cond_br %174, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%175: i64):  // 2 preds: ^bb22, ^bb24
    %176 = builtin.unrealized_conversion_cast %175 : i64 to index
    %177 = llvm.icmp "slt" %175, %1 : i64
    llvm.cond_br %177, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %178 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %179 = llvm.mlir.constant(4 : index) : i64
    %180 = llvm.mul %169, %179 : i64
    %181 = llvm.add %180, %175 : i64
    %182 = llvm.getelementptr %178[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %183 = llvm.load %182 : !llvm.ptr -> f64
    %184 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mul %175, %185 : i64
    %187 = llvm.add %186, %172 : i64
    %188 = llvm.getelementptr %184[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %189 = llvm.load %188 : !llvm.ptr -> f64
    %190 = llvm.extractvalue %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %169, %191 : i64
    %193 = llvm.add %192, %172 : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %195 = llvm.load %194 : !llvm.ptr -> f64
    %196 = llvm.fmul %183, %189  : f64
    %197 = llvm.fadd %195, %196  : f64
    %198 = llvm.extractvalue %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mul %169, %199 : i64
    %201 = llvm.add %200, %172 : i64
    %202 = llvm.getelementptr %198[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %197, %202 : f64, !llvm.ptr
    %203 = llvm.add %175, %2 : i64
    llvm.br ^bb23(%203 : i64)
  ^bb25:  // pred: ^bb23
    %204 = llvm.add %172, %2 : i64
    llvm.br ^bb21(%204 : i64)
  ^bb26:  // pred: ^bb21
    %205 = llvm.add %169, %2 : i64
    llvm.br ^bb19(%205 : i64)
  ^bb27:  // pred: ^bb19
    %206 = bufferization.to_tensor %153 : memref<8x2xf64>
    "ta.set_op"(%206, %126) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.alloca %207 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %111, %208 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %211 = llvm.insertvalue %209, %210[0] : !llvm.struct<(i64, ptr)>
    %212 = llvm.insertvalue %208, %211[1] : !llvm.struct<(i64, ptr)>
    %213 = llvm.extractvalue %212[0] : !llvm.struct<(i64, ptr)>
    %214 = llvm.extractvalue %212[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%213, %214) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertOpenMPToLLVMPass (convert-openmp-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(8 : index) : i64
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
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = llvm.icmp "slt" %34, %3 : i64
    llvm.cond_br %36, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%37: i64):  // 2 preds: ^bb2, ^bb4
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = llvm.icmp "slt" %37, %1 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mul %34, %41 : i64
    %43 = llvm.add %42, %37 : i64
    %44 = llvm.getelementptr %40[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %44 : f64, !llvm.ptr
    %45 = llvm.add %37, %2 : i64
    llvm.br ^bb3(%45 : i64)
  ^bb5:  // pred: ^bb3
    %46 = llvm.add %34, %2 : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(8 : index) : i64
    %51 = llvm.mlir.zero : !llvm.ptr
    %52 = llvm.getelementptr %51[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(32 : index) : i64
    %55 = llvm.add %53, %54 : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %54, %58 : i64
    %60 = llvm.add %57, %59 : i64
    %61 = llvm.urem %60, %54  : i64
    %62 = llvm.sub %60, %61 : i64
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
    llvm.br ^bb7(%4 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = builtin.unrealized_conversion_cast %73 : i64 to index
    %75 = llvm.icmp "slt" %73, %1 : i64
    llvm.cond_br %75, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%76: i64):  // 2 preds: ^bb8, ^bb10
    %77 = builtin.unrealized_conversion_cast %76 : i64 to index
    %78 = llvm.icmp "slt" %76, %0 : i64
    llvm.cond_br %78, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %79 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.mul %73, %80 : i64
    %82 = llvm.add %81, %76 : i64
    %83 = llvm.getelementptr %79[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %83 : f64, !llvm.ptr
    %84 = llvm.add %76, %2 : i64
    llvm.br ^bb9(%84 : i64)
  ^bb11:  // pred: ^bb9
    %85 = llvm.add %73, %2 : i64
    llvm.br ^bb7(%85 : i64)
  ^bb12:  // pred: ^bb7
    %86 = llvm.mlir.constant(8 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(16 : index) : i64
    %90 = llvm.mlir.zero : !llvm.ptr
    %91 = llvm.getelementptr %90[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %92 = llvm.ptrtoint %91 : !llvm.ptr to i64
    %93 = llvm.mlir.constant(32 : index) : i64
    %94 = llvm.add %92, %93 : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.sub %93, %97 : i64
    %99 = llvm.add %96, %98 : i64
    %100 = llvm.urem %99, %93  : i64
    %101 = llvm.sub %99, %100 : i64
    %102 = llvm.inttoptr %101 : i64 to !llvm.ptr
    %103 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %104 = llvm.insertvalue %95, %103[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %108 = llvm.insertvalue %86, %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %109 = llvm.insertvalue %87, %108[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %110 = llvm.insertvalue %87, %109[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %111 = llvm.insertvalue %88, %110[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %112 = builtin.unrealized_conversion_cast %111 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    llvm.br ^bb13(%4 : i64)
  ^bb13(%113: i64):  // 2 preds: ^bb12, ^bb17
    %114 = builtin.unrealized_conversion_cast %113 : i64 to index
    %115 = llvm.icmp "slt" %113, %3 : i64
    llvm.cond_br %115, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%116: i64):  // 2 preds: ^bb14, ^bb16
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = llvm.icmp "slt" %116, %0 : i64
    llvm.cond_br %118, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %119 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mul %113, %120 : i64
    %122 = llvm.add %121, %116 : i64
    %123 = llvm.getelementptr %119[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %123 : f64, !llvm.ptr
    %124 = llvm.add %116, %2 : i64
    llvm.br ^bb15(%124 : i64)
  ^bb17:  // pred: ^bb15
    %125 = llvm.add %113, %2 : i64
    llvm.br ^bb13(%125 : i64)
  ^bb18:  // pred: ^bb13
    %126 = bufferization.to_tensor %112 restrict writable : memref<8x2xf64>
    %127 = llvm.mlir.constant(8 : index) : i64
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(16 : index) : i64
    %131 = llvm.mlir.zero : !llvm.ptr
    %132 = llvm.getelementptr %131[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %133 = llvm.ptrtoint %132 : !llvm.ptr to i64
    %134 = llvm.mlir.constant(64 : index) : i64
    %135 = llvm.add %133, %134 : i64
    %136 = llvm.call @malloc(%135) : (i64) -> !llvm.ptr
    %137 = llvm.ptrtoint %136 : !llvm.ptr to i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.sub %134, %138 : i64
    %140 = llvm.add %137, %139 : i64
    %141 = llvm.urem %140, %134  : i64
    %142 = llvm.sub %140, %141 : i64
    %143 = llvm.inttoptr %142 : i64 to !llvm.ptr
    %144 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %145 = llvm.insertvalue %136, %144[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.insertvalue %143, %145[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.insertvalue %147, %146[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %149 = llvm.insertvalue %127, %148[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %150 = llvm.insertvalue %128, %149[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %151 = llvm.insertvalue %128, %150[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.insertvalue %129, %151[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %153 = builtin.unrealized_conversion_cast %152 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.extractvalue %111[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %156 = llvm.mul %154, %155 : i64
    %157 = llvm.extractvalue %111[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %158 = llvm.mul %156, %157 : i64
    %159 = llvm.mlir.zero : !llvm.ptr
    %160 = llvm.getelementptr %159[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %161 = llvm.ptrtoint %160 : !llvm.ptr to i64
    %162 = llvm.mul %158, %161 : i64
    %163 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %164 = llvm.extractvalue %111[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %165 = llvm.getelementptr %163[%164] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %166 = llvm.extractvalue %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %167 = llvm.extractvalue %152[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %168 = llvm.getelementptr %166[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    "llvm.intr.memcpy"(%168, %165, %162) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb19(%4 : i64)
  ^bb19(%169: i64):  // 2 preds: ^bb18, ^bb26
    %170 = builtin.unrealized_conversion_cast %169 : i64 to index
    %171 = llvm.icmp "slt" %169, %3 : i64
    llvm.cond_br %171, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%172: i64):  // 2 preds: ^bb20, ^bb25
    %173 = builtin.unrealized_conversion_cast %172 : i64 to index
    %174 = llvm.icmp "slt" %172, %0 : i64
    llvm.cond_br %174, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%175: i64):  // 2 preds: ^bb22, ^bb24
    %176 = builtin.unrealized_conversion_cast %175 : i64 to index
    %177 = llvm.icmp "slt" %175, %1 : i64
    llvm.cond_br %177, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %178 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %179 = llvm.mlir.constant(4 : index) : i64
    %180 = llvm.mul %169, %179 : i64
    %181 = llvm.add %180, %175 : i64
    %182 = llvm.getelementptr %178[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %183 = llvm.load %182 : !llvm.ptr -> f64
    %184 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mul %175, %185 : i64
    %187 = llvm.add %186, %172 : i64
    %188 = llvm.getelementptr %184[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %189 = llvm.load %188 : !llvm.ptr -> f64
    %190 = llvm.extractvalue %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %169, %191 : i64
    %193 = llvm.add %192, %172 : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %195 = llvm.load %194 : !llvm.ptr -> f64
    %196 = llvm.fmul %183, %189  : f64
    %197 = llvm.fadd %195, %196  : f64
    %198 = llvm.extractvalue %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mul %169, %199 : i64
    %201 = llvm.add %200, %172 : i64
    %202 = llvm.getelementptr %198[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %197, %202 : f64, !llvm.ptr
    %203 = llvm.add %175, %2 : i64
    llvm.br ^bb23(%203 : i64)
  ^bb25:  // pred: ^bb23
    %204 = llvm.add %172, %2 : i64
    llvm.br ^bb21(%204 : i64)
  ^bb26:  // pred: ^bb21
    %205 = llvm.add %169, %2 : i64
    llvm.br ^bb19(%205 : i64)
  ^bb27:  // pred: ^bb19
    %206 = bufferization.to_tensor %153 : memref<8x2xf64>
    "ta.set_op"(%206, %126) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.alloca %207 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %111, %208 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %211 = llvm.insertvalue %209, %210[0] : !llvm.struct<(i64, ptr)>
    %212 = llvm.insertvalue %208, %211[1] : !llvm.struct<(i64, ptr)>
    %213 = llvm.extractvalue %212[0] : !llvm.struct<(i64, ptr)>
    %214 = llvm.extractvalue %212[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%213, %214) : (i64, !llvm.ptr) -> ()
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
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(8 : index) : i64
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
    %35 = llvm.icmp "slt" %34, %3 : i64
    llvm.cond_br %35, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%36: i64):  // 2 preds: ^bb2, ^bb4
    %37 = llvm.icmp "slt" %36, %1 : i64
    llvm.cond_br %37, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %38 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mul %34, %39 : i64
    %41 = llvm.add %40, %36 : i64
    %42 = llvm.getelementptr %38[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %42 : f64, !llvm.ptr
    %43 = llvm.add %36, %2 : i64
    llvm.br ^bb3(%43 : i64)
  ^bb5:  // pred: ^bb3
    %44 = llvm.add %34, %2 : i64
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
    %72 = llvm.icmp "slt" %71, %1 : i64
    llvm.cond_br %72, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%73: i64):  // 2 preds: ^bb8, ^bb10
    %74 = llvm.icmp "slt" %73, %0 : i64
    llvm.cond_br %74, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %75 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mul %71, %76 : i64
    %78 = llvm.add %77, %73 : i64
    %79 = llvm.getelementptr %75[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %79 : f64, !llvm.ptr
    %80 = llvm.add %73, %2 : i64
    llvm.br ^bb9(%80 : i64)
  ^bb11:  // pred: ^bb9
    %81 = llvm.add %71, %2 : i64
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
    %108 = builtin.unrealized_conversion_cast %107 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    llvm.br ^bb13(%4 : i64)
  ^bb13(%109: i64):  // 2 preds: ^bb12, ^bb17
    %110 = llvm.icmp "slt" %109, %3 : i64
    llvm.cond_br %110, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%111: i64):  // 2 preds: ^bb14, ^bb16
    %112 = llvm.icmp "slt" %111, %0 : i64
    llvm.cond_br %112, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %113 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %109, %114 : i64
    %116 = llvm.add %115, %111 : i64
    %117 = llvm.getelementptr %113[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %117 : f64, !llvm.ptr
    %118 = llvm.add %111, %2 : i64
    llvm.br ^bb15(%118 : i64)
  ^bb17:  // pred: ^bb15
    %119 = llvm.add %109, %2 : i64
    llvm.br ^bb13(%119 : i64)
  ^bb18:  // pred: ^bb13
    %120 = bufferization.to_tensor %108 restrict writable : memref<8x2xf64>
    %121 = llvm.mlir.constant(8 : index) : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(16 : index) : i64
    %125 = llvm.mlir.zero : !llvm.ptr
    %126 = llvm.getelementptr %125[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %127 = llvm.ptrtoint %126 : !llvm.ptr to i64
    %128 = llvm.mlir.constant(64 : index) : i64
    %129 = llvm.add %127, %128 : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr
    %131 = llvm.ptrtoint %130 : !llvm.ptr to i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.sub %128, %132 : i64
    %134 = llvm.add %131, %133 : i64
    %135 = llvm.urem %134, %128  : i64
    %136 = llvm.sub %134, %135 : i64
    %137 = llvm.inttoptr %136 : i64 to !llvm.ptr
    %138 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %139 = llvm.insertvalue %130, %138[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.insertvalue %121, %142[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %144 = llvm.insertvalue %122, %143[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %145 = llvm.insertvalue %122, %144[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.insertvalue %123, %145[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %147 = builtin.unrealized_conversion_cast %146 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.extractvalue %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %150 = llvm.mul %148, %149 : i64
    %151 = llvm.extractvalue %107[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.mul %150, %151 : i64
    %153 = llvm.mlir.zero : !llvm.ptr
    %154 = llvm.getelementptr %153[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %155 = llvm.ptrtoint %154 : !llvm.ptr to i64
    %156 = llvm.mul %152, %155 : i64
    %157 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %158 = llvm.extractvalue %107[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %159 = llvm.getelementptr %157[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %160 = llvm.extractvalue %146[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %161 = llvm.extractvalue %146[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %162 = llvm.getelementptr %160[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    "llvm.intr.memcpy"(%162, %159, %156) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb19(%4 : i64)
  ^bb19(%163: i64):  // 2 preds: ^bb18, ^bb26
    %164 = llvm.icmp "slt" %163, %3 : i64
    llvm.cond_br %164, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%165: i64):  // 2 preds: ^bb20, ^bb25
    %166 = llvm.icmp "slt" %165, %0 : i64
    llvm.cond_br %166, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%167: i64):  // 2 preds: ^bb22, ^bb24
    %168 = llvm.icmp "slt" %167, %1 : i64
    llvm.cond_br %168, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %169 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.mul %163, %170 : i64
    %172 = llvm.add %171, %167 : i64
    %173 = llvm.getelementptr %169[%172] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %174 = llvm.load %173 : !llvm.ptr -> f64
    %175 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mul %167, %176 : i64
    %178 = llvm.add %177, %165 : i64
    %179 = llvm.getelementptr %175[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %180 = llvm.load %179 : !llvm.ptr -> f64
    %181 = llvm.extractvalue %146[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mul %163, %182 : i64
    %184 = llvm.add %183, %165 : i64
    %185 = llvm.getelementptr %181[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %186 = llvm.load %185 : !llvm.ptr -> f64
    %187 = llvm.fmul %174, %180  : f64
    %188 = llvm.fadd %186, %187  : f64
    %189 = llvm.extractvalue %146[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mul %163, %190 : i64
    %192 = llvm.add %191, %165 : i64
    %193 = llvm.getelementptr %189[%192] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %188, %193 : f64, !llvm.ptr
    %194 = llvm.add %167, %2 : i64
    llvm.br ^bb23(%194 : i64)
  ^bb25:  // pred: ^bb23
    %195 = llvm.add %165, %2 : i64
    llvm.br ^bb21(%195 : i64)
  ^bb26:  // pred: ^bb21
    %196 = llvm.add %163, %2 : i64
    llvm.br ^bb19(%196 : i64)
  ^bb27:  // pred: ^bb19
    %197 = bufferization.to_tensor %147 : memref<8x2xf64>
    "ta.set_op"(%197, %120) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.alloca %198 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %107, %199 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %202 = llvm.insertvalue %200, %201[0] : !llvm.struct<(i64, ptr)>
    %203 = llvm.insertvalue %199, %202[1] : !llvm.struct<(i64, ptr)>
    %204 = llvm.extractvalue %203[0] : !llvm.struct<(i64, ptr)>
    %205 = llvm.extractvalue %203[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%204, %205) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(8 : index) : i64
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
    %35 = llvm.icmp "slt" %34, %3 : i64
    llvm.cond_br %35, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%36: i64):  // 2 preds: ^bb2, ^bb4
    %37 = llvm.icmp "slt" %36, %1 : i64
    llvm.cond_br %37, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %38 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mul %34, %39 : i64
    %41 = llvm.add %40, %36 : i64
    %42 = llvm.getelementptr %38[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %42 : f64, !llvm.ptr
    %43 = llvm.add %36, %2 : i64
    llvm.br ^bb3(%43 : i64)
  ^bb5:  // pred: ^bb3
    %44 = llvm.add %34, %2 : i64
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
    %72 = llvm.icmp "slt" %71, %1 : i64
    llvm.cond_br %72, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%73: i64):  // 2 preds: ^bb8, ^bb10
    %74 = llvm.icmp "slt" %73, %0 : i64
    llvm.cond_br %74, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %75 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mul %71, %76 : i64
    %78 = llvm.add %77, %73 : i64
    %79 = llvm.getelementptr %75[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %79 : f64, !llvm.ptr
    %80 = llvm.add %73, %2 : i64
    llvm.br ^bb9(%80 : i64)
  ^bb11:  // pred: ^bb9
    %81 = llvm.add %71, %2 : i64
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
    %108 = builtin.unrealized_conversion_cast %107 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    llvm.br ^bb13(%4 : i64)
  ^bb13(%109: i64):  // 2 preds: ^bb12, ^bb17
    %110 = llvm.icmp "slt" %109, %3 : i64
    llvm.cond_br %110, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%111: i64):  // 2 preds: ^bb14, ^bb16
    %112 = llvm.icmp "slt" %111, %0 : i64
    llvm.cond_br %112, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %113 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %109, %114 : i64
    %116 = llvm.add %115, %111 : i64
    %117 = llvm.getelementptr %113[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %117 : f64, !llvm.ptr
    %118 = llvm.add %111, %2 : i64
    llvm.br ^bb15(%118 : i64)
  ^bb17:  // pred: ^bb15
    %119 = llvm.add %109, %2 : i64
    llvm.br ^bb13(%119 : i64)
  ^bb18:  // pred: ^bb13
    %120 = bufferization.to_tensor %108 restrict writable : memref<8x2xf64>
    %121 = llvm.mlir.constant(8 : index) : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(16 : index) : i64
    %125 = llvm.mlir.zero : !llvm.ptr
    %126 = llvm.getelementptr %125[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %127 = llvm.ptrtoint %126 : !llvm.ptr to i64
    %128 = llvm.mlir.constant(64 : index) : i64
    %129 = llvm.add %127, %128 : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr
    %131 = llvm.ptrtoint %130 : !llvm.ptr to i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.sub %128, %132 : i64
    %134 = llvm.add %131, %133 : i64
    %135 = llvm.urem %134, %128  : i64
    %136 = llvm.sub %134, %135 : i64
    %137 = llvm.inttoptr %136 : i64 to !llvm.ptr
    %138 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %139 = llvm.insertvalue %130, %138[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.insertvalue %121, %142[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %144 = llvm.insertvalue %122, %143[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %145 = llvm.insertvalue %122, %144[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.insertvalue %123, %145[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %147 = builtin.unrealized_conversion_cast %146 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<8x2xf64>
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.extractvalue %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %150 = llvm.mul %148, %149 : i64
    %151 = llvm.extractvalue %107[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.mul %150, %151 : i64
    %153 = llvm.mlir.zero : !llvm.ptr
    %154 = llvm.getelementptr %153[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %155 = llvm.ptrtoint %154 : !llvm.ptr to i64
    %156 = llvm.mul %152, %155 : i64
    %157 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %158 = llvm.extractvalue %107[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %159 = llvm.getelementptr %157[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %160 = llvm.extractvalue %146[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %161 = llvm.extractvalue %146[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %162 = llvm.getelementptr %160[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    "llvm.intr.memcpy"(%162, %159, %156) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb19(%4 : i64)
  ^bb19(%163: i64):  // 2 preds: ^bb18, ^bb26
    %164 = llvm.icmp "slt" %163, %3 : i64
    llvm.cond_br %164, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%165: i64):  // 2 preds: ^bb20, ^bb25
    %166 = llvm.icmp "slt" %165, %0 : i64
    llvm.cond_br %166, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%4 : i64)
  ^bb23(%167: i64):  // 2 preds: ^bb22, ^bb24
    %168 = llvm.icmp "slt" %167, %1 : i64
    llvm.cond_br %168, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %169 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.mul %163, %170 : i64
    %172 = llvm.add %171, %167 : i64
    %173 = llvm.getelementptr %169[%172] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %174 = llvm.load %173 : !llvm.ptr -> f64
    %175 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mul %167, %176 : i64
    %178 = llvm.add %177, %165 : i64
    %179 = llvm.getelementptr %175[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %180 = llvm.load %179 : !llvm.ptr -> f64
    %181 = llvm.extractvalue %146[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mul %163, %182 : i64
    %184 = llvm.add %183, %165 : i64
    %185 = llvm.getelementptr %181[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %186 = llvm.load %185 : !llvm.ptr -> f64
    %187 = llvm.fmul %174, %180  : f64
    %188 = llvm.fadd %186, %187  : f64
    %189 = llvm.extractvalue %146[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mul %163, %190 : i64
    %192 = llvm.add %191, %165 : i64
    %193 = llvm.getelementptr %189[%192] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %188, %193 : f64, !llvm.ptr
    %194 = llvm.add %167, %2 : i64
    llvm.br ^bb23(%194 : i64)
  ^bb25:  // pred: ^bb23
    %195 = llvm.add %165, %2 : i64
    llvm.br ^bb21(%195 : i64)
  ^bb26:  // pred: ^bb21
    %196 = llvm.add %163, %2 : i64
    llvm.br ^bb19(%196 : i64)
  ^bb27:  // pred: ^bb19
    %197 = bufferization.to_tensor %147 : memref<8x2xf64>
    "ta.set_op"(%197, %120) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.alloca %198 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %107, %199 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %202 = llvm.insertvalue %200, %201[0] : !llvm.struct<(i64, ptr)>
    %203 = llvm.insertvalue %199, %202[1] : !llvm.struct<(i64, ptr)>
    %204 = llvm.extractvalue %203[0] : !llvm.struct<(i64, ptr)>
    %205 = llvm.extractvalue %203[1] : !llvm.struct<(i64, ptr)>
    llvm.call @comet_print_memref_f64(%204, %205) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
